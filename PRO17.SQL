/* 17.Write a trigger to insert the existing values of the EMP table into
NEWEMP table when the record is updated in EMP table. */


CREATE OR REPLACE TRIGGER UPD_TRG
BEFORE UPDATE ON EMP 
FOR EACH ROW 

BEGIN
	INSERT INTO NEWEMP VALUES (:OLD.EID,:OLD.ENAME,:OLD.DEPTNO,:OLD.DEPTNAME,:OLD.GENDER,:OLD.AGE,:OLD.BASICSAL);


END;
/