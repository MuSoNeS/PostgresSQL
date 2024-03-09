--RL
--3\9\2024
--INSERT

INSERT INTO exam
VALUES(10,'Fizika', '3-9-2024');
--добавить значение
SELECT *
FROM exam;
--выборка всех
INSERT INTO exam(exam_id, exam_date)
VALUES (11,'3-9-2024');
--Вновь добавить, но в определенные столбцы
SELECT *
INTO ex_date
FROM exam
WHERE exam_date = '3-9-2024';
--Создать новую таблу со значениями из другой таблы
SELECT *
FROM ex_date;
--выборка по свеже созданной табле
INSERT INTO ex_date
SELECT*
FROM exam;
--Добавление данных массово из выборки одной таблы в другую таблу, которую мы создали ранее