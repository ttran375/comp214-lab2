-- 4. Would using the City Jail database be any easier with the creation of synonyms? Explain why or why not.
CREATE SYNONYM CriminalData FOR Criminals;

SELECT
    Criminal_ID,
    First_Name,
    Last_Name
FROM
    Criminals
WHERE
    Last_Name = 'Capps';

SELECT
    Criminal_ID,
    First_Name,
    Last_Name
FROM
    CriminalData
WHERE
    Last_Name = 'Capps';
