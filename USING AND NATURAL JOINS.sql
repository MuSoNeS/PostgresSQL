--RL
--2\21\2024
--USING\NATURAL JOIN

SELECT contact_name, company_name, phone, first_name,last_name,title,order_date,product_name,ship_country,quantity,
products.unit_price, discount
FROM orders
JOIN order_details USING(order_id)--ON orders.order_id = order_details.order_id
JOIN products USING(product_id)--ON order_details.product_id = products.product_id
JOIN customers USING(customer_id)--ON orders.customer_id = customers.customer_id
JOIN employees USING(employee_id);--ON orders.order_id = employees.employee_id
--простое сокращение кода. Указывается столбец, по которому проводится соединение после ключевого USING

SELECT order_id, customer_id, first_name, last_name, title
FROM orders
NATURAL JOIN employees
--NATURAL JOIN работает как INNER JOIN, но совмещает таблицы по всем значениям, по которым они могут быть соединены
--Проблема: Код не явный, забагован, с каждым изменением он может выдавать иное значение. Плохой тон, крч.