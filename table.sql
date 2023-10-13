drop procedure if exists tab;
delimiter #
create procedure tab(in a int)
	begin
		declare x int;
		set x:= 0;

	lops:loop
		set x:= x+1;
		if x<=10 then
			select x*a;

		else 	
			leave lops;
 		end if;	
	end loop lops;
	end#
delimiter ;