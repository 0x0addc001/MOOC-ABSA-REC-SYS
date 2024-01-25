import json

def format_results(results):
    result = []
    for res in results:
        for dimension in res['评价维度']:
            aspect = dimension['text']
            if('观点词' in dimension['relations']):
                opinions = [opinion['text'] for opinion in dimension['relations']['观点词']]
            else:
                opinions = None
            sentiment = dimension['relations']['情感倾向[正向,负向,未提及]'][0]['text']
            con = {"aspect": aspect, "opinions": str(opinions), "sentiment": sentiment}
            result.append(con)
    return result

def format_print(results):
    for res in results:
        print(f"aspect: {res['aspect']}, opinions: {res['opinions']}, sentiment: {res['sentiment']}")
    print()

def load_txt(file_path):
    texts = []
    with open(file_path, "r", encoding="utf-8") as f:
        for line in f.readlines():
            texts.append(line.strip())
    return texts

def load_db(course_key, cursor):
    texts = []
    try:
        select_sql = """
                        select comments from mooc.raw_comments where course_key = %s
                     """
        cursor.execute(select_sql, (course_key,))
        comments_list = cursor.fetchall()
        for comment in comments_list:
            texts.append(comment[0])
        print(texts)
        return texts
    except Exception as e:
        print(f"An error occurred: {e}")
        return None

def save_results_to_db(results, conn, cursor):
    for res in results:
        aspect = res['aspect']
        opinion = res['opinions']
        sentiment = res['sentiment']
        insert_sql = """
                                insert into absa_comments(raw_id, aspect, opinion, sentiment)
                                values(%s,%s,%s,%s)
                             """
        cursor.execute(
            insert_sql,
            (1, aspect, opinion, sentiment))
        conn.commit()
        print("{}-{}-{}: saving to database successful".format(
            aspect, opinion, sentiment))

def write_json_file(examples, save_path):
    with open(save_path, "w", encoding="utf-8") as f:
        for example in examples:
            line = json.dumps(example, ensure_ascii=False)
            f.write(line + "\n")

def load_json_file(path):
    exmaples = []
    with open(path, "r", encoding="utf-8") as f:
        for line in f.readlines():
            example = json.loads(line)
            exmaples.append(example)
    return exmaples
