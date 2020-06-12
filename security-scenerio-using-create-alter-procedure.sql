--super cool. example of a scenerio where you can control which parts of a table people have access to,
--In this example we redact the gpa and sat scores from the student table while also joining the student and major tables
-- and including a select statement into the begin-end thing.
-- look up 'go' and 'exec' command

create or alter procedure selectstudentwithoutsatorgpa
as
begin
	select s.id, concat(firstname,' ', lastname) as 'name', statecode
		, isnull(description, 'undeclared') as 'major'
		from student s
		left join major m
			on m.id = s.MajorId
		order by lastname;
end
go
exec selectstudentwithoutsatorgpa;