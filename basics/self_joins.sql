#SELF JOIN - join another copy of a table to itself, used to compare rows of the same table, helps to display a hierarchy of data


SELECT a.first_name, a.last_name, CONCAT(b.first_name, " ", b.last_name) AS "reports to" FROM employees as a
INNER JOIN employees as b ON
a.supervisor_id = b.employee_id;

SELECT a.first_name AS employee, b.first_name AS supervisor FROM employees as a
INNER JOIN employees as b ON
a.supervisor_id = b.employee_id;

SELECT * FROM employees AS a
INNER JOIN employees as b
ON a.supervisor_id = b.employee_id;

SELECT a.first_name AS "employee", b.first_name as "reports to" FROM employees AS a
INNER JOIN employees as b ON a.supervisor_id = b.employee_id;
