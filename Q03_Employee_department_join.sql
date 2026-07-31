/*
Q3. Display each employee's name alongside their department
    name and location using an INNER JOIN.
*/
SELECT e.emp_name, d.dept_name, d.location
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
ORDER BY d.dept_name, e.emp_name;
