--RL
--2\1\2024
--объединение ключей
--BeonMax, создание таблицы в postgres

CREATE TABLE first_table
(
	One integer PRIMARY KEY,
	two varchar NOT NULL,
	three text NOT NULL
);
CREATE TABLE second_table
(
	One integer PRIMARY KEY,
	two text NOT NULL,
	three text NOT NULL
);
SELECT*
	FROM first_table

