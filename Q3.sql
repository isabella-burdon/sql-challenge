-- Question3: List the manager of each department along with their department number, 
-- department name, employee number, last name, and first name (2 points)

DROP TABLE IF EXISTS "question3";
CREATE TABLE "question3" (
    "emp_no" varchar(30) NOT NULL,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "dept_no" varchar(30) NOT NULL,
    "dept_name" varchar(30) NOT NULL,
    CONSTRAINT "pk_question3" PRIMARY KEY ("emp_no")
);

INSERT INTO "question3" ("emp_no", "first_name", "last_name", "dept_no", "dept_name")
SELECT e."emp_no", e."first_name", e."last_name", dm."dept_no", ds."dept_name"
FROM "employees" e
JOIN "dept_manager" dm ON e."emp_no" = dm."emp_no"
JOIN "departments" ds ON dm."dept_no" = ds."dept_no";

SELECT * FROM question3