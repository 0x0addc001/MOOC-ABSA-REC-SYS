import time
import random
from selenium.webdriver.common.by import By
from pyquery import PyQuery as pq
from bs4 import BeautifulSoup


# get all course url from query page
def get_courses_url(course_url, driver):
    '''
    @description: get the course url from query page
    @param {"course_url":course_url,"driver":chrome driver}
    @return: link_list
    '''
    link_list = []
    university_list = []
    driver.get(course_url)
    time.sleep(3)

    while True:
        # get the page source
        html = driver.page_source
        soup = BeautifulSoup(html, 'html.parser')
        link_area = soup.find('div', {'class': 'lists'}).find_all('div', {'class': 'cnt f-pr'})
        for tags in link_area:

            tag_university = tags.find_all('a', {'class': 't21 f-fc9'})
            for a_u in tag_university:
                university = a_u.text.strip()
                university_list.append(university)
                print(university)

            tag_link = tags.find('div', {'class': 't1 f-f0 f-cb first-row'}).find_all('a')
            for a_l in tag_link:

                # get the course url
                link = a_l.get('href')
                try:
                    if link.__contains__('www') and not link.__contains__('http') and not link.__contains__('undefined'):
                        link = 'https:' + link
                        link_list.append(link)
                        print(link)
                except Exception:
                    continue

        break  # todo

        # # auto click the next page
        # next_page = driver.find_element(by=By.XPATH, value=
        #     '//li[@class="ux-pager_btn ux-pager_btn__next"]/a')
        # next_page.click()
        # time.sleep(random.randint(1, 3))
        #
        # if next_page.get_attribute("class") == "th-bk-disable-gh":
        #     link_list.append(link)
        #     break

    # link_list = list(set(link_list))
    university_link_list = zip(university_list, link_list)
    return university_link_list


def parser_comments(url, driver):
    '''
    @description: get the course comments info from the course page
    @param {"url":course_url,"driver":chrome driver}
    @return:  course_name, teacher, url, names_list, comments_list, created_time_list, course_times_list, voteup_list, rating_list
    '''
    driver.get(url)
    cont = driver.page_source
    soup = BeautifulSoup(cont, 'html.parser')

    find_comments = driver.find_element(by=By.ID, value=
    "review-tag-button")  # click the comment tag
    find_comments.click()
    time.sleep(1)

    # get the course name and teacher info
    info = pq(driver.page_source)
    course_name = info(".course-title.f-ib.f-vam").text()
    teacher = info(".cnt.f-fl").text().replace("\n", " ")

    # init the parameter list
    userid_list = []  # userid_list
    names_list = []  # nikename
    comments_list = []  # comments
    created_time_list = []  # created_time
    course_times_list = []  # course_times
    voteup_list = []  # voteup
    rating_list = []  # rating

    while True:
        page_source = driver.page_source
        soup = BeautifulSoup(page_source, 'html.parser')
        try:
            # use bs4 to locate the comments
            content = soup.find_all('div', {
                'class':
                    'ux-mooc-comment-course-comment_comment-list_item_body'
            })

            for ctt in content:

                author_name = ctt.find_all(
                    'a', {
                        'class':
                            'primary-link ux-mooc-comment-course-comment_comment-list_item_body_user-info_name'
                    })
                comments = ctt.find_all(
                    'div', {
                        'class':
                            'ux-mooc-comment-course-comment_comment-list_item_body_content'
                    })
                created_time = ctt.find_all(
                    'div', {
                        'class':
                            'ux-mooc-comment-course-comment_comment-list_item_body_comment-info_time'
                    })
                course_times = ctt.find_all(
                    'div', {
                        'class':
                            'ux-mooc-comment-course-comment_comment-list_item_body_comment-info_term-sign'
                    })
                voteup = ctt.find_all('span', {'primary-link'})
                rating = ctt.find_all('div', {"star-point"})

                for userid in author_name:
                    userid_list.append(userid.get('href').split('=')[-1])
                for name in author_name:
                    names_list.append(name.text.strip())
                for comment in comments:
                    comments_list.append(comment.text.strip('\n'))
                for ct in created_time:
                    created_time_list.append(ct.text.strip())
                for cts in course_times:
                    course_times_list.append(cts.text.strip())
                for vt in voteup:
                    voteup_list.append(vt.text.strip('\n'))
                for r in rating:
                    rating_list.append(str((len(r) - 13) / 2))

            break  # todo

            # # auto click the next page
            # next_page = driver.find_element(by=By.XPATH, value=
            #     '//li[@class="ux-pager_btn ux-pager_btn__next"]/a')
            # next_page.click()
            # time.sleep(random.randint(1, 3))
            #
            # if next_page.get_attribute("class") == "th-bk-disable-gh":
            #     page_source = driver.page_source
            #     soup = BeautifulSoup(page_source, 'html.parser')
            #     # if the page is the last page, then get the last page's source page
            #     content = soup.find_all(
            #         'div', {
            #             'class':
            #             'ux-mooc-comment-course-comment_comment-list_item_body'
            #         })
            #
            #     for ctt in content:
            #
            #         author_name = ctt.find_all(
            #             'a', {
            #                 'class':
            #                 'primary-link ux-mooc-comment-course-comment_comment-list_item_body_user-info_name'
            #             })
            #         comments = ctt.find_all(
            #             'div', {
            #                 'class':
            #                 'ux-mooc-comment-course-comment_comment-list_item_body_content'
            #             })
            #         created_time = ctt.find_all(
            #             'div', {
            #                 'class':
            #                 'ux-mooc-comment-course-comment_comment-list_item_body_comment-info_time'
            #             })
            #         course_times = ctt.find_all(
            #             'div', {
            #                 'class':
            #                 'ux-mooc-comment-course-comment_comment-list_item_body_comment-info_term-sign'
            #             })
            #         voteup = ctt.find_all('span', {'primary-link'})
            #         rating = ctt.find_all('div', {"star-point"})
            #
            #         for userid in author_name:
            #             userid_list.append(userid.get('href').split('=')[-1])
            #         for name in author_name:
            #             names_list.append(name.text)
            #         for comment in comments:
            #             comments_list.append(comment.text.strip('\n'))
            #         for ct in created_time:
            #             created_time_list.append(ct.text)
            #         for cts in course_times:
            #             course_times_list.append(cts.text)
            #         for vt in voteup:
            #             voteup_list.append(vt.text.strip('\n'))
            #         for r in rating:
            #             rating_list.append(str(len(r)))
            #     break
        except Exception:
            break

    return course_name, teacher, url, userid_list, names_list, comments_list, created_time_list, course_times_list, voteup_list, rating_list
