--[intro to transactions; scenerio is if a school stops offerin accounting as a major]
--update major
	--set Description= 'math'
	--where code = 'accounting';
		--[lines 6-8 not finished but correct form. lines 2-4 are sort of the same but not really]
	--update student 
	--set majorid= (select id from major where code ='math')
	--where majorid = 
--select * from major


-- [using insert, update, and delete. slides 127-140]
insert student 
	(lastname, firstname, statecode, sat, gpa, majorid)
	values 
	 ('Phense', 'Noah', 'GA', '1235', '3.15', (select id from major where code = 'math'));
	 --[ will show most recent id generated from insert command] 
		 --select IDENT_CURRENT('student')
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
