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
