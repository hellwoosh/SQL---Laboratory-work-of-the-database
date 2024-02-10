CREATE TABLE spec
(
	id int PRIMARY KEY NOT NULL,
	name_table character varying NOT NULL,
	name_column character varying NOT NULL,
	current_max int NOT NULL
);

INSERT INTO spec (id, name_table, name_column, current_max)
VALUES (1, 'spec', 'id', 1);

CREATE OR REPLACE FUNCTION next_func (my_name_table character varying, my_name_column character varying, OUT next_num int)
AS
$$
DECLARE
this_id int;
BEGIN
SELECT id INTO this_id
FROM spec
WHERE name_table = my_name_table AND name_column = my_name_column;
IF NOT EXISTS
(
	SELECT *
	FROM spec
	WHERE name_table = my_name_table AND name_column = my_name_column
)
THEN
EXECUTE format('SELECT COALESCE(MAX(%|)+ 1, 1) FROM %|', my_name_column, my_name_table) INTO next_num;
INSERT INTO spec (id, name_table, name_column, current_max)