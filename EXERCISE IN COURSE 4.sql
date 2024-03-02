--RL
--2\23\2024
--Практическое задание 
--1. Найти заказчиков и обслуживающих их заказы сотрудников таких, что и заказчики и сотрудники из 
--города London, а доставка идёт компанией Speedy Express. Вывести компанию заказчика и ФИО сотрудника.
--Для вывода ФИО одним столбцом можно использовать в секции SELECT функцию CONCAT(first_name, ' ', last_name), 
--которая "склеивает" строчные аргументы

SELECT contact_name, CONCAT(employees.last_name,' ', employees.first_name)
FROM orders
INNER JOIN employees ON employees.employee_id = orders.employee_id
INNER JOIN customers ON customers.customer_id = orders.customer_id
INNER JOIN shippers ON orders.ship_via = shippers.shipper_id
WHERE employees.city = 'London' AND customers.city = 'London' AND shippers.company_name = 'Speedy Express';

--2. Найти активные (см. поле discontinued) продукты из категории Beverages и Seafood, которых в продаже менее 20 единиц. 
--Вывести наименование продуктов, кол-во единиц в продаже, имя контакта поставщика и его телефонный номер

SELECT products.product_name, products.units_in_stock, suppliers.contact_name, suppliers.phone, categories.category_name
FROM products
JOIN suppliers ON products.supplier_id = suppliers.supplier_id 
JOIN categories ON categories.category_id = products.category_id 
WHERE discontinued = 0 AND units_in_stock > 20 AND categories.category_name = 'Beverages' OR
discontinued = 0 AND units_in_stock > 20 AND categories.category_name = 'Seafood' 
ORDER BY units_in_stock;
--3. Найти заказчиков, не сделавших ни одного заказа. Вывести имя заказчика и order_id
SELECT customers.contact_name, customers.customer_id, orders.order_id
FROM customers
LEFT JOIN orders ON orders.customer_id = customers.customer_id
WHERE order_id IS NULL;

--4. Переписать предыдущий запрос, использовав симметричный вид джойна (подсказка: речь о LEFT и RIGHT)
SELECT customers.contact_name, customers.customer_id, orders.order_id
FROM orders
RIGHT JOIN customers ON customers.customer_id = orders.customer_id
WHERE order_id IS NULL;
