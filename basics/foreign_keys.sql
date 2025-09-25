#FOREIGN KEY - a column where two tables share same column names, 
#one is a primary key in another table and the other table can reference that key which is considered now a foreign key

#with a PRIMARY KEY there can not be duplicate values that value is unique meanwhile with a foreign key it can be the same person and have duplicates because take for example the same person can make multiple orders
# lets say you have a unique ID on one table specific to you which is PRIMARY KEY now in another table is like a transactions table that references from the PRIMARY KEY, and this FOREIGN KEY can be duplicates
# because you are making multiple transactions

/*A Primary Key is a column (or set of columns) that uniquely identifies each row in a table.

It must be unique (no duplicates).

It cannot be NULL.

A Foreign Key is a column in one table that points to a Primary Key in another table.

It enforces a relationship between the two tables.

It can have duplicates, because many rows in the child table can reference the same parent row.

Example: one UNQIUE customer can have multiple transactions.*/

CREATE TABLE customers(
	customer_id INT PRIMARY KEY auto_increment,
    first_name VARCHAR(50),
    last_name VARCHAR(50)


);



CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY auto_increment,
    amount DECIMAL(5, 2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)

);

ALTER TABLE transactions
auto_increment = 1000;

insert into transactions(amount, customer_id)
VALUES(4.99, 2),
	  (3.75, 1),
	  (5.50, 2);


#In case you forgot or want to add later
ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) references customer(customer_id);


#How to drop a foreign key
ALTER TABLE	transactions
DROP FOREIGN KEY transactions_ibfk_1;



