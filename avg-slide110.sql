select lastname, sat
	from Student
	where sat > 1250

select lastname, sat
	from student
	where sat > (select avg(sat) from student);
