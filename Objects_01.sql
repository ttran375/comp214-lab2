-- 1. Create a sequence for populating the Customer# column of the CUSTOMERS table. When setting the start and increment values, keep in mind that data already exists in this table. The options should be set to not cycle the values and not cache any values, and no minimum or maximum values should be declared.
CREATE SEQUENCE CUSTOMERS_CUSTOMER#_seq
START WITH 1021 INCREMENT BY 1 NOCACHE NOCYCLE;
