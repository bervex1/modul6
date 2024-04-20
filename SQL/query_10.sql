query_10 = """
SELECT subjects.name
FROM subjects
JOIN lecturers ON subjects.lecturer_id = lecturers.id
WHERE lecturers.name = ? AND subjects.id IN (
    SELECT subjects.id
    FROM subjects
    JOIN grades ON subjects.id = grades.subject_id
    JOIN students ON grades.student_id = students.id
    WHERE students.name = ?
);
"""