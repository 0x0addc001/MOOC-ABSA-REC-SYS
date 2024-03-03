import MySQLdb
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from backend.spider.utils.parser import get_courses_url, parser_comments
from backend.spider.utils.saver import saver


def spider_to_db(course_key):
    '''
    @description: This is the main function to set the database info and load the webdriver, then start the crawler
    '''
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

        select_sql = """
                        select id 
                        from mooc.course_keys
                        where course_key = %s
                     """
        cursor.execute(select_sql, (course_key,))
        course_key_id = cursor.fetchall()

        options = Options()
        driver = webdriver.Chrome(options=options)
        driver.maximize_window()

        comments_list = []

        course_url = 'https://www.icourse163.org/search.htm?search=' + course_key + '#/'
        university_link_list = get_courses_url(course_url, driver)
        for university_link in university_link_list:
            try:
                university_name = university_link[0]
                url = university_link[1]

                course_name, teacher_name, url, userid_list, names_list, comments_list, created_time_list, course_time_list, voteup_list, \
                rating_list = parser_comments(url, driver)

                saver(course_key_id, course_name, university_name, teacher_name, url, userid_list, names_list,
                      comments_list,
                      created_time_list, course_time_list, voteup_list, rating_list,
                      conn, cursor)

                # break

            except Exception:
                print("Error: ", university_link)
                continue
        print("\nALL Done...")
    except Exception as e:
        print("异常信息：", e)
        conn.rollback()
    finally:
        driver.quit()
        cursor.close()
        conn.close()
        return comments_list

if __name__ == "__main__":
    spider_to_db("数据结构")
