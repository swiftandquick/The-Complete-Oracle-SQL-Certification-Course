/* Create a table ASSIGNMENT_1.  */
CREATE TABLE ASSIGNMENT_1 (
	SUPPLIER_ID NUMBER(3),
	SUPPLIER_NAME VARCHAR(30),
	CITY VARCHAR(30),
	US_STATE VARCHAR(30),
	TOTAL_SPENT NUMBER(12)
);

/* Insert line by line into Apex Oracle or it doesn't work.  */
/* Insert entries into the ASSIGNMENT_1 table.  */
INSERT INTO ASSIGNMENT_1 VALUES (100, 'Shop of Epiphany', 'Augusta', 'Georgia', 220500);
INSERT INTO ASSIGNMENT_1 VALUES (200, 'Instant Assemblers', 'Valdez', 'Alaska', 37000);
INSERT INTO ASSIGNMENT_1 VALUES (300, 'Time Manufacturers', 'Redwood City', 'California', 90500);
INSERT INTO ASSIGNMENT_1 VALUES (400, 'Roundhouse Inc.', 'New York City', 'New York', 78150);
INSERT INTO ASSIGNMENT_1 VALUES (500, 'Smiths & Berries', 'Portland', 'Oregon', 114600);
INSERT INTO ASSIGNMENT_1 VALUES (600, 'Wesson LLC', 'Yuma', 'Alaska', 32000);
INSERT INTO ASSIGNMENT_1 VALUES (700, 'ICF Foods', 'Orlando', 'California', 78700);
INSERT INTO ASSIGNMENT_1 VALUES (800, 'Cheffmens Inc.', 'Toledo', 'Georgia', 187500);
INSERT INTO ASSIGNMENT_1 VALUES (900, 'Samwoods Drinks', 'Portland', 'Georgia', 17800);

/* Write a query that retrieves suppliers that work in either Georgia or California.  */
SELECT * FROM ASSIGNMENT_1 WHERE US_STATE IN ('Georgia', 'California');

/* Write a query that retrieves suppliers with the characters "wo" and the character "I" or "i" in their name.  */
SELECT * FROM ASSIGNMENT_1 WHERE SUPPLIER_NAME LIKE '%wo%' AND (SUPPLIER_NAME LIKE '%I%' OR SUPPLIER_NAME LIKE '%i%');

/* Write a query that retrieves suppliers on which a minimum of 37,000 and a maximum of 80,000 was spent.  */
SELECT * FROM ASSIGNMENT_1 WHERE TOTAL_SPENT BETWEEN 37000 AND 80000;

/* Write a query that returns the supplier names and the state in which they operate meeting the following conditions:
Belong in the state Georgia or Alaska.  
The supplier id is 100 or greater than 600.  
The amount spent is less than 100,000 or the amount spent is 220,000.  
*/
SELECT * FROM ASSIGNMENT_1 WHERE US_STATE IN ('Georgia', 'Alaska') AND (SUPPLIER_ID = 100 OR SUPPLIER_ID > 600) AND (TOTAL_SPENT < 100000 OR TOTAL_SPENT = 220000);