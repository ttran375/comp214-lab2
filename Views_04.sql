-- 4. Attempt to view the structure of the HOMEWORK13 view.
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    DATA_LENGTH
FROM
    ALL_TAB_COLUMNS
WHERE
    TABLE_NAME = 'HOMEWORK13';
