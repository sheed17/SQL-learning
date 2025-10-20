/*ROW_NUMBER()
RANK()
DENSE_RANK()*/


SELECT first_name, last_name, department, salary,
AVG(salary) OVER(PARTITION BY department) as avg_salary_in
FROM employees;

#For each employee, display how much above or below they are from their department’s average.

SELECT first_name, last_name, department, salary,
salary - AVG(salary) OVER(PARTITION by department) as difference_from_avg
FROM employees;

SELECT first_name, last_name, department, salary,
RANK() OVER(ORDER BY salary DESC) as highest_salaries
FROM employees;


SELECT first_name, last_name, department, salary,
DENSE_RANK() OVER(ORDER BY salary DESC) as highest_salaries
FROM employees;

SELECT first_name, last_name, department, salary,
SUM(salary) OVER(PARTITION BY department) as total_per_department
FROM employees;
