/*
Q28. Function that returns the total salary bill for a
     given department.
*/
CREATE OR REPLACE FUNCTION get_department_total_salary (
  p_dept_id IN NUMBER
) RETURN NUMBER
IS
  v_total NUMBER;
BEGIN
  SELECT NVL(SUM(salary), 0) INTO v_total
  FROM employees
  WHERE dept_id = p_dept_id;

  RETURN v_total;
END get_department_total_salary;
/

-- usage:
SET SERVEROUTPUT ON;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Total salary for dept 10: ' || get_department_total_salary(10));
END;
/
