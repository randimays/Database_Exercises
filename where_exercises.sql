-- use Sequel Pro to run queries in your employees database. Find 1) employees with the first names 'Irena', 'Vidya', or 'Maya' 2) employees whose last name starts with 'E' 3) employees hired in the 90s 4) employees born on Christmas 5) employees with a 'q' in their last name. 

SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');
SELECT * FROM employees WHERE last_name LIKE "E%" OR last_name LIKE "%e";
SELECT * FROM employees WHERE last_name LIKE "E%" AND last_name LIKE "%e";
SELECT * FROM employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-21') AND (birth_date LIKE '%-12-25');
SELECT * FROM employees WHERE (last_name LIKE '%q%') AND  (last_name !LIKE '%qu%');