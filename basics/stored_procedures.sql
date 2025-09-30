#Stored Procedures - prepared SQL code you can save great for something you write often


DELIMITER $$
CREATE PROCEDURE find_customers(IN id INT)
BEGIN
	SELECT * FROM customers
    WHERE customer_id = id;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE lookUp_customers(IN f_name VARCHAR(50), IN l_name VARCHAR(50))
BEGIN
	SELECT * FROM customers
    WHERE first_name = f_name AND last_name = l_name;
END $$
DELIMITER ;

CALL lookUp_customers("Terry", "Crews");

DROP PROCEDURE lookUp_customers;
