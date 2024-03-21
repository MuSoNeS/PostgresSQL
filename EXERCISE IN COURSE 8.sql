--Rl
--3\18\2024
--Практическое

--1. Создать представление, которое выводит следующие колонки:
--order_date, required_date, shipped_date, ship_postal_code, company_name, contact_name, phone, 
--last_name, first_name, title из таблиц orders, customers и employees

CREATE OR REPLACE VIEW practical AS
SELECT order_date, required_date, shipped_date, ship_postal_code, company_name, contact_name, phone, 
last_name, first_name, title
FROM orders
JOIN customers USING(customer_id)
JOIN employees USING (employee_id);
--- Сделать select к созданному представлению, выведя все записи, где order_date больше 1-го января 1997 года

SELECT *
FROM practical 
WHERE order_date > '1997-01-01';
--2. Создать представление, которое выводит следующие колонки:
--order_date, required_date, shipped_date, ship_postal_code, ship_country, company_name, contact_name, phone,
--last_name, first_name, title из таблиц orders, customers, employees

CREATE OR REPLACE VIEW practical AS
SELECT order_date, required_date, shipped_date, ship_postal_code, company_name, contact_name, phone, 
last_name, first_name, title
FROM orders
JOIN customers USING(customer_id)
JOIN employees USING (employee_id);

--- Попробовать добавить к представлению (после его создания) колонки ship_country, postal_code и reports_to 
--(добавить не в конец, а куда-нибудь посередине). Убедиться, что происходит ошибка. Переименовать представление 
--и создать новое уже с дополнительными колонками.

CREATE OR REPLACE VIEW practical AS
SELECT order_date, required_date, shipped_date, ship_country, customers.postal_code, reports_to, orders.ship_postal_code, 
company_name, contact_name, phone, last_name, first_name, title
FROM orders
JOIN customers USING(customer_id)
JOIN employees USING (employee_id);

DROP VIEW practical

CREATE OR REPLACE VIEW practical AS
SELECT order_date, required_date, shipped_date, ship_country, customers.postal_code, reports_to, orders.ship_postal_code, 
company_name, contact_name, phone, last_name, first_name, title
FROM orders
JOIN customers USING(customer_id)
JOIN employees USING (employee_id);

--- Сделать к нему запрос, выбрав все записи, отсортировав их по ship_country.
--- Удалить переименованное представление.

SELECT *
FROM practical
ORDER BY ship_country DESC;

DROP VIEW practical

--3. Создать представление "активных" (discontinued = 0) продуктов, содержащее все колонки. Представление должно 
--быть защищено от вставки записей, в которых discontinued = 1.


--- Попробовать сделать вставку записи с полем discontinued = 1 - убедиться, что не проходит.