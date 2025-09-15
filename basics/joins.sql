/*INNER JOIN

Only rows where the chosen columns contain matching values appear.

If a row in one table has no match in the other → it’s excluded.*/

/*LEFT JOIN

Returns all rows from the left table.

Matching rows from the right table are included.

If there’s no match → you’ll see NULL for the right table’s columns.*/


/*RIGHT JOIN
Returns all rows from the right table.

Matching rows from the left table are included.

If there’s no match → you’ll see NULL for the left table’s columns.*/

SELECT *
FROM transactions t INNER JOIN customers c
ON t.customer_id = c.customer_id;

SELECT transaction_id, amount, first_name, last_name
FROM transactions t INNER JOIN customers c
ON t.customer_id = c.customer_id;

SELECT * 
FROM transactions t LEFT JOIN customers c
ON t.customer_id = c.customer_id;

SELECT transaction_id, amount, first_name, last_name
FROM transactions t LEFT JOIN customers c
ON t.customer_id = c.customer_id;

SELECT *
FROM transactions t RIGHT JOIN customers c
ON t.customer_id = c.customer_id;

SELECT transaction_id, amount, first_name, last_name
FROM transactions t INNER JOIN customers c
ON t.customer_id = c.customer_id;


SELECT * FROM transactions;
SELECT * FROM customers;

