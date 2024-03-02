--RL
--2\21\2024
--AS псевдонимы
--не работает в WHERE и HAVING из-за порядка выполнения запроса
--т.е., фильтры не отработают по псевдониму
--можно юзать в GROUP BY, ORDER BY, FROM, SELECT 
SELECT COUNT(*) AS emp_count
FROM employees;

SELECT COUNT(DISTINCT country) AS country
FROM employees;

SELECT category_id, SUM(units_in_stock) AS units_in_stock
FROM products
GROUP BY category_id
ORDER BY units_in_stock DESC
LIMIT 10