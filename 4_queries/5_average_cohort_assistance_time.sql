SELECT cohorts.name as cohort, AVG(assistance_requests.completed_at-assistance_requests.started_at) as average_assistance_request_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY average_assistance_request_time ASC;