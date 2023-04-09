SELECT * FROM t_student;

SELECT * FROM t_student WHERE t_student.`age` > 18 AND t_student.`age` < 20;

SELECT * FROM t_student WHERE t_student.`age` BETWEEN 10 AND 20;

SELECT * FROM t_student WHERE t_student.`name` IN('李四','赵六');

SELECT * FROM t_student WHERE t_student.`name` LIKE '%张%';

SELECT * FROM t_student WHERE t_student.`name` LIKE '张_';

SELECT * FROM t_student WHERE t_student.`sex` IS NULL;

SELECT * FROM t_student WHERE t_student.`sex`='男' AND t_student.`age` >= 25;

SELECT * FROM t_student WHERE t_student.`age` < 20 ORDER BY t_student.`age` DESC;

SELECT * FROM t_student WHERE t_student.`age` < 20 ORDER BY t_student.`age` ASC;

SELECT COUNT(*) FROM t_student;

SELECT SUM(t_student.`age`) FROM t_student;

SELECT t_student.`sex`,COUNT(t_student.`sex`) FROM t_student GROUP BY t_student.`sex`;




