/* Display entries in EMPLOYEES table where JOB value is 'MANAGER'.  */
SELECT * FROM EMPLOYEES WHERE JOB = 'MANAGER';

/* Create a view (virtual table) base on EMPLOYEES table where JOB is 'MANAGER'.  */
CREATE VIEW MANAGERS_V AS SELECT * FROM EMP EMPLOYEES WHERE JOB = 'MANAGER';

/* Display all entries from the view MANAGERS_V.  */
SELECT * FROM MANAGERS_V;

/* Display all VIEW type objects.  */
SELECT * FROM USER_OBJECTS WHERE OBJECT_TYPE = 'VIEW';

/* Display all the tables that I own, my schema is WKSP_SWIFTANDQUICKD.  */
SELECT * FROM ALL_OBJECTS WHERE OWNER = 'WKSP_SWIFTANDQUICKD' AND OBJECT_TYPE = 'TABLE';

/* Display all the views that I own, my schema is WKSP_SWIFTANDQUICKD.  */
SELECT * FROM ALL_OBJECTS WHERE OWNER = 'WKSP_SWIFTANDQUICKD' AND OBJECT_TYPE = 'VIEW';

/* Display all the views, include the views that I own and views from the other databases.  */
SELECT * FROM ALL_OBJECTS WHERE OBJECT_TYPE = 'VIEW';

/* Get the database version from the owner SYS (system).  */
SELECT * FROM SYS.V_$VERSION;

/* Group the EMPLOYEES table by their STORE_ID, then find the entry with highest SAL value for each group, exclude the entry where ENAME is 'FORD', then create a view SUPER_EMPLOYEES with those entries.  */
CREATE VIEW SUPER_EMPLOYEES AS SELECT E1.* FROM EMPLOYEES E1 INNER JOIN (SELECT STORE_ID, MAX(SAL) SAL FROM EMPLOYEES GROUP BY STORE_ID) E2 ON E1.STORE_ID = E2.STORE_ID AND E1.SAL = E2.SAL WHERE ENAME != 'FORD';

/* If the view doesn't exist, create the view, if it already exists, replace the original view with the new view.  In this case, the original view SUPER_EMPLOYEES is replaced.  */
CREATE OR REPLACE VIEW SUPER_EMPLOYEES AS SELECT E1.* FROM EMPLOYEES E1 INNER JOIN (SELECT STORE_ID, MAX(SAL) SAL FROM EMPLOYEES GROUP BY STORE_ID) E2 ON E1.STORE_ID = E2.STORE_ID AND E1.SAL = E2.SAL WHERE ENAME != 'FORD';

/* Display everything on the EMPLOYEES table.  */
SELECT * FROM EMPLOYEES;

/* Display everything on the SUPER_EMPLOYEES view.  */
SELECT * FROM SUPER_EMPLOYEES;

/* Combine the entries from the SUPER_EMPLOYEES view and EMPLOYEES table, duplicates will only show once.  */
SELECT * FROM SUPER_EMPLOYEES UNION SELECT * FROM EMPLOYEES;

/* Display the entries from EMPLOYEES table, but remove the entries that are also present in the SUPER_EMPLOYEES table.  
SUPER_EMPLOYEES table has 3 duplicated entries, so this query will only display 11 entries as there are 14 total entries from EMPLOYEES table.  */
SELECT * FROM EMPLOYEES MINUS SELECT * FROM SUPER_EMPLOYEES;