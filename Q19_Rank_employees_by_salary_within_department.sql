/*
Q19. Rank employees by salary within their own department
     using the RANK() analytic/window function.
*/
SELECT e.emp_name, d.dept_name, e.salary,
       RANK() OVER (PARTITION BY d.dept_name ORDER BY e.salary DESC) AS dept_rank
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
ORDER BY d.dept_name, dept_rank;
