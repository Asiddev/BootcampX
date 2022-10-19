const { Pool } = require("pg");

const pool = new Pool({
  user: "alexsidor",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

const cohort = process.argv[2];

let query = `
SELECT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = '${cohort}'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;
`;

pool.query(query).then((res) => {
  console.log(res.rows);
  res.rows.forEach((user) => {
    console.log(`${user.cohort} : ${user.teacher}`);
  });
});
