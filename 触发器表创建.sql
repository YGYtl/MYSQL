USE db_test;
CREATE TABLE `t_book` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `bookName` VARCHAR(20) COLLATE utf8_bin DEFAULT NULL,
  `bookTypeId` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
INSERT  INTO `t_book`(`id`,`bookName`,`bookTypeId`) VALUES (1,'军事书1',1),(2,'军事书2',1),(3,'数学书1',3),(4,'文学书1',2),(5,'军事书3',1),(7,'军事书4',1),(8,'军事书5',1);

CREATE TABLE `t_booktype` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `bookTypeName` VARCHAR(20) COLLATE utf8_bin DEFAULT NULL,
  `num` INT(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
INSERT  INTO `t_booktype`(`id`,`bookTypeName`,`num`) VALUES (1,'军事',5),(2,'文学',1),(3,'数学',1),(4,'英语',0);


CREATE TABLE `t_log` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(500) COLLATE utf8_bin DEFAULT NULL,
  `time` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
INSERT  INTO `t_log`(`id`,`content`,`time`) VALUES (32,'在t_book表中添加了一条数据','2018-05-19 20:54:33');












