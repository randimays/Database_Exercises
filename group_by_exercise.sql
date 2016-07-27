SELECT DISTINCT title FROM titles ORDER BY title ASC;
SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE "%e%";
SELECT DISTINCT last_name FROM employees WHERE (last_name LIKE '%q%') AND  (last_name NOT LIKE '%qu%');