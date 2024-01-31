-- 8. Create a bitmap index on the CUSTOMERS table to speed up queries that search for customers based on their state of residence.
CREATE BITMAP INDEX IDX_CUSTOMERS_STATE ON CUSTOMERS (STATE);

-- 8. Verify that the index exists, and then delete the index.
SELECT
    INDEX_NAME
FROM
    USER_INDEXES;
