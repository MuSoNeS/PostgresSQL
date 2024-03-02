--RL
--2\20\2024
--SELF JOIN
--Строит иерархию
--В общем, можно сопоставить данные из таблицы под псевдонимами. 
--Далее пример, который не сработает в этой табле, потому создаю новую

CREATE TABLE test_self_join(
	emp_id INT PRIMARY KEY,
	fr_name VARCHAR (255) NOT NULL,
	ls_name VARCHAR (255) NOT NULL,
	mngr_id INT,
	FOREIGN KEY (mngr_id) REFERENCES test_self_join(emp_id)
);

INSERT INTO test_self_join (
	emp_id,
	fr_name,
	ls_name,
	mngr_id
)
VALUES
	(1,'Maria','Selu', NULL),
	(2,'Mark','Seku', 1),
	(3,'Binr','Qert', 2);
	

SELECT e.fr_name || ' ' || e.ls_name AS first_table,
		m.fr_name || ' ' || m.ls_name AS second_table
FROM test_self_join e
LEFT JOIN test_self_join m ON m.emp_id = e.mngr_id
ORDER BY second_table

--обычный JOIN таблы на саму себя