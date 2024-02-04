"""
    predict演示程序：
    使用Taskflow进行方面级情感分析
    单文本情感分析：针对输入的语句进行单文本情感分析
    批量文本情感分析：读取txt文件内容后进行批量情感分析
"""
import os
from paddlenlp import Taskflow
from backend.unified_sentiment_extraction.utils import *
import MySQLdb

# 单条文本情感分析预测函数
def singlePredict(input_text, schema):
    """
    Predict based on Taskflow.
    """
    # 单条文本情感分析
    senta = Taskflow("sentiment_analysis", model="uie-senta-nano", schema=schema)
    # unified_sentiment_extraction with Taskflow
    results = senta(input_text)
    # 如果语句中没有方面词，只有情感词，则调用语句级情感分析
    if results==[{}]:
        schema2 = ['情感倾向[正向，负向]']
        senta2 = Taskflow("sentiment_analysis", model="uie-senta-nano", schema=schema2)
        results = senta2(input_text)
        sentiment = results[0]['情感倾向[正向，负向]'][0]['text']
        results = [{"aspect": 'None', "category": 'None', "opinions": input_text, "sentiment": sentiment}]
    else:
        # 将结果处理为acos_list形式
        results = format_to_acos_list(results)
    # 返回预测结果
    return results

# 批量情感分析预测函数
def batchPredict(file_path,schema):
    """
    Predict based on Taskflow.
    """
    # read file
    if not os.path.exists(file_path):
        raise ValueError("something with wrong for your file_path, it may be not exists.")
    examples = load_txt(file_path)

    # 批量情感分析
    senta = Taskflow("sentiment_analysis", model="uie-senta-nano", schema=schema,
                      batch_size=4, max_seq_len=512)
    # unified_sentiment_extraction with Taskflow
    results = senta(examples)
    # 保存结果到json
    save_path = os.path.join('./unified_sentiment_extraction/outputs', "sentiment_results.json")
    write_json_file(results, save_path)
    print("The results of sentiment analysis has been saved to: {}".format(save_path))
    # 将结果处理为acos_list形式
    results = format_to_acos_list(results)
    # 返回预测结果
    return results

# 数据库情感分析预测函数
def dbPredict(course_key,schema):
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

        examples = load_db(course_key, cursor)

        # 批量情感分析
        senta = Taskflow("sentiment_analysis", model="uie-senta-nano", schema=schema,
                         batch_size=4, max_seq_len=512)
        # unified_sentiment_extraction with Taskflow
        results = senta(examples)

        # 去除空值
        results = [i for i in results if bool(i)]

        # 保存结果到json
        save_path = os.path.join('./unified_sentiment_extraction/outputs', "sentiment_results.json")
        write_json_file(results, save_path)
        print("The results of sentiment analysis has been saved to: {}".format(save_path))

        # 将结果处理为acos_list形式
        results = format_to_acos_list(results)

        # 保存结果到db
        save_results_to_db(results, conn, cursor)

        # 返回预测结果
        return results
    except Exception as e:
        print("异常信息：", e)
        conn.rollback()
    finally:
        cursor.close()
        conn.close()

if __name__== "__main__" :
    # 定义schema
    schema =  [{"评价维度":["观点词", "情感倾向[正向,负向,未提及]"]}]

    # 单条文本情感分析
    input_text_1 = "老师课讲的很好，生动形象，条理清晰，细节满满！ 如果能在之后的讲课中多结合一下现有的技术进行讲课，那就更好了。讲课敷衍，内容肤浅，课件简陋，就是念PPT。"
    result_text_1 = singlePredict(input_text_1, schema)
    format_print(result_text_1)

    # 读取txt文件内容进行批量情感分析
    file_path = './unified_sentiment_extraction/text_resource/batch_test.txt'
    # 批量文本情感分析
    result_batch = batchPredict(file_path,schema)
    format_print(result_batch)






