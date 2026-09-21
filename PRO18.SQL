/* 18.Write a trigger to insert the values into the NEWEMP table when the
records are inserted into the EMP table. */

CREATE OR REPLACE TRIGGER INS_TRG
BEFORE INSERT ON EMP 
FOR EACH ROW 

BEGIN
	INSERT INTO NEWEMP VALUES (:NEW.EID,:NEW.ENAME,:NEW.DEPTNO,:NEW.DEPTNAME,:NEW.GENDER,:NEW.AGE,:NEW.BASICSAL);


END;
/