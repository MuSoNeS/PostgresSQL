--RL
--2\17\2024
--UNION, INTERSECT, EXCEPT

SELECT country, contact_name 
FROM customers
UNION
SELECT country, first_name
FROM employees;
--без дубликатов, выведены все результаты, без пересечений

SELECT country, contact_name
FROM customers
UNION ALL
SELECT country, first_name
FROM employees;
-- с дубликатами

SELECT country
FROM customers
INTERSECT 
SELECT country
FROM suppliers;
--Результаты, которые песекаются между собой

SELECT country
FROM customers
EXCEPT
SELECT country
FROM suppliers;
--исключения. Есть в одной таблице, но отсутствует в другой. Без дублей

SELECT country
FROM customers
EXCEPT ALL
SELECT country
FROM suppliers;
--исключение с дублями










