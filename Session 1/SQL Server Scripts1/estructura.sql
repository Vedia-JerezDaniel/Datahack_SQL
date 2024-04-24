--#### IF, ELSE, END

--declare @ID_PAC int
--declare @ID_WORK int

--set @ID_PAC = 5

--if @ID_PAC = 7
--begin
--	set @ID_WORK = 20
--	select * from pacient where ID_PACIENT=@ID_PAC
--	print @ID_WORK

--	if EXISTS(select * from PACIENT where ID_PACIENT=11)
--		print 'ID FOUND'
--end
----else
----begin
----	print 'NO ID FOUND'
----end

--##### WHILE

--declare @count int=0
--while @count <= 10
--begin
--	print @count
--	set @count = @count+1
--end


--##### WHILE

--DECLARE @value int
--declare @result char(10) = ''

--set @value = 20
--set	@result = (case when @value=10 then 'BLUE'
--					when @value=20 then 'GREEN'
--					when @value=30 then 'YELLOW'
--			END)
--print @result


--select *, (case when ID_WORK=2 then 'GREEN'
--				when ID_WORK=4 then 'BLUE'
--				when ID_WORK=2 then 'YELLOW'
--				end)
--from PAYMENT_PACIENT

--##### RETURN AND BREAK

--declare @count int=0
--while @count <= 10
--begin
--	print @count
--	set @count = @count+1
--	if @count = 3 
--		return -- sale de la condición
--		--break
--	else
--		print 'out'
--end

--### BEGIN TRY CATCH



BEGIN TRY
	declare @count_t int=0
	SET @count_t = 'int'
END TRY

BEGIN CATCH
	PRINT 'STRING ASSIGNED TO INT VARIABLE'
END CATCH