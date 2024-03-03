import json
import backend.multi_class.predict as cls_model

def format_to_acos_list(results):
    cls = cls_model.load_model()
    result = []
    for res in results:
        raw_id = None
        if 'raw_id' in res:
            raw_id = res['raw_id']
        for dimension in res['评价维度']:

            # a
            aspect = dimension['text']

            # c
            if aspect is not None:
                category_results = cls_model.predict(cls, [aspect])
                for cr in category_results:
                    for dm in cr['predictions']:
                        category = dm['label']
            else:
                category = None

            # o
            if ('观点词' in dimension['relations']):
                opinions = [opinion['text'] for opinion in dimension['relations']['观点词']]
            else:
                opinions = None

            # #s
            # sentiment = dimension['relations']['情感倾向[正向,负向,未提及]'][0]['text']
            #
            # #sp
            # sentiment_probability = dimension['relations']['情感倾向[正向,负向,未提及]'][0]['probability']

            if ('情感倾向[正向,负向,未提及]' in dimension['relations']):
                # s
                sentiment = dimension['relations']['情感倾向[正向,负向,未提及]'][0].get('text', '未提及')
                # sp
                sentiment_probability = dimension['relations']['情感倾向[正向,负向,未提及]'][0].get('probability', 0)
            else:
                sentiment = '未提及'
                sentiment_probability = 0

            acos = {"raw_id": raw_id, "aspect": aspect, "category": category, "opinions": str(opinions),
                    "sentiment": sentiment, "sentiment_probability": sentiment_probability}
            result.append(acos)
    return result

def format_print(results):
    for res in results:
        print(f"raw_id: {res['raw_id']}, aspect: {res['aspect']}, category: {res['category']}, opinions: {res['opinions']}, sentiment: {res['sentiment']}")

def load_txt(file_path):
    texts = []
    with open(file_path, "r", encoding="utf-8") as f:
        for line in f.readlines():
            texts.append(line.strip())
    return texts

def load_db(course_key, cursor):
    texts = []
    raw_ids = []
    try:
        select_sql = """
                        select comments,rc_id from mooc.ck_ce_rc where course_key = %s
                     """
        cursor.execute(select_sql, (course_key,))
        results = cursor.fetchall()

        for result in results:
            texts.append(result[0])
            raw_ids.append(result[1])
        print(texts, raw_ids)

        return texts, raw_ids
    except Exception as e:
        print(f"An error occurred: {e}")
        return None

def save_results_to_db(absa_results, conn, cursor):

    category_dic = {}

    select_sql = """
                SELECT id, category 
                FROM mooc.concern_categories
            """

    cursor.execute(select_sql)
    results = cursor.fetchall()

    for result in results:
        category_dic[result[1]] = result[0]

    print(category_dic)

    for res in absa_results:
        raw_id = res['raw_id']
        aspect = res['aspect']
        category_id = category_dic[res['category']]
        opinion = res['opinions']
        sentiment = res['sentiment']
        sentiment_probability = res['sentiment_probability']
        insert_sql = """
                        insert into absa_comments(raw_id, aspect, category_id, opinion, sentiment, sentiment_probability)
                        values(%s,%s,%s,%s,%s,%s)
                     """
        cursor.execute(
            insert_sql,
            (raw_id, aspect, category_id, opinion, sentiment, sentiment_probability))
        conn.commit()
        print("{}-{}-{}-{}-{}-{}: saving to database successful".format(
            raw_id, aspect, category_id, opinion, sentiment, sentiment_probability))

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
