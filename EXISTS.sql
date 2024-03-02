--RL
--2\24\2024
--WHERE EXISTS\Boolean\Предикат
--EXISTS возращает true\false, если вложенное условие соответствует внешнему запросу. Наверное))))

SELECT company_name, contact_name
FROM customers
WHERE EXISTS (select customer_id from orders
			 where customer_id = customers.customer_id and freight between 50 and 100);
			 
