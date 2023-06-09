/* Display all columns from both EMP and DEPT tables, display the DEPT table entry based on DEPT's DEPTNO value, it has to equal EMP's DEPTNO value.  */
SELECT * FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO;

/* Same as above, but also only display entries with LOC (from DEPT table) value of 'DALLAS'.  */
SELECT * FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO AND LOC = 'DALLAS';

/* Here, I used aliases for the tables, EMP as E, DEPT as D, so when I want to refer to DEPTNO from EMP table, I can use E.DEPTNO.  */
SELECT ENAME AS FIRST_NAME, JOB, SAL, E.DEPTNO, LOC FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO AND LOC = 'DALLAS';

/* Same as bove, but now I use subquery to only retrieve a table from EMP where JOB is either 'MANAGER' or 'CLERK'.  */
SELECT ENAME AS FIRST_NAME, JOB, SAL, E.DEPTNO FROM (SELECT * FROM EMP WHERE JOB IN ('MANAGER', 'CLERK')) E, (SELECT * FROM DEPT WHERE LOC = 'DALLAS') D WHERE E.DEPTNO = D.DEPTNO;