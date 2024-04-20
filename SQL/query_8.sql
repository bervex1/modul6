query_8 = """
SELECT AVG(grades.grade) AS average_grade
FROM grades
JOIN subjects ON grades.subject_id = subjects.id
JOIN lecturers ON subjects.lecturer_id = lecturers.id
WHERE lecturers.name = ? AND subjects.name = ?;
"""