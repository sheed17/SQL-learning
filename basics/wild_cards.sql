#wild card characters % _
#used to substitute one or more characters in a string
#the word LIKE looks for patterns


SELECT * FROM employees
WHERE first_name LIKE "b%";

SELECT * FROM employees
WHERE last_name LIKE "_ohn";

SELECT * FROM employees
WHERE last_name LIKE "_m%";
