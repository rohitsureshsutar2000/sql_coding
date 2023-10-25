drop procedure if exists prob;
delimiter $
create procedure prob(in x int , in y int)
begin
	/* procedure can return multiple values*/
	select x + y;
end $
delimiter ;

