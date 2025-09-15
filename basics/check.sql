#CHECK - checks to see if it meets the constraint if not it can not be added
CREATE TABLE employees(
	employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_wage DECIMAL(5, 2)
    CONSTRAINT chk_hourly_wage CHECK (hourly_wage >= 10.00)

);

INSERT INTO employees (employee_id, first_name, last_name, hourly_wage)
VALUES
(1, 'Alice', 'Johnson', 21.50),
(2, 'Brian', 'Smith', 18.75),
(3, 'Carla', 'Martinez', 22.00),
(4, 'David', 'Nguyen', 19.25),
#(5, "Ella", "Brown", 9.00) wont work
(5, 'Ella', 'Brown', 23.40);

SELECT * FROM employees;

#In case you forgot
ALTER TABLE employees
ADD CONSTRAINT chk_hourly_wage CHECK (hourly_wage >= 10.00);
