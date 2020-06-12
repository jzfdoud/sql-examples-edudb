declare @mingpa float = 3.3;

declare @maxgpa float =3.7;

select lastname, gpa
	from student
	where gpa >= @mingpa and gpa <= @maxgpa
	order by gpa;