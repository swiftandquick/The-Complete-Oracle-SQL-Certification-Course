/* RUNNING_WEIGHT is the sum between the previous entry's WEIGHT value and the current entry's WEIGHT value.  
I changed UNBOUNDED to 1, which means 1 preceding row.  4th row has the WEIGHT of 2, previous row has the WEIGHT of 1, 1 + 2 = 3, RUNNING_WEIGHT for 4th row is 3.  */
SELECT B.*, SUM(WEIGHT) OVER(ORDER BY WEIGHT ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) RUNNING_WEIGHT FROM BRICKS B ORDER BY WEIGHT;

/* RUNNING_WEIGHT is the sum between the previous 2 entries' WEIGHT values and the current entry's WEIGHT value.  
I changed UNBOUNDED to 2, which means 2 preceding rows.  4th row has the WEIGHT of 2, previous 2 rows has the WEIGHT of 1 and 1, 1 + 1 + 2 = 3, RUNNING_WEIGHT for 4th row is 4.  */
SELECT B.*, SUM(WEIGHT) OVER(ORDER BY WEIGHT ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) RUNNING_WEIGHT FROM BRICKS B ORDER BY WEIGHT;

/* The subquery returns a table with a COLOUR_COUNT column, which counts how many entries share the same color.  
The outer query then filters the table from the subquery to exclude entries with COLOUR_COUNT less than 2.  
Only one entry (with BRICK_ID of 6) has COLOUR of green, so COLOUR_COUNT for that entry is 1, thus, that one entry is excluded.  */
SELECT * FROM (SELECT B.*, COUNT(*) OVER (PARTITION BY COLOUR) COLOUR_COUNT FROM BRICKS B) WHERE COLOUR_COUNT >= 2;