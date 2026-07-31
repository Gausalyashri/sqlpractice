/*
Q25. Use a WHILE loop to calculate the factorial of a number.
*/
SET SERVEROUTPUT ON;

DECLARE
  v_num        NUMBER := 6;
  v_counter    NUMBER := 1;
  v_factorial  NUMBER := 1;
BEGIN
  WHILE v_counter <= v_num LOOP
    v_factorial := v_factorial * v_counter;
    v_counter   := v_counter + 1;
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('Factorial of ' || v_num || ' is ' || v_factorial);
END;
/
-- Expected output: Factorial of 6 is 720
