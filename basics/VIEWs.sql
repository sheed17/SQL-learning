#Views - virtual table that can interacted with they are not real tables but are in a field that can be viewed

/*CREATE VIEW employee_attendance AS SELECT
first_name, last_name FROM employees;*/

/*CREATE VIEW employee_email AS SELECT
email FROM employees;*/

/*
UPDATE employees
SET email = 'bobjohn@yahoo.com'
WHERE employee_id = 10;*/ # Even after updating a value the VIEW is also updated

SELECT * FROM employee_email;
