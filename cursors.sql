-- cursors, ehhhh

declare curStudent cursor for
	select firstname, lastname, gpa, sat from student;
-- can do 'normal' select syntax within cursor for. ex). order by, etc.
open curStudent;

declare @firstname varchar(30), @LASTNAME varchar(30);
declare @gpa float, @sat int;

fetch next from curStudent
	into @firstname, @lastname, @gpa, @sat;
-- 'forward only' is when you use fetch next and it reads the rows in order from first to last
-- if you do declare <> scroll cursor for... fetch first, fetch next--> will read bottom up
while @@FETCH_STATUS =0
begin
	if @sat < 1000
	break;
	--whatever you want to do with each row
	print concat(@lastname, ', ', @firstname, ', SAT is...', str(@sat));

	/*fetch next MUST be the last thing inside the loop*/


	fetch next from curStudent
		into @firstname, @lastname, @gpa, @sat;
end

close curStudent
deallocate curStudent;