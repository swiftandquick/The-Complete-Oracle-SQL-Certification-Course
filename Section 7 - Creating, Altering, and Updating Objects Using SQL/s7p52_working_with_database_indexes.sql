/* Creates an index called EMP_NAME_IDX on the ENAME column in the EMPLOYEES table.  */
CREATE INDEX EMP_NAME_IDX ON EMPLOYEES (ENAME);

/* Creates an index called EMP_NAME_JOB_DATE_IDX on the ENAME, JOB, and HIREDATE columns in the EMPLOYEES table.  
COMPUTE STATISTICS:  Collect data about the ENAME, JOB, and HIREDATE columns, the combination of these are stored as statistics in the database.  */
CREATE INDEX EMP_NAME_JOB_DATE_IDX ON EMPLOYEES(ENAME, JOB, HIREDATE) COMPUTE STATISTICS;

/* Creates an index called EMP_JOB_IDX on the JOB column in the EMPLOYEES table.  */
CREATE INDEX EMP_JOB_IDX ON EMPLOYEES(JOB);

/* Display the entry from EMPLOYEES table where ENAME is 'JAMES'.  */
SELECT * FROM EMPLOYEES WHERE ENAME = 'JAMES';

/* Remove the EMP_JOB_IDX index.  */
DROP INDEX EMP_JOB_IDX;

/* Remove the EMP_NAME_JOB_DATE_IDX index.  */
DROP INDEX EMP_NAME_JOB_DATE_IDX;

/* I can alter an index, here, I added COMPUTE STATISTICS keywords to the EMP_NAME_IDX index.  */
ALTER INDEX EMP_NAME_IDX REBUILD COMPUTE STATISTICS;