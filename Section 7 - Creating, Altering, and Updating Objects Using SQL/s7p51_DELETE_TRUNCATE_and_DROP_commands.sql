/* Delete entries from DEPT table where DNAME is 'ACCOUNTING'.  */
DELETE FROM DEPT WHERE DNAME IN ('ACCOUNTING');

/* Delete all entries from DEPT table.  Unfortunately this doesn't work at the moement because there's constraint.  */
DELETE FROM DEPT;

/* Delete the entire DEPT table.  */
DROP TABLE DEPT;

/* Remove all data from the EMP table.  */
TRUNCATE TABLE EMP;