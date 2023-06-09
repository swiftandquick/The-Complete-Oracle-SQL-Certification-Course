/* Describes the EMP table in details.  */
DESCRIBE EMP; 

/* Create the DEST_TBL_1, DEST_TBL_2, and DEST_TBL_3 tables.  */
CREATE TABLE DEST_TBL_1(ID NUMBER, NAME VARCHAR2(50), DATE_OF DATE);
CREATE TABLE DEST_TBL_2(ID NUMBER, NAME VARCHAR2(50), DATE_OF DATE);
CREATE TABLE DEST_TBL_3(ID NUMBER, NAME VARCHAR2(50), DATE_OF DATE);

/* Retrieve EMPNO, ENAME, and HIREDATE from EMP table, and insert entries with values of those table into 3 different new tables:  DEST_TBL_1, DEST_TBL_2, and DEST_TBL_3.  
EMPNO values will be inserted as ID values, ENAME values will be inserted as NAME values, HIREDATE values will be inserted DATE_OF values.  
The types of the source and destination columns must match, for example, if ENAME is a string with maximum of 50 characters, NAME also has to be a string with a maximum of 50 characters.  */
INSERT ALL 
INTO DEST_TBL_1 (ID, NAME, DATE_OF) VALUES (EMPNO, ENAME, HIREDATE) 
INTO DEST_TBL_2 (ID, NAME, DATE_OF) VALUES (EMPNO, ENAME, HIREDATE) 
INTO DEST_TBL_3 (ID, NAME, DATE_OF) VALUES (EMPNO, ENAME, HIREDATE) 
SELECT EMPNO, ENAME, HIREDATE FROM EMP;

/* Remove every entry from the 3 tables.  */
DELETE FROM DEST_TBL_1;
DELETE FROM DEST_TBL_2;
DELETE FROM DEST_TBL_3;

/* Only insert entries with SAL <= 1500 from EMP table to DEST_TBL_1 table.  
Only insert entries with SAL between 1501 and 2500 from EMP table to DEST_TBL_2 table.  
Only insert entries with SAL > 2500 from EMP table to DEST_TBL_3 table.  */
INSERT ALL 
WHEN SAL <= 1500 THEN INTO DEST_TBL_1 (ID, NAME, DATE_OF) VALUES (EMPNO, ENAME, HIREDATE) 
WHEN SAL BETWEEN 1501 AND 2500 THEN INTO DEST_TBL_2 (ID, NAME, DATE_OF) VALUES (EMPNO, ENAME, HIREDATE) 
WHEN SAL > 2500 THEN INTO DEST_TBL_3 (ID, NAME, DATE_OF) VALUES (EMPNO, ENAME, HIREDATE) 
SELECT EMPNO, ENAME, HIREDATE, SAL FROM EMP;