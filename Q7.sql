-- List each employee in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name

DROP TABLE IF EXISTS "question7";
CREATE TABLE "question7" AS
SELECT e."emp_no", e."first_name", e."last_name", ds."dept_name"
FROM "employees" e
JOIN "dept_emp" de ON e."emp_no" = de."emp_no"
JOIN "departments" ds ON de."dept_no" = ds."dept_no"
WHERE ds."dept_name" = 'Sales' OR ds."dept_name" = 'Development';

SELECT * FROM "question7";