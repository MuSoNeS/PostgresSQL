--RL
--2\14\2024
--LIKE

SELECT last_name, first_name
FROM employees
WHERE first_name LIKE '%r';

SELECT last_name, first_name 
FROM employees
WHERE first_name LIKE 'S%';

SELECT last_name, first_name
FROM employees
WHERE first_name LIKE '%St%';