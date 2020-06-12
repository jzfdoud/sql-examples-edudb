select m.description, c.code, c.subject
	from major m
	join majorclass mc 
		on m.id = mc.majorid
	join class c
		on mc.classid = c.id
	where c.subject in ( 'math', 'english',)and m.description= 'math'
