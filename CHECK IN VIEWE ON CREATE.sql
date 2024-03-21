--RL
--3\18\2024
--CHECK IN VIEW
--Можно ли добавить строку с CHECK, который противоречит ограничению во VIEW?
--Можно, но их не будет видно во View, при том, что он появится в табле изначальной

CREATE OR REPLACE VIEW super_heavy_orders_new AS 
SELECT*
FROM orders
WHERE freight > 100

SELECT*
FROM super_heavy_orders_new;

SELECT *
FROM orders
WHERE ship_country = 'Russia';

--можно добавить ограничение, которое не позволит данным, не соответствующим ограничению VIEW добавляться в таблу

CREATE OR REPLACE VIEW super_heavy_orders_new AS 
SELECT*
FROM orders
WHERE freight > 100
WITH LOCAL CHECK OPTION;

