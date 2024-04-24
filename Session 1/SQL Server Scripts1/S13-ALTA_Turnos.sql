
/*
select * from turno
select * from paciente
select * from turnopaciente
select * from medico
insert into medico values(2,'Pablo','Ramirez')
*/

--EXEC ALTA_turno '20190218 09:15',6,1,'Nada'

CREATE proc ALTA_Work(
			@etl_work char(14), --20190215 12:00
			@id_pacient pacient,
			@id_doctor doctor,
			@observacion observation=''
			)

as

/*
ESTADO = 0 (pendiente)
ESTADO = 1 (realizado)
ESTADO = 2 (cancelado)

*/
set nocount on

IF NOT EXISTS(SELECT TOP 1 id_work from Work WHERE ETL_WORK=@etl_work)
BEGIN
	INSERT INTO Work (ETL_WORK,STATUS,OBSERVACION)
	VALUES (@etl_work,0,@observacion)

	declare @auxIdturno turno
	set @auxIdturno = @@IDENTITY

	INSERT INTO TurnoPaciente (idturno,idpaciente,idmedico)
	VALUES (@auxIdturno,@idpaciente,@idmedico)

	print 'Id_work was added correctly'
	return

	
END
ELSE
BEGIN
	print 'Id_work already exists'
	return
END