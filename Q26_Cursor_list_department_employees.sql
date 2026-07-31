/*
Q26. Use an explicit cursor to loop through every employee
     in a given department and print their name and salary.
*/
SET SERVEROUTPUT ON;

DECLARE
  CURSOR c_emp IS
    SELECT emp_name, salary
    FROM employees
    WHERE dept_id = 30;

  v_name   employees.emp_name%TYPE;
  v_salary employees.salary%TYPE;
BEGIN
  OPEN c_emp;
  LOOP
    FETCH c_emp INTO v_name, v_salary;
    EXIT WHEN c_emp%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(v_name || ' earns ' || v_salary);
  END LOOP;
  CLOSE c_emp;
END;
/
