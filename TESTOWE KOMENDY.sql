--create database test1122;
--go
--use test1122;




/*create table Test
(
nr_t int, 
marka varchar(11),
kolor varchar(11),
rok int,
cena money,
);
*/



--Alter table Test ALTER COLUMN nr_t int NOT NULL;
--Alter table Test add constraint klucz_test primary key (nr_t);

--Alter table Test drop constraint klucz_test;

-- Alter table Test ALTER COLUMN nr_t int NOT NULL;
--Alter table Test add constraint klucz_df DEFAULT 'Audi' FOR marka;
--Alter table Test drop constraint klucz_df;

--Alter table Test ADD CONSTRAINT klucz_uq UNIQUE (kolor);
--ALTER TABLE Test ADD CONSTRAINT klucz_ch CHECK (rok > 1900);
--ALTER TABLE Test DROP CONSTRAINT klucz_ch;

--INSERT INTO Test (nr_t, marka, kolor, rok, cena) VALUES (1, 'Audi', 'Czerwony', 2012, 20000), (2, 'Skoda', 'Bia³y', 2012, 20000);
--UPDATE Test SET marka = 'Ford' where kolor = 'Czerwony';
--UPDATE Test SET marka = 'Ford', rok = 2020 WHERE nr_t = 1 OR nr_t = 2;
--DELETE FROM Test WHERE kolor = 'Bia³y';


SELECT * FROM Test;