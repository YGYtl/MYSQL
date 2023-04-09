USE db_book;

DROP TABLE t_user;

CREATE TABLE t_user(
id INTEGER,
userName VARCHAR(20),
PASSWORD VARCHAR(20),
INDEX (userName)
);

CREATE TABLE t_user2(
id INTEGER,
userName VARCHAR(20),
PASSWORD VARCHAR(20),
UNIQUE INDEX (userName)
);

CREATE TABLE t_user3(
id INTEGER,
userName VARCHAR(20),
PASSWORD VARCHAR(20),
INDEX userNameAndPassword(userName,PASSWORD)
);

CREATE TABLE t_user4(
id INTEGER KEY,
userName VARCHAR(20),
PASSWORD VARCHAR(20)
);


CREATE INDEX userName_index ON t_user4(userName);

CREATE UNIQUE INDEX userName_index2 ON t_user4(userName);

CREATE UNIQUE INDEX userName_password_index3 ON t_user4(userName,PASSWORD);



CREATE TABLE t_user5(
id INTEGER KEY,
userName VARCHAR(20),
PASSWORD VARCHAR(20)
);
DESC t_user5;
ALTER TABLE t_user5 ADD UNIQUE INDEX userName_index(userName);

ALTER TABLE t_user5 ADD UNIQUE INDEX userName_password_index(userName,PASSWORD);

DROP INDEX userName_password_index ON t_user5;




