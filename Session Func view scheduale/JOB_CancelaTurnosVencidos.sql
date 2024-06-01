
--select * from turno

use centro_4
GO
--go: separa una sentencia de la otra en SQL, ejecuta una y luego la otra 

update work set STATUS = 2
where convert(char(8),ETL_WORK,112) < convert(char(8),getdate(),112)
and STATUS= 0

