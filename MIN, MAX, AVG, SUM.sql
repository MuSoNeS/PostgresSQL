--RL
--2\12\2024
--MIN,MAX,AVG

SELECT ship_city, order_date
FROM orders
WHERE ship_city = 'London'
ORDER BY order_date;

SELECT MIN(order_date)
FROM orders
WHERE ship_city = 'London';

SELECT MAX(order_date)
FROM orders
WHERE ship_city = 'London';


SELECT AVG(unit_price)
FROM products;

SELECT SUM(units_in_stock)
FROM products;

