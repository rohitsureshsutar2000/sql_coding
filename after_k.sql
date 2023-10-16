
drop trigger if exists tri;
delimiter $
create trigger tri after insert on d for each ROW 
BEGIN
	insert into b values(new.c1);
end $
delimiter ;
/*
drop trigger if exists tr1;
delimiter $
create trigger tr1 after insert on a for each ROW
BEGIN
	insert into b values(new.c1);
end  $
delimiter ;
*/