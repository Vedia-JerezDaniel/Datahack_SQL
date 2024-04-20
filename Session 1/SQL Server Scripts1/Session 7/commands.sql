select top 3 * from PACIENT;

select * from PACIENT order by BIRTHDAY;

select distinct id_country from PACIENT;

select * from PACIENT where ID_COUNTRY = 'COL';

select * from PACIENT where LAST_NAME = 'LOPEZ';

select * from PACIENT where year(BIRTHDAY) = '2019'


select * from WORK

update PACIENT set observation = 'NO OBSERVATION' where ID_PACIENT=1;

update PACIENT set observation = 'NO OBSERVATION', PHONE = '48456' where ID_PACIENT=7;

--EXER
insert INTO WORK (ETL_WORK, STATUS, OBSERVACION)
VALUES ('2019-01-22 10:00', '0', 'PENDING APROVAL')

insert INTO WORK_PACIENT(ID_WORK, ID_PACIENT, ID_DOCTOR)
VALUES ('6', '5', '1')

delete from WORK_PACIENT where ID_WORK = 6
delete from WORK where ID_WORK = 6

select max(TIMESTAMP) from Payments;

select min(COST) from Payments;

select sum(COST) as Total from Payments;

select sum(COST)*1.21 as Total from Payments;

select count(*) from PACIENT where LAST_NAME='LOPEZ';

--HAVING ES una condici�n sobre un grupo de conjuntos no una sola columna

select STATUS from WORK group by STATUS having COUNT(status) = 3;

select * from WORK;

select * from PACIENT where LAST_NAME='LOPEZ' and ID_PACIENT = 5;

SELECT * from "PACIENT" WHERE "NAME" like '%OS';
SELECT * from "PACIENT" WHERE "NAME" not like '%OS'

select * from PACIENT where LAST_NAME='LOPEZ' or ID_PACIENT = 5;


select * from "WORK" WHERE "STATUS" BETWEEN 3 and 6;


-- se prioriza la consulta fuera del parentesis, luego el parentesis
select * from PACIENT where LAST_NAME='LOPEZ' and (ID_PACIENT = 5 or "ID_COUNTRY"='COL');


INSERT INTO [dbo].[WORK]
           ([ETL_WORK]
           ,[STATUS]
           ,[OBSERVACION])
     VALUES ('2024-02-12','5',NULL), ('2024-05-14','6',NULL)

select * from WORK where status in (0,1,5)