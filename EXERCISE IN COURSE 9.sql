--RL
--3\28\2024
--Практическое

--1. Выполните следующий код (записи необходимы для тестирования корректности выполнения задания):
--insert into customers(customer_id, contact_name, city, country, company_name)
--values
--('AAAAA', 'Alfred Mann', NULL, 'USA', 'fake_company'),
--('BBBBB', 'Alfred Mann', NULL, 'Austria','fake_company');

insert into customers(customer_id, contact_name, city, country, company_name)
values
('AAAAA', 'Alfred Mann', NULL, 'USA', 'fake_company'),
('BBBBB', 'Alfred Mann', NULL, 'Austria','fake_company');

--После этого выполните задание:
--Вывести имя контакта заказчика, его город и страну, отсортировав по возрастанию по имени контакта и городу, 
--а если город равен NULL, то по имени контакта и стране. Проверить результат, используя заранее вставленные строки.

(SELECT contact_name, city, country
FROM customers
WHERE city ISNULL
ORDER BY contact_name, country)
UNION
(SELECT contact_name, city, country
FROM customers
WHERE city NOTNULL
ORDER BY contact_name, city);

--2. Вывести наименование продукта, цену продукта и столбец со значениями:

--too expensive если цена >= 100
--average если цена >=50 но < 100
--low price если цена < 50

SELECT product_name, unit_price, CASE WHEN unit_price >=100 THEN 'too expensive'
									  WHEN unit_price >=50 AND unit_price < 100 THEN 'average'
									  ELSE 'low price'
									  END
FROM products;
--3. Найти заказчиков, не сделавших ни одного заказа. Вывести имя заказчика и значение 'no orders' если order_id = NULL

(SELECT customer_id
FROM customers)
EXCEPT
(SELECT customer_id
FROM orders)





--4. Вывести ФИО сотрудников и их должности. В случае если должность = Sales Representative вывести вместо неё Sales Stuff
