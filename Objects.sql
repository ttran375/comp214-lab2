-- 1. Create a sequence for populating the Customer# column of the CUSTOMERS table. When setting the start and increment values, keep in mind that data already exists in this table. The options should be set to not cycle the values and not cache any values, and no minimum or maximum values should be declared.
CREATE SEQUENCE CUSTOMERS_CUSTOMER#_seq
START WITH 1021 INCREMENT BY 1 NOCACHE NOCYCLE;

-- 2. Add a new customer row by using the sequence created in Question 1. The only data currently available for the customer is as follows: last name = Shoulders, first name = Frank, and zip = 23567.
INSERT INTO
    CUSTOMERS (CUSTOMER#, LASTNAME, FIRSTNAME, ZIP)
VALUES
    (
        CUSTOMERS_CUSTOMER#_seq.NEXTVAL,
        'Shoulders',
        'Frank',
        '23567'
    );

-- 3. Create a sequence that generates integers starting with the value 5. Each value should be three less than the previous value generated. The lowest possible value should be 0, and the sequence shouldn’t be allowed to cycle. Name the sequence MY_FIRST_SEQ.
CREATE SEQUENCE MY_FIRST_SEQ
START WITH 5 INCREMENT BY 3 MINVALUE 0 MAXVALUE 5 NOCYCLE;

-- 4. Issue a SELECT statement that displays NEXTVAL for MY_FIRST_SEQ three times. Because the value isn’t being placed in a table, use the DUAL table in the FROM clause of the SELECT statement. What causes the error on the third SELECT?
SELECT
    MY_FIRST_SEQ.NEXTVAL
FROM
    DUAL;

SELECT
    MY_FIRST_SEQ.NEXTVAL
FROM
    DUAL;

SELECT
    MY_FIRST_SEQ.NEXTVAL
FROM
    DUAL;

-- 5. Change the setting of MY_FIRST_SEQ so that the minimum value that can be generated is -1000.
ALTER SEQUENCE MY_FIRST_SEQ MINVALUE 1000;

-- 6. Create a private synonym that enables you to reference the MY_FIRST_SEQ object as NUMGEN.
CREATE SYNONYM NUMGEN FOR MY_FIRST_SEQ;

-- 7. Use a SELECT statement to view the CURRVAL of NUMGEN. Delete the NUMGEN synonym and MY_FIRST_SEQ.
SELECT
    NUMGEN.CURRVAL
FROM
    DUAL;

-- 8. Create a bitmap index on the CUSTOMERS table to speed up queries that search for customers based on their state of residence.
CREATE BITMAP INDEX IDX_CUSTOMERS_STATE ON CUSTOMERS (STATE);

-- 8. Verify that the index exists, and then delete the index.
SELECT
    INDEX_NAME
FROM
    USER_INDEXES;

-- 9. Create a B-tree index on the customer’s Lastname column.
CREATE INDEX IDX_CUSTOMERS_LASTNAME ON CUSTOMERS (LASTNAME);

-- 9. Verify that the index exists by querying the data dictionary.
SELECT
    INDEX_NAME
FROM
    USER_INDEXES;

-- 9. Remove the index from the database.
DROP INDEX IDX_CUSTOMERS_LASTNAME;

-- 10. Many queries search by the number of days to ship (number of days between the order and shipping dates). Create an index that might improve the performance of these queries.
CREATE INDEX IDX_DAYS_TO_SHIP ON ORDERS (SHIPDATE - ORDERDATE);

-- ## Advanced Challenge
-- To perform the following activity, refer to the tables in the JustLee Books database. Using the training you have received and speculating on query needs, determine appropriate uses for indexes and sequences in the JustLee Books database. Assume all tables will grow quite large in the number of rows. Identify at least three sequences and three indexes that can address needed functionality for the JustLee Books database. In a memo to management, you should identify each sequence and index that you propose and the rationale supporting your suggestions. You should also state any drawbacks that might affect database performance if the changes are implemented.
CREATE SEQUENCE CUSTOMER_SEQ
START WITH 1000 INCREMENT BY 1;

INSERT INTO
    CUSTOMERS
VALUES
    (
        CUSTOMER_SEQ.NEXTVAL,
        'LASTNAME',
        'FIRSTNAME',
        'ADDRESS',
        'CITY',
        'STATE',
        'ZIP',
        REFERRED,
        'REGION',
        'EMAIL'
    );

CREATE SEQUENCE ORDER_SEQ
START WITH 1000 INCREMENT BY 1;

INSERT INTO
    ORDERS
VALUES
    (
        ORDER_SEQ.NEXTVAL,
        CUSTOMER#,
        ORDERDATE,
        SHIPDATE,
        'SHIPSTREET',
        'SHIPCITY',
        'SHIPSTATE',
        'SHIPZIP',
        SHIPCOST
    );

CREATE SEQUENCE BOOKS_SEQ
START WITH 1000000000 INCREMENT BY 1;

INSERT INTO
    BOOKS
VALUES
    (
        BOOKS_SEQ.NEXTVAL,
        'TITLE',
        PUBDATE,
        PUBID,
        COST,
        RETAIL,
        DISCOUNT,
        'CATEGORY'
    );

CREATE INDEX CUSTOMER_NAME_IDX ON CUSTOMERS (LASTNAME, FIRSTNAME);

CREATE INDEX ORDER_DATE_IDX ON ORDERS (ORDERDATE);

CREATE INDEX BOOK_CATEGORY_IDX ON BOOKS (CATEGORY);
