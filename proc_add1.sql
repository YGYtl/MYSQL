DELIMITER $$

CREATE DEFINER='root'@'localhost'
    /*[DEFINER = { user | CURRENT_USER }]*/
    PROCEDURE `db_test`.`proc_add1`(IN a INT, IN b INT, OUT SUM INT)
    /*LANGUAGE SQL
    | [NOT] DETERMINISTIC
    | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
    | SQL SECURITY { DEFINER | INVOKER }
    | COMMENT 'string'*/
BEGIN    
    DECLARE c INT;
    IF a IS NULL THEN SET a = 0;
    END IF;
    
    IF b IS NULL THEN SET b = 0;
    END IF;
    
    SET SUM = a + b;
    
    END$$

DELIMITER ;