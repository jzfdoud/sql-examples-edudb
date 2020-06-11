-- [using insert, update, and delete. slides 127-140]
insert student 
	(lastname, firstname, statecode, sat, gpa, majorid)
	values 
	 ('Phense', 'Noah', 'GA', '1235', '3.15', (select id from major where code = 'math'));
update student
	set gpa= 3.51, MajorId = (select m.id from major m where m.Description = 'Accounting')
	where id =62
-- or where lastname= 'phense' and firstname= 'noah'


--[checking for noah phense]
select *
	from student
	where Lastname = 'phense'
--[delete noah phense]
--delete from student where id= 62

-- [slide 125; using isnull and join to show students with undeclared majors that live in michigan]
select s.lastname, isnull(description, 'undeclared') as 'major'
	from student s
	left join major m on s.majorid = m.id
	where s.StateCode = 'mi';
