drop function if exists acceptemail;
delimiter $$
CREATE function acceptemail(_emailid varchar(20)) returns varchar(200)
deterministic
BEGIN
	DECLARE z varchar(200);
	if (select true from login where login.emailid=_emailid)THEN
		set z:= concat("Username= ",(select l.username from login l where _emailid in (l.emailid))," , ","Password= ",(select l.password from login l where _emailid in (l.emailid)));
		
		return z;
	else 
		return "employee not exists";
	end if;
end $$	
delimiter ;
