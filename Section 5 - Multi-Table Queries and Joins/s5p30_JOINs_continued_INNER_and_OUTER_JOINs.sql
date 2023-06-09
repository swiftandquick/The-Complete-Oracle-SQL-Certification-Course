/* Display all columns on EMP and DEPT table, EMP's DEPTNO must be equal to DEPT's DEPTNO.  */
SELECT * FROM EMP INNER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

/* Display all DEPT entries, if the DEPT table's DEPTNO value is found in EMP table, display the matching records, otherwise, display NULL values for columns from EMP table.  */
SELECT * FROM EMP RIGHT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

/* Display all EMP entries, if the EMP table's DEPTNO value is found in DEPT table, display the matching records, otherwise, display NULL values for columns from DEPT table.  */
SELECT * FROM EMP LEFT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

/* RIGHT OUTER JOIN without JOIN keyword.  */
SELECT * FROM EMP, DEPT WHERE EMP.DEPTNO(+) = DEPT.DEPTNO;

/* LEFT OUTER JOIN without JOIN keyword.  */
SELECT * FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO(+);

/* Display all EMP entries and all DEPT entries.  
If the DEPT table's DEPTNO value is found in EMP table, display the matching records, otherwise, display NULL values for columns from EMP table.  
If the EMP table's DEPTNO value is found in DEPT table, display the matching records, otherwise, display NULL values for columns from DEPT table.  */
SELECT * FROM EMP FULL OUTER JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

/* Using alias E (for EMP table) and D (for DEPT table), the left-table only consist of entries with JOB value of 'SALESMAN' and only has JOB and DEPTNO columns.  
Note that there are only entries with 'SALESMAN' as JOB value that has DEPTNO of 30.  */
SELECT * FROM (SELECT JOB, DEPTNO FROM EMP WHERE JOB = 'SALESMAN') E FULL OUTER JOIN DEPT D ON E.DEPTNO = D.DEPTNO;
