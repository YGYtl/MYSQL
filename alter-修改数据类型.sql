ALTER TABLE t_student CHANGE number number VARCHAR(25) NOT NULL;

ALTER TABLE t_student MODIFY COLUMN number VARCHAR(20) NOT NULL;

DESC t_student;

ALTER TABLE t_student ADD COLUMN stuname VARCHAR(20) NOT NULL;

ALTER TABLE t_student DROP COLUMN stuname;

