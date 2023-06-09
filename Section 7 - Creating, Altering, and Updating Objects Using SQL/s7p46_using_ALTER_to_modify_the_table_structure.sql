/* Second column is allowed to be an empty string because I didn't specify that value must not be null.  I don't have to write down column names when I insert an entry into the table.  */
INSERT INTO PRODUCTS VALUES (1011, '', 4.00, 8.00, 'clothing', 3);

/* Delete the entry from PRODUCTS table where PRODUCT_ID is 1011.  */
DELETE FROM PRODUCTS WHERE PRODUCT_ID = 1011;

/* The NAME column from PRODUCTS able now must not be null.  */
ALTER TABLE PRODUCTS MODIFY NAME VARCHAR2(50) NOT NULL;

/* The PRODUCT_COST and PRODUCT_RETAIL columns from PRODUCTS able now must not be null.  I can alter multiple columns at once.  */
ALTER TABLE PRODUCTS MODIFY (PRODUCT_COST NUMBER(5, 2) NOT NULL, PRODUCT_RETAIL NUMBER(5, 2) NOT NULL);

/* Change the name of the NAME column to PRODUCT_NAME.  */
ALTER TABLE PRODUCTS RENAME COLUMN NAME TO PRODUCT_NAME;

/* I can use DESCRIBE keyword on a constraint.  */
DESCRIBE PRODUCT_PK;
