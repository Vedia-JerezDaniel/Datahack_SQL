-- Active: 1713457911426@@127.0.0.1@1433@centro_4
select * from pacient

begin transaction
    update pacient set phone=555 where id_pacient = 9
if @@rowcount = 1
    COMMIT transaction
else
    ROLLBACK transaction