/* Create a table ASSIGNMENT_2.  */
CREATE TABLE ASSIGNMENT_2 (
	ID NUMBER,
	NAME VARCHAR2(17),
	COUNTRYCODE VARCHAR2(3),
	DISTRICT VARCHAR2(20),
	POPULATION NUMBER
);

/* Insert line by line into Apex Oracle or it doesn't work.  */
/* Insert entries into the ASSIGNMENT_2 table.  */
INSERT INTO ASSIGNMENT_2 VALUES (100, 'New York City', 'cbd', 'nyddkjsaldas', 8500000);
INSERT INTO ASSIGNMENT_2 VALUES (200, 'Los Angeles', 'cbd', 'cassaljkdasa', 632000);

/* Considering the data exists in the city table, write a query that will return records similar to what is shown below for those cities that have the COUNTRYCODE of 'cbd':
"NEW YORK CITY has the population of 8,500,000"
"LOS ANGELES has the population of 632,000" 
Since there are 7 digits in New York City’s population, which is 8500000, the format (second argument in TO_CHAR() function), should at least have 7 digits, 
that’s why I put ‘9,999,999’ as argument, otherwise I get ‘#’ characters as the value.  */
SELECT UPPER(NAME) || ' has the population of ' || TO_CHAR(POPULATION, '9,999,999') AS SENTENCE FROM ASSIGNMENT_2 WHERE COUNTRYCODE = 'cbd';

/* Write a query that would show the first three letters and the last three letters of the DISTRICT capitalized and separated by a dash.  */
SELECT UPPER(SUBSTR(DISTRICT, 1, 3)) || '-' || UPPER(SUBSTR(DISTRICT, LENGTH(DISTRICT) - 3, 3)) AS DISTRICT_REFORMATTED FROM ASSIGNMENT_2;

/* Return -2, LAST_DAY('01/15/2012') returns 01/31/2012, add 1 and I get 02/01/2012, 04/01/2012 is 2 months ahead.  */
SELECT MONTHS_BETWEEN(LAST_DAY('01/15/2012') + 1, '04/01/2012') FROM DUAL;

/* '20' concatenate with '24', which is '2024'.  */
SELECT SUBSTR('2009', 1, 2) || LTRIM('1124', '1') FROM DUAL;