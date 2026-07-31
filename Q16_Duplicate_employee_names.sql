/*
Q16. Detect duplicate employee names (data-quality check),
     if any exist.
*/
SELECT emp_name, COUNT(*) AS occurrences
FROM employees
GROUP BY emp_name
HAVING COUNT(*) > 1;

/*
With the sample data this returns no rows, since all
employee names are unique -- the query is still the correct
pattern to catch duplicates if they appear later.
*/
