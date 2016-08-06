-- Use DISTINCT to find unique titles in the titles table. Update the result to sort the results alphabetically. Update employees whose last names start & end with 'E' query to find only unique last names. Update previous query to find unique combinations of first and last names where the last name starts and ends with 'E'. Find unique last names with a 'q' but not 'qu.' Use DISTINCT or GROUP BY.

SELECT DISTINCT title FROM titles ORDER BY title ASC;
SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE "%e%";
SELECT DISTINCT last_name FROM employees WHERE (last_name LIKE '%q%') AND  (last_name NOT LIKE '%qu%');