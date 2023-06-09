/* Create a table building_lease, with lease_expiring_in column that represents the time period stored in years and months.  */
CREATE TABLE building_lease (lease_number NUMBER, address VARCHAR2(50) NOT NULL, lease_expiring_in INTERVAL YEAR TO MONTH, PRIMARY KEY (lease_number));

/* lease_expiring_in is +10-2, 10 years and 2 months.  */
INSERT INTO building_lease (lease_number, address, lease_expiring_in) VALUES (110, '303 Remdel Ave New York, NY 07391', INTERVAL '10-2' YEAR TO MONTH);

/* lease_expiring_in is +8-4, 8 years and 4 months, which also equals to 100 months (my input is '100').  */
INSERT INTO building_lease (lease_number, address, lease_expiring_in) VALUES (120, '42 Cranburry Rd New York, NY 09652', INTERVAL '100' MONTH);

/* Display all entries from building_lease table.  */
SELECT * FROM building_lease;