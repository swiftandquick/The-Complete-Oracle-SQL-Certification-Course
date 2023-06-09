/* Create the table supplier.  I cannot drop the supplier table as the supplier_id (primary key in supplier table) is used as foreign key in the products2 table.  */
CREATE TABLE supplier
( supplier_id numeric(10) not null,
  supplier_name varchar2(50) not null,
  contact_name varchar2(50),
  CONSTRAINT supplier_pk PRIMARY KEY (supplier_id)
);

/* Create the table products2.  */
CREATE TABLE products2
( product_id numeric(10) not null,
  supplier_id numeric(10) not null,
  CONSTRAINT fk_supplier
    FOREIGN KEY (supplier_id)
    REFERENCES supplier(supplier_id)
);

/* Insert entries into both supplier and procuts2 table.  */
BEGIN
INSERT INTO supplier values(10, '1st Supplier', 'John Dollan');
INSERT INTO supplier values(20, '2nd Supplier', 'Steve Reeves');
INSERT INTO supplier values(30, '3rd Supplier', 'Peter Marcello');
INSERT INTO products2 values(1, 10);
INSERT INTO products2 values(2, 10);
INSERT INTO products2 values(3, 10);
INSERT INTO products2 values(4, 20);
INSERT INTO products2 values(5, 20);
INSERT INTO products2 values(6, 30);
END;

/* Drop the supplier_id column from the supplier table, and all constraints related to the supplier_id column are dropped, which means supplier_id is no longer a foreign key in products2 table.  */
ALTER TABLE supplier DROP COLUMN supplier_id CASCADE CONSTRAINTS;

/* Now, I can delete any entry in supplier table, even if the supplier_id also exist in the products2 table.  For example, if entry with supplier_id of 10 in supplier table is deleted, all entries with 
supplier_id of 10 from the products2 table will also be deleted.  */
ALTER TABLE products2 ADD CONSTRAINT fk_supplier FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id) ON DELETE CASCADE;