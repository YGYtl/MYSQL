SELECT * FROM t_student WHERE t_student.`name` IN(SELECT t_good_stu.`name` FROM t_good_stu);

SELECT * FROM t_student WHERE t_student.`name` =(SELECT t_good_stu.`name` FROM t_good_stu WHERE t_good_stu.`name`!='李四');

SELECT * FROM t_score WHERE score<ANY(SELECT score FROM t_score WHERE score<80 AND score > 10);

SELECT * FROM t_score WHERE NOT EXISTS(SELECT score FROM t_score WHERE score>100);
