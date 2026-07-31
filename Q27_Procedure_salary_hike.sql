/*
Q27. Stored procedure that gives every employee in a
     department a percentage salary hike.
*/
CREATE OR REPLACE PROCEDURE give_salary_hike (
  p_dept_id     IN NUMBER,
  p_hike_percent IN NUMBER
) AS
BEGIN
  UPDATE employees
  SET salary = salary + (salary * p_hike_percent / 100)
  WHERE dept_id = p_dept_id;

  DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' employee(s) updated in dept ' || p_dept_id);
  COMMIT;
END give_salary_hike;
/

-- usage:
SET SERVEROUTPUT ON;
BEGIN
  give_salary_hike(30, 10);  -- 10% hike for department 30
END;
/
