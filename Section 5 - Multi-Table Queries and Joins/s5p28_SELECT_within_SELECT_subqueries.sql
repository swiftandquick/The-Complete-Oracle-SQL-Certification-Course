/* The subquery selects all DEPTNO from DEPT table where DEPTNO is 30.  
The outer query selects all columns of entries that are returned by the subquery, which means all entries with DEPTNO value of 30 are returned.  */
SELECT * FROM DEPT WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DEPTNO = 30);

/* The subquery selects all DEPTNO from DEPT table where DEPTNO is 30.  
The outer query selects all columns of entries that where DEPTNO's value is greater than DEPTNO's value in entries returned by the subquery, 
which means all entries with DEPTNO value of less than 30 are returned.  */
SELECT * FROM DEPT WHERE DEPTNO < (SELECT DEPTNO FROM DEPT WHERE DEPTNO = 30);

/* The subquery selects all DEPTNO from DEPT table where DEPTNO is 30.  
The outer query selects all columns of entries that where DEPTNO's value is greater than DEPTNO's value in entries returned (>30) by the subquery and DNAME is 'ACCOUNTING'.  */
SELECT * FROM DEPT WHERE DEPTNO < (SELECT DEPTNO FROM DEPT WHERE DEPTNO = 30) AND DNAME = 'ACCOUNTING';

/* This query returns the same result as the above query, without using subquery.  */
SELECT * FROM DEPT WHERE DEPTNO < 30 AND DNAME = 'ACCOUNTING';

/* The subquery selects DNAME column from DEPT, and the outer query displays all columns (which only contains the DNAME column) returned by the subquery.  */
SELECT * FROM (SELECT DNAME FROM DEPT);

/* The subquery selects all columns from DEPT, and the outer query displays all columns (which is all columns) returned by the subquery.  */
SELECT * FROM (SELECT * FROM DEPT);

/* The subquery returns the entries' DEPTNO value from DEPT table where LOC's value is 'CHICAGO', so DEPTNO's value is 30.  
After subquery returns the value of 30, the outer query displays all columns from EMP table where DEPTNO is 30.	*/
SELECT * FROM EMP WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE LOC = 'CHICAGO');

/* The subquery returns the entries' DEPTNO value from DEPT table where LOC's value is 'CHICAGO' or 'NEW YORK', so DEPTNO's value is either 10 or 30.  
The outer query displays all columns from EMP table where DEPTNO is 10 or 30.	*/
SELECT * FROM EMP WHERE DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE LOC IN ('CHICAGO', 'NEW YORK'));

/* Display all columns from EMP table where DEPTNO is 10 or 20.  */
SELECT * FROM EMP WHERE DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE DEPTNO IN (10, 20));

/* The subquery selects JOB from EMP table where ENAME's value is 'KING', so the returned value is 'PRESIDENT', because that's King's job.  
When the outer query executes, the third column's values will all be 'PRESIDENT', because that's the returned value.  */
SELECT JOB, ENAME, (SELECT JOB FROM EMP WHERE ENAME = 'KING') FROM EMP;

/* First subquery:  DUAL is a pseudo-table that's temporarily created, so only a single row is created with the returned value being 'Hello'.  
Second subquery:  Select JOB FROM EMP table where JOB is 'PRESIDENT', so the entry where ENAME is 'KING' and JOB is 'PRESIDENT' is returned.  
Only one value will return, and third column will display 'Hello' as the value.  */
SELECT JOB, ENAME, (SELECT 'Hello' FROM DUAL) FROM EMP WHERE JOB = (SELECT JOB FROM EMP WHERE JOB = 'PRESIDENT');