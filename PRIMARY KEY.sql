--RL
--3\3\2024
--Rrimary key

CREATE TABLE chair
(
	chair_id serial PRIMARY KEY,
	chair_name varchar,
	dean varchar
)
--PRIMARY KEY гарантирует отсутсвие дублей
--Невозможно использовать NULL 

INSERT INTO chair
VALUES (1,'name','dean');

INSERT INTO chair
VALUES (2,'name','dean');

--так же существует UNIQUE NOT NULL
--UNIQUE может быть не один
--PRIMARY KEY действительно уникальный, но особой разницы нет в функционале
--Имя можно присвоить и самому

--Тож присвоение ключа
ALTER TABLE chair
ADD PRIMARY KEY (char_id);