-- Question8: List the frequency counts, in descending order, of all the employee 
-- last names (that is, how many employees share each last name)

DROP TABLE IF EXISTS "question8";
CREATE TABLE "question8" AS
SELECT e."last_name", COUNT(e."last_name") AS "frequency"
FROM "employees" e
GROUP BY e."last_name"
ORDER BY "frequency" DESC;

SELECT * FROM "question8";
