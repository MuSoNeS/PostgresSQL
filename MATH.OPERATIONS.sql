--RL
--1\5\2024
--Mat.op

SELECT Product_id, product_name, (unit_price * units_in_stock) AS new_column
FROM products