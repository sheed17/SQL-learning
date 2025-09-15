CREATE TABLE products(
	product_id INT,
    product_name VARCHAR(50),
    price DECIMAL(4, 2) NOT NULL #this means that this column cant have any null values
);

#IN case you want to add later or forget
ALTER TABLE products
MODIFY COLUMN price DECIMAL(4, 2) NOT NULL;

