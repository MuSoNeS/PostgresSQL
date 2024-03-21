--RL
--3\9\2024
--UPDATE, DELETE, RETURN

SELECT*
FROM student;

INSERT INTO student
VALUES
(1,'Jimm','Carry', '3-9-2024', '8-800-555-35-35', 'Oliver', 100, '3-9-2024');

UPDATE student
SET first_name = 'Jimmy', rating = 80
WHERE student_id = 1
RETURNING first_name;
--Изменить текущее значение
--RETURNING вернет измененное UPDATE значение
DELETE FROM student
WHERE student_id = 1;

DELETE FROM student;--Логи

TRUNCATE TABLE student;--Без логов

