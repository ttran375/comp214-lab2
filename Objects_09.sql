-- 9. Create a B-tree index on the customer’s Lastname column.
CREATE INDEX IDX_CUSTOMERS_LASTNAME ON CUSTOMERS (LASTNAME);

-- 9. Verify that the index exists by querying the data dictionary.
SELECT
    INDEX_NAME
FROM
    USER_INDEXES;

-- 9. Remove the index from the database.
DROP INDEX IDX_CUSTOMERS_LASTNAME;
