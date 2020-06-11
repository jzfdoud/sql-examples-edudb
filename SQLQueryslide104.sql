declare @sat int;
set @sat =1494;

--declare @gpa float =3.7;

select *
	from student s
	where sat >@sat --and gpa >@gpa;