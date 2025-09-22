#functions can be seen on the website but a good way use different functions for easy ways of needing something like counting etc

SELECT COUNT(employee_id) as numOfEmployees
FROM employees;

SELECT MAX(hourly_wage) as maxWage
FROM employees;

SELECT MIN(hourly_wage) as minWage
FROM employees;

SELECT AVG(hourly_wage) as avgWage
FROM employees;

SELECT CONCAT(first_name, " ", last_name) as fullName
FROM employees;
