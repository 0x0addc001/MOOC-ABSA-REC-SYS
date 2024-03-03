from backend.recommend.utils import *
import MySQLdb

# 数据库推荐函数
def dbRecomm(course_key, concern_category, difficulty_coefficient):
    """
    Predict based on Taskflow.
    """
    try:
        conn = MySQLdb.connect(
            host='127.0.0.1',
            port=3306,
            user='root',
            password='root',
            db='mooc',
            charset='utf8',
            use_unicode=True
        )
        cursor = conn.cursor()

        comment_dataset = load_comment_dataset(course_key, concern_category, cursor)
        courses_scores = calculate_all_courses_scores(comment_dataset)
        course_results = load_courses(courses_scores, cursor)

        return course_results
    except Exception as e:
        print("异常信息：", e)
        conn.rollback()
    finally:
        cursor.close()
        conn.close()