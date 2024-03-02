--RL
--2\29\2024
--Практическое 5
--1. Вывести продукты количество которых в продаже меньше самого малого среднего количества 
--продуктов в деталях заказов (группировка по product_id). Результирующая таблица должна иметь 
--колонки product_name и units_in_stock
SELECT product_name, units_in_stock, product_id
FROM products
WHERE units_in_stock < (select avg(quantity)
					   from order_details
					   )
GROUP BY product_id;
--2. Напишите запрос, который выводит общую сумму фрахтов заказов для компаний-заказчиков для заказов, 
--стоимость фрахта которых больше средней величины стоимости фрахта всех заказов, а также дата отгрузки 
--заказа должна находится во второй половине июля 1996 года. Результирующая таблица должна иметь колонки 
--customer_id и freight_sum, строки которой должны быть отсортированы по сумме фрахтов заказов.
--Подсказка: таблицы можно соединять и с подзапросами (ведь подзапрос формирует, по сути, таблицу)
SELECT customer_id, freight AS freight_sum
FROM customers
JOIN orders USING(customer_id)
WHERE freight > (select avg(freight)
				from orders
				)
AND shipped_date BETWEEN '1996-07-15' AND '1996-08-01' 
GROUP BY customer_id, freight
ORDER BY freight DESC;


--3. Напишите запрос, который выводит 3 заказа с наибольшей стоимостью, которые были созданы после 1 сентября 
--1997 года включительно и были доставлены в страны Южной Америки. Общая стоимость рассчитывается как сумма 
--стоимости деталей заказа с учетом дисконта. Результирующая таблица должна иметь колонки customer_id, ship_country 
--и order_price, строки которой должны быть отсортированы по стоимости заказа в обратном порядке.

SELECT customer_id, ship_country, (unit_price+quantity) - discount AS order_price
FROM orders
JOIN order_details USING(order_id)
ORDER BY order_price DESC
LIMIT 3;
--4. Вывести все товары (уникальные названия продуктов), которых заказано ровно 10 единиц (конечно же, 
--это можно решить и без подзапроса)

SELECT product_name
FROM products
WHERE units_in_stock = 10;
