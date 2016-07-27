SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY last_name ASC, first_name ASC;
SELECT * FROM employees WHERE (last_name LIKE "E%" OR last_name LIKE "%e") ORDER BY emp_no DESC;
SELECT * FROM employees WHERE (last_name LIKE "E%" AND last_name LIKE "%e") ORDER BY emp_no DESC;
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25' ORDER BY birth_date ASC, hire_date DESC;
SELECT * FROM employees WHERE (last_name LIKE '%q%') AND  (last_name NOT LIKE '%qu%');