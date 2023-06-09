/* supplier_name is now an unused column, we can no longer retrieve data on this column.  */
ALTER TABLE supplier SET UNUSED COLUMN supplier_name;

/* Check how many unused columns are in each table.  */
SELECT * FROM USER_UNUSED_COL_TABS;