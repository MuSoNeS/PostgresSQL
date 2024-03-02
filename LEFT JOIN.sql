--RL
--2\20\2024
--LEFT\RIGHT JOIN
--При INNER JOIN некоторое количество записей "отсекается". Если нет сопоставления по ключу. 
--При LEFT JOIN выводятся результаты все
--суть в том, что мы указываем, из какой таблицы данные нужно сопоставить с данными другой таблицы.
--Иногда, в случае, если один столбец содержит данные, но другой нет, мы получим ноль значений.
--Однако, стоит нам изменить подключение с левого на правое, как данные появляются. 
--Важно следить, какие данные мы сопоставляем.
--FULL JOIN собирает данные с "двух сторон". работает как левое и правое подключение одновременно.
SELECT company_name, product_name 
FROM suppliers
LEFT JOIN products ON suppliers.supplier_id = products.supplier_id;

SELECT company_name, order_id
FROM customers
LEFT JOIN orders ON orders.customer_id = customers.customer_id
WHERE order_id IS NULL;

SELECT last_name, order_id
FROM employees
LEFT JOIN orders ON orders.employee_id = employees.employee_id
WHERE order_id IS NULL;