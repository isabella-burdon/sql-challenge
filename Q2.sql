-- Question2: List the first name, last name, and hire date for the employees who were hired in 1986

DROP TABLE IF EXISTS "question2";
CREATE TABLE "question2" (
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "hire_date" date NOT NULL
);

-- NB date format: 2/14/1993

INSERT INTO "question2" ("first_name", "last_name", "hire_date")
SELECT "first_name", "last_name", "hire_date"
FROM "employees"
WHERE EXTRACT(YEAR FROM "hire_date") = 1986;

SELECT * FROM "question2";

