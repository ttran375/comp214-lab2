-- 1. Create a view that lists the name and phone number of the contact person at each publisher. Don’t include the publisher’s ID in the view. Name the view CONTACT.
CREATE VIEW
    CONTACT AS
SELECT
    NAME AS PUBLISHER_NAME,
    CONTACT AS CONTACT_PERSON,
    PHONE AS CONTACT_PHONE
FROM
    PUBLISHER;
