/*
Q13. Show every department's name with its employee count,
     including departments that currently have zero employees.
     (LEFT JOIN keeps unmatched departments.)
*/
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name
ORDER BY employee_count DESC;
