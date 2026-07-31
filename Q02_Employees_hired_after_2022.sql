/*
Q2. Find employees hired on or after 1-Jan-2022.
*/
SELECT emp_name, hire_date
FROM employees
WHERE hire_date >= DATE '2022-01-01'
ORDER BY hire_date;

/*
Explanation: filters rows using a date literal comparison
against the hire_date column.
*/
