/*
Q5. Find departments that have more than 2 employees.
    (Demonstrates GROUP BY + HAVING.)
*/
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING COUNT(e.emp_id) > 2;
