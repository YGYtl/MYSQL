INSERT  INTO `t_score`(`id`,`stu_id`,`score`) VALUES (1,1,80),(2,2,90),(3,3,100),(4,4,50),(5,5,20),(6,6,90),(7,7,98),(8,8,65),(9,9,89),(10,10,78),(11,11,65),(12,12,100),(13,13,10);

SELECT stu.`number`,stu.`name`,stu.`age`, stu.`sex`,s.`score` FROM t_score s, t_student stu
WHERE s.`stu_id` = stu.`id` ORDER BY s.`score` DESC;

SELECT * FROM t_score s1, t_score s2 WHERE s1.`score` = s2.`score`

SELECT stu.`number`,stu.`name`,stu.`age`, stu.`sex`,s.`score` FROM t_score s LEFT OUTER JOIN t_student stu
ON(s.`stu_id`=stu.`id`);

SELECT stu.`number`,stu.`name`,stu.`age`,stu.`sex`,s.`score` FROM t_score s,t_student stu WHERE s.`stu_id`=stu.`id` AND s.`score`<90;

