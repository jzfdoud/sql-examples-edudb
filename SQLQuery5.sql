select lastname, 'a' as 'abc'
	from student
	where sat >1200
union
select lastname, 'b' as 'abc'
	from student
	where sat <= 1200 and sat > 1000
union
select lastname, 'c' as 'abc'
	from student
	where sat <1000

select lastname, 'x' as 'xy'
	from student
	where lastname like 'e%'
union
select lastname, 'y' as 'xy'
	from student
	where lastname not like 'e%';
