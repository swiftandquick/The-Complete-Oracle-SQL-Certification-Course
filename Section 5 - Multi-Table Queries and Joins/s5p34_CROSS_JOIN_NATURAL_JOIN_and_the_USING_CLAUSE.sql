/* EMP as 14 entries, DEPT has 4 entries, the display table will have 56 entries, because I didn't specify any JOIN, so all mix possibilities (14 * 4 = 56) are displayed as entries.  */
SELECT * FROM EMP, DEPT;

/* Same result as above query.  */
SELECT * FROM EMP CROSS JOIN DEPT;

/* Display EMP table's entries' ENAME and MGR columns, then checks for common entries, which is DEPTNO, then display LOC from DEPT table based on both tables' DEPTNO value (they have to be equal).  */
SELECT ENAME, MGR, LOC FROM EMP NATURAL JOIN DEPT;

/* Same result as above query.  Instead, I use the USING clause to specify which column we check for equality from both EMP table and DEPT table.  */
SELECT ENAME, MGR, LOC FROM EMP JOIN DEPT USING (DEPTNO);

/* Display all EMP entries (ENAME & MGR), if there's a matching DEPTNO value in DEPT table, display the LOC value, otherwise, display NULL for LOC value.  */
SELECT ENAME, MGR, LOC FROM EMP LEFT JOIN DEPT USING (DEPTNO);

/* Display all DEPT entries (LOC), if there's a matching DEPTNO value in EMP table, display the ENAME and MGR values, otherwise, display NULL for ENAME and MGR values.  */
SELECT ENAME, MGR, LOC FROM EMP RIGHT JOIN DEPT USING (DEPTNO);
