/*
Q7. List employees who earn more than the company's average
    salary.
*/
SELECT emp_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary DESC;
