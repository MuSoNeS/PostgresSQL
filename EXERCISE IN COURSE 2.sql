--RL
--2\12\2024
--Практическое задание

--1. Выбрать все заказы из стран France, Austria, Spain

SELECT order_id, customer_id, employee_id
FROM orders
WHERE ship_country IN ('France', 'Austria','Spain');
--2. Выбрать все заказы, отсортировать по required_date (по убыванию) и отсортировать по дате отгрузке (по возрастанию)
SELECT order_id, customer_id, employee_id, required_date, shipped_date
FROM orders
ORDER BY required_date ASC, shipped_date DESC;
--3. Выбрать минимальную цену товара среди тех продуктов, которых в продаже более 30 единиц
SELECT MIN(unit_price)
FROM products
WHERE units_in_stock < 30;
--4. Выбрать максимальное кол-во единиц товара среди тех продуктов, цена которых более 30 у.е.
SELECT MAX(units_in_stock)
FROM products
WHERE unit_price > 30;
--5. Найти среднее значение дней уходящих на доставку с даты формирования заказа в USA
SELECT AVG(shipped_date - order_date)
FROM orders
WHERE ship_country = 'USA';
--6. Найти сумму, на которую имеется товаров (кол-во * цену) причём таких, которые планируется продавать 
--и в будущем (см. на поле discontinued)
SELECT SUM(unit_price * (units_in_stock + discontinued))
FROM products