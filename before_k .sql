
drop trigger if exists tri;
delimiter $
create trigger tri before insert on d for each ROW 
BEGIN
	insert into b values(new.c1);
end $
delimiter ;
