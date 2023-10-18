drop procedure if exists getQulification;
delimiter $$
create procedure getQulification(_studentid int)
BEGIN
	if(select true from student where id in (_studentid)) THEN
		select * from student s,student_qualifications sq where s.id=sq.studentid and s.id=2;
	else
		select "Student Not found";
	end if;
end $$
delimiter ;