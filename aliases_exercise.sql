-- Return 10 employees in a result set named 'full_name' in the format of "lastname, firstname" for each employee. Add the date of birth for each employee. Update the query to format full name to include the employee number so it is formatted like this: "employee number - lastname, first name" with a separate column for DOB.

USE employees;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date AS DOB FROM employees ORDER BY emp_no LIMIT 10;