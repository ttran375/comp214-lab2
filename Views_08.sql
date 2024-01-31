-- 8. Delete the record in the REORDERINFO view containing your name. (If you weren’t able to perform #6 successfully, delete one of the contacts already listed in the table.) Was an error message displayed when performing this step? If so, what was the cause of the error message?
DELETE FROM REORDERINFO
WHERE
    PUBLISHERNAME = 'YourName'
