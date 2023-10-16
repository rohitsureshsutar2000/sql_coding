drop procedure if exists tab;
delimiter #
create procedure tab()
	begin
		declare exit handler for 1062 select "data present";
			insert into d values(10,20,30);
	end#
delimiter ;