/*
Q6. Find the second-highest salary in the company using a
    correlated subquery (works on any SQL database).
*/
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

/*
Oracle-specific alternative using analytic functions:
SELECT salary FROM (
  SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) rnk
  FROM employees
) WHERE rnk = 2;
*/
