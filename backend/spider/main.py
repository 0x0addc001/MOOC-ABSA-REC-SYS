import MySQLdb
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from utils.parser import get_courses_url, parser_comments
from utils.saver import saver


def main(course_key):
    '''
    @description: This is the main function to set the database info and load the webdriver, then start the crawler
    '''
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
    options = Options()
    driver = webdriver.Chrome(options=options)
    driver.maximize_window()

    course_url = 'https://www.icourse163.org/search.htm?search=' + course_key + '#/'
    university_link_list = get_courses_url(course_url, driver)
    for university_link in university_link_list:
        try:
            university_name = university_link[0]
            url = university_link[1]

            course_name, teacher_name, url, userid_list, names_list, comments_list, created_time_list, course_time_list, voteup_list, \
            rating_list = parser_comments(url, driver)

            saver(course_key, course_name, university_name, teacher_name, url, userid_list, names_list, comments_list,
                  created_time_list, course_time_list, voteup_list, rating_list,
                  conn, cursor)

        except Exception:
            print("Error: ", university_link)
            continue

    driver.quit()
    conn.close()

    print("\nALL Done...")


if __name__ == "__main__":
    main("数据结构")
