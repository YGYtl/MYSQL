CALL proc_add();


CALL proc_add1(1,3,@sum);
SELECT @sum AS SUM;


CALL proc_if(0);


CALL proc_case(1);


CALL proc_while(3);

DROP PROCEDURE IF EXISTS proc_while;
