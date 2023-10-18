drop procedure if exists addUser;
delimiter $
create procedure addUser(_username varchar(20),_password varchar(20),_emailid varchar(20))
BEGIN
	declare exit handler for 1050 insert into login values(_username,_password,_emailid);
	create table login(username varchar(20),password varchar(20),emailid varchar(20));
	insert into login values(_username,_password,_emailid);
end $
delimiter ;