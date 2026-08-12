/* Write a program that prints value 1 to 100 numbers using
1.FOR LOOP
2.LOOP
3.WHILE LOOP */

SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;

DECLARE
	I NUMBER(10) := 1;
	
BEGIN
	DBMS_OUTPUT.PUT_LINE('==========================');
    DBMS_OUTPUT.PUT_LINE('1 TO 100 USING FOR LOOP');
    DBMS_OUTPUT.PUT_LINE('==========================');

	FOR I IN 1..100
	LOOP
		DBMS_OUTPUT.PUT_LINE('NUMBER: '||I);
	END LOOP;
	
	DBMS_OUTPUT.PUT_LINE(' ');

	DBMS_OUTPUT.PUT_LINE('========================');
    DBMS_OUTPUT.PUT_LINE('1 TO 100 USING LOOP');
    DBMS_OUTPUT.PUT_LINE('========================');

	LOOP
		EXIT WHEN I > 100;
		DBMS_OUTPUT.PUT_LINE('NUMBER: '||I);
		I := I+1;
	END LOOP;
	
	DBMS_OUTPUT.PUT_LINE(' ');
	
	DBMS_OUTPUT.PUT_LINE('=============================');
    DBMS_OUTPUT.PUT_LINE('1 TO 100 USING WHILE LOOP');
    DBMS_OUTPUT.PUT_LINE('=============================');
	
    I := 1;
	WHILE I <= 100
	LOOP
		DBMS_OUTPUT.PUT_LINE('NUMBER: '||I);
		I := I+1;
	END LOOP;
	
	DBMS_OUTPUT.PUT_LINE(' ');

END;
/

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;