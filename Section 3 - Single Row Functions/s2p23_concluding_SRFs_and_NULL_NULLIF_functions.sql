/* Display the ENAME, JOB, SAL, and COMM columns from EMP Table where EMPNO is one of the following values:  7839, 7698, 7566, 7654.  */
SELECT ENAME, JOB, SAL, COMM FROM EMP WHERE EMPNO IN (7839, 7698, 7566, 7654);

/* NULL values in the COMM columns are replaced by 0.  */
SELECT ENAME, JOB, SAL, NVL(COMM, 0) AS COMM FROM EMP WHERE EMPNO IN (7839, 7698, 7566, 7654);

/* Convert COMM to a string via TO_CHAR() function, then change all the column's NULL entries to string values 'NO DATA FOUND'.  */
SELECT ENAME, JOB, SAL, NVL(TO_CHAR(COMM), 'NO DATA FOUND') AS COMM FROM EMP WHERE EMPNO IN (7839, 7698, 7566, 7654);

/* If the the number of the ENAME value is 5, set the entry's ENAME value to null.  */
SELECT ENAME, LENGTH(ENAME), NULLIF(LENGTH(ENAME), 5) FROM EMP;

/* Change 5 to 'Length is 5' for all entries where LENGTH(ENAME) is 5.  Only display entries where SAL's value is greater than 2000.  */
SELECT ENAME, LENGTH(ENAME), NVL((NULLIF(TO_CHAR(LENGTH(ENAME)), '5')), ' Length is 5') AS NVL_RESULT, SAL FROM EMP WHERE SAL > 2000;
