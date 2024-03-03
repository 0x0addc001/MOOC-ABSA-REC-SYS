
def saver(course_key_id, course_name, university_name, teacher_name, url, user_id_list, name_list,
          comments_list, created_time_list, course_time_list, voteup_list, rating_list,
          conn, cursor):
    '''
    @description: Save the comments info to mysql
    @param All field in mysql; {"conn,cursor": the code to use mysql}
    @return: None
    '''
    # saving to database

    insert_sql = """
                            insert into course_entities(course_key_id, course_name, university_name, teacher_name, url)
                            values(%s,%s,%s,%s,%s)
                         """

    cursor.execute(
        insert_sql,
        (course_key_id, course_name, university_name, teacher_name, url))

    conn.commit()

    print("{}-{}-{}-{}-{}: saving to database successful".format(
        course_key_id, course_name, university_name, teacher_name, url))

    select_sql = """
                    select id 
                    from mooc.course_entities
                    where course_name = %s
                 """
    cursor.execute(select_sql, (course_name,))
    course_entity_id = cursor.fetchall()

    for i in range(len(name_list)):
        user_id = user_id_list[i]
        user_name = name_list[i]
        comments = comments_list[i]
        created_time = created_time_list[i]
        course_time = course_time_list[i]
        voteup = voteup_list[i]
        rating = rating_list[i]

        # line = [
        #     user_id, user_name, comments,
        #     created_time, course_time, voteup, rating
        # ]
        #
        # print(line)

        insert_sql = """
                        insert into raw_comments(course_entity_id, user_id, user_name, comments, created_time, course_time, voteup, rating)
                        values(%s,%s,%s,%s,%s,%s,%s,%s)
                     """

        cursor.execute(
            insert_sql,
            (course_entity_id, user_id, user_name,
             comments, created_time, course_time, voteup, rating))

        conn.commit()

        print("{}-{}-{}-{}-{}-{}-{}-{}: saving to database successful".format(
            course_entity_id, user_id, user_name,
            comments, created_time, course_time, voteup, rating))
