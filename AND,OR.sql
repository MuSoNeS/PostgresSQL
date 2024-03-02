--RL
--2\10\2024
--AND\OR

SELECT*
FROM categories
WHERE category_id = 2 OR category_id = 3 OR category_id = 4;

--OR выведет несколько значений, которые соответствуют условию

SELECT *
FROM products
WHERE unit_price > 25 AND units_in_stock > 40;

--and

SELECT * 
FROM customers
WHERE city = 'Berlin' OR city = 'London';

SELECT *
FROM orders
WHERE shipped_date > '1998-04-30' AND (freight < 75 OR freight > 150);

--важен порядок исполнения. Важно расставлять скобки


