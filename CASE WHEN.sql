--RL
--3\26\2024
--CASE\WHEN
--SWITCH?

SELECT product_name, unit_price, units_in_stock,
	CASE WHEN units_in_stock >=100 THEN 'Lots of'
		 WHEN units_in_stock >=50 THEN 'average'
		 WHEN units_in_stock < 50 THEN 'low'
		 ELSE 'unknown'
	END AS amount
FROM products;