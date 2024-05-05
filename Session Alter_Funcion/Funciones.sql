

--FUNCIONES ESCALARES

--select dbo.nombrefun (256)
select dbo.concatenar('Lopez','Roberto')
select dbo.obtenerPais (9)

select * from pacient

CREATE FUNCTION nombrefun (@var int)
RETURNS int

AS

BEGIN
	set @var = @var * 5
	return @var
END

CREATE FUNCTION concatenar (
				@last_name varchar(50),
				@name varchar(50)
				)
RETURNS varchar(100)

AS
BEGIN
	declare @resultado varchar(100)
	set @resultado = @last_name + ', ' + @name
	return @resultado	

END

CREATE FUNCTION obtenerPais(
				@idpaciente pacient
				)
RETURNS varchar(50)

AS
BEGIN
	declare @pais varchar(50)
	SET @pais = (SELECT PA.country From pacient P
					INNER JOIN Country PA
					ON PA.id_country = P.id_country
					WHERE id_pacient = @idpaciente)
	
	RETURN @pais
END

--FUNCIONES DE TIPO TABLA

select * from dbo.listaPaises()


CREATE FUNCTION listaPaises()

RETURNS @paises TABLE(id_country char(3), country varchar(50))
AS
BEGIN
	
	INSERT INTO @paises values('ESP','España')
	INSERT INTO @paises values('MEX','Mexico')
	INSERT INTO @paises values('CHI','Chile')
	INSERT INTO @paises values('PER','Perú')
	INSERT INTO @paises values('ARG','Argentina')
	INSERT INTO @paises values('BOL','Bolivia')
	INSERT INTO @paises values('BRA','Brasil')

	RETURN

END



