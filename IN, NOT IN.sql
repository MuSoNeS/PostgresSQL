--RL
--2\10\2024
--IN \ NOT IN
--IN: Результат содержит, NOT IN: Результат не содержит

SELECT * 
FROM customers
WHERE country NOT IN ('Mexico','Canada','Germany','UK') AND country IN ('France')

