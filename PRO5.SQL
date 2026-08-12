/* Write a PL/SQL block which displays gross salary of employees as per
user input EID. (Consider EMP table with EID, EName, Deptno,
Deptname Gender, Age, BasicSal) with appropriate data types.)
Gross_Salary: BASICSAL + (DA + HRA + Medical) – PF. Rules: HRA =
15% of basic, DA = 50% of basic, Medical = Rs. 500, PF = 10% of basic. */

SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;

DECLARE
	EMPID NUMBER(10) := &EMPID;
	V_EMP EMP%ROWTYPE;
	BS NUMBER(10);
	HRA NUMBER(10);
	DA NUMBER(10);
	PF NUMBER(10);
	MED NUMBER(10);
	GS NUMBER(7,2);
	
BEGIN
	SELECT EID,EName,Deptno,Deptname,Gender,Age,BasicSal INTO V_EMP FROM EMP WHERE EID = EMPID;
	
	BS := V_EMP.BASICSAL;
	HRA := BS*(15/100);
	DA := BS*(50/100);
	MED := 500;
	PF := BS*(10/100);
	
	GS := (BS+HRA+DA+MED)-PF;
	
	DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
	DBMS_OUTPUT.PUT_LINE('EMPLOYEE ID: '||V_EMP.EID||' || EMPLOYEE NAME: '||V_EMP.ENAME);
	DBMS_OUTPUT.PUT_LINE('DEPTNO: '||V_EMP.DEPTNO||' || DEPARTMENT NAME: '||V_EMP.DEPTNAME);
	DBMS_OUTPUT.PUT_LINE('GENDER: '||V_EMP.GENDER||' || AGE: '||V_EMP.AGE);
	DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
	DBMS_OUTPUT.PUT_LINE('Basic Salary:' ||BS);
	DBMS_OUTPUT.PUT_LINE('HRA: ' ||HRA);
	DBMS_OUTPUT.PUT_LINE('DA: ' ||DA);
	DBMS_OUTPUT.PUT_LINE('MADICAL: ' ||MED);
	DBMS_OUTPUT.PUT_LINE('PF: ' ||PF);
	DBMS_OUTPUT.PUT_LINE('GROSS Salary:' ||GS);
	
EXCEPTION
	WHEN NO_DATA_FOUND THEN
		DBMS_OUTPUT.PUT_LINE('The Employee with provided Eid does not exist enter proper Eid');
END;
/

SET SERVEROUTPUT OFF;
SET VERIFY ON;
SET FEEDBACK ON;