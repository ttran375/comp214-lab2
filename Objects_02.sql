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
