-- 1. The head DBA has requested the creation of a sequence for the primary key columns of the Criminals and Crimes tables.
CREATE TABLE
    Criminals (
        Criminal_ID NUMBER,
        FirstName VARCHAR2(50),
        LastName VARCHAR2(50),
        -- other columns
        CONSTRAINT Criminals_PK PRIMARY KEY (Criminal_ID)
    );

CREATE TABLE
    Crimes (
        Crime_ID NUMBER,
        Criminal_ID NUMBER,
        CrimeType VARCHAR2(50),
        -- other columns
        CONSTRAINT Crimes_PK PRIMARY KEY (Crime_ID),
        CONSTRAINT Crimes_FK FOREIGN KEY (Criminal_ID) REFERENCES Criminals (Criminal_ID)
    );

CREATE SEQUENCE seq_criminals
START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE seq_crimes
START WITH 1 INCREMENT BY 1;

-- 1. After creating the sequences, add a new criminal named Johnny Capps to the Criminals table by using the correct sequence. (Use any values for the remainder of columns.) 
INSERT INTO
    Criminals (Criminal_ID, FirstName, LastName)
VALUES
    (seq_criminals.NEXTVAL, 'Johnny', 'Capps');

-- 1. A crime needs to be added for the criminal, too. Add a row to the Crimes table, referencing the sequence value already generated for the Criminal_ID and using the correct sequence to generate the Crime_ID value. (Use any values for the remainder of columns).
INSERT INTO
    Crimes (Crime_ID, Criminal_ID, CrimeType)
VALUES
    (
        seq_crimes.NEXTVAL,
        seq_criminals.CURRVAL,
        'Burglary'
    );
