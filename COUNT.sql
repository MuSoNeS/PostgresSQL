--RL
--2\6\2024
--COUNT
--Не учитывает дубликаты. Учитывает, если использовать DISTINCT

SELECT COUNT(DISTINCT order_id)
FROM orders