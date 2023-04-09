INSERT INTO t_book(id,bookName,bookTypeId) VALUES (NULL,'java图书1',1),(NULL,'java图书2',2);

INSERT INTO t_booktype(id,bookTypeName) VALUES (NULL,'111'),(NULL,'222');

DESC t_book;

DESC t_booktype;

CREATE VIEW is_book AS SELECT * FROM t_book;

CREATE VIEW is_book2 AS SELECT bookName FROM t_book;

DROP VIEW is_book2;

CREATE VIEW is_book3(bn) AS SELECT bookName FROM t_book;--起别名

CREATE VIEW is_book4 AS SELECT b.bookName,bt.bookTypeName FROM t_book b, t_booktype bt WHERE b.bookTypeId=bt.id;


SELECT * FROM is_book4 WHERE bookName='java图书1';


CREATE OR REPLACE VIEW is_book AS SELECT bookName FROM t_book;

ALTER VIEW is_book AS SELECT * FROM t_book;

UPDATE is_book SET bookName='java图书3' WHERE bookTypeId=2;

INSERT INTO is_book VALUES(NULL,'Mysql1',3);

