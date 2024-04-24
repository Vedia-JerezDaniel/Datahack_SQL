
--birthday como varchar(8), definida como estandar
exec ALTA_Paciente '2324324','Jorge','Lopez','20180518','calle 1','PER','','jz@mail.com','';

--en caso de existir, añadir un alter

CREATE proc ALTA_Paciente(
			@dni varchar(20),
			@name varchar(50),
			@last_name varchar(50),
			@birthday varchar(8),
			@location varchar(50),
			@id_country char(3),
			@phone varchar(20)='',
			@email varchar(50),
			@observation varchar(50)=''
			)

as

IF NOT EXISTS(SELECT * from pacient WHERE DNI=@dni)
BEGIN
	INSERT INTO pacient (dni,name,LAST_NAME,BIRTHDAY,LOCATION,ID_COUNTRY,PHONE,email,OBSERVATION)
	VALUES (@dni,@name,@last_name,@birthday,@location,@id_country,@phone,@email,@observation)
	print 'Pacient was addes succesfully'
	return
END
ELSE
BEGIN
	print 'Pacient already exists'
	return
END




