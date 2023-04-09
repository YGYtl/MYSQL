DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    PROCEDURE `db_test`.`proc_while`(IN n INT)
    /*LANGUAGE SQL
    | [NOT] DETERMINISTIC
    | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
    | SQL SECURITY { DEFINER | INVOKER }
    | COMMENT 'string'*/
    BEGIN
	DECLARE i INT;
	DECLARE s INT;
	SET i = 0;
	SET s = 0;
	WHILE i <= n DO
		SET s = s + i;
		SET i = i + 1;
	END WHILE;
	SELECT s;
    END$$

DELIMITER ;