
def saver(course_key, course_name, university_name, teacher_name, url, userid_list, name_list,
          comments_list, created_time_list, course_time_list, voteup_list, rating_list,
          conn, cursor):
    '''
    @description: Save the comments info to mysql
    @param All field in mysql; {"conn,cursor": the code to use mysql}
    @return: None
    '''
    # saving to database
    for i in range(len(name_list)):
        userid = userid_list[i]
        author_name = name_list[i]
        comments = comments_list[i]
        created_time = created_time_list[i]
        course_time = course_time_list[i]
        voteup = voteup_list[i]
        rating = rating_list[i]
        line = [
             course_key, course_name, university_name, teacher_name, url, userid, author_name, comments,
            created_time, course_time, voteup, rating
        ]

        print(line)

        insert_sql = """
                        insert into raw_comments(course_key, course_name, university_name, teacher_name, url, userid, author_name, comments, created_time, course_time, voteup, rating)
                        values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
                     """

        cursor.execute(
            insert_sql,
            (course_key, course_name, university_name, teacher_name, url, userid, author_name,
             comments, created_time, course_time, voteup, rating))

        conn.commit()

        print("{}-{}-{}: saving to database successful".format(
            userid, author_name, course_name, university_name))
