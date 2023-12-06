DROP TABLE IF EXISTS "departments";
CREATE TABLE "departments" (
    "dept_no" varchar(30)   NOT NULL,
    "dept_name" varchar(30)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY ("dept_no")
);

DROP TABLE IF EXISTS "dept_emp";
CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(30)   NOT NULL
);

-- no unique keys in this table so could not set a primary key
-- many to many emp / depts relationships

DROP TABLE IF EXISTS "dept_manager";
CREATE TABLE "dept_manager" (
    "dept_no" varchar(30)   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY ("emp_no"),
    CONSTRAINT "fk_dept_manager_dept" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

DROP TABLE IF EXISTS "employees";
CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(30)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "sex" varchar(30)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no")
);

DROP TABLE IF EXISTS "salaries";
CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY ("emp_no"),
    CONSTRAINT "fk_salaries_emp" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

DROP TABLE IF EXISTS "titles";
CREATE TABLE "titles" (
    "title_id" varchar(30)   NOT NULL,
    "title" varchar(30)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY ("title_id")
);


-- notes:
-- A FOREIGN KEY is a field (or collection of fields) in one table, 
-- that refers to the PRIMARY KEY in another table.
-- The table with the foreign key is called the child table, 
-- and the table with the primary key is called the referenced or parent table.

