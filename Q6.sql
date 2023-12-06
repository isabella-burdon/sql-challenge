-- Question6: List each employee in the Sales department,
-- including their employee number, last name, and first name 

DROP TABLE IF EXISTS "question6";
CREATE TABLE "question6" AS
SELECT e."emp_no", e."first_name", e."last_name"
FROM "employees" e
JOIN "dept_emp" de ON e."emp_no" = de."emp_no"
JOIN "departments" ds ON de."dept_no" = ds."dept_no"
WHERE ds."dept_name" = 'Sales';

SELECT * FROM "question6";
