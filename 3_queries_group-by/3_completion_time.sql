SELECT students.name as name, avg(assignment_submissions.duration) as average_assignment_completion
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY name
ORDER BY average_assignment_completion DESC;
