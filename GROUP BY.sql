--RL
--2\15\2024
--GROUP BY

SELECT ship_country, COUNT(*)
--COUNT посчитал
FROM orders
WHERE freight > 50
GROUP BY ship_country
--сгруппировал
ORDER BY COUNT(*) DESC