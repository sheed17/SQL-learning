CREATE TABLE products(
	product_id INT,
    product_name VARCHAR(20) UNIQUE,
    price DECIMAL(4, 2)


);

/* IN case you forget to add UNIQUE when creating a table or want to add it later
ALTER TABLE products
ADD CONSTRAINT
UNIQUE(product_name);
*/

INSERT INTO products
VALUES
(100, "hamburger", 4.50),
(101, "fries", 3.00),
(102, "hotdog", 3.50),
#(103, "fries", 3.00);  #does not work because product_name is set to unique value where each has to be a different element
(103, "cheesedog", 4.50);

SELECT * FROM products;
