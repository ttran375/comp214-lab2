-- 3. Create a sequence that generates integers starting with the value 5. Each value should be three less than the previous value generated. The lowest possible value should be 0, and the sequence shouldn’t be allowed to cycle. Name the sequence MY_FIRST_SEQ.
CREATE SEQUENCE MY_FIRST_SEQ
START WITH 5 INCREMENT BY 3 MINVALUE 0 MAXVALUE 5 NOCYCLE;
