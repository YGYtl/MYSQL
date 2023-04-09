DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    TRIGGER `db_test`.`insert_trigger2` AFTER INSERT
    ON t_book
    FOR EACH ROW BEGIN
	UPDATE t_bookType SET num=num+1 WHERE new.bookTypeId=t_booktype.id;
	INSERT INTO t_log VALUES(NULL,'在t_book表中添加了一条数据',NOW());
    END$$

DELIMITER ;