/*
Q22. Use local variables to compute an employee's annual
     salary from their monthly salary stored in the table.
*/
SET SERVEROUTPUT ON;

DECLARE
  v_monthly_salary employees.salary%TYPE;
  v_annual_salary   NUMBER;
BEGIN
  SELECT salary INTO v_monthly_salary
  FROM employees
  WHERE emp_id = 1;

  v_annual_salary := v_monthly_salary * 12;

  DBMS_OUTPUT.PUT_LINE('Monthly salary: ' || v_monthly_salary);
  DBMS_OUTPUT.PUT_LINE('Annual salary : ' || v_annual_salary);
END;
/
