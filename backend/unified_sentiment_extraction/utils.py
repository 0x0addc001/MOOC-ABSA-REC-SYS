import json
import backend.multi_class.predict as cls_model

def format_to_acos_list(results):
    cls = cls_model.load_model()
    result = []
    for res in results:
        for dimension in res['评价维度']:

            #a
            aspect = dimension['text']

            #c
            if aspect is not None:
                category_results = cls_model.predict(cls, [aspect])
                for cr in category_results:
                    for dm in cr['predictions']:
                        category = dm['label']
            else:
                category = None

            #o
            if ('观点词' in dimension['relations']):
                opinions = [opinion['text'] for opinion in dimension['relations']['观点词']]
            else:
                opinions = None

            #s
            sentiment = dimension['relations']['情感倾向[正向,负向,未提及]'][0]['text']

            acos = {"aspect": aspect, "category": category, "opinions": str(opinions), "sentiment": sentiment}
            result.append(acos)
    return result

def format_print(results):
    for res in results:
        print(f"aspect: {res['aspect']}, category: {res['category']}, opinions: {res['opinions']}, sentiment: {res['sentiment']}")

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
        category = res['category']
        opinion = res['opinions']
        sentiment = res['sentiment']
        insert_sql = """
                                insert into absa_comments(raw_id, aspect, category, opinion, sentiment)
                                values(%s,%s,%s,%s,%s)
                             """
        cursor.execute(
            insert_sql,
            (1, aspect, category, opinion, sentiment))
        conn.commit()
        print("{}-{}-{}-{}: saving to database successful".format(
            aspect, category, opinion, sentiment))

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
