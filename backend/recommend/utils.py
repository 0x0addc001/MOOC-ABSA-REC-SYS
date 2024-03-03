
# select_sql = """
#                         select ce_id,
#                         AVG(
#                         100.0 *
#                         1.0 / (1.0 + EXP(-(
#                             %s * sentiment_probability *
#                             (CASE
#                                 WHEN sentiment = '正向' THEN 1.0
#                                 ELSE -1.0
#                             END) +
#                             %s * (rating - 3.0) / 2.0 +
#                             %s * 0.001 * voteup +
#                             %s * EXP(%s * -1.0 * DATEDIFF(CURDATE(), created_time))
#                         )))
#                         ) AS course_score
#                         from mooc.ck_ct_ce_rc_ac
#                         where course_key = %s and category = %s
#                         group by ce_id
#                         order by course_score desc
#                      """

import math
from itertools import groupby

w1 = 0.65
w2 = 0.2
w3 = 0.1
w4 = 0.05
alpha = 0.1

def sigmoid(x):
    return 1.0 / (1.0 + math.exp(-x))

# 计算单条评论的综合分数
def calculate_comment_score(sentiment_probability, sentiment_polarity, rating, voteup, datediff):
    comment_score = sigmoid(w1 * sentiment_probability * sentiment_polarity +
                           w2 * (rating - 3.0) / 2.0 +
                           w3 * 0.001 * voteup +
                           w4 * math.exp(-alpha * datediff))
    return comment_score

# 计算单门课程的综合分数
def calculate_course_score(comment_dataset):
    score_sum = 0.0
    num = 0.0
    for comment_data in comment_dataset:
        score_sum += calculate_comment_score(comment_data["sentiment_probability"], comment_data["sentiment_polarity"], comment_data["rating"], comment_data["voteup"], comment_data["datediff"])
        num += 1.0
    course_score = score_sum / num
    return course_score

# 计算所有课程的综合分数 分组 + 排序
def calculate_all_courses_scores(comment_dataset):
    course_list = []
    ce_id_function = lambda x: x['ce_id']
    course_score_function = lambda x: x['course_score']
    sorted_comment_dataset = sorted(comment_dataset, key=ce_id_function)
    grouped_dict_comment_dataset = {key: list(group) for key, group in groupby(sorted_comment_dataset, ce_id_function)}
    for ce_id, course_comment_dataset in grouped_dict_comment_dataset.items():
        course_score = calculate_course_score(course_comment_dataset)
        course_item = {
            "ce_id": ce_id,
            "course_score": round(course_score * 100.0, 2)
        }
        course_list.append(course_item)
    sorted_course_list = sorted(course_list, key=course_score_function, reverse=True)
    rank = 1
    for course_item in sorted_course_list:
        course_item['course_rank'] = rank
        rank += 1
    print(sorted_course_list)
    return sorted_course_list

def load_comment_dataset(course_key, concern_category, cursor):
    comment_dateset = []
    try:
        select_sql = """
                        select ce_id, 
                            sentiment_probability, 
                            (CASE 
                                WHEN sentiment = '正向' THEN 1.0
                                ELSE -1.0
                            END) AS sentiment_polarity,
                            rating, 
                            voteup, 
                            DATEDIFF(CURDATE(), created_time) AS datediff
                        from mooc.ck_ct_ce_rc_ac
                        where course_key = %s and category = %s
                     """
        cursor.execute(select_sql, (course_key, concern_category))
        results = cursor.fetchall()

        for result in results:
            comment_data = {
                "ce_id": result[0],
                "sentiment_probability": float(result[1]),
                "sentiment_polarity": float(result[2]),
                "rating": result[3],
                "voteup": result[4],
                "datediff": result[5],
            }
            comment_dateset.append(comment_data)
        print(comment_dateset)
        return comment_dateset
    except Exception as e:
        print(f"An error occurred: {e}")
        return None



def load_courses(course_list, cursor):
    try:
        if not course_list:
            return None

        select_sql = """
            SELECT ce_id, course_name, university_name, teacher_name, url 
            FROM mooc.ck_ce
            WHERE ce_id IN ({})
        """.format(', '.join('%s' for _ in course_list))

        # 提取 ce_id 值
        ce_ids = tuple(course['ce_id'] for course in course_list)  # 转换为元组

        cursor.execute(select_sql, ce_ids)
        results = cursor.fetchall()

        for result in results:
            for course in course_list:
                if course['ce_id'] == result[0]:
                    course['course_name'] = result[1]
                    course['university_name'] = result[2]
                    course['teacher_name'] = result[3]
                    course['url'] = result[4]
        course_list = sorted(course_list, key=lambda x: x['course_rank'])
        print(course_list)

        return course_list
    except Exception as e:
        print(f"An error occurred: {e}")
        return None