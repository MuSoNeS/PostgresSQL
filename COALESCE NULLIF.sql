--RL
--3\26\2024
--COALESCE\NULLIF

SELECT *
FROM orders
LIMIT 10;
--COALESCE использует первый аргумент для проверки на NULL, потом заменяет вторым
SELECT order_id, order_date, COALESCE(ship_region, 'Неизвестно') AS ship_region
FROM orders
LIMIT 10;

SELECT last_name, first_name, title, COALESCE(region,'Неизвестно') AS region
FROM employees;

SELECT *
FROM customers;
--NULLIF проверяет, не является ли строка пустой
SELECT contact_name, COALESCE(NULLIF(city, ''),'Unwnown') AS city
FROM customers;