-- List the first 10 distinct last names sorted in descending order. Find employees born on Christmas & hired in the 90s and update it to just find the first 5. Update the query to find the tenth batch of results.

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25' ORDER BY birth_date ASC, hire_date DESC LIMIT 5 OFFSET 45;