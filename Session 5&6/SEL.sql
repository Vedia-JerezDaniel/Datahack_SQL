SELECT TOP (1000) [ID_COUNTRY]
      ,[COUNTRY]
  FROM [centro_4].[dbo].[COUNTRY]

select * from WORK_PACIENT

insert into PACIENT (NAME, LAST_NAME, BIRTHDAY, LOCATION, ID_COUNTRY, PHONE, EMAIL, OBSERVATION)
VALUES ('LEANDRO','PAREDES','1982-05-25','C 125','ARG',NULL,'lp@mail.com','')

insert into PACIENT (NAME, LAST_NAME, BIRTHDAY, LOCATION, ID_COUNTRY, PHONE, EMAIL, OBSERVATION)
VALUES ('JOSE','PEREZ','1985-01-25','C 15','COL',NULL,'jpo@mail.com','DERIVADO'),
('MARCELA','TORRES','1982-11-16','C 65','MEX','156546','mt@mail.com',NULL)

insert INTO STATUS (ID_STATUS, DESCRIPTION)
VALUES ('0', 'PENDIENTE'), ('1','REALIZADO'),('2','CANCELADO'),('3','RECHAZADO'),('4','POSTERGADO'),('5','ANULADO'),('6','DERIVADO') 

insert INTO WORK (ETL_WORK, STATUS, OBSERVACION)
VALUES ('2023-06-15', '0', 'AYUNA')

insert INTO WORK_PACIENT(ID_WORK, ID_PACIENT, ID_DOCTOR)
VALUES ('1', '10', '1'), ('1', '12', '1')

insert INTO WORK (ETL_WORK, STATUS, OBSERVACION)
VALUES ('2023-06-15', '8', null)

insert INTO WORK_PACIENT(ID_WORK, ID_PACIENT, ID_DOCTOR)
VALUES ('2', '16', '5'), ('2', '2', '1')

insert INTO CONCEPT(DESCRIPTION)
VALUES ('LABORATORIO'), ('RADIOGRAFIA')

SELECT * FROM PAYMENT_PACIENT;

insert INTO PAYMENTS(CONCEPT,TIMESTAMP, COST, STATUS, OBSERVATION)
VALUES ('1','2019-02-15','4500','0','PENDIENTE'), 
('2','2019-05-20','6800','0','PENDIENTE'),
('1','2019-09-27','5600','0','PENDIENTE');

INSERT INTO PAYMENT_PACIENT(ID_PAYMENT,ID_PACIENT,ID_WORK)
VALUES ('3','10','2'), ('4','12','1'), ('5','11','4');

INSERT INTO PAYMENT_PACIENT(ID_PAYMENT,ID_PACIENT,ID_WORK)
VALUES ('5','11','4');

DELETE FROM PAYMENT_PACIENT
WHERE ID_PACIENT IN (17);  

DELETE FROM PACIENT
WHERE ID_PACIENT IN (13,14,15,16,17,18);  
