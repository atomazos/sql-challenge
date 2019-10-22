-- Data Modeling Inspect the CSVs and sketch out an ERD of the tables.
-- Data Engineering - Use the information you have to create a table schema for each of the six CSV files.
                   -- Import each CSV file into the corresponding SQL table.
--  Create the six tables
-- DROP TABLE employees
CREATE TABLE employees (
   emp_no INTEGER NOT NULL,
   birth_date DATE   NOT NULL,
   first_name VARCHAR(20)   NOT NULL,
   last_name VARCHAR   NOT NULL,
   gender CHAR(5)   NOT NULL,
   hire_date DATE   NOT NULL,
    PRIMARY KEY (emp_no)
);
select * from employees
-- DROP TABLE departments
CREATE TABLE departments (
   dept_no VARCHAR   NOT NULL,
   dept_name VARCHAR   NOT NULL,
    PRIMARY KEY (dept_no)
);
select * from departments
-- DROP TABLE department_manager
CREATE TABLE department_manager (
   dept_no VARCHAR  NOT NULL,
   emp_no INTEGER  NOT NULL,
   from_date DATE  NOT NULL,
   to_date DATE  NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);
9

-- DROP TABLE department_employees
CREATE TABLE department_employees (
   emp_no INTEGER   NOT NULL,
   dept_no VARCHAR   NOT NULL,
   from_date DATE   NOT NULL,
   to_date DATE   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);
select * from department_employees
-- DROP TABLE titles
CREATE TABLE titles (
   emp_no INTEGER   NOT NULL,
   title VARCHAR   NOT NULL,
   from_date DATE   NOT NULL,
   to_date DATE  NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no)
);
select * from titles
-- DROP TABLE salaries
CREATE TABLE salaries (
  emp_no INTEGER   NOT NULL,
   salary INTEGER   NOT NULL,
   from_date DATE   NOT NULL,
   to_date DATE   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no)
);
select * from titles
-- Data Analysis - see query sql file