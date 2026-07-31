/*
Q9. Find the top 3 highest paid employees.
    Uses Oracle's FETCH FIRST clause (12c+).
*/
SELECT emp_name, salary
FROM employees
ORDER BY salary DESC
FETCH FIRST 3 ROWS ONLY;

/*
Older-Oracle (pre-12c) equivalent using ROWNUM:
SELECT emp_name, salary FROM (
  SELECT emp_name, salary FROM employees ORDER BY salary DESC
) WHERE ROWNUM <= 3;
*/
