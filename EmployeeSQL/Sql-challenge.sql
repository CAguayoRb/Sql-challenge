DROP TABLE employees;

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY NOT NULL,
	title_id VARCHAR(30),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(6),
	hire_date DATE
);

SELECT * FROM employees;

DROP TABLE titles;

CREATE TABLE titles(
	title_id VARCHAR (20) PRIMARY KEY NOT NULL,
	title VARCHAR (20) NOT NULL
);

SELECT * FROM titles; 

DROP TABLE departments;

CREATE TABLE departments(
	dept_no VARCHAR(20) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

SELECT * FROM departments;

DROP TABLE salaries;

CREATE TABLE salaries(
	emp_no INTEGER PRIMARY KEY NOT NULL,
	salary INTEGER
);

SELECT * FROM salaries;

DROP TABLE dept_emp;

CREATE TABLE dept_emp(
	emp_no INTEGER PRIMARY KEY NOT NULL,
	dept_no VARCHAR(20)
);

SELECT * FROM dept_emp;

DROP TABLE dept_manager;

CREATE TABLE dept_manager(
	dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
	emp_no INTEGER
);

SELECT * FROM dept_manager;