#ON DELETE SET NULL - set child row to null when primary key is deleted,
#ON DELETE CASCADE - remove child row when primary key is deleted

SET foreign_key_checks = 0;

ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE SET NULL;

ALTER TABLE transactions
DROP FOREIGN KEY fk_customer_id;

ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
ON DELETE CASCADE;

DELETE FROM customers
WHERE customer_id = 2;

SELECT * FROM transactions;
SELECT * FROM customers;

SET foreign_key_checks = 1;
