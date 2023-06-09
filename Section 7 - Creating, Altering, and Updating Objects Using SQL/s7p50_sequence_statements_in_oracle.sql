/* Create a sequence PRODUCT_SEQ, with the minimum value of 1 and maximum value of 999999999999, the sequence starts from 1 and increment by 1 as it goes on.  
Cache is a place in memory which will contain the next 20 values of this sequence.  */
CREATE SEQUENCE PRODUCT_SEQ MINVALUE 1 MAXVALUE 999999999999 START WITH 1 INCREMENT BY 1 CACHE 20;

/* Gets the next value of the sequence PRODUCT_SEQ.  First value is 1, then it's 2, then it can be 21.  It skips to 21 because of caching.  */
SELECT PRODUCT_SEQ.NEXTVAL FROM DUAL;

/* I can alter a sequence as I alter a table, here, I set the sequence PRODUCT_SEQ to NOCACHE, so now NEXTVAL no longer skips a value, it will go from 1 to 2 to 3, and so on.  */
ALTER SEQUENCE PRODUCT_SEQ NOCACHE;