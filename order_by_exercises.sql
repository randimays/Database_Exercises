-- Modify first query to order by first name. Update to order by first name and then last name. Change the order by clause so you order by last name then first name. Update queries for employees with 'E' in their last name to sort the results by their employee number. Reverse the sort order for both queries. Change the query for employees hired in the 90s and born on Christmas so that the first result is the oldest employee who was hired last.

SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY last_name ASC, first_name ASC;
SELECT * FROM employees WHERE (last_name LIKE "E%" OR last_name LIKE "%e") ORDER BY emp_no DESC;
SELECT * FROM employees WHERE (last_name LIKE "E%" AND last_name LIKE "%e") ORDER BY emp_no DESC;
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25' ORDER BY birth_date ASC, hire_date DESC;
SELECT * FROM employees WHERE (last_name LIKE '%q%') AND  (last_name NOT LIKE '%qu%');