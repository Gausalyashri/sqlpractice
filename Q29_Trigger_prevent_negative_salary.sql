/*
Q29. Trigger that blocks any INSERT or UPDATE that would set
     an employee's salary to a negative value.
*/
CREATE OR REPLACE TRIGGER trg_check_salary
BEFORE INSERT OR UPDATE OF salary ON employees
FOR EACH ROW
BEGIN
  IF :NEW.salary < 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Salary cannot be negative.');
  END IF;
END;
/

-- test (this will raise ORA-20001 and roll back):
-- UPDATE employees SET salary = -500 WHERE emp_id = 2;
