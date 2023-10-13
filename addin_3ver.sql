drop procedure if exists prob;
delimiter $
create procedure prob(in a int , in b int , out result int)
begin
	set result:=a*b;
end $
delimiter ;

