--RL
--3\9\2024
--SEQUENS AND TABLES
DROP TABLE book;

CREATE TABLE book
(
	book_id int NOT NULL,
	title text NOT NULL,
	isnb varchar(32) NOT NULL,
	publisher_id int NOT NULL,
	
	CONSTRAINT PK_book_book_id PRIMARY KEY(book_id)
);
--С типом Serial не нужно вручную создавать автоинкремент, он будет работать сам по себе по алгоритму, 
--который мы расписали ниже
CREATE SEQUENCE IF NOT EXISTS book_book_id_seq
START WITH 1 OWNED BY book.book_id;
--Создаем автоинкремент на int, старт с 1

INSERT INTO book(title, isnb, publisher_id)
VALUES('title', 'isbn',1);

ALTER TABLE book
ALTER COLUMN book_id SET DEFAULT nextval('book_book_id_seq');
--Привязываем значение дефолтное к нашему Sequence, иначе ошибка
SELECT*
FROM book;

CREATE TABLE book
(
	book_id serial NOT NULL,
	title text NOT NULL,
	isnb varchar(32) NOT NULL,
	publisher_id int NOT NULL,
	
	CONSTRAINT PK_book_book_id PRIMARY KEY(book_id)
);
--У Serial есть проблема. Как и любой автоинкремент он не терпит ручного ввода данных. Выдает ошибку, т.к. его значение
--не учитывается там, где мы вручную задали значение

CREATE TABLE book
(
	book_id int GENERATED ALWAYS AS IDENTITY NOT NULL,
	title text NOT NULL,
	isnb varchar(32) NOT NULL,
	publisher_id int NOT NULL,
	
	CONSTRAINT PK_book_book_id PRIMARY KEY(book_id)
);

--GENERATED ALWAYS AS IDENTITY(генерируется всегда как идентичность) это запрет на ввод значений вручную. 
--Т.е. мы настроили таблу на автоинкремент и ввели ограничение на ввод данных вручную