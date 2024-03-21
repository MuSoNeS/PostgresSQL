--RL
--3\14\2024
--VIEW

CREATE VIEW products_suppliers_categiries AS
SELECT product_name, quantity_per_unit, unit_price, units_in_stock,
company_name, contact_name, phone, category_name, description
FROM products
JOIN suppliers USING(supplier_id)
JOIN categories USING(category_id);

SELECT *
FROM products_suppliers_categiries;

SELECT *
FROM products_suppliers_categiries
WHERE unit_price > 20;

DROP VIEW heavy_orders;

CREATE VIEW heavy_orders AS
SELECT order_id, order_date, ship_via, freight, ship_country
FROM orders
WHERE freight > 50;

SELECT *
FROM heavy_orders
ORDER BY freight DESC;