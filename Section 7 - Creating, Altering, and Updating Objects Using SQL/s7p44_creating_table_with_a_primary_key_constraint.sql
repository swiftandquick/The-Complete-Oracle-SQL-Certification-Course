/* Create a table called PRODUCTS.  First column is PRODUCT_ID, which has a number value and cannot be null.  Second column is NAME, which is a string with a maximum of 50 characters.  
Third column is PRODUCT_COST, which is a number that has the maximum of 5 digits and maximum of 2 digits after the decimal point.  
Fourth column is PRODUCT_RETAIL, which is a number that has the maximum of 5 digits and maximum of 2 digits after the decimal point.  
Fifth column is PRODUCT_TYPE, which is a string that is up to 10 characters long.  Sixth column is STORE_ID, which holds a number value and cannot be null.  
There is a primary key constraint on one column, which is PRODUCT_ID, PRODUCT_ID is unique and cannot be duplicated.  */
CREATE TABLE PRODUCTS(PRODUCT_ID NUMBER NOT NULL, NAME VARCHAR(50), PRODUCT_COST NUMBER(5, 2), PRODUCT_RETAIL NUMBER(5, 2), PRODUCT_TYPE VARCHAR(10), STORE_ID NUMBER NOT NULL, CONSTRAINT PRODUCT_PK PRIMARY KEY (PRODUCT_ID));

/* Insert 3 entries into the PRODUCTS table.  */
INSERT ALL 
	INTO PRODUCTS (PRODUCT_ID, NAME, PRODUCT_COST, PRODUCT_RETAIL, PRODUCT_TYPE, STORE_ID) VALUES (1001, 'Colgate Toothpaste', 2.25, 5.47, 'hygiene', 2) 
	INTO PRODUCTS (PRODUCT_ID, NAME, PRODUCT_COST, PRODUCT_RETAIL, PRODUCT_TYPE, STORE_ID) VALUES (1002, 'Colgate Toothpaste', 2.25, 5.47, 'hygiene', 2) 
	INTO PRODUCTS (PRODUCT_ID, NAME, PRODUCT_COST, PRODUCT_RETAIL, PRODUCT_TYPE, STORE_ID) VALUES (1003, 'Listerine Mouthwash', 1.75, 4.81, 'hygiene', 3) 
SELECT * FROM DUAL;

/* Insert 7 entries into the PRODUCTS table.  */
INSERT ALL
    INTO PRODUCTS (PRODUCT_ID, NAME, PRODUCT_COST, PRODUCT_RETAIL, PRODUCT_TYPE, STORE_ID)
        VALUES (1004, 'T-Shirt', 1.75, 7.77, 'Clothing', 2)
    INTO PRODUCTS (PRODUCT_ID, NAME, PRODUCT_COST, PRODUCT_RETAIL, PRODUCT_TYPE, STORE_ID)
        VALUES (1005, 'T-Shirt', 1.65, 7.85, 'Clothing', 2)
    INTO PRODUCTS (PRODUCT_ID, NAME, PRODUCT_COST, PRODUCT_RETAIL, PRODUCT_TYPE, STORE_ID)
        VALUES (1006, 'T-Shirt', 1.73, 7.80, 'Clothing', 3)
    INTO PRODUCTS (PRODUCT_ID, NAME, PRODUCT_COST, PRODUCT_RETAIL, PRODUCT_TYPE, STORE_ID)
        VALUES (1007, 'Shorts', 0.73, 5.60, 'Clothing', 3)
    INTO PRODUCTS (PRODUCT_ID, NAME, PRODUCT_COST, PRODUCT_RETAIL, PRODUCT_TYPE, STORE_ID)
        VALUES (1008, 'Dress Shoes', 17.85, 87.67, 'Clothing', 2)
    INTO PRODUCTS (PRODUCT_ID, NAME, PRODUCT_COST, PRODUCT_RETAIL, PRODUCT_TYPE, STORE_ID)
        VALUES (1009, 'Garden Chair', 12.01, 27.87, 'Home & Gar', 2)
    INTO PRODUCTS (PRODUCT_ID, NAME, PRODUCT_COST, PRODUCT_RETAIL, PRODUCT_TYPE, STORE_ID)
        VALUES (1010, 'Grass Fertilizer', 3.20, 8.70, 'Home & Gar', 2)
SELECT * FROM DUAL; 
