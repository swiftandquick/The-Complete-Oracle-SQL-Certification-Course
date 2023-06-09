/* Select all columns from the EMP table where JOB's value is 'CLERK' or 'SALESMAN'.  */
SELECT * FROM EMP WHERE JOB = 'CLERK' OR JOB = 'SALESMAN';

/* Select ENAME column from the EMP table where JOB's value is not 'MANAGER', JOB's value is not 'SALESMAN', and SAL's value is >= 2000.  */
SELECT ENAME FROM EMP WHERE JOB != 'MANAGER' AND JOB != 'SALESMAN' AND SAL >= 2000;

/* SELECT ENAME and HIREDATE columns from EMP table where DEPTNO is 20 or 30.  */
SELECT ENAME, HIREDATE FROM EMP WHERE DEPTNO = 20 OR DEPTNO = 30;