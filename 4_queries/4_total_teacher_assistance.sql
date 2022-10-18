-- SELECT teachers.name AS name,COUNT(assistance_requests.id) AS total_assistance
-- FROM teachers
-- JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY name

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;
