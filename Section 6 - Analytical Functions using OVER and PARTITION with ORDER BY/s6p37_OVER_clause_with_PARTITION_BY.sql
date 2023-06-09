/* Display all columns from BRICKS table.  */
SELECT * FROM BRICKS;

/* Display the amount of entries for each COLOUR value, for example, the COLOUR red will have the COUNT(*) value of 3, because there are 3 entries with COLOUR value of red.  */
SELECT COLOUR, COUNT(*) FROM BRICKS GROUP BY COLOUR;

/* Display the total number of entries in the BRICKS table, which is 6.  */
SELECT COUNT(*) FROM BRICKS;

/* Give the BRICKS table the alias B, then display all columns of B table (BRICKS table), on the right side, display the table that displays 6, which is the total number of entries, the column name is TOTAL_BRICKS.  */
SELECT B.*, (SELECT COUNT(*) FROM BRICKS) TOTAL_BRICKS FROM BRICKS B;

/* Same as last query, but now TOTAL_BRICKS table displays the total number of entries that has the same color as the current entry.  */
SELECT B.*, (SELECT COUNT(*) FROM BRICKS WHERE COLOUR = B.COLOUR) TOTAL_BRICKS FROM BRICKS B;

/* Calculate the total weight for bricks with each different COLOUR.  For example, there are 3 red bricks, with weight of 1, 2, 3, so the TOTAL_WEIGHT for those entries would be 6.  */
SELECT B.*, (SELECT SUM(WEIGHT) FROM BRICKS WHERE COLOUR = B.COLOUR) TOTAL_WEIGHT FROM BRICKS B;

/* Calculate the total weight for bricks with each different SHAPE.  For example, there are 3 cube bricks, with weight of 1, 1, 2, so the TOTAL_WEIGHT for those entries would be 4.  */
SELECT B.*, (SELECT SUM(WEIGHT) FROM BRICKS WHERE SHAPE = B.SHAPE) TOTAL_WEIGHT FROM BRICKS B;

/* When there's no argument in OVER clause, OVER clause includes the entire table.  Here, displays 6 in the table as the total number of entries in BRICKS table.  */
SELECT COUNT(*) OVER() FROM BRICKS;

/* Give the BRICKS table the alias B, then display all columns of B table (BRICKS table), on the right side, create a table TOTAL_COUNT to count the number of entries with the same COLOUR type, via PARTITION BY this time.  */
SELECT B.*, COUNT(*) OVER(PARTITION BY COLOUR) TOTAL_COUNT FROM BRICKS B;

/* TOTAL_WEIGHT column displays the total weight of bricks with each type of SHAPE.  For example, there are 3 cube bricks, with weight of 1, 1, 2, so the TOTAL_WEIGHT for those entries would be 4.  */
SELECT B.*, SUM(WEIGHT) OVER(PARTITION BY SHAPE) TOTAL_WEIGHT FROM BRICKS B;