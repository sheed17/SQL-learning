#LIMIT being able to limit the display of the page and is good for something like pagination, where i have the number and how much i want to display after.

SELECT * FROM employees
LIMIT 1;

SELECT * FROM employees
LIMIT 5,1;

SELECT * FROM employees
ORDER BY first_name LIMIT 1;

SELECT * FROM employees
LIMIT 3,2;
