/*
Q30. Look up an employee's salary by id, handling the case
     where no such employee exists (NO_DATA_FOUND) and any
     other unexpected error.
*/
SET SERVEROUTPUT ON;

DECLARE
  v_emp_id  NUMBER := 99;   -- an id that does not exist
  v_salary  employees.salary%TYPE;
BEGIN
  SELECT salary INTO v_salary
  FROM employees
  WHERE emp_id = v_emp_id;

  DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No employee found with id ' || v_emp_id);
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Multiple employees found for id ' || v_emp_id);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
END;
/
-- Expected output: No employee found with id 99
