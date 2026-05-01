/*
LeetCode 1280 - Students And Examinations
Easy

Schema:
Students(student_id, student_name)
Subjects(subject_name)
Examinations(student_id, subject_name)

Task:
Return every student and every subject with the number of times
the student attended that subject exam.

Order by student_id and subject_name.
*/

SELECT st.student_id,
       st.student_name,
       su.subject_name,
       COUNT(e.student_id) AS attended_exams
FROM Students st CROSS JOIN Subjects su LEFT JOIN Examinations e
ON st.student_id = e.student_id AND su.subject_name = e.subject_name
GROUP BY st.student_id, st.student_name, su.subject_name
ORDER BY st.student_id, su.subject_name;

-- Pattern: CROSS JOIN + LEFT JOIN + GROUP BY
-- Key Insight: Build all student-subject combinations first,
-- then count matching exam rows. Missing matches become 0.