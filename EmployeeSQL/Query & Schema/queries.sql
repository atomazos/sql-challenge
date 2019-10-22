-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
--     Join the employees and salary tables
--     Create new table of the query output of the question
--     Download CSV of the table
CREATE TABLE question_one AS (

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no
)

select * from public.question_one


-- 2. List employees who were hired in 1986.
--     Join the employees and salary tables
--     Create new table of the query output of the question
--     Download CSV of the table

CREATE TABLE question_two AS (

SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
)

select * from public.question_two


-- 3. List the manager of each department with the following information: 
--     department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
--     Join the employees and salary tables
--     Create new table of the query output of the question
--     Download CSV of the table

CREATE TABLE question_three AS
(

-- SELECT * FROM department_manager

-- SELECT * FROM departments

-- SELECT * FROM employees

SELECT d_m.dept_no, d.dept_name, d_m.emp_no, d_m.from_date, d_m.to_date, e.last_name, e.first_name
FROM department_manager d_m
LEFT JOIN departments d
ON d_m.dept_no =d.dept_no
LEFT JOIN employees e
ON d_m.emp_no = e.emp_no
)
select * from public.question_three

-- 4. List the department of each employee with the following: employee number, last name, first name, and department name.
--     Join the employees and salary tables
--     Create new table of the query output of the question
--     Download CSV of the table

CREATE TABLE question_four AS
(
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN department_employees ON employees.emp_no = department_employees.emp_no
INNER JOIN departments ON department_employees.dept_no = departments.dept_no
	)
select * from public.question_four

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
--     Join the employees and salary tables
--     Create new table of the query output of the question
--     Download CSV of the table

CREATE TABLE question_five AS
(
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'Hercule%' AND last_name LIKE 'B%'
	)

select * from public.question_five

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
--     Join the employees and salary tables
--     Create new table of the query output of the question
--     Download CSV of the table

CREATE TABLE question_six AS
(

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN department_employees ON employees.emp_no = department_employees.emp_no
INNER JOIN departments ON department_employees.dept_no = departments.dept_no
-- copy and paste the code for Question 4 and add the below code
WHERE dept_name LIKE 'Sale%'
	)

select * from public.question_six 

-- 7. List all employees in the Sales and Development departments,
--    including their employee number, last name, first name, and department name.
--     Join the employees and salary tables
--     Create new table of the query output of the question
--     Download CSV of the table

CREATE TABLE question_seven AS
(

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN department_employees ON employees.emp_no = department_employees.emp_no
INNER JOIN departments ON department_employees.dept_no = departments.dept_no
-- copy and paste the code for Question 6 and add Development department code
WHERE dept_name LIKE 'Developmen%' OR dept_name LIKE 'Sale%'
	)

select * from public.question_seven

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
--     Join the employees and salary tables
--     Create new table of the query output of the question
--     Download CSV of the table

CREATE TABLE question_eight AS
(
SELECT last_name, COUNT(last_name) AS "name count"
FROM employees
GROUP BY last_name
ORDER BY "name count" DESC
	)

select * from public.question_eight
