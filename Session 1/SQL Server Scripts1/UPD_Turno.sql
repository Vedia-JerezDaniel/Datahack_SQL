
/*
select * from pacient
select * from work
select * from work_pacient

*/

--EXEC upd_turno 4,3,'Cancelation'

CREATE PROC UPD_Turno(@idturno work, @estado tinyint, @observacion observation)

AS
set nocount on

if exists(SELECT * from Work WHERE ID_WORK = @idturno)
	UPDATE work SET status = @estado,
					observacion = @observacion
	WHERE ID_WORK = @idturno
	
ELSE
	SELECT 0 as Non

