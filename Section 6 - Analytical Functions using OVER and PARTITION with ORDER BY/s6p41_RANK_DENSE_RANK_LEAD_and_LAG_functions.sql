/* ROW_NUMBER() assigns a unique ID for each row.  
RANK() assigns rows with the same value in the order by to have the same rank.  The next row after a tie has the value N, where N is its position in the data set.  
In this example, there are 3 values with WEIGHT of 1, so RK will be 1 for the first 3 entries.  The 4th entry will be in position 4, so its RK value of 4, 5 has the same WEIGHT value as 4, so RK will be 4 as well.  
DENSE_RANK() assigns rows with the same value in the order by to have the same rank, but there are no gaps in the ranks.  
First 3 entries have WEIGHT of 1, so DR is 1, next 2 entries have the WEIGHT of 2, so DR is 2.  */
SELECT BRICK_ID, WEIGHT, ROW_NUMBER() OVER(ORDER BY WEIGHT) RN, RANK() OVER(ORDER BY WEIGHT) RK, DENSE_RANK() OVER(ORDER BY WEIGHT) DR FROM BRICKS;

/* Set the WEIGHT values of entries where WEIGHT = 2 previously to 5.  */
UPDATE BRICKS SET WEIGHT = 5 WHERE WEIGHT = 2;

/* Make changes permanent.  */
COMMIT;

/* Order the entries by BRICK_ID, get the previous entry's SHAPE value and the next entry's SHAPE value.  
For LAG, if there's no previous entry, value will be null.  For LEAD, if there's no next entry, value will be null.  */
SELECT B.*, LAG(SHAPE) OVER(ORDER BY BRICK_ID) PREV_SHAPE, LEAD(SHAPE) OVER(ORDER BY BRICK_ID) NEXT_SHAPE FROM BRICKS B;

/* FIRST_WEIGHT always stays the same, which is 1, value of the first entry.  LAST_WEIGHT should be the current WEIGHT value, because the default windowing clause stops at the current row.  */
SELECT B.*, FIRST_VALUE(WEIGHT) OVER(ORDER BY BRICK_ID) FIRST_WEIGHT, LAST_VALUE(WEIGHT) OVER(ORDER BY BRICK_ID) LAST_WEIGHT FROM BRICKS B;

/* Now the LAST_VALUE() function calculates from the current row to the last row, the last row's WEIGHT is always 1, so LAST_WEIGHT is always 1.  */
SELECT B.*, FIRST_VALUE(WEIGHT) OVER(ORDER BY BRICK_ID) FIRST_WEIGHT, LAST_VALUE(WEIGHT) OVER(ORDER BY BRICK_ID RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) LAST_WEIGHT FROM BRICKS B;