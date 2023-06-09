/* Return the greatest SAL value of all SAL values.  */
SELECT MAX(SAL) AS MAX_SAL FROM EMP;

/* Return the least SAL value of all SAL values.  */
SELECT MIN(SAL) AS MIN_SAL FROM EMP;

/* Return the sum of all SAL values.  */
SELECT SUM(SAL) AS MIN_SAL FROM EMP;

/* Find the highest paid (MAX(SAL)) manager (LOWER(JOB) LIKE '%manager%').  */
SELECT MAX(SAL) FROM EMP WHERE LOWER(JOB) LIKE '%manager%';

/* Return the average of all SAL values.  */
SELECT AVG(SAL) AS AVG_SAL FROM EMP;

/* Return the number of non-null ENAME values.  */
SELECT COUNT(ENAME) AS COUNT_NAME FROM EMP;

/* Return the number of non-null COMM values, even though there are 14 entries, 10 entries have NULL as the COMM value, so 4 is returned.  */
SELECT COUNT(COMM) AS COUNT_COMM FROM EMP;

/* I can find the average SAL value via dividing the sum via number of entries.  */
SELECT SUM(SAL) / COUNT(SAL) AS COMPUTED_AVG, AVG(SAL) AS NATIVE_AVG FROM EMP;

/* Get the average SAL value for all entries where JOB is 'CLERK'.  */
SELECT AVG(SAL) FROM EMP WHERE JOB = 'CLERK';