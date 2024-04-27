-- Active: 1713457911426@@127.0.0.1@1433@centro_4

SELECT * from pacient

alter TABLE pacient add status SMALLINT
alter table pacient alter COLUMN status BIT
alter table pacient drop COLUMN status

alter Table pacient
add FOREIGN KEY (id_country) REFERENCES country (id_country)

-- drop & Truncate
declare @var varchar(20)
declare @var2 varchar(20)
set @var = 'Ramiro'
set @var2 = 'Gonzales'
SELECT LEFT(@var, 3) + left(@var2, 4)

SELECT lower(left(name,3)) + '.  ' + lower(LEFT(last_name,3)) from pacient


use centro_4

declare @var varchar(20)
declare @var2 varchar(20)
set @var = 'Ramiro@'
set @var2 = 'Gonzales@@'
SELECT REPLACE(@var, '@','')
SELECT REPLACE(@var, '@','')

select replicate('payaso ',2)

declare @var varchar(20)
declare @var2 varchar(20)
set @var = 'Ramiro  '
set @var2 = '  Gonzales  '
select rtrim(@var) + ltrim(rtrim(@var2))

-- DATES

select getdate()
select getutcdate()

SELECT dateadd(mi,3,getdate())

select datediff(week,getdate(),'20240521')

select datepart(dw,getdate())

select isdate(getdate())

if isdate('20240521') = 1
    SELECT 'TRUE'
else
    SELECT 'FALSE'

declare @num money
set @num = 500.40
SELECT @num
-- select cast(@num as int)
-- CAST no convierte la variable
select convert(int, @num)

declare @fecha datetime
set @fecha = getdate()
SELECT convert(char(20),@fecha,104)
-- 104,112



