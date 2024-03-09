--RL
--3\6\2024
--DEFAULT
--Ограничение. Подстановка данных по умолчанию

CREATE TABLE customer
(
	customer_id serial,
	full_name text,
	status char DEFAULT 'r',
	
	CONSTRAINT pk_customer_customer_id PRIMARY KEY(customer_id),
	CONSTRAINT CHK_customer_customer_id CHECK (status = 'r' OR status = 'p')
);

INSERT INTO customer(full_name)
VALUES 
('name');

SELECT *
FROM customer;

ALTER TABLE customer
ALTER COLUMN status DROP DEFAULT --Удалить дефолтное значение

ALTER TABLE customer
ALTER COLUMN status SET DEFAULT 'r' --Установить дефолт