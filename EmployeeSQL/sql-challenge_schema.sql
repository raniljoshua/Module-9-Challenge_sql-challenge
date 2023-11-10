DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR REFERENCES titles(title_id),
	birthdate VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
);

CREATE TABLE dept_emp(
	emp_no INTEGER REFERENCES employees(emp_no),
	dept_no VARCHAR REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR REFERENCES departments(dept_no),
	emp_no INTEGER REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no INTEGER REFERENCES employees(emp_no),
	salary INTEGER
);



