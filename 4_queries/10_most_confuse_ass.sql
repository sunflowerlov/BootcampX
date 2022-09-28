SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, count(assistance_requests) as total_request
FROM assistance_requests
JOIN assignments ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_request DESC
