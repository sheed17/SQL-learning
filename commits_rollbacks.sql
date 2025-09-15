#AUTOCOMMIT, COMMIT, ROLLBACKS
# like a saved checkpoint

SET AUTOCOMMIT = OFF;

COMMIT; # to save the current progress

DELETE FROM employees; #purposely forgotten where clause
SELECT * FROM employees; #displays nothing

ROLLBACK; #to go back to where we commited
SELECT* FROM employees; #displays the table with data
