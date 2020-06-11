select statecode as 'state', count(*) as 'number'
	from student
	where gpa > 3.0
	group by StateCode
	order by count (*)
