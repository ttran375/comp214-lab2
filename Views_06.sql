-- 6. Try to change the name of a contact person in the REORDERINFO view to your name. Was an error message displayed when performing this step? If so, what was the cause of the error message?
UPDATE REORDERINFO
SET
    PUBLISHERNAME = 'YourName'
WHERE
    ISBN = '1059831198';
