/* Write a PL/SQL block to accept an employee ID and:
 Retrieve employee details
 Calculate yearly salary
 Display whether employee belongs to High Income (>
₹600000/year) or Normal Income. */

SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;

DECLARE
	EMPID NUMBER(10) := &EMPID;
	V_EMP EMP%ROWTYPE;
	YS NUMBER(15);
	
	
BEGIN
	SELECT EID,EName,Deptno,Deptname,Gender,Age,BasicSal INTO V_EMP FROM EMP WHERE EID = EMPID;
	YS := V_EMP.BASICSAL*12;
	
	DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
	DBMS_OUTPUT.PUT_LINE('EMPLOYEE ID: '||V_EMP.EID||' || EMPLOYEE NAME: '||V_EMP.ENAME);
	DBMS_OUTPUT.PUT_LINE('DEPTNO: '||V_EMP.DEPTNO||' || DEPARTMENT NAME: '||V_EMP.DEPTNAME);
	DBMS_OUTPUT.PUT_LINE('GENDER: '||V_EMP.GENDER||' || AGE: '||V_EMP.AGE);
	DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
	DBMS_OUTPUT.PUT_LINE('BASIC SALARY: '||V_EMP.BASICSAL);
	DBMS_OUTPUT.PUT_LINE('YEARLY SALARY: '||YS);
	
	IF YS>600000 THEN
		DBMS_OUTPUT.PUT_LINE('STATUS: HIGH INCOME');
	ELSE
		DBMS_OUTPUT.PUT_LINE('STATUS: LOW INCOME');
	END IF;

EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('The Employee with provided Eid does not exist enter proper Eid');
			
END;

/

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;