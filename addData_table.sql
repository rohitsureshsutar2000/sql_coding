drop procedure if exists prob;
delimiter $
create procedure prob()
BEGIN
	create table d(c1 int ,c2 int ,c3 int);
	insert into d(c1,c2,c3) values(10,20,30);

END$
delimiter ;