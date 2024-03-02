--Rl
--2\17\2024
--HAVING - вторичный фильтр результата запроса

SELECT category_id, SUM(unit_price * units_in_stock) AS sum_in_unit
FROM products
WHERE discontinued <> 1
--!= <> одно и то же
GROUP BY category_id
HAVING SUM(unit_price * units_in_stock) > 5000
ORDER BY SUM(unit_price * units_in_stock) DESC