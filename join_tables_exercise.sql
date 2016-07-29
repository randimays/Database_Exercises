SELECT * FROM employees;

-- Question 1
SELECT
	d.dept_name AS 'Department Name',
	CONCAT(e.first_name, " ", e.last_name) AS 'Department Manager'
FROM departments AS d
	JOIN dept_manager AS dm ON dm.dept_no = d.dept_no AND dm.to_date > CURDATE()
	JOIN employees AS e ON dm.emp_no = e.emp_no
GROUP BY d.dept_name ASC;

-- Question 2
SELECT
	d.dept_name AS 'Department Name',
	CONCAT(e.first_name, " ", e.last_name) AS 'Department Manager'
FROM departments AS d
	JOIN dept_manager AS dm ON dm.dept_no = d.dept_no AND dm.to_date > CURDATE()
	JOIN employees AS e ON e.emp_no = dm.emp_no AND e.gender = 'F'
GROUP BY d.dept_name ASC;

-- Question 3
SELECT t.title AS 'Title', COUNT(*) AS 'Total Employees'
FROM titles AS t
JOIN dept_emp AS de ON t.emp_no = de.emp_no AND t.to_date = '9999-01-01'
JOIN departments AS d ON de.dept_no = d.dept_no AND de.to_date = '9999-01-01'
WHERE d.dept_name = 'Customer Service'
GROUP BY t.title;

-- Question 4
SELECT
	d.dept_name AS 'Department Name',
	CONCAT(e.first_name, " ", e.last_name) AS 'Department Manager',
	s.salary AS 'Salary'
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

-- BONUS
SELECT
	CONCAT(employees.first_name, " ", employees.last_name) AS employee_name,
	departments.dept_name AS department_name,
	CONCAT(emps2.first_name, " ", emps2.last_name) AS manager
FROM employees AS emps
JOIN dept_emp ON dept_emp.emp_no = emps.emp_no AND dept_emp.to_date = '9999-01-01'
JOIN departments AS depts ON depts.dept_no = dept_emp.dept_no
JOIN dept_manager AS dmgrs ON dmgrs.dept_no = depts.dept_no AND dmgrs.to_date = '9999-01-01'
JOIN employees AS emps2 ON emps2.emp_no = dmgrs.emp_no
ORDER BY depts.dept_name ASC;