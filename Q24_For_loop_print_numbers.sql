/*
Q24. Use a FOR loop to print numbers 1 to 10.
*/
SET SERVEROUTPUT ON;

BEGIN
  FOR i IN 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE('Number: ' || i);
  END LOOP;
END;
/
