SELECT day, count(assignments) as number_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day