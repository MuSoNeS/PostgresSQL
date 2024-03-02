--RL
--2\24\2024
--SUBREQUEST
SELECT company_name
FROM suppliers
WHERE country IN (SELECT DISTINCT country
				  FROM customers);
--часть подзапросов заменяется на JOIN`ы
SELECT DISTINCT suppliers.company_name
FROM suppliers
JOIN customers USING(country);
--где-то есть соглашение, в котором гласится, что подзапросы нужно писать в нижнем регистре
SELECT category_name, SUM(units_in_stock)
FROM products
INNER JOIN categories USING (category_id)
GROUP BY category_name
ORDER BY SUM(units_in_stock) DESC
LIMIT (select min (product_id) + 4 from products);

SELECT AVG(units_in_stock)
FROM products;

SELECT product_name, units_in_stock
FROM products
WHERE units_in_stock > (SELECT AVG(units_in_stock)
						FROM products)
ORDER BY units_in_stock DESC
