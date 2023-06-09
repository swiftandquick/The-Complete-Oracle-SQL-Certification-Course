/* Display all entries from STORES table.  */
SELECT * FROM STORES;

/* Each entry has a unique ROWID.  Here, I display each entry's ROWID in the STORES table.  */
SELECT ROWID, STORE_ID, CITY FROM STORES;

/* Group the entries in STORES table by STORE_ID and CITY, then count how many entries share the same STORE_ID and CITY values.  */
SELECT STORE_ID, CITY, COUNT(*) FROM STORES GROUP BY STORE_ID, CITY ORDER BY COUNT(*);

/* Group the entries in STORES table by STORE_ID and CITY, there will be duplicated values, but even duplicated values have different ROWID, so here, I DELETE the ROWID that isn't the minimum ROWID, so I only 
keep one ROWID for each group, now the duplicated values are deleted from the STORES table.  */
DELETE FROM STORES WHERE ROWID NOT IN (SELECT  MIN(ROWID) FROM STORES GROUP BY STORE_ID, CITY);

/* Make STORE_ID the primary key in STORES table now that there are no duplicated values left.  */
ALTER TABLE STORES ADD CONSTRAINT STORE_ID_PK PRIMARY KEY (STORE_ID);

/* I can also create unique index on the STORE_ID column in STORES table because values are no longer duplicated.  However, the index is already created when creating the primary key.  */
CREATE UNIQUE INDEX STORE_ID_IDX ON STORES (STORE_ID) COMPUTE STATISTICS;

/* Display the tables where table name is 'EMPLOYEES' and number of rows is less than 10.  */
SELECT * FROM ALL_TABLES WHERE TABLE_NAME = 'EMPLOYEES' AND ROWNUM < 10;

/* Display all indexes where the number of columns is less than 50 and uppercase version of name is 'EMP_NAME_IDX'.  */
SELECT * FROM ALL_OBJECTS WHERE OBJECT_TYPE = 'INDEX' AND UPPER(object_name) = 'EMP_NAME_IDX' AND ROWNUM < 50;

/* Display the ROWNUM value of each entry in EMPLOYEES, ROWNUM is an innate column that holds a number which represents the row they are in, first entry's ROWNUM will be 1.  */
SELECT ROWNUM, ENAME, SAL FROM EMPLOYEES;