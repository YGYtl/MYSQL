DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    TRIGGER `db_test`.`insert_trigger` AFTER INSERT
    ON t_book
    FOR EACH ROW BEGIN
	UPDATE t_bookType SET num=num+1 WHERE new.bookTypeId=t_booktype.id;    
    END$$

DELIMITER ;