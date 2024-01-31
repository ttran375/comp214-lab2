-- 2. The last name, street, and phone number columns of the Criminals table are used quite often in the WHERE clause condition of queries. Create objects that might improve data retrieval for these queries.
CREATE INDEX idx_criminals_last_name ON Criminals (LastName);

CREATE INDEX idx_criminals_street ON Criminals (Street);

CREATE INDEX idx_criminals_phone_number ON Criminals (PhoneNumber);
