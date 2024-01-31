-- 2. Change the CONTACT view so that no users can accidentally perform DML operations on the view.
CREATE VIEW
    CONTACT AS
SELECT
    NAME AS PUBLISHER_NAME,
    CONTACT AS CONTACT_PERSON,
    PHONE AS CONTACT_PHONE
FROM
    PUBLISHER
WITH
    READ ONLY;

