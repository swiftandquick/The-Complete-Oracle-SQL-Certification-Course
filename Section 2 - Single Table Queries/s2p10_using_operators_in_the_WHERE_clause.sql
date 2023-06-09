/* Select all columns from EMP table where JOB's value is not equal to 'SALESMAN'.  */
SELECT * FROM EMP WHERE JOB != 'SALESMAN';

/* Select all columns from EMP table where JOB's value is equal to 'SALESMAN' and SAL's value is equal to 1500.  */
SELECT * FROM EMP WHERE JOB = 'SALESMAN' AND SAL = 1500;

/* Select all columns from EMP table where JOB's value is not equal to 'SALESMAN' and SAL's value is less than 2500.  */
SELECT * FROM EMP WHERE JOB != 'SALESMAN' AND SAL < 2500;

/* Select all columns from EMP table where JOB's value is not equal to 'SALESMAN' and SAL's value is less than or equal to 3000.  */
SELECT * FROM EMP WHERE JOB != 'SALESMAN' AND SAL <= 3000;

/* Select all columns from EMP table where JOB's value is not equal to 'SALESMAN' and SAL's value is greater than 3000.  */
SELECT * FROM EMP WHERE JOB != 'SALESMAN' AND SAL > 3000;

/* Select all columns from EMP table where COMM's value is greater than SAL's value.  */
SELECT * FROM EMP WHERE COMM > SAL;

/* Select all columns from EMP table where COMM's value is less than SAL's value.  */
SELECT * FROM EMP WHERE COMM < SAL;

/* Select all columns where EMP table where JOB's value isn't 'MANAGER', SAL is greater than 2500, and DEPTNO is 20.  */
SELECT * FROM EMP WHERE JOB != 'MANAGER' AND 2500 < SAL AND DEPTNO = 20;