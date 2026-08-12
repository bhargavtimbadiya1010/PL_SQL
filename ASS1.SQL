/* Write a PL/SQL block to accept an employee's Basic Salary and 
calculate: 
 HRA = 20%  
 DA = 45%  
 TA = 8%  
 PF = 12%  
 Net Salary  
Display all salary components. */ 

SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;

ACCEPT BS NUMBER PROMPT "Enter Basic Salary: "


DECLARE
	BS NUMBER(10) := &BS;
	HRA NUMBER(10);
	DA NUMBER(10);
	TA NUMBER(10);
	PF NUMBER(10);
	NS NUMBER(7,2);
	
BEGIN
	HRA := BS*(20/100);
	DA := BS*(45/100);
	TA := BS*(8/100);
	PF := BS*(12/100);
	
	NS := (BS+HRA+DA+TA)-PF;
	
	DBMS_OUTPUT.PUT_LINE('Basic Salary is :' ||BS);
	DBMS_OUTPUT.PUT_LINE('HRA: ' ||HRA);
	DBMS_OUTPUT.PUT_LINE('DA: ' ||DA);
	DBMS_OUTPUT.PUT_LINE('TA: ' ||TA);
	DBMS_OUTPUT.PUT_LINE('PF: ' ||PF);
	DBMS_OUTPUT.PUT_LINE('Net Salary is :' ||NS);
END;
/

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;