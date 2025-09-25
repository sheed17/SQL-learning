#INDEXES- faster way of searching, imagine the column last_name without an index it has to go through the entire column and find it with no order
#with an index the information is sorted alphabetically or numerically to be able to search through and find it 
#imagine a dataset filled with millions of values


/*CREATE INDEX last_name_idx 
ON employees(last_name);*/
SHOW INDEXES FROM employees;

SELECT * FROM employees
WHERE last_name = "lee";

ALTER TABLE employees
DROP INDEX last_name_idx;
