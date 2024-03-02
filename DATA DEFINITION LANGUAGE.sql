--RL
--3\2\2024
--DDL
--DATA DEFENITION LANGUAGE 

--CREATE TABLE table_name
--ALTER TABLE table_name: изменить
--ALTER TABLE table_name
						--ADD COLUMN column_table data_type
					 	--RENAME TO
						--RENAME old TO new
						--ALTER COLUMN name SET DATA TYPE data_type
						--DROP TABLE 
						--TRANCATE TABLE - очистка таблицы
						--DROP COLUMN
						
CREATE TABLE student
(
	student_id serial,
	first_name varchar,
	last_name varchar,
	birthday date,
	phone varchar
);
CREATE TABLE cathedra
(
	cathedra_id serial,
	cathedra_name varchar,
	dean varchar
);

ALTER TABLE student 
ADD COLUMN middle_name varchar;

ALTER TABLE student
ADD COLUMN rating float;

ALTER TABLE student
ADD COLUMN enrolled date;

ALTER TABLE cathedra
RENAME TO department;

ALTER TABLE department 
RENAME cathedra_id TO department_id;

ALTER TABLE department 
RENAME cathedra_name TO department_name;

ALTER TABLE student
ALTER COLUMN first_name SET DATA TYPE varchar(64);

CREATE TABLE faculty
(
	faculti_id serial,
	faculty_name varchar
);

DROP TABLE faculty;