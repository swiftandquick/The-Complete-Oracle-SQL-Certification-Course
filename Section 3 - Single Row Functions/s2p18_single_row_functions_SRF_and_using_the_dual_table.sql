/* I can concatenate using the CONCAT keyword instead of ||.  */
SELECT CONCAT('My name is ', ENAME) AS SENTENCE FROM EMP;

/* All ENAME values are changed to all upper-cases.  */
SELECT UPPER(ENAME) FROM EMP;

/* All ENAME values are changed to all lower-cases.  */
SELECT LOWER(ENAME) FROM EMP;

/* There's no 'hello' table, so all entries will be printed with the table name of 'hello' and all values will be 'hello'.  */
SELECT 'hello' FROM EMP;

/* DUAL is a temporary table created from the query, which contains properties FOOD and DRINK.  */
SELECT 'Pizza' as FOOD, 'Orange Juice' as DRINK FROM DUAL;

/* Display a contatenated string with lower-case ENAME and upper-case JOB from EMP table where DEPTNO is 20.  */
SELECT CONCAT(CONCAT(LOWER(ENAME), upper(' is the name ')), CONCAT(' and their job is:  ', upper(JOB))) AS SENTENCE FROM EMP WHERE DEPTNO = 20;