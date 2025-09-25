#SUBQUERY - a query within another query (allows you to use aggregate functions within a single table with non-aggregate columns), without using groupby


SELECT first_name, last_name, hourly_wage,
(SELECT AVG(hourly_wage) FROM employees)
AS "avg_wage" FROM employees;


SELECT first_name, last_name, hourly_wage
FROM employees
WHERE hourly_wage > (SELECT AVG(hourly_wage) FROM employees);

SELECT customer_id, first_name, last_name,
(SELECT DISTINCT customer_id FROM transactions
WHERE customer_id IS NOT NULL) AS customer_id
FROM transactions;
