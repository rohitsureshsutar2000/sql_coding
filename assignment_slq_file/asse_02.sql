drop procedure if exists checkUser;
delimiter $$
create procedure checkUser(_eid varchar(20))
BEGIN
	DECLARE exit handler for 1050 insert into log(curr_date,curr_time,massage) values(CURRENT_DATE(),CURRENT_TIME(),"New User");
	if(select true from login where emailid in (_eid)) THEN
		select username,password from login where emailid in (_eid);
	else
		create table log(id int primary key auto_increment,curr_date date,curr_time time,massage varchar(20));
		insert into log(curr_date,curr_time,massage) values(CURRENT_DATE(),CURRENT_TIME(),"New User");
	end if;
end $$
delimiter ;