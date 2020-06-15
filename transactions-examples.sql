--ref slide 185, "Calculate the Factorial"

create or alter procedure Factorial
	@nbr int = null
as
begin
	if @nbr is null begin
		print 'ERROR: An integer is required';
		return;
	end
	if @nbr <1 begin
		print 'error: parameter must be >= 1';
		return;
	end
	--assume we have a good parameter
	declare @fact int = 1;
	declare @anbr int = @nbr;
	while @anbr > 1 begin
		set @fact = @fact * @anbr;
		set @anbr = @anbr - 1;
	end
	print 'The factorial of ' + trim(str(@nbr)) + ' is ' + trim(str(@fact));
	--could use concat but with str you can just use plus sign, with cash you can change things into numbers or strings
	select @nbr, @fact as 'Factorial';
end
go
exec Factorial @nbr = 6;
go
--ref slide 186, "display Students by GPA"

create or alter procedure ListStudentsByGPA
	@GPA float = null
as 
begin
	declare @GPAHIGH float = @GPA + 0.3;
	declare @GPALOW float = @GPA - 0.4;

	select * 
	from student 
	where GPA between @GPALOW and @GPAHIGH
end
go
exec ListStudentsByGPA @GPA = 3.0;
go