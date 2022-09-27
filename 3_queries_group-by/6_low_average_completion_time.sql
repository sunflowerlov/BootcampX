SELECT students.name as students, avg(assignment_submissions.duration) as average_assignment_time, avg(assignments.duration) as average_suggestion_time
FROM assignment_submissions
JOIN assignments ON assignment_id = assignments.id
JOIN students ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_time
