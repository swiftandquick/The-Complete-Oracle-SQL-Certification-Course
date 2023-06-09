/* Select the ENAME, SAL, and COMM columns from EMP table, display them with the column names as EMPLOYEE, SALARY, and COMMISSION.  */
SELECT ENAME EMPLOYEE, SAL SALARY, COMM COMMISSION FROM EMP;

/* Select the ENAME, SAL, and COMM columns from EMP table, display them with the column names as EMPLOYEE NAME, SALARY, and COMMISSION.  */
SELECT ENAME "EMPLOYEE NAME", SAL SALARY, COMM COMMISSION FROM EMP;

/* I can also use the AS keyword to define the alias.  */
SELECT ENAME AS "EMPLOYEE NAME", SAL AS SALARY, COMM AS COMMISSION FROM EMP;

/* Select the ENAME column from EMP table, the value of each entry is a concatenated string begin with 'hello my name is ' and ends with the entry's ENAME value.  */
SELECT 'hello my name is ' || ENAME FROM EMP;

/* Display the same value as above, but the column's name is "CONCATENATED VALUE", and only entries with JOB's value of 'MANAGER' is selected.  */
SELECT 'hello my name is ' || ENAME AS "CONCATENATED VALUE" FROM EMP WHERE JOB = 'MANAGER';

/* Display the ENAME and SAL value of each entry in EMP table under a single column called "EMPLOYEE INCOME".  */
SELECT ENAME || ' makes $' || SAL || ' per month.  ' AS "EMPLOYEE INCOME" FROM EMP;

/* Display the ENAME and SAL columns from EMP table, sort the entries by ENAME's value, since ENAME contains string values, ENAME values will be sorted alphabetically.  */
SELECT ENAME, SAL FROM EMP ORDER BY ENAME;

/* Display all columns from EMP table, sort the entries by ENAME's value, since SAL contains number values, ENAME values will be sorted from least to greatest.  */
SELECT * FROM EMP ORDER BY SAL;

/* Same as above.  */
SELECT * FROM EMP ORDER BY SAL ASC;

/* Sort entries' SAL value by SAL in descending order, which is from greatest to least.  */
SELECT * FROM EMP ORDER BY SAL ASC;

/* Display DEPTNO, SAL, and ENAME columns from EMP table, first order by DEPTNO (least to greatest), then order by SAL (least to greatest).  */
SELECT DEPTNO, SAL, ENAME FROM EMP ORDER BY DEPTNO, SAL;