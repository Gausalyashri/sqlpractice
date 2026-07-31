/*
Q21. A basic anonymous PL/SQL block that prints a greeting
     and today's date.
*/
SET SERVEROUTPUT ON;

BEGIN
  DBMS_OUTPUT.PUT_LINE('Hello from PL/SQL!');
  DBMS_OUTPUT.PUT_LINE('Today is: ' || TO_CHAR(SYSDATE, 'DD-MON-YYYY'));
END;
/
