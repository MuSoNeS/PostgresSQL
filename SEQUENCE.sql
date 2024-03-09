--RL
--3\8\2024
--SEQUENCE
--Последовательность

CREATE SEQUENCE seq1;
--Создание последовательности
SELECT nextval('seq1');
--Следующее значение в последовательности
SELECT currval('seq1');
--Текущее значение в последовательности 
SELECT lastval();
--Вывод последней

SELECT setval('seq1',16,false);
--Значение true\false здесь отражает, будет ли идти последовательность дальше при вызове функций. К примеру nextval
SELECT currval('seq1');
SELECT nextval('seq1');

CREATE SEQUENCE IF NOT EXISTS seq2 INCREMENT 16;
SELECT nextval('seq2');
--При вызове nextval с инкрементом в 16 значение будет увеличиваться каждый раз на 16

CREATE SEQUENCE IF NOT EXISTS seq3 
INCREMENT 16
MINVALUE 0
MAXVALUE 126
START WITH 0;

SELECT nextval('seq3');
--стартует с 0, максимум до 126, шаг 16, опустить ниже 0 не выйдет
--ERROR: ОШИБКА:  функция nextval достигла максимума для последовательности "seq3" (126)

ALTER SEQUENCE seq3 RENAME TO seq4;
--переименовать так же, как с column
ALTER SEQUENCE seq4 RESTART WITH 16;
--Изменили порядок старта, теперь с 16
ALTER SEQUENCE seq4 MAXVALUE 256;
ALTER SEQUENCE seq4 INCREMENT 8;
--Изменить шаг и максимальное значение
SELECT nextval('seq4');

DROP SEQUENCE seq2;