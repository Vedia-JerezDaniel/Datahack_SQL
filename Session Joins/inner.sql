-- Active: 1713457911426@@127.0.0.1@1433@centro_4
SELECT * FROM [centro_4].[dbo].[PACIENT]
SELECT * from work_pacient

select * from pacient pa inner join work_pacient wp
on wp.id_pacient = pa.id_pacient
-- siempre en ON el id de la ultima tabla, ya que es la inmediata

-- UNION es una concatenación, necesita que la tabla sea igual en columnas


