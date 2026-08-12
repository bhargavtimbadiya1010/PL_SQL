/* Write a PL/SQL block to accept product name, qty and price from user
and then calculate discount in Rs. based on the given (%). */


SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;

ACCEPT pn PROMPT "Enter Product Name: "
ACCEPT qty NUMBER PROMPT "Enter Product Quantity: "
ACCEPT p NUMBER PROMPT "Enter Product Price: "
ACCEPT d NUMBER PROMPT "Enter Discount: "

DECLARE
	PNAME VARCHAR(20) := '&pn';
	QUANTITY NUMBER(20) := &qty;
	PRICE NUMBER(7,2) := &p;
	DIS NUMBER(5) := &d;
	TP NUMBER(7,2);
	FP NUMBER(7,2);
BEGIN
	TP := (QUANTITY*PRICE);
	FP := (TP-(TP*DIS/100));
	
	DBMS_OUTPUT.PUT_LINE('Enter Product Name:' ||PNAME);
	DBMS_OUTPUT.PUT_LINE('Enter Product Quantity:' ||QUANTITY);
	DBMS_OUTPUT.PUT_LINE('Enter Product Price:' ||PRICE);
	DBMS_OUTPUT.PUT_LINE('Enter Discount: ' ||TP*DIS/100);
	DBMS_OUTPUT.PUT_LINE('Enter Total Price:' ||TP);
	DBMS_OUTPUT.PUT_LINE('Enter Product Price:' ||FP);
END;
/

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;