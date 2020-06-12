-- if else, begin-end, flow control example- ref slides 161-164
--if the boolean expression is false then the command statement that follows will alwasy be false
--begin-end is treated as one statement regardless of how many lines are inside of it.
-- ALWAYS FORMAT CODE TO BE EASILY READ FOR OTHERS. INDENT LINES INSIDE OF A STATEMENT.
--the else statement corresponds with the 'if' clasue where if the boolean expression if false, the first begin block is 'skipped'
-- if the boolean expression is true the first block is returned and the second is ignored.
-- if else sums up to if the boolean expression is true then the 'if' clause is returned; if false the 'else' clause is returned

declare @total int =0;
declare @anbr int =1;
while @anbr <= 765
begin
	if @anbr % 2 =0 
	begin
	--print 'loop forever!';
	--print concat('@anbr is ', str(@anbr));
		set @total = @total + @anbr;
	end
	set @anbr = @anbr + 1;
end
print concat( 'the total is ', str(@total));


if 1=0
begin
	print 'hello world';
	print 'the end';
end
else
begin
	print 'eeeek';
	print 'well then';
end