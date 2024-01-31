-- 10. Many queries search by the number of days to ship (number of days between the order and shipping dates). Create an index that might improve the performance of these queries.
CREATE INDEX IDX_DAYS_TO_SHIP ON ORDERS (SHIPDATE - ORDERDATE);
