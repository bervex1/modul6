query_3 = """
SELECT students.group_id, AVG(grades.grade) AS average_grade
FROM students
JOIN grades ON students.id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.id
WHERE subjects.name = ?
GROUP BY students.group_id;
"""