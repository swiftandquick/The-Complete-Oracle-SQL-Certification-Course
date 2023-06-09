/* Take the columns such as EMPNO and ENAME from EMP table and put them into the EMPLOYEES table.  Data types of columns in EMPLOYEES table are the same as they are in the EMP table.  
Entries from EMP tables are also populated in EMPLOYEES table.  */
CREATE TABLE EMPLOYEES AS SELECT EMPNO, ENAME, JOB, HIREDATE, SAL, COMM FROM EMP;

/* Describe the EMPLOYEES table.  */
DESCRIBE EMPLOYEES;

/* Display the entries from the EMPLOYEES table.  */
SELECT * FROM EMPLOYEES;

/* Add a column to the EMPLOYEES table, the column name is STORE_ID, it's a number.  */
ALTER TABLE EMPLOYEES ADD STORE_ID NUMBER;

/* Set STORE_ID value of entries from EMPLOYEES table where ENAME is 'KING', 'BLAKE' or 'CLARK' to 3.  */
UPDATE EMPLOYEES SET STORE_ID = 3 WHERE ENAME IN ('KING', 'BLAKE', 'CLARK');

/* Set STORE_ID value of entries from EMPLOYEES table where JOB is 'SALESMAN' to 2.  */
UPDATE EMPLOYEES SET STORE_ID = 2 WHERE JOB = 'SALESMAN';

/* Set STORE_ID value of entries from EMPLOYEES table where JOB is 'CLERK' or 'ANALYST' to 4.  */
UPDATE EMPLOYEES SET STORE_ID = 2 WHERE JOB IN ('CLERK', 'ANALYST');

/* Set STORE_ID value of entries from EMPLOYEES table where ENAME is 'JONES' to 1.  */
UPDATE EMPLOYEES SET STORE_ID = 1 WHERE ENAME = 'JONES';

/* Now, that all entries have a STORE_ID value, I can set STORE_ID column to NOT NULL.  */
ALTER TABLE EMPLOYEES MODIFY STORE_ID NUMBER NOT NULL;