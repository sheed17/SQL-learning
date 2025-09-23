#UNION - combines the results of two or more SELECT statements, have to have same number of columns to combine them;
#UNION ALL - includes even duplicates

#UNION needs to have same column amount and compatible data type to form a union, JOIN needs to have matching values from both tables to join on

SELECT first_name, last_name FROM customers
UNION
SELECT hourly_wage, hire_date FROM employees;
