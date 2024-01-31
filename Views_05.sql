-- 5. Create a view that lists the ISBN and title for each book in inventory along with the name and phone number of the person to contact if the book needs to be reordered. Name the view REORDERINFO.
CREATE VIEW
    REORDERINFO AS
SELECT
    B.ISBN,
    B.TITLE,
    P.NAME AS PUBLISHERNAME,
    P.PHONE AS PUBLISHERPHONE
FROM
    BOOKS B
    JOIN PUBLISHER P ON B.PUBID = P.PUBID;
