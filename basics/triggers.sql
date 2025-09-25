#Triggers - when an event happens do something, basically for actions such as inserting, deleting, and updating, lets say you have an hourly_wage, you want the salary to be
#updated automatically given the following events and other tables that need the certain data

/*A trigger is a stored program in the database that runs automatically in response to an event on a table.

Events can be:

BEFORE INSERT, AFTER INSERT

BEFORE UPDATE, AFTER UPDATE

BEFORE DELETE, AFTER DELETE*/

UPDATE employees
SET salary = hourly_wage * 2080;
SELECT * FROM employees;*/ #inefficient you would have to manually calculate and update the salary for new members


CREATE TRIGGER before_hourly_wage_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_wage * 2080); #now when a new hourly_wage is updated or added that trigger is in place to apply to the new or updated ones*/

UPDATE expenses
SET expense_total = (SELECT SUM(salary) FROM employees)
WHERE expense_id = 1;
SELECT * FROM expenses;


CREATE TRIGGER after_salary_deletion
AFTER DELETE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total - OLD.salary
WHERE expense_name = "salaries";

CREATE TRIGGER after_salary_insertion
AFTER INSERT ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + NEW.salary
WHERE expense_name = "salaries";


CREATE TRIGGER after_salary_update
AFTER UPDATE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + NEW.salary
WHERE expense_name = "salaries";
