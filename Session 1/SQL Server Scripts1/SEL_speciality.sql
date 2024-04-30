

--exec SEL_Speciality

CREATE PROC SEL_Speciality

AS
set nocount on

if exists(SELECT * from SPECIALITY)
	SELECT * from SPECIALITY
else
	select 0 as NON


