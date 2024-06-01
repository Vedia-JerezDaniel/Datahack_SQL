

--select * from work

use centro_4
GO

update WORK set STATUS = 3 where convert(char(8),ETL_WORK,112) < convert(char(8),getdate(),112)
and STATUS = 0

