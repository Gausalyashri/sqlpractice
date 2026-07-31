/*
Q8. List employees who have no manager assigned
    (typically department heads).
*/
SELECT emp_name, dept_id
FROM employees
WHERE manager_id IS NULL;
