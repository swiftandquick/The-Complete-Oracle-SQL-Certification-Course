/* This is an EQUIJOIN.  All entries from EMP table are displayed, also display entries from DEPT entries where its DEPTNO value matches EMP entries' DEPTNO value.  */
SELECT * FROM EMP, DEPT WHERE DEPT.DEPTNO = EMP.DEPTNO;

/* Create a table JOB_GRADE with 3 columns.  */
CREATE TABLE JOB_GRADE
	(GRADE_LEVEL VARCHAR(2) NOT NULL,
	LOWEST_SAL NUMBER NOT NULL,
	HIGHEST_SAL NUMBER NOT NULL)

/* Insert 5 entries into the JOB_GRADE table.  */
INSERT ALL
    INTO JOB_GRADE
    VALUES ('A', 0, 1000)
    INTO JOB_GRADE
    VALUES ('B', 1001, 2000)
    INTO JOB_GRADE
    VALUES ('C', 2001, 3000)
    INTO JOB_GRADE
    VALUES ('D', 3001, 4000)
    INTO JOB_GRADE
    VALUES ('E', 4001, 5000)
SELECT * FROM DUAL;

/* Display the ENAME and SAL values for all entries from EMP table, then display the matching GRADE_LEVEL value the JOB_GRADE table.  
The GRADE_LEVEL matches when SAL from the EMP table is between a JOB_GRADE table entry's LOWEST_SAL and HIGHEST_SAL values.  */
SELECT E.ENAME, E.SAL, J.GRADE_LEVEL FROM EMP E JOIN JOB_GRADE J ON E.SAL BETWEEN J.LOWEST_SAL AND J.HIGHEST_SAL;