#FOREIGN KEY - a column where two tables share same column names, 
#one is a primary key in another table and the other table can reference that key which is considered now a foreign key

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



