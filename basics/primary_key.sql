#PRIMARY KEY- primary key is basically a unique idenfitifier and can not be null
CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY,
    amount DECIMAL(5,2)


);

INSERT INTO transactions
VALUES
(1000, 21.21),
#(1000, 23.21) wont work because the transaction id is a PK
(1001, 22.00);

# in case you forgot
ALTER TABLE transactions
ADD CONSTRAINT PRIMARY KEY(transaction_id);



#AUTO_INCREMENT - (naturally will start at 1)this will automatically increment the unique identifier when mixed with primary key and increment by 1

CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5,2)

);

#i set the value to start at 1000 and autoincrement from here
ALTER TABLE transactions
auto_increment = 1000;

INSERT INTO transactions(amount)
VALUES
(4.99),
(5.99);

SELECT * FROM transactions;
