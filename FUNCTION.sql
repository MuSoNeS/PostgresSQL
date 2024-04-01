--RL
--4\1\2024
--FUNCTION IN SQL
--Часть кода потерял...
CREATE OR REPLACE FUNCTION fix_tmp_customers_region() RETURNS void AS $$
	UPDATE tmp_customers
	SET region = 'unknown'
	WHERE region is NULL
$$ language SQL;

SELECT fix_tmp_customers_region();

SELECT* 
FROM tmp_customers;