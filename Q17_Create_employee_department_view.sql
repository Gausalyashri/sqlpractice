/*
Q17. Create a reusable view exposing employee name,
     department name and salary (hides manager_id, dept_id).
*/
CREATE OR REPLACE VIEW vw_employee_overview AS
SELECT e.emp_name, d.dept_name, e.salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- usage:
SELECT * FROM vw_employee_overview ORDER BY salary DESC;
