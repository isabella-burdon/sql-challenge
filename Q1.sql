-- Question1: List the employee number, last name, first name, sex, and salary of each employee

DROP TABLE IF EXISTS "question1";
CREATE TABLE "question1" (
    "emp_no" varchar(30) NOT NULL,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "salary" int,  -- Adding a salary column
    CONSTRAINT "pk_question1" PRIMARY KEY ("emp_no")
);

INSERT INTO "question1" ("emp_no", "first_name", "last_name", "salary")
SELECT e."emp_no", e."first_name", e."last_name", s."salary"
FROM "employees" e
JOIN "salaries" s ON e."emp_no" = s."emp_no";

SELECT * FROM question1
