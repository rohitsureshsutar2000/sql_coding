drop function if exists sumSalary;
delimiter $$
create function sumsalary(_deptno int) returns int 
deterministic
BEGIN
	
	return (select sum(sal) from emp  where deptno=_deptno);
	
	/*
	Another method
	
	declare x int;
	set x:= (select sum(sal) from emp  where deptno=_deptno);
  return x;*/
end $$
delimiter ;