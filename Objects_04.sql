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
