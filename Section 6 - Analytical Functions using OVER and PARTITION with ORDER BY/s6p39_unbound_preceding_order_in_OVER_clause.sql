/* Find the running weight for all entries, when calculate the sum for running weight, entries are ordered by BRICK_ID.  */
SELECT B.*, SUM(WEIGHT) OVER(ORDER BY BRICK_ID) RUNNING_WEIGHT FROM BRICKS B ORDER BY BRICK_ID;

/* We order by WEIGHT in OVER clause.  Since there are 3 entries with the WEIGHT value of 1, RUNNING_WEIGHT for the first entry is 3 (1 + 1 + 1), despite having the WEIGHT value of 1 and no previous entry.  
Due to duplicated weight values, we are technically not getting the correct running weight.  */
SELECT B.*, SUM(WEIGHT) OVER(ORDER BY WEIGHT) RUNNING_WEIGHT FROM BRICKS B ORDER BY WEIGHT;

/* Now, with ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW, I get the current RUNNING_WEIGHT value for each entry.  
Duplicated WEIGHT values are no longer summed.  Only previous rows and current row's WEIGHT values are summed to calculate RUNNING_WEIGHT, hence, the first entry has the RUNNING_WEIGHT of 1.  */
SELECT B.*, SUM(WEIGHT) OVER(ORDER BY WEIGHT ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) RUNNING_WEIGHT FROM BRICKS B ORDER BY WEIGHT;