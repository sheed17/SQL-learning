#SUBQUERY - a query within another query (allows you to use aggregate functions within a single table with non-aggregate columns), without using groupby

SELECT SUM(amount) AS "total spent", customer_id
FROM transactions
GROUP BY customer_id;

SELECT COUNT(order_date) AS "amount ordered on one day", customer_id
FROM transactions
GROUP BY customer_id
HAVING count(order_date) > 1 AND customer_id IS NOT NULL;


SELECT d.department_name, COUNT(e.employee_id) AS "numOfEmployees"
FROM departments d INNER JOIN employees e
ON d.department_number = e.department_number
GROUP BY d.department_name;

SELECT manager_id, COUNT(employee_id) AS "numOfEmployees"
FROM employees
GROUP BY manager_id
ORDER BY COUNT(employee_id) DESC
LIMIT 1;


SELECT rep_id, AVG(sales_total)
FROM sales_totals
GROUP BY rep_id;


SELECT sales_year, MIN(sales_total)
FROM sales_totals
GROUP BY sales_year;
