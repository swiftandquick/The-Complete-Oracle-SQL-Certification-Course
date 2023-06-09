/* Display the current date in mm-dd-yyyy format.  */
SELECT TO_CHAR(SYSDATE, 'mm-dd-yyyy') FROM DUAL;

/* Display the current date in dd-mm-yyyy format.  */
SELECT TO_CHAR(SYSDATE, 'dd-mm-yyyy') FROM DUAL;

/* Example output:  06 of April, 2023.  */
SELECT TO_CHAR(SYSDATE, 'dd " of " Month, yyyy') FROM DUAL;

/* Change the format of the number, using US currency format, for example, 5000 will become $5,000.  */
SELECT ENAME, SAL, TO_CHAR(SAL, '$99,999.99') AS SALARY FROM EMP;

/* '2012-08-27' is a string representing a date in yyyy-mm-dd format, convert it to a date, which is 08/27/2012.  */
SELECT TO_DATE('2012-08-27', 'yyyy-mm-dd') FROM DUAL;

/* Add 2 months to the date 08/27/2012, which will get me 10/27/2012.  */
SELECT ADD_MONTHS(TO_DATE('2012-08-27', 'yyyy-mm-dd'), 2) FROM DUAL;

/* Convert another string to date, returning 06/03/2012.  */
SELECT TO_DATE ('3 of June, 2012', 'dd "of" Month, yyyy') FROM DUAL;