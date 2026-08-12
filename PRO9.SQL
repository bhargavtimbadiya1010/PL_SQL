/* 9.Write a PL/SQL block that calculates the simple interest based on given
principal amount, rate of interest and number of years. */

SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;

DECLARE
	P NUMBER := &P;
	R NUMBER := &R;
	N NUMBER := &N;
	SI NUMBER;
	TA NUMBER;
	
BEGIN
	SI := (P*R*N)/100;
	TA := SI+P;
	
	DBMS_OUTPUT.PUT_LINE('================================');
	DBMS_OUTPUT.PUT_LINE('PRINCIPAL AMOUNT IS: '||P);
	DBMS_OUTPUT.PUT_LINE('RATE OF INTEREST IS: '||R);
	DBMS_OUTPUT.PUT_LINE('NUMBER OF YEARS IS: '||N);
	DBMS_OUTPUT.PUT_LINE('SIMPLE INTEREST IS: '||SI);
	DBMS_OUTPUT.PUT_LINE('TOTAL AMOUNT IS: '||TA);
END;
/

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;