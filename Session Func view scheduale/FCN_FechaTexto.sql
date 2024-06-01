

--print dbo.FCN_fechatexto ('20190102')

CREATE FUNCTION FCN_FechaTexto (@fecha datetime)

RETURNS VARCHAR(60)

AS
BEGIN

declare @day varchar(20)
declare @month varchar(20)
declare @etl_text varchar(50)

set @day = (CASE WHEN datepart(dw,@fecha) = 1 THEN 'Sunday' + convert(char(2),datepart(dd,@fecha))
				WHEN datepart(dw,@fecha) = 2 THEN 'Monday ' + convert(char(2),datepart(dd,@fecha))	
				WHEN datepart(dw,@fecha) = 3 THEN 'Tuesday ' + convert(char(2),datepart(dd,@fecha))	
				WHEN datepart(dw,@fecha) = 4 THEN 'Wednesday ' + convert(char(2),datepart(dd,@fecha))	
				WHEN datepart(dw,@fecha) = 5 THEN 'Thursday ' + convert(char(2),datepart(dd,@fecha))	
				WHEN datepart(dw,@fecha) = 6 THEN 'Friday ' + convert(char(2),datepart(dd,@fecha))	
				WHEN datepart(dw,@fecha) = 7 THEN 'Saturday ' + convert(char(2),datepart(dd,@fecha))	
			END)


set @month = (CASE WHEN datepart(mm,@fecha) = 1 THEN 'January'
				WHEN datepart(mm,@fecha) = 2 THEN 'February'
				WHEN datepart(mm,@fecha) = 3 THEN 'March'
				WHEN datepart(mm,@fecha) = 4 THEN 'April'
				WHEN datepart(mm,@fecha) = 5 THEN 'May'
				WHEN datepart(mm,@fecha) = 6 THEN 'June'
				WHEN datepart(mm,@fecha) = 7 THEN 'July'
				WHEN datepart(mm,@fecha) = 8 THEN 'Agoust'
				WHEN datepart(mm,@fecha) = 9 THEN 'September'
				WHEN datepart(mm,@fecha) = 10 THEN 'October'
				WHEN datepart(mm,@fecha) = 11 THEN 'November'
				WHEN datepart(mm,@fecha) = 12 THEN 'December'
			END)

set @etl_text= @day + ' of ' + @month
RETURN @etl_text

END

