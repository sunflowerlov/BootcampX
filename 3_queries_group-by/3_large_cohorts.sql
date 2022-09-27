SELECT cohorts.name, count(students.*) as total_students
FROM cohorts JOIN students ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY total_students