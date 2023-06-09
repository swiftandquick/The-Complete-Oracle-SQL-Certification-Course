/* Display all columns for entries that have JOB's value as 'MANAGER'.  */
SELECT * from EMP WHERE JOB = 'MANAGER';

/* Display all columns for entries that have JOB's value as 'SALESMAN'.  */
SELECT * from EMP WHERE JOB = 'SALESMAN';

/* Display all columns for entries that have JOB's value as 'SALESMAN', SAL's value as 1600, and COMM's value as 500.  */
SELECT * from EMP WHERE JOB = 'SALESMAN' AND SAL = 1600 AND COMM = 500;

/* Display all columns for entries that have JOB's value as 'SALESMAN', SAL's value as 1600, and COMM's value as 300.  */
SELECT * from EMP WHERE JOB = 'SALESMAN' AND SAL = 1600 AND COMM = 300;

/* Display all columns for entries that have JOB's value as 'SALESMAN', SAL's value as 1600, COMM's value as 300, and DEPTNO's value of 30.  */
SELECT * from EMP WHERE JOB = 'SALESMAN' AND SAL = 1600 AND COMM = 300 AND DEPTNO = 30;

/* Display all columns for entries that have JOB's value as 'SALESMAN', SAL's value as 1600, COMM's value as 300, DEPTNO's value of 30, and ENAME's value of 'BILL'.  */
SELECT * from EMP WHERE JOB = 'SALESMAN' AND SAL = 1600 AND COMM = 300 AND DEPTNO = 30 AND ENAME = 'BILL';