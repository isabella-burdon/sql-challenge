-- This code would not run:
-- COPY "departments" ("dept_no", "dept_name")
-- FROM '/Users/issyburdon/Library/CloudStorage/Box-Box/daCourse/homework/module_9/sql-challenge/Starter_Code/data/departments.csv' 
-- DELIMITER ','
-- CSV HEADER;

INSERT INTO departments (dept_no, dept_name)
VALUES 
    ('d001', 'Marketing'),
    ('d002', 'Finance'),
    ('d003', 'Human Resources'),
    ('d004', 'Production'),
    ('d005', 'Development'),
    ('d006', 'Quality Management'),
    ('d007', 'Sales'),
    ('d008', 'Research'),
    ('d009', 'Customer Service');

SELECT * FROM departments;
