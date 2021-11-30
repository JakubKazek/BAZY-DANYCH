/*CREATE DATABASE SamochodyKierowcy12;
GO
USE SamochodyKierowcy12;
GO
-- baza to trenowania instrukcji select
create table samochody
(
	id_s int identity(1,1) primary key,
	marka varchar(20),
	model varchar(20),
	zasilanie varchar(10) check (zasilanie in ('diesel','lpg','benzyna')),
	rocznik int,
	kolor varchar(20),
	spalanie float,
	cena money
);
go
create table kierowca
(
	id_k int identity(1,1) primary key,
	imie varchar(20),
	nazwisko varchar(20),
	kod varchar(6),
	miasto varchar(20),
	ulica varchar(20),
	id_s int references samochody (id_s)
);
go

INSERT INTO samochody(marka, model,zasilanie, rocznik, kolor, spalanie, cena) VALUES
					 ('Ford','Mondeo', 'lpg', 2015, 'czerowny',5.5, 23000),
					 ('Ford','Mondeo', 'benzyna', 2016, 'niebieski',7.5, 33000),
					 ('Ford','Mondeo',  'benzyna',1998,'ró¿owy',5, 3500),
					 ('Ford','Fiesta', 'lpg', 2002,'czerowny',4.5, 7500),
					 ('Ford','Fiesta', 'lpg', 2002,'niebieski',8, 7000),
					 ('Ford','Fiesta', 'diesel', 2012,'zielony',13, 17500),
					 ('Fiat','Punto',  'lpg',2002,'szary',6.5, 5500),
					 ('Fiat','Punto', 'diesel', 2005,'b³êkitny',7.5, 8500),
					 ('Fiat','Punto', 'lpg', 1995,'czerowny',5.5, 2500),
					 ('Fiat','Punto', 'benzyna', 2017,'szary',5, 51000),
					 ('Fiat','Panda', 'lpg', 2001,'niebieski',7.5, 5500),
					 ('Fiat','Punto', 'lpg', 2010,'zielony',6.5, 15000),
					 ('Fiat','Panda', 'benzyna', 2015, 'zielony',4.5,15000),
					 ('Fiat','126p', 'diesel', 2015, 'czerowny',5,15000),
					 ('Fiat','Panda', 'lpg', 2001,'czerowny',9, 5500),
					 ('Fiat','Panda', 'lpg', 2010,'czerowny',13, 25000),
					 ('Fiat','126p', 'benzyna', 2015, 'br¹zowy',11,75000),
					 ('Fiat','Punto', 'diesel', 2015, 'czarny',8,15000),
					  ('Ford','Mondeo', 'lpg', 2015, 'czerowny',5.5, 23000),
					 ('Ford','Mondeo', 'benzyna', 2016, 'czerowny',5.5, 33000),
					 ('Ford','Mondeo',  'benzyna',1998,'czerowny',5.5, 3500),
					 ('Ford','Fiesta', 'lpg', 2002,'czerowny',5.5, 7500),
					 ('Ford','Fiesta', 'lpg', 2002,'czerowny',5.5, 7000),
					 ('Ford','Fiesta', 'diesel', 2012,'czerowny',5.5, 17500),
					 ('Fiat','Punto',  'diesel',2002,'bia³y',5.5, 5500),
					 ('Fiat','Punto', 'lpg', 2005,'czarny',5.5, 8500),
					 ('Fiat','Punto', 'benzyna', 1995,'czerwony',5.5, 2500),
					 ('Fiat','Punto', 'lpg', 2017,'niebieski',5.5, 51000),
					 ('Fiat','Panda', 'diesel', 2001,'czerowny',5.5, 5500),
					 ('Fiat','Panda', 'lpg', 2010,'czerowny',5.5, 15000),
					 ('Fiat','Panda', 'benzyna', 2015, 'czerowny',5.5,15000),
					 ('Ferrari', 'Berlinetta', 'benzyna', 2012, 'czerwony', 5.2, 259999),
					('Honda', 'Civic', 'benzyna', 2005, 'czarny', 7.0, 2799),
					('Honda', 'Civic', 'lpg', 2005, 'czerwony', 10.0, 2799),
					('Honda', 'Civic', 'diesel', 2005, 'bia³y', 8.0, 2599),
					('Ford', 'Fiesta', 'benzyna', 1996, 'srebrny', 6.3, 1999),
					('Hyunday', 'Fiesta', 'benzyna', 1998, 'czarny', 5.7, 4999),
					('Hyunday', 'Fiesta', 'lpg', 2000, 'srebrny', 4.7, 6999),
					('Ford', 'Mustang', 'benzyna', 2009, 'czerwony', 12.7, 50000),
					('Fiat', '126p', 'lpg', 1990, 'czerwony', 5.7, 999.98),
					('Ford', 'Multipla', 'benzyna', 2012, 'czerwony', 9.7, 29000),
					('BWM', 'E5', 'benzyna', 2006, 'czerwony', 7.4, 12000),
					('BWM', 'E5', 'LPG', 2006, 'czerwony', 4.4, 14000),
					('BWM', 'E5', 'LPG', 2006, 'czarny', 4.4, 14000),
					('Opel', 'Tigra', 'benzyna', 1998, 'srebrny', 5.8, 2999),
					 ('Fiat','Panda','benzyna',2005,'zielony',6.6,8600),
					 ('Mercedes','Mondeo','benzyna',2011,'czarny',8.2,9500),
					 ('Dodge','Punto','diesel',2004,'zó³ty',7.5,5600),
					 ('Ford','Focus','benzyna',2008,'czerwony',9.1,11500),
					 ('BMW','A6','diesel',2007,'srebrny',11.2,16000),
					 ('Ford','Mondeo','lpg',2010,'czerwony',11.3,10500),
					 ('Ferrari','Punto','lpg',2007,'czerwony',9.0,8600),
					 ('Toyota','Focus','benzyna',2006,'zielony',8.4,9700),
					 ('Audi','A8','diesel',2009,'czarny',10.5,22000),
					 ('Ford', 'Mondeo', 'benzyna', 1999, 'Zielony', 6, 2000),
					('Opel','Astra','lpg',1998,'Czerwony',5.5,5000),
					('Skoda','Fabia','diesel',2010,'Niebieski',7,20000),
					('Ford','Focus','diesel',2000,'Zielony',6.6,4000),
					('Skoda','Octavia','benzyna',2016,'Srebrny',8,60000),
					('Suzuki','Kizashi','Benzyna',2012,'Czerwony',10,65000),
					('Fiat','Punto','Benzyna',2004,'Czerwony',6,4000),
					('Audi','A4','Diesel',2000,'Czarny',8,10000),
					('Ford','Mondeo','Diesel',1999,'Srebrny',8,5000),
					('Skoda','Fabia','LPG',2002,'Zielony',5,5500),
					('BMW','320i', 'Benzyna', 2005, 'Czarny',8,30000),
					('Renault','Traffic', 'Benzyna', 2016, 'Czarny', 7,100000),
					('Merdcedes', 'CLA200', 'Benzyna', 2012, 'Srebrny', 9,40000),
					 ('Skoda','Fabia', 'LPG', 2015, 'bordowy',5.5, 23000),
					 ('Ford','Mondeo', 'benzyna', 2016, 'niebieski',7.5, 33000),
					 ('BMW','e36',  'benzyna',1998,'czarny',5, 3500),
					 ('Ford','Fiesta', 'LPG', 2002,'czerowny',4.5, 7500),
					 ('Opel','Corsa', 'LPG', 2002,'niebieski',8, 7000),
					 ('Opel','Astra', 'diesel', 2012,'z³oty',13, 17500),
					 ('Fiat','Punto',  'LPG',2002,'czerwony',6.5, 5500),
					 ('Fiat','Punto', 'diesel', 2005,'b³êkitny',7.5, 8500),
					 ('BMW','ee', 'LPG', 1995,'czerowny',5.5, 2500),
					 ('Mustang','Chellenger', 'benzyna', 2017,'szary',5, 51000),
					 ('Mustang','FastBack', 'LPG', 2001,'niebieski',7.5, 5500),
					 ('Fiat','Grande Punto', 'LPG', 2010,'zielony',6.5, 15000),
					 ('Volvo','s60', 'benzyna', 2015, 'zielony',4.5,15000),
					 ('Volvo','v40', 'diesel', 2015, 'czarny',5,15000),
					 ('Fiat','Panda', 'LPG', 2001,'czerowny',9, 55000),
					 ('Fiat','Panda', 'LPG', 2010,'czerowny',13, 25000),
					 ('Volvo','s40', 'benzyna', 2015, 'niebieski',11,75000),
					 ('Fiat','Grande Punto', 'diesel', 2015, 'czarny',8,15000),
					 ('Mazda','RX8','LPG',1997,'Czerwony',9,1500),
					('Daewoo','Tico','BENZYNA',1995,'Bordowy',7,1200),
					('Opel','Tigra','DIESEL',1996,'Czarny',9,3000),
					('Citroen','ZX','LPG',1993,'Granatowy',8,2500),
					('Mitsubishi','Gallardo','BENZYNA',1990,'Zolty',25,185000),
					 ('Polonez','Caro', 'lpg', 2001,'srebrny',9, 5500),
				   	 ('Jaguar','Xtype', 'lpg', 2000,'czerowny',13, 2500),
					 ('Nissan','Micra', 'benzyna', 2017, 'br¹zowy',11,8500),
					('Volksvagen','Jetta', 'lpg', 2001,'srebrny',9, 5500),
					 ('Peugeot','207', 'diesel', 2014, 'czarny',8,1500),
					 ('BMW','320i', 'Benzyna', 2005, 'Czarny',8,30000),
					('Renault','Traffic', 'Benzyna', 2016, 'Czarny', 7,100000),
					('Merdcedes', 'CLA200', 'Benzyna', 2012, 'Srebrny', 9,40000),
					('Honda', 'Civic', 'diesel', 2005, 'bia³y', 8.0, 2599),
					('Toyota','Corolla','diesel',2000,'niebieski',10,40000),
					('Fiat','Punto','benzyna',2002,'zielony',6,2500),
					('Kia','Rio','LPG',2014,'szary',6,40000),
					('Ford', 'Mustang', 'benzyna', 2009, 'czerwony', 12.7, 50000),
					('Fiat', '126p', 'lpg', 1990, 'czerwony', 5.7, 999.98),
					('Ford', 'Multipla', 'benzyna', 2012, 'czerwony', 9.7, 29000),
					('BWM', 'E5', 'benzyna', 2006, 'czerwony', 7.4, 12000),
					('BWM', 'E5', 'LPG', 2006, 'czerwony', 4.4, 14000),
					('BWM', 'E5', 'LPG', 2006, 'czarny', 4.4, 14000),
					('Opel', 'Tigra', 'benzyna', 1998, 'srebrny', 5.8, 2999);

										

			
go
					 

INSERT INTO kierowca(imie, nazwisko,kod, miasto, ulica) VALUES
					('Alan', 'Piechol', '98-220', 'Zduñska Wola', 'G³ówna 36' ),
					('Dawid', 'Sadowski','98-160', 'Sêdziejowice', 'ródlana 6'),
					('Jan', 'Dó³kowski','98-220', 'Zduñska Wola', 'G³ówna 6'),
					('Bartosz', 'Urbaniak','98-100', '£ask', 'Boczna 12'),
					('Bart³omiej', 'Mianowski','98-100', '£ask', 'Wojskowa 15'),
					('Dominik', 'Wiêch','98-240', 'Szadek', '£aska 20'),
					('Robert', 'Olejnik','98-220', 'Zduñska Wola', 'Zduñska 7'),
					('Mateusz', 'Dobrzycki','98-240', 'Szadek', 'Tuwima 18'),
					('Alan', 'Pompel', '98-240', 'Szadek', 'S³owckiego 29'),
					('Dawid', 'Dariuszowski', '98-240', 'Szadek', 'Zagórna 2'),
					('Janusz', 'Kowalski', '98-100', '£ask', 'Parkowa 47'),
					('Igor', 'Przyby³ka', '98-100', '£ask', 'Lipowa 30'),
					('Miko³aj', 'Miko³ajczyk', '98-240', 'Szadek', 'Klonowa 1'),
					('Adam', 'Nowak', '98-240', 'Szadek', 'Rzymska 63'),
					('Karolina','£¹czek','98-100','£ask','Polna'),
					('Jennifer','Wilk','98-220','Zduñska Wola','Kacza'),
					('Barbara','Tkaczyk','98-100','£ask','Sieradzka'),
					('Patrycja','Felakowska','98-220','Bilew','Skalna'),
					('Izabela','B³aszczyk','98-100','Wydrzyn','G³ówna'),
					('Jan', 'Kowalski', '00-001', 'Dzia³oszyn', 'Pierwsza 1'),
					('Adam', 'Nowak', '00-001', 'Pstrokonie', 'Ostatnia 69'),
					('Adam', 'Kowalski', '99-999', 'Pstrokonie', 'Ostatnia 69'),
					('Karol', 'Wojtylak', '02-900', 'Wadowice', 'Kremowa 2'),
					('Janusz', 'Pawlacz', '12-112', 'Kraków', 'Blokowa 34/2'),
					('Janusz', 'Tracz', '10-100', 'Zapolice', 'G³owna 3/4'),
					('Piotr', 'Pan', '12-112', 'Nibylandia', 'Piaskowa 13'),
					('Dawid', 'Duchowny', '98-220', 'Piaski', 'default'),
					('Jan', 'Policjant', '00-997', 'Warszawa', 'Policyjna 112/997'),
					('Anna', 'Nowak', '00-001', 'Pstrokonie', 'Ostatnia 69'),
					('Alice', 'Pawlacz', '12-112', 'Kraków', 'Blokowa 34/2'),
					('Adam', 'Policjant', '00-997', 'Warszawa', 'Policyjna 112/997'),
					('Daria', 'Sadowska', '98-100', '£ask', 'Jana Paw³a 2/29'),
					 ('Andrzej','Kowalski','33-333','£ódŸ','Jab³eczna'),
					 ('Mateusz','Olejnik','77-777','Warszawa','Mickiewicza'),
					 ('Robert','Mianowski','48-999','Kraków','Wa³êsy'),
					 ('Adam','Dobrzyñski','48-998','Radom','Juliusza'),
					 ('Alan','Piechol','48-997','Zabrze','Jasna'),
					 ('Jan','Rumun','11-122','Wroc³aw','Kossaka'),
					 ('Pawe³','Kowalski','22-222','K³odzko','£ódzka'),
					 ('Janusz','Paw³owski','44-444','Czarnystok','Sieradzka'),
					 ('Pawlacz','Pawelski','66-666','£oœla-Góra','£aska'),
					 ('Katarzyna','Kulesza','98-220','Zduñska-Wola','Sieradzka'),
					('Izabela','Bronka','98-200','Sieradz','Polna'),
					('Magdalena','Gr¹dzka','98-100','£ask','£aska'),
					('Angelika','Witkowska','98-200','Sieradz','Kwiatowa'),
					('Aleksandra','Szewczyk','98-100','£ask','Lesna'),
					('Mateusz','Dobrzycki','98-220','Zduñska Wola', 'Korczew'),
					('Pawe³','Mik³a','98-170','Widawa', 'Œwierczów'),
					('Robert','Olejnik','98-220','Zduñska Wola', 'Wojs³awice'),
					('Alan','Piechol','98-250','Pruszków', 'Górna'),
					('Dawid','Sadowski','98-190','Piaski', 'Pisakowa'),
					('Czes³aw', 'Górski', '55-210', 'Sopot', 'Polna'),
					('Wies³aw', 'Dolny', '60-250', 'Warszawa', 'Ciemna'),
					('Ola', 'Jagie³a', '98-220', 'Zduñska Wola', 'Polna'),
					('Adam', 'Bronka','98-160', 'Sieradz', 'Ludzka'),
					('Patrycja', 'Szewczyk','98-220', 'Zduñska Wola', 'Polna'),
					('Wojtek', 'Hajdukiewicz','98-100', '£ask', 'Piwna'),
					('Sylwia', 'Szewczyk','98-100', '£ask', 'Leœna'),
					('Dominik', 'Wiêch','98-240', 'Szadek', 'Zduñska'),
					('Kasia', 'Perlik','98-220', 'Zduñska Wola', '£aska'),
					('Mateusz', 'Dobrzycki','98-240', 'Szadek', 'Kwiatowa'),
					('Marcin','Kowalski','97-122','Zgorzelec','Wiankowa 22'),
					('Stanislaw','Sztacheta','89-115','Zaribosze','Ostatnia 12'),
					('Agata','Ruminska','99-223','Goszcz','al. Gwiazdy 1/2'),
					('Klaudia','D¹browska','98-120','£ódŸ','Patrioty 5'),
					('Tyfus','Bomba','66-000','Galat','stacja 18'),
					('Hans', 'Klops', '98-200', 'sieradz', 'Kochana' ),
					('David', 'Sadovski','98-160', 'Sêdziekowice', 'Patrycjuszy'),
					('Jan', 'Dlugosz','98-220', 'Zduñska Wola', 'Ludzka'),
					('Bart', 'Urban','98-100', '£ask','Polna'),
					('Bart³omiej', 'Krawczyk','98-100', '£ask', 'Leœna'),
					('Jan', 'Brzechwa', '00-001', 'Dzia³oszyn', 'Pierwsza 1'),
					('Adam', 'Grzelak', '00-001', 'Wa³b', 'Ostatnia 69'),
					('Adam', 'Kownacki', '99-999', 'Lenno', 'Ostatnia 69'),
					('Karol', 'Szajfler', '98-220', 'Zduñska Wola', 'Kremowa 2'),
					('Janusz', 'Pawlacz', '12-112', 'Kraków', 'Blokowa 34/2'),
					('Adolf', 'Hitler', '66-666', 'Piek³o', 'Zaborcza 3/4'),
					('Piotr', 'Pan', '12-112', 'Nibylandia', 'Piaskowa 13'),
					('Dawid', 'Duchowny', '98-220', 'Piaski', 'default'),
					('Sasza', 'Policjant', '00-997', 'Warszawa', 'Policyjna 112/997'),
					('Anna', 'Nowacka', '00-001', 'Pstrokonie', 'Ostatnia 69'),
					('Kuba', 'Nowak', '12-112', 'Kraków', 'Blokowa 34/2'),
					('Sylwia', 'Szewczyk', '00-997', 'Warszawa', 'Policyjna 112/997'),
					('Damian', 'Szadkowski', '98-200', 'Sieradz', 'Jana Paw³a 2/29');

					*/

				---SELECT imie FROM kierowca where (imie like '%a' OR imie in ('Jennifer', 'Alice')) AND imie not in ('Kuba','Sasza');

				---SELECT * from samochody order by rocznik desc, spalanie;

				---SELECT * from samochody where marka in ('Honda', 'Mazda') and (spalanie between 9 and 11) order by spalanie;

				---SELECT * from samochody where kolor = 'czerwony' AND model like '___'; 

				---SELECT * from samochody where kolor not in ('ró¿owy','be¿owy');

				---SELECT * from samochody where kolor in ('zielony', 'niebieski') order by marka, spalanie desc;

				---SELECT * from samochody where model like '_o%';

				--- SELECT * from samochody where (spalanie between 4 and 7) and kolor not in ('ró¿owy', 'fioletowy') order by spalanie desc;

				--- SELECT * from kierowca where (imie not like '%a' or imie in ('Kuba', 'Sasza')) AND imie not in ('Jennifer', 'Alice');

				--- SELECT * from samochody where (marka in ('BMW', 'Mercedes') AND spalanie > 7 and kolor = 'Czarny') order by marka, spalanie desc;

				--- SELECT * from kierowca where miasto in('£ask', 'Zduñska Wola', 'Krakow');

				--- SELECT * from samochody where  (marka = 'Ford' and kolor ='zielony') AND (marka = 'Fiat' and kolor = 'Szary') AND spalanie between 5 and 12;

				---SELECT distinct marka from samochody;

				---SELECT * from samochody where model like '__0';

				---SELECT * from samochody where kolor = 'czarny' and spalanie > 10 order by spalanie desc;

				---SELECT distinct kolor from samochody;

				---UPDATE samochody Set  kolor ='czerwony' where kolor = 'czerowny';
				---UPDATE samochody SET kolor = '¿ó³ty' where kolor in ('zó³ty','Zolty');
				
/*SELECT COUNT(marka) AS 'Liczba_samochodów' FROM samochody;
SELECT COUNT(nazwisko) AS 'Liczba_kierowców' FROM kierowca; */