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

