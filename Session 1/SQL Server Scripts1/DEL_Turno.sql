

/*
select * from work
select * from work_pacient
*/

--EXEC DEL_turno 11

ALTER PROC DEL_Turno(@idturno WORK)

AS
set nocount on

if exists(SELECT * from WORK
			WHERE ID_WORK = @idturno)
--se usa BEGIN & END porque hay más de una query
BEGIN	
	DELETE FROM WORK_PACIENT WHERE ID_WORK = @idturno
	DELETE FROM WORK WHERE ID_WORK = @idturno
END
ELSE
	SELECT 0 as NON


