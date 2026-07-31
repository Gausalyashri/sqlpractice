/*
Q23. Categorize an employee's salary as Low / Medium / High
     using IF-ELSIF-ELSE.
*/
SET SERVEROUTPUT ON;

DECLARE
  v_salary employees.salary%TYPE;
BEGIN
  SELECT salary INTO v_salary FROM employees WHERE emp_id = 5;

  IF v_salary < 40000 THEN
    DBMS_OUTPUT.PUT_LINE('Salary category: Low');
  ELSIF v_salary BETWEEN 40000 AND 60000 THEN
    DBMS_OUTPUT.PUT_LINE('Salary category: Medium');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Salary category: High');
  END IF;
END;
/
