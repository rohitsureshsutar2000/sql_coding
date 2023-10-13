drop procedure if exists tab;
delimiter #
create procedure tab(in a varchar(20))
	begin
		

		declare x int;
		set x:= 0;
	lops:loop
		if x<length(a) then
			set x:=x+1;
			select substring(a,x,1) as 'string characters';
		else 	
			leave lops;
 		end if;	
	end loop lops;

	end#
delimiter ;