-- Update initial query to use OR instead of IN. Add a condition to find everybody with those names who is male. Find all employees whose last name starts or ends with 'E'. Duplicate the previous query and update it to find all employees whose last name starts AND ends with 'E'. Find all employees hired in the 90s AND born on Christmas. Find all employees with a 'q' in their last name but NOT 'qu'.

SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');
SELECT * FROM employees WHERE last_name LIKE "E%" OR last_name LIKE "%e";
SELECT * FROM employees WHERE last_name LIKE "E%" AND last_name LIKE "%e";
SELECT * FROM employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-21') AND (birth_date LIKE '%-12-25');
SELECT * FROM employees WHERE (last_name LIKE '%q%') AND  (last_name NOT LIKE '%qu%');