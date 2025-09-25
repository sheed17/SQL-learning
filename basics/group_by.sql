#SUBQUERY - a query within another query (allows you to use aggregate functions within a single table with non-aggregate columns), without using groupby

SELECT SUM(amount) AS "total spent", customer_id
FROM transactions
GROUP BY customer_id;

SELECT COUNT(order_date) AS "amount ordered on one day", customer_id
FROM transactions
GROUP BY customer_id
HAVING count(order_date) > 1 AND customer_id IS NOT NULL;
