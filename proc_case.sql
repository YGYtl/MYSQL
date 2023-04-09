DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    PROCEDURE `db_test`.`proc_case`(IN TYPE INT)
    /*LANGUAGE SQL
    | [NOT] DETERMINISTIC
    | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
    | SQL SECURITY { DEFINER | INVOKER }
    | COMMENT 'string'*/
    BEGIN
	DECLARE c VARCHAR(200);
	CASE TYPE
	WHEN 0 THEN
		SET c = 'type is 0';
	WHEN 1 THEN
		SET c = 'type is 1';
	ELSE
		SET c = 'type is others, not 0 or 1';
	END CASE;
	SELECT c;
    END$$

DELIMITER ;