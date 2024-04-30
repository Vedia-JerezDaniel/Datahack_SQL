--select * from DOCTOR_SPECIALITY
select * from PACIENT

exec SELECT_turnospaciente 12
--solo funciona para los id_pacientes que coinciden con id_doctor

CREATE PROC SELECT_TurnosPaciente(
				@idpacient pacient
				)

AS
set nocount on

IF exists(SELECT * from Pacient P
				INNER JOIN WORK_PACIENT TP
				ON TP.ID_PACIENT = P.ID_PACIENT
				INNER JOIN Work T
				ON T.id_work = TP.ID_WORK
				INNER JOIN DOCTOR_SPECIALITY M
				ON M.ID_DOCTOR = TP.ID_DOCTOR
				WHERE P.ID_PACIENT = @idpacient
				)

	SELECT * from Pacient P
	INNER JOIN WORK_PACIENT TP
	ON TP.ID_PACIENT = P.ID_PACIENT
	INNER JOIN WORK T
	ON T.ID_WORK = TP.ID_WORK
	INNER JOIN DOCTOR_SPECIALITY M
	ON M.ID_DOCTOR = TP.ID_DOCTOR
	WHERE P.ID_PACIENT = @idpacient
else
	select 0 as resultado






