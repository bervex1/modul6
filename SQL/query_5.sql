query_5 = """
SELECT subjects.name
FROM subjects
JOIN lecturers ON subjects.lecturer_id = lecturers.id
WHERE lecturers.name = ?;
"""