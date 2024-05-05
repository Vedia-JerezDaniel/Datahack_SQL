--Trigger are for:
--	insert, update, delete

select * from pacient

--exec ALTA_Paciente '2334','Jorge','Mendez','1055','call 54','PER','','jm@mail.com';
exec ALTA_Paciente '244','Sergio','Banderas','19820502','call 48','MEX','','sb@mail.com'
exec ALTA_Paciente '3434','Joel','Peres','19880302','call 11','COL','','jp1@mail.com'



select * from log

create trigger creation on pacient
after insert
as
if (select id_country from inserted) = 'MEX'
	insert into log (id_pacient,id_country,etl) 
	select i.id_pacient, i.id_country, getdate() from inserted i


alter trigger update_table on pacient
after update
as
if exists (select id_pacient from log
			where id_pacient = (select id_pacient from inserted))
		update log set etl_mod = GETDATE()
			where id_pacient = (select id_pacient from inserted)
else
	insert into log (id_pacient,id_country,etl_mod)
	select id_pacient, id_country, getdate() from inserted


CREATE TRIGGER pac_delete ON Pacient
FOR DELETE
AS
IF EXISTS (SELECT id_pacient FROM log
			WHERE id_pacient = (SELECT id_pacient FROM Deleted))
	UPDATE log SET etl_drop = GETDATE()
		WHERE id_pacient = (SELECT id_pacient FROM Deleted)
ELSE
	INSERT INTO log (id_pacient,id_country, etl_drop)
	SELECT id_pacient, id_country, getdate() FROM Deleted


alter table log add etl_mod datetime
alter table log add etl_drop datetime

select * from log

select * from log


update PACIENT set name = 'Paco' where ID_PACIENT = 13
delete PACIENT where ID_PACIENT = 28