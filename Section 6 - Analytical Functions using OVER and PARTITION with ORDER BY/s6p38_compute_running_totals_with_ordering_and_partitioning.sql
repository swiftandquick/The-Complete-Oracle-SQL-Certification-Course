/* The 5th and 6th columns sums the total weight of each SHAPE type and each COLOUR type respectively.  
The 7th and 8th columns get the maximum weight value for all SHAPE type and COLOUR type respectively.  */
SELECT B.*, SUM(WEIGHT) OVER(PARTITION BY SHAPE) TOTAL_WEIGHT_BY_SHAPE, 
SUM(WEIGHT) OVER (PARTITION BY COLOUR) TOTAL_WEGIHT_BY_COLOUR, 
MAX(WEIGHT) OVER(PARTITION BY SHAPE) MAX_WEIGHT_BY_SHAPE, 
MAX(WEIGHT) OVER(PARTITION BY COLOUR) MAX_WEIGHT_BY_COLOUR FROM BRICKS B;

/* Order the entries by BRICK_ID in ascending order, from smallest number to largest number, then sum all the weight values of the current entry and all previous entries.  
For example, brick with BRICK_ID value of 1 has the WEIGHT of 1, RUNNING_WEIGHT would be 1, there's no previous entry and current entry has the WEIGHT value of 1.  
Brick with BRICK_ID value of 2 has the WEIGHT of 2, RUNNING_WEIGHT would be 3, the current value is 2 and the previous WEIGHT value is 1, 1 + 2 = 3.  
Brick with BRICK_ID value of 3 has the WEIGHT of 1, RUNNING_WEIGHT would be 4, the current value is 1 and the previous WEIGHT values are 1 and 2, 1 + 2 + 1 = 4.  And so on...  */
SELECT B.*, SUM(WEIGHT) OVER(ORDER BY BRICK_ID) RUNNING_WEIGHT FROM BRICKS B;

/* Order the entries by BRICK_ID in ascending order, from smallest number to largest number, then count the total number of entries from the first entry to the current entry.  
For example, brick with BRICK_ID value of 1 has no entry before it, so RUNNING_COUNT is 1.  
Brick with BRICK_ID value of 2 has 1 entry before it, and include the entry itself, the RUNNING_COUNT is 2.  And so on...  */
SELECT B.*, COUNT(*) OVER(ORDER BY BRICK_ID) RUNNING_COUNT FROM BRICKS B;

/* Combine the previous two queries into one. */
SELECT B.*, COUNT(*) OVER(ORDER BY BRICK_ID) RUNNING_COUNT, SUM(WEIGHT) OVER(ORDER BY BRICK_ID) RUNNING_WEIGHT FROM BRICKS B;

/* The final table is order by COLOUR, since blue is first color alphabetically, entries with COLOUR value of blue are the first entries.  
Sum function, order by BRICK_ID for each COLOUR and partition by the COLOUR value to find the RUNNING_WEIGHT_BY_COLOUR value for each entry.  
For blue bricks, first entry has WEIGHT of 1 and there's no previous entry, so RUNNING_WEIGHT_BY_COLOUR is 1, second entry has WEIGHT of 2, 1 + 2 = 2, RUNNING_WEIGHT_BY_COLOUR is 2.  
For the one green brick, while there is a previous entry, the entry is a blue brick, COLOUR value is different, so the previous WEIGHT values aren't summed, so WEIGHT is 1 as the entry's current WEIGHT value is 1.  
For the first red brick, previous entries' WEIGHT value isn't calculated into the sum because COLOUR is different, so RUNNING_WEIGHT_BY_COLOR resets and has the value of 1, which equal to the current entry's WEIGHT value.  */
SELECT B.*, SUM(WEIGHT) OVER(PARTITION BY COLOUR ORDER BY BRICK_ID) RUNNING_WEIGHT_BY_COLOUR FROM BRICKS B ORDER BY COLOUR;

/* The whole table is order by WEIGHT in descending order (largest to smallest), however, the SUM() function sums the running weight base on BRICK_ID in ascending order, then partition by COLOUR.  
The display of the table has nothing to do with the value RUNNING_WEIGHT_BY_COLOUR for each entry, even though the table may be organized differently.  
For the red bricks, the BRICK_ID in ascending order is 3 (WEIGHT of 1), 4 (WEIGHT of 2), and 5 (WEIGHT of 3), so their running weight values are 1, 3 (1 + 2), and 6 (1 + 2 + 3) respectively.  */
SELECT B.*, SUM(WEIGHT) OVER(PARTITION BY COLOUR ORDER BY BRICK_ID) RUNNING_WEIGHT_BY_COLOUR FROM BRICKS B ORDER BY WEIGHT DESC;

/* Same as the previous two queries but order by BRICK_ID instead.  Again, the displayed order of the entries have nothing to do with RUNNING_WEIGHT_BY_COLOUR value.  */
SELECT B.*, SUM(WEIGHT) OVER(PARTITION BY COLOUR ORDER BY BRICK_ID) RUNNING_WEIGHT_BY_COLOUR FROM BRICKS B ORDER BY BRICK_ID;