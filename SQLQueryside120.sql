-- [replace example with the o'brien lastname scenerio]
--declare @lastname varchar(30) = 'o''brien';
--declare @fixedlastname varchar(30) = replace (@lastname, '''', ''''''),
--insert student (firstname, lastname, statecode, sat, gpa, majorid)
	--values ('Seth', 'o''brien', 'oh', 1000, 2.0, null);

-- grouping first and last name. Adding space bewtween with '_'
select concat(firstname,' ', lastname) as 'student full name', sat, gpa 
	from student
--using "ISNULL" to show user 'undecided' as major description for entires returning as 'null'
select CONCAT(s.lastname, ', ', s.firstname) as 'name',
		isnull(m.description, 'undecided') as 'major'
	from student s
	left join major m on m.id = s.majorid
--just name with comma space between
select CONCAT(s.lastname, ', ', s.firstname) as 'name'
	from student s
	