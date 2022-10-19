-- SELECT teachers.name AS name,COUNT(assistance_requests.id) AS total_assistance
-- FROM teachers
-- JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY name

const queryString = `
SELECT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = $1
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;
`;