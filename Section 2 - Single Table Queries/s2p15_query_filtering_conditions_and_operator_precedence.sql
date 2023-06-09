/* Select all columns from EMP table where COMM's value doesn't exist, and SAL is between 1100 and 5000, but exclude entry where SAL is 3000.  */
SELECT * FROM EMP WHERE COMM IS NULL AND SAL BETWEEN 1100 AND 5000 AND SAL != 3000;

/* Same as above but also include entries where COMM's value is 0.  */
SELECT * FROM EMP WHERE (COMM IS NULL AND SAL BETWEEN 1100 AND 5000 AND SAL != 3000) OR COMM = 0;

/* Another way to do this.  Wrap two conditions together where COMM is either NULL or 0.  */
SELECT * FROM EMP WHERE (COMM IS NULL OR COMM = 0) AND SAL BETWEEN 1100 AND 5000 AND SAL != 3000;

/* Select all columns from EMP table where JOB's value starts with 'S'.  */
SELECT * FROM EMP WHERE JOB LIKE 'S%';

/* Select all columns from EMP table where JOB's value ends with 'GER'.  */
SELECT * FROM EMP WHERE JOB LIKE '%GER';

/* Select all columns from EMP table where JOB's value is 'SALESMAN' and COMM's value is either 300 or greater than 1000.  */
SELECT * FROM EMP WHERE JOB = 'SALESMAN' AND (COMM = 300 OR COMM > 1000);