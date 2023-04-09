INSERT INTO t_teacher(number,teacherName,age,sex,kemu) VALUES ('2018001','张三',30,'男','语文');

INSERT INTO t_teacher(number,teacherName) VALUES ('2018002','张三');

INSERT INTO t_teacher VALUES ('2018003','张三',30,'男','语文',17);

INSERT INTO t_teacher VALUES ('2018004','李四',35,NULL,NULL,NULL);

SELECT * FROM t_teacher;

INSERT INTO t_teacher (number, teacherName) SELECT number,teacherName FROM t_teacher;

UPDATE t_teacher SET teacherName='王五',age=25 WHERE id=15;

UPDATE t_teacher SET age=age-10;

DELETE FROM t_teacher WHERE id=15;




