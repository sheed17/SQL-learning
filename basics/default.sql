#DEFAULT - allows you to set default values so you dont have to set common values over and over



CREATE TABLE products(
	product_id INT,
    product_name VARCHAR(50),
    price DECIMAL(5, 2) DEFAULT(0)

)

#If already created/

ALTER TABLE products
ALTER price SET DEFAULT 0;




INSERT INTO products(product_id, product_name)
VALUES
(102, "Pizza"),
(103, "Curly Fries");

SELECT * FROM products;
