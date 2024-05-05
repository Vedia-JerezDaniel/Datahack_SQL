
--TABLA TEMPORAL EN MEMORIA
declare @mitable table(id int identity(1,1), country varchar(50))

insert into @mitable values('MEX'), ('PER'), ('CHL'), ('COL')

select * from @mitable


--TABLA TEMPORAL FISICA

create table #table (id int identity(1,1), country varchar(50))
insert into #table values ('MEX'), ('PER'), ('CHL'), ('COL')

select * from #table

drop table #table

--SCRIPT
declare @work table (id int identity(1,1), id_work WORK, id_pacient pacient)
declare @idpacient pacient
set @idpacient = 12 

insert into @work (id_work, id_pacient)
	select w.ID_WORK, p.ID_PACIENT from PACIENT p
	inner join WORK_PACIENT w
	on w.ID_PACIENT = p.ID_PACIENT

--select * from @work

declare @id int, @total int
--declare @id int
set @id = 1
set @total = (select count(*) from @work)
--@total es como un len
while @id <= @total
--while @id <= (select count(*) from @work)
begin
	if (select id_pacient from @work where id = @id) <> @idpacient
		delete from @work where id = @id
	set @id = @id + 1 
end

select * from PACIENT p
inner join @work tw
on tw.id_pacient = p.ID_PACIENT


