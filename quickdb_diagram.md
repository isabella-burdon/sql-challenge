departments
-
dept_no PK varchar(30) FK - dept_manager.dept_no
dept_name varchar(30)

emp_dept
-
dept_no FK varchar(30) FK >- departments.dept_no
emp_no PK int FK - employees.emp_no

dept_manager
-
emp_no PK int FK - employees.emp_no
dept_no varchar(30)

employees
-
emp_no PK int FK - salaries.emp_no
emp_title_id varchar(30) FK >- titles.title_id
birth_date date
first_name varchar(30)
last_name varchar(30)
sex varchar(30)
hire_date date

salaries
-
emp_no PK int
salary int

titles
-
title_id PK varchar(30)
title varchar(30)