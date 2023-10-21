drop function if exists autoNumber ;
delimiter $
create function autoNumber(_namefirst varchar(20), _namelast varchar(20), _DOB DATE, _emailID varchar(20))  returns int 

deterministic
BEGIN
	DECLARE z int;
	
	insert into STUDENT_NEW(namefirst, namelast, DOB, emailID ) values(_namefirst,_namelast,_DOB,_emailID);
	set z:= (select MAX(studentid) from STUDENT_NEW) ;
	return z;
end $
delimiter ;