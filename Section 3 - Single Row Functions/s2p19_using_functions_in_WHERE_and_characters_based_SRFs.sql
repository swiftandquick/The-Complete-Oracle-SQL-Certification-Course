/* Select the ENAME column from EMP table, but values of ENAME column are all in lower-cases.  */
SELECT LOWER(ENAME) FROM EMP;

/* Nothing returns because an entry's JOB value is in upper-case, lower('MANAGER') will return 'manager', no JOB value will have a lower-case value.  */
SELECT * FROM EMP WHERE JOB = LOWER('MANAGER');

/* UPPER('manager') returns 'MANAGER', so all entries with JOB value of 'MANAGER' will be displayed.  */
SELECT * FROM EMP WHERE JOB = UPPER('manager');

/* Create a string where each word's (separated by spaces) first character is capitalized.  */
SELECT INITCAP('hello my name is yong') AS SENTENCE FROM DUAL;

/* Return the an integer representing the number of characters in the string.  */
SELECT LENGTH('hello my name is yong') AS SENTENCE FROM DUAL;

/* Select the ENAME column from EMP table, used it to create another column based on the length of the ENAME value of each entry.  Only display entries where length of ENAME is 6.  */
SELECT ENAME, LENGTH(ENAME) AS "ENAME LENGTH" FROM EMP WHERE LENGTH(ENAME) = 6;

/* Retrieve a substring from string 'hello', index 2 is 'e', so start from index 2, retrieve 2 characters, which are 'el'.  */
SELECT SUBSTR('hello', 2, 2)FROM DUAL;

/* Because I don't have the third argument, the substring will be from the 2nd character to the end, which returns 'ello'.  */
SELECT SUBSTR('hello', 2)FROM DUAL;

/* I can nest the functions, here, I use the LENGTH() function to find the size of the substring.  */
SELECT 'hello my name is', LENGTH(SUBSTR('hello my name is', 10, 5))FROM DUAL;

/* The returned string needs to have 10 characters, 'hello' is 5 characters, so 5 '&' will be added to the left of 'hello', returning '&&&&&hello'.  */
SELECT LPAD('hello', 10, '&') FROM DUAL;

/* Since there's no third argument, empty space is added to the left, returning '     hello'.  */
SELECT LPAD('hello', 10) FROM DUAL;

/* The returned string needs to have 10 characters, 'hello' is 5 characters, so 5 '&' will be added to the right of 'hello', returning 'hello&&&&&'.  */
SELECT RPAD('hello', 10, '&') FROM DUAL;

/* Remove the 'h' from the left end, the 'h' that are not on the left end will not be removed, returning 'ooohhh'.  */
SELECT LTRIM('hhhooohhh', 'h') FROM DUAL;

/* Remove the 'h' from the right end, the 'h' that are not on the left end will not be removed, returning 'hhhooo'.  */
SELECT RTRIM('hhhooohhh', 'h') FROM DUAL;