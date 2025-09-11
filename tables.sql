##### TABLES and actions #####
/*CREATE TABLE Employees(
	employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE



);*/

#SELECT * FROM Employees

#RENAME TABLE Employees TO workers;
#RENAME TABLE workers TO employees;


/*ALTER TABLE employees
ADD phone_number VARCHAR(15);*/

/*ALTER TABLE employees
RENAME COLUMN phone_number to email*/

/*ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);*/

/*ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name*/

##### TABLES and COLUMNS #####


##### TABLES and ROWS #####

/*INSERT INTO employees
VALUES (2, "Dylan", "Billin", 24.50, "2025-10-23"), 
	   (3, "Jimmy", "Stevens", 22.50, "2025-09-21"), 
       (4, "Braden", "Manjam", 21.50, "2025-08-30"), 
       (5, "Steve", "Baldwin", 19.50, "2025-06-21");
SELECT * FROM employees;*/

/*
INSERT INTO employees(employee_id, first_name, last_name)
VALUES(6, "Billy", "John")
SELECT * FROM employees; */

##### TABLES and ROWS #####


