drop procedure if exists prob;
delimiter $
create procedure prob(in x int , in y int)
begin
	select x + y;
end $
delimiter ;

