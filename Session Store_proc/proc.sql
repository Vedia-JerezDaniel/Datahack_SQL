create proc sp_test (
@ID_PAC int	)
as

declare @sort char(1) = 'A'
--set @sort = 'D' para modificar
--EJEMPLO TRATAMIENTO DE VARIABLES
--declare @ord_sort char(1)
--set @ord_sort = ISNULL(@sort, 'A')
--print @ord_sort

select NAME, LAST_NAME, ID_COUNTRY, OBSERVATION,
(select COUNTRY from COUNTRY where ID_COUNTRY = pa.ID_COUNTRY)
from PACIENT as pa where ID_PACIENT = @ID_PAC

go
-- GO es el separador de stores


