--RL
--3\5\2024
--CHECK

DROP TABLE IF EXISTS book;

CREATE TABLE book(
	book_id serial,
	title text NOT NULL,
	isbn varchar(32) NOT NULL,
	publisher_id int,
	
	CONSTRAINT PK_book_book_id PRIMARY KEY(book_id)
);

ALTER TABLE book
ADD COLUMN price decimal CONSTRAINT CHK_book_price CHECK (price >=0);

--следующий код выдаст ошибку, поскольку мы ввели ограничение выше. Либо больше, либо равно 0.
INSERT INTO book
VALUES
(2,'title name', 'isbn',1,100);