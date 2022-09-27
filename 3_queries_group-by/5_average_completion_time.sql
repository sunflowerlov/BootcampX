SELECT students.name as students, avg(assignment_submissions.duration) as time_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE end_date IS NULL
GROUP BY students
ORDER BY time_duration DESC