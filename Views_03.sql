-- 3. Create a view called HOMEWORK13 that includes the columns named Col1 and Col2 from the FIRSTATTEMPT table. Make sure the view is created even if the FIRSTATTEMPT table doesn’t exist.
CREATE FORCE VIEW
    HOMEWORK13 AS
SELECT
    COL1,
    COL2
FROM
    FIRSTATTEMPT;
