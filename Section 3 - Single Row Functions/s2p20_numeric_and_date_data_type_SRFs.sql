/* Round 107.088 to the nearest hundredth, which is 107.09.  */
SELECT ROUND(107.088, 2) FROM DUAL;

/* Since I didn't give the second argument, 107.0887 will be rounded to the nearest integer, which is 107.  */
SELECT ROUND(107.0887) FROM DUAL;

/* Since there's no second argument, remove everything after decimal point, return 107.  */
SELECT TRUNC(107.935) FROM DUAL;

/* Returns the current date.  */
SELECT SYSDATE FROM DUAL;

/* Returns the current date and time.  */
SELECT SYSTIMESTAMP FROM DUAL;

/* Add 3 months to '11/17/2012', which gives us '2/17/2013'.  */
SELECT ADD_MONTHS('11/17/2012', 3) FROM DUAL;

/* Subtract 3 months to '11/17/2012', which gives us '8/17/2012'.  */
SELECT ADD_MONTHS('11/17/2012', -3) FROM DUAL;

/* Subtract 3 months to the current date.  */
SELECT ADD_MONTHS(SYSDATE, -3) FROM DUAL;

/* '12/15/2013' is 12 months ahead of '12/15/2012', so -12 is returned.  */
SELECT MONTHS_BETWEEN('12/15/2012', '12/15/2013') FROM DUAL;

/* Use TRUNC() on SYSTIMESTAMP will return the SYSDATE value.  */
SELECT TRUNC(SYSTIMESTAMP) FROM DUAL;

/* Return the current year and month, with day as 1.  */
SELECT TRUNC(SYSTIMESTAMP, 'MONTH') FROM DUAL;

/* Return the current year, with month and day as 1.  */
SELECT TRUNC(SYSTIMESTAMP, 'YEAR') FROM DUAL;

/* Select the ENAME and HIREDATE columns from EMP table, then use the HIREDATE to get the MONTH value for each entry.  Only display employees that are hired in 1982.  */
SELECT ENAME, HIREDATE, TRUNC(HIREDATE, 'MONTH') FROM EMP WHERE TRUNC(HIREDATE, 'YEAR') = '01/01/1982';