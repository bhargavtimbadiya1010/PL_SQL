SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;
CLEAR SCREEN;

-- 1. Display the menu first using SQL*Plus
PROMPT =====================================
PROMPT 1. Area of circle
PROMPT 2. Area of rectangle
PROMPT 3. Circumference of circle
PROMPT =====================================

-- 2. Accept inputs from the user cleanly
ACCEPT ch NUMBER PROMPT 'Enter your choice (1-3): ';
ACCEPT r NUMBER PROMPT 'Enter radius: ';
ACCEPT l NUMBER PROMPT 'Enter length : ';
ACCEPT w NUMBER PROMPT 'Enter width : ';

DECLARE
	pi NUMBER := 3.14;
	r  NUMBER;
	l  NUMBER;
	w  NUMBER;
	ch NUMBER;
BEGIN
	ch := &ch;
	r  := &r;
	l  := &l;
	w  := &w;

	IF ch = 1 THEN
		DBMS_OUTPUT.PUT_LINE('Area of circle: ' ||(pi*r*r));
	ELSIF ch = 2 THEN
		DBMS_OUTPUT.PUT_LINE('Area of rectangle: '||(l*w));
	ELSIF ch = 3 THEN
		DBMS_OUTPUT.PUT_LINE('Circumference of circle: '||(2*pi*r));
	ELSE
		DBMS_OUTPUT.PUT_LINE('Invalid input choice.');
	END IF;
END;
/

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;