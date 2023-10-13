drop procedure if exists tab;
delimiter #
create procedure tab(in a varchar(20))
	begin
		

		declare x,count int;
		set x:= 0;
		set count:=0;
	lops:loop
		if x<length(a) then
			set x:=x+1;
			if((substring(a,x,1) = 'a') or (substring(a,x,1) = 'e') or (substring(a,x,1) = 'i') or (substring(a,x,1) = 'o') or (substring(a,x,1) = 'u')) then
				set count=count+1;
			end if; 
		else 	
			leave lops;
			
 		end if;	
			
	end loop lops;
	select count;
	end #
delimiter ;