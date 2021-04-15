-- Detalils of employee: employee number, 
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

-- First, Last name and hire date from year 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees 
WHERE EXTRACT(YEAR FROM "hire_date") = 1986

-- Manager from each department with department number, department name, managers employee number, last name and first name. 
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;

-- Department of e/ employee with the following information: employee number, last name, first name and department name. 
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- First name, last name, and sex for employees with first name "Hercules" and last name starts with "B".
SELECT employees.first_name, employees.last_name, employees.sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- All employees from sales or development department W/ employee number, last name, first name, and department name. 
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no WHERE department.dept_name='Sales' or department.dept_name='Development';

-- Descending order, frequency count of employees last name, ex. how many employees share last name. 
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;

