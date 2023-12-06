-- Question4: List the department number for each employee along with that
-- employee’s employee number, last name, first name, and department name

DROP TABLE IF EXISTS "question4";
CREATE TABLE "question4" (
    "emp_no" varchar(30) NOT NULL,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "dept_no" varchar(30) NOT NULL,
    "dept_name" varchar(30) NOT NULL,
    CONSTRAINT "pk_question4" PRIMARY KEY ("emp_no")
);

INSERT INTO "question4" ("emp_no", "first_name", "last_name", "dept_no", "dept_name")
SELECT e."emp_no", e."first_name", e."last_name", de."dept_no", ds."dept_name"
FROM "employees" e
JOIN "dept_emp" de ON e."emp_no" = de."emp_no"
JOIN "departments" ds ON de."dept_no" = ds."dept_no";

SELECT * FROM "question4"
ORDER BY "emp_no";

-- note many to many emp_no >-< dept_no relationship 
