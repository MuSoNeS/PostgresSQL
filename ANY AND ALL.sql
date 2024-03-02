--RL
--2\26\2026
--ANY AND ALL

SELECT DISTINCT company_name
FROM customers
JOIN orders USING(customer_id)
JOIN order_details USING(order_id)
WHERE quantity > 40;
--join

SELECT customer_id
FROM orders
JOIN order_details USING(order_id)
WHERE quantity > 40;
--SUBQUERY
SELECT DISTINCT company_name
FROM customers
WHERE customer_id = ANY(
		SELECT customer_id
		FROM orders
		JOIN order_details USING(order_id)
		WHERE quantity > 40
);
--SUBQUERY WITH JOIN
--ANY - любой

SELECT AVG(quantity)
FROM order_details;

SELECT DISTINCT product_name, quantity
FROM products
JOIN order_details USING(product_id)
WHERE quantity > (SELECT AVG(quantity)
				  FROM order_details)
ORDER BY quantity;

--ALL

SELECT AVG(quantity)
FROM order_details
GROUP BY product_id;

SELECT DISTINCT product_name,quantity
FROM products
JOIN order_details USING(product_id)
WHERE quantity > ALL   (SELECT AVG(quantity)
						FROM order_details
						GROUP BY product_id);