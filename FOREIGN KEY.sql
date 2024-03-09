--RL
--3\4\2024
--FOREIGN KEY

CREATE TABLE publisher
(
	publisher_id int,
	publisher_name varchar(128) NOT NULL,
	adress text,
	
	CONSTRAINT PK_publisher_publisher_idi PRIMARY KEY(publisher_id)
)

CREATE TABLE book
(
	book_id int,
	title text NOT NULL,
	isbn varchar(32) NOT NULL,
	publisher_id int,
	
	CONSTRAINT PK_book_book_id PRIMARY KEY(book_id),
	CONSTRAINT FR_books_publisher FOREIGN KEY(publisher_id) REFERENCES publisher(publisher_id)
)

--удаление связки двух таблиц по ключам
ALTER TABLE book
DROP CONSTRAINT FR_books_publisher


INSERT INTO publisher
VALUES
(1,'book 1', '1212122')

INSERT INTO book
VALUES
(1,'book 1', '1212122','10')

SELECT*
FROM book

TRUNCATE TABLE book;

--создаем связь, чтобы не было ошибки, поскольку без привязки не будет проверки условий соответствия
ALTER TABLE book
ADD CONSTRAINT FR_books_publisher FOREIGN KEY(publisher_id) REFERENCES publisher(publisher_id)
--можно указать эту связь сразу в блоке создания таблы

DROP TABLE book
