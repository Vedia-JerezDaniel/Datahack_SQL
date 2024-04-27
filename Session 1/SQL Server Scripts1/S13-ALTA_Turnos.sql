

--select * from work
select * from pacient
--select * from work_pacient
--select * from doctor
--insert into medico values(2,'Pablo','Ramirez')


EXEC ALTA_Work '20190218 09:15',13,1,'Nada'

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

	declare @auxIdwork work
	set @auxIdwork = @@IDENTITY
	--@@identity variable de sistema

	INSERT INTO work_pacient (id_work,id_pacient,id_doctor)
	VALUES (@auxIdwork,@id_pacient,@id_doctor)

	print 'Id_work was added correctly'
	return

	
END
ELSE
BEGIN
	print 'Id_work already exists'
	return
END