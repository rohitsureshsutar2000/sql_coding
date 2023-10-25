
drop trigger if exists tri;
delimiter $
	/*trigger will fired before data is insert*/
create trigger tri before insert on d for each ROW 
BEGIN
	insert into b values(new.c1);
end $
delimiter ;
