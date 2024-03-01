
def load_db(course_key, cursor):
    course_entities = []
    try:
        select_sql = """
                        select course_name,university_name,teacher_name,url 
                        from mooc.course_key_entity 
                        where course_key = %s
                     """
        cursor.execute(select_sql, (course_key,))
        results = cursor.fetchall()

        for result in results:
            course_entity = {
                "course_name": result[0],
                "university_name": result[1],
                "teacher_name": result[2],
                "url": result[3]
            }
            course_entities.append(course_entity)
        print(course_entities)

        return course_entities
    except Exception as e:
        print(f"An error occurred: {e}")
        return None