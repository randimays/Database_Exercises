SELECT * FROM employees;

-- Employees with the same hire date as employee 101010
SELECT
	emp_no AS 'Emp #',
	CONCAT(first_name, ' ', last_name) AS 'Name',
	hire_date AS 'Hire Date'
FROM employees
WHERE hire_date IN
	(SELECT hire_date 
	FROM employees 
	WHERE emp_no = 101010);

-- All titles held by all employees with the first name Aamod
SELECT title AS 'Title', count(title) AS 'Total'
FROM titles
WHERE emp_no IN
	(SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod')
GROUP BY title;

-- Find all female department managers
SELECT first_name, last_name, gender
FROM employees
WHERE emp_no IN
	(SELECT emp_no
	FROM dept_manager
	WHERE to_date = '9999-01-01')
AND gender = 'F';

-- Find all department names that have female managers
SELECT dept_name AS 'Department'
FROM departments
WHERE dept_no IN
	(SELECT dept_no
	FROM dept_manager
	WHERE to_date = '9999-01-01' AND emp_no IN
		(SELECT emp_no 
		FROM employees 
		WHERE gender = 'F'));

-- You've been hired as an expert witness to determine if the company in the employees database has gender pay disparity. Using joins and/or sub-queries, craft queries that return the following results: 3)  Current average salaries of female vs. male employees, and female vs. male managers

-- Historic avg salary of female vs. male employees
SELECT 
	e.gender AS 'Gender',
	AVG(salary) AS 'Average Salary'
FROM salaries AS s
JOIN employees AS e
	ON s.emp_no = e.emp_no
GROUP BY e.gender;

-- Current average salaries of female vs. male employees
SELECT 
	e.gender AS 'Gender',
	AVG(salary) AS 'Average Salary'
FROM salaries AS s
JOIN employees AS e
	ON s.emp_no = e.emp_no
WHERE s.emp_no IN
	(SELECT emp_no
	FROM dept_emp
	WHERE to_date = '9999-01-01')
GROUP BY e.gender;

-- Historic avg salary of female vs. male managers
SELECT
	e.gender AS 'Gender',
	AVG(salary) AS 'Average Salary'
FROM salaries AS s
JOIN employees AS e
	ON s.emp_no = e.emp_no
WHERE s.emp_no IN
	(SELECT emp_no
	FROM dept_manager)
GROUP BY e.gender;

-- Current avg salary of female vs. male managers
SELECT
	e.gender AS 'Gender',
	AVG(salary) AS 'Average Salary'
FROM salaries AS s
JOIN employees AS e
	ON s.emp_no = e.emp_no
WHERE s.emp_no IN
	(SELECT emp_no
	FROM dept_manager
	WHERE to_date = '9999-01-01')
GROUP BY e.gender;