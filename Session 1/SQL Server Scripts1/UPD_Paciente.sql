
--exec UPD_Paciente 4,'Jean','Darros','montes 435',jd@mail.com

ALTER PROC UPD_Paciente(
				@idpaciente pacient, @name varchar(50), @last_name varchar(50),
				@location varchar(50),@email varchar(30), @observacion varchar(50))

AS
set nocount on

if exists(SELECT * from PACIENT
			WHERE ID_PACIENT = @idpaciente)
	UPDATE PACIENT SET name = @name,
					LAST_NAME = @last_name,
					LOCATION = @location,
					email = @email,
					OBSERVATION = @observacion
	WHERE ID_PACIENT = @idpaciente
	
ELSE
	SELECT 0 as NON



exec UPD_Paciente 4,'Jean','Darros','montes 435','jd@mail.com','Non'