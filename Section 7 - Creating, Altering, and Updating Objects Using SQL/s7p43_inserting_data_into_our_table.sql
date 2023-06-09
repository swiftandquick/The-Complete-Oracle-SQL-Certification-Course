/* Insert an entry into the STORES table, with 1 as STORE_ID's value and 'San Francisco' as CITY's value.  */
INSERT INTO STORES(STORE_ID, CITY) VALUES (1, 'San Francisco');

/* Insert an entry into the STORES table, with 2 as STORE_ID's value and 'New York City' as CITY's value.  */
INSERT INTO STORES(STORE_ID, CITY) VALUES (2, 'New York City');

/* Insert an entry into the STORES table, with 3 as STORE_ID's value and 'Chicago' as CITY's value.  */
INSERT INTO STORES(STORE_ID, CITY) VALUES (3, 'Chicago');

/* Insert 3 entries into the STOREs table with INSERT ALL, for INSERT ALL, I need to put down a SELECT statement at the end for it to execute.  */
INSERT ALL INTO STORES (STORE_ID, CITY) VALUES (4, 'Philadelphia') INTO STORES (STORE_ID, CITY) VALUES (5, 'Boston') INTO STORES (STORE_ID, CITY) VALUES (6, 'Seattle') SELECT * FROM DUAL;