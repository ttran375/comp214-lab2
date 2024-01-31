-- 7. Select one of the books in the REORDERINFO view and try to change its ISBN. Was an error message displayed when performing this step? If so, what was the cause of the error message?
UPDATE REORDERINFO
SET
    ISBN = '1059831199'
WHERE
    ISBN = '1059831198';
