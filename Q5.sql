-- Question5: List first name, last name, and sex of each employee whose first name 
-- is Hercules and whose last name begins with the letter B

DROP TABLE IF EXISTS "question5";
CREATE TABLE "question5" (
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "sex" varchar(30) NOT NULL
);

INSERT INTO "question5" ("first_name", "last_name", "sex")
SELECT "first_name", "last_name", "sex"
FROM "employees"
WHERE "first_name" = 'Hercules' AND "last_name" LIKE 'B%';

SELECT * FROM "question5";