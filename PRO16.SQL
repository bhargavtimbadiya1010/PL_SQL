/* 16.Write a trigger to insert the existing values of the EMP table into
NEWEMP table when the record is deleted from EMP table. */

CREATE OR REPLACE TRIGGER DEL_TRG
BEFORE DELETE ON EMP 
FOR EACH ROW 

BEGIN
	INSERT INTO NEWEMP VALUES (:OLD.EID,:OLD.ENAME,:OLD.DEPTNO,:OLD.DEPTNAME,:OLD.GENDER,:OLD.AGE,:OLD.BASICSAL);


END;
/