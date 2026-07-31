/*
Q1. List all employees earning more than 50,000.
*/
SELECT emp_name, salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC;

/*
Expected output (sample):
VIKRAM SINGH   72000
ARJUN KUMAR    65000
RAHUL DEV      61000
PRIYA SHARMA   58000
DIVYA RANI     52000
*/
