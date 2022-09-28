SELECT cohorts.name, avg(completed_at - started_at) as avg_duration
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY avg_duration