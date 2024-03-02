--RL
--2\10\2024
--BETWEEN, интервал  

SELECT * 
FROM orders
WHERE freight >= 20 AND freight <=40;

SELECT COUNT(*)
FROM orders
WHERE freight BETWEEN 20 AND 40;

--BETWEEN включает границы от и до. Записи эквивалентны, крч

SELECT *
FROM orders
WHERE order_date BETWEEN '1998-01-01' AND '1998-01-02';
