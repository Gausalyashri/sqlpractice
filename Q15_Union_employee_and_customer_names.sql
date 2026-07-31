/*
Q15. Combine employee names and customer names into one
     labeled list using UNION ALL.
*/
SELECT emp_name AS full_name, 'Employee' AS source
FROM employees
UNION ALL
SELECT customer_name, 'Customer'
FROM customers
ORDER BY source, full_name;
