/* Write a PL/SQL program to generate the multiplication table of a
user-entered number using:
 FOR LOOP
 WHILE LOOP */

SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;

DECLARE
	N NUMBER(10) := &N;
	I NUMBER(10) := 1;
BEGIN
	DBMS_OUTPUT.PUT_LINE('=============================');
    DBMS_OUTPUT.PUT_LINE('MULTIPLICATION TABLE USING WHILE LOOP');
    DBMS_OUTPUT.PUT_LINE('=============================');
	
	WHILE  I <=10
	LOOP
		--EXIT WHEN I > 5;
		DBMS_OUTPUT.PUT_LINE(N||' X '||I||' = '||N*I);
		I := I+1;
	END LOOP;
	
	DBMS_OUTPUT.PUT_LINE('=============================');
    DBMS_OUTPUT.PUT_LINE('MULTIPLICATION TABLE USING FOR LOOP');
    DBMS_OUTPUT.PUT_LINE('=============================');
	
	FOR I IN 1..10
	LOOP
		--EXIT WHEN I > 5;
		DBMS_OUTPUT.PUT_LINE(N||' X '||I||' = '||N*I);
	END LOOP;
END;
/           

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;