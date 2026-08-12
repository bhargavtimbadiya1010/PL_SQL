/* 10.Write a PL/SQL block to calculate the square and cube of the given
number. */

SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;

DECLARE
	NUM NUMBER := &NUM;
	
BEGIN
	DBMS_OUTPUT.PUT_LINE('================================');
	DBMS_OUTPUT.PUT_LINE('NUMBER IS: '||NUM);
	DBMS_OUTPUT.PUT_LINE('SQUARE IS: '||NUM * NUM);
	DBMS_OUTPUT.PUT_LINE('CUBE IS: '||NUM * NUM * NUM);

END;
/

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;