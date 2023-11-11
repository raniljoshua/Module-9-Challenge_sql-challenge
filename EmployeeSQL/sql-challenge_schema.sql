DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;

-- After Creating the following tables, Import the data in the same order (because of dependencies)

CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(45) NOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(45) NOT NULL
);

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL REFERENCES titles(title_id),
	birthdate VARCHAR(45) NOT NULL,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date VARCHAR(45) NOT NULL
);

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL REFERENCES employees(emp_no),
	dept_no VARCHAR(4) NOT NULL REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no INTEGER NOT NULL REFERENCES employees(emp_no),
	salary INTEGER NOT NULL
);



