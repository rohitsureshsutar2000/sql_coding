drop procedure if EXISTS pro1;
delimiter $
create procedure pro1(x int)
BEGIN
	DECLARE _deptno int;
	DECLARE _dname, _dloc, _dpwd, _staron varchar(40);
	DECLARE c1 CURSOR for select * from dept;
	OPEN c1;
		FETCH c1 into _deptno, _dname, _dloc, _dpwd, _staron;
		select _deptno, _dname, _dloc, _dpwd, _staron;
	CLOSE c1;
end $
delimiter ;
