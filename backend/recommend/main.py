import os
from paddlenlp import Taskflow
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

        results = load_db(course_key, cursor)

        # 返回预测结果
        return results
    except Exception as e:
        print("异常信息：", e)
        conn.rollback()
    finally:
        cursor.close()
        conn.close()