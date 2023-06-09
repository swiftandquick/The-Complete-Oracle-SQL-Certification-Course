/* The left-table only consist of entries with JOB value of 'SALESMAN' and only has JOB and DEPTNO columns.  
Since I am using LEFT OUTER JOIN, all entries from left table will be displayed, but only matching records from the right table (DEPT table) will be displayed.  
This means entries from the DEPT table with DEPTNO of 10, 20, and 40 will not be displayed, as there are only salesmen in department 30.  */
SELECT * FROM (SELECT JOB, DEPTNO FROM EMP WHERE JOB = 'SALESMAN') E LEFT OUTER JOIN DEPT D ON E.DEPTNO = D.DEPTNO;

/* Inside the outer subquery, I set the left table's (DEPT table) alias to D, and right table's (EMP table where JOB value is 'SALESMAN') alias to E.  
Then, I set E.DEPTNO with the alias EMP_DEPTNO and D.DEPTNO with the alias of DEPT_DEPTNO.  Outside of the subquery, I display 5 columns, which includes EMP_DEPTNO and DEPT_DEPTNO.  
The subquery produces a table via LEFT OUTER JOIN, so all entries on the D table (DEPT table) is returned, if there's a matching E.DEPTNO (right table) for D.DEPTNO (left table), 
then the E table (right table), return the entry from the E table (right table), otherwise the E table's columns' values will be NULL.  */
SELECT ENAME, JOB, EMP_DEPTNO AS DEPTNO, DEPT_DEPTNO AS DEPTNO, LOC FROM (SELECT ENAME, JOB, E.DEPTNO AS EMP_DEPTNO, D.DEPTNO AS DEPT_DEPTNO, LOC FROM 
(SELECT * FROM DEPT) D LEFT OUTER JOIN (SELECT * FROM EMP WHERE JOB = 'SALESMAN') E ON E.DEPTNO = D.DEPTNO);

/* Same as above, now I display all entries from E table and D table via E.* and D*.  */
SELECT E.*, D.* FROM (SELECT * FROM DEPT) D LEFT OUTER JOIN (SELECT * FROM EMP WHERE JOB = 'SALESMAN') E ON E.DEPTNO = D.DEPTNO;

/* DUAL is a pseudo table, but the subquery does return an entry, so the EXISTS condition is met, all entries from EMP table are displayed.  */
SELECT * FROM EMP WHERE EXISTS (SELECT 'RANDOM' FROM DUAL);

/* DUAL is a pseudo table, but the subquery does return an entry, so the NOT EXISTS condition is not met, no entries from EMP table are displayed.  */
SELECT * FROM EMP WHERE NOT EXISTS (SELECT 'RANDOM' FROM DUAL);

/* There's no entry in the EMP table where JOB value is 'PROGRAMMER', so no entry is returned from the subquery, with EXISTS, false is returned, no entry is displayed.  */
SELECT * FROM EMP WHERE EXISTS (SELECT * FROM EMP WHERE JOB = 'PROGRAMMER');

/* With NOT EXISTS, true is returned, all entries are dispalyed.  */
SELECT * FROM EMP WHERE NOT EXISTS (SELECT * FROM EMP WHERE JOB = 'PROGRAMMER');

/* Give DEPT the alias D.  Subquery selects all EMP table entries where their DEPTNO value is also found in D table (DEPT table).  
EXISTS return true.  Then, return all D table (DEPT table) entries that has DEPTNO value also exists in the EMP table's DEPTNO column, so entries with DEPTNO 10, 20, and 30 are returned. */
SELECT D.* FROM DEPT D WHERE EXISTS (SELECT * FROM EMP WHERE D.DEPTNO = EMP.DEPTNO);

/* NOT EXISTS return the entries that are not returned by the subquery.  
Then, return all D table (DEPT table) entries that has DEPTNO value also does not exist in the EMP table's DEPTNO column, so entry with DEPTNO 40 is returned. */
SELECT D.* FROM DEPT D WHERE NOT EXISTS (SELECT * FROM EMP WHERE D.DEPTNO = EMP.DEPTNO);

/* Display entries where either the DEPTNO value is 40 (doesn't exist in EMP table) or LOC is 'CHICAGO'.  */
SELECT D.* FROM DEPT D WHERE NOT EXISTS (SELECT * FROM EMP WHERE D.DEPTNO = EMP.DEPTNO) OR LOC = 'CHICAGO';