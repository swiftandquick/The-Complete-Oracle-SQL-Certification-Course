/* Select ENAME and HIREDATE columns from EMP table where DEPTNO is 20 or 30.  */
SELECT ENAME, HIREDATE FROM EMP WHERE DEPTNO = 20 OR DEPTNO = 30;

/* Select ENAME and HIREDATE columns from EMP table where ENAME is equal to 'FORD', 'SMITH', 'ALLEN', 'WARD', or 'MARTIN'.  */
SELECT ENAME, HIREDATE FROM EMP WHERE ENAME = 'FORD' OR ENAME = 'SMITH' OR ENAME = 'ALLEN' OR ENAME = 'WARD' OR ENAME = 'MARTIN';

/* Select ENAME and HIREDATE columns from EMP table where ENAME is equal to 'FORD', 'SMITH', 'ALLEN', 'WARD', or 'MARTIN'.  */
SELECT ENAME, HIREDATE FROM EMP WHERE ENAME IN ('FORD', 'SMITH', 'ALLEN', 'WARD', 'MARTIN');

/* Select all columns from EMP table where HIREDATE's value is between '05/01/1981' and '12/09/1982'.  */
SELECT * FROM EMP WHERE HIREDATE BETWEEN '05/01/1981' AND '12/09/1982';

/* Select all columns from EMP table where SAL's value is between 1000 and 2000.  */
SELECT * FROM EMP WHERE SAL BETWEEN 1000 AND 2000;

/* Select all columns from EMP table where SAL's value is not between 950 and 1600.  */
SELECT * FROM EMP WHERE SAL NOT BETWEEN 950 AND 1600;

/* Select all columns from EMP table where COMM doesn't have a value.  */
SELECT * FROM EMP WHERE COMM IS NULL;