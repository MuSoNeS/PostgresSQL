--RL
--2\9\2024
--WHERE
SELECT company_name, contact_name, phone, country
FROM customers
WHERE country = 'USA';
--Двойные одинарные ковычки это экранирование. Вот так: 'US''a'

SELECT *
FROM products
WHERE unit_price >= 20;

SELECT COUNT(*)
FROM products
WHERE unit_price >= 20;

SELECT *
FROM customers
WHERE city != 'Berlin';

SELECT *
FROM customers
WHERE city = 'Berlin';

SELECT *
FROM customers
WHERE city <> 'Berlin';

SELECT *
FROM orders
WHERE order_date > '1998-03-01'