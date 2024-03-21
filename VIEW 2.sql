--RL
--3\18\2024
--VIEWS 2
--RENAME
ALTER VIEW heavy_orders
RENAME TO super_heavy_orders

SELECT*
FROM super_heavy_orders
WHERE ship_country LIKE ('R%')
ORDER BY ship_country

--Можно добавить
--INSERT
INSERT INTO super_heavy_orders
VALUES (12312, '2024-03-18', 2, 600, 'Russia')

--Нельзя удалить те данные, которые есть в табле, но нет во view
--Т.е., если во вьюшке есть ограничение, она как бы не отображает всех данных таблы, то через нее и нельзя удалить те данные,
--которые исключаются из ее выборки



