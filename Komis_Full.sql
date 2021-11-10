create database Jakub101222
go
use Jakub101222

create table Samochody
(
Nr_s int NOT NULL identity(1,1) primary key,
Marka varchar(15) NOT NULL,
Model varchar(15) NOT NULL,
Pojemnosc float NOT NULL,
Kolor varchar(10) NOT NULL,
Rocznik int NOT NULL,
Spalanie float NOT NULL,
Nr_H int NOT NULL,
)

create table Sprzedaz 
(
Nr_sp int NOT NULL identity(1,1) primary key,
Nr_s int NOT NULL,
Data_wys date NOT NULL,
Cena_k money NOT NULL,
Cena_s money NOT NULL,
Nr_k int, 
Nr_pr int,
Data_sp date,
)

create table Handlarze
(
Nr_h int NOT NULL primary key identity(1,1),
Nazwa varchar(20) NOT NULL,
Ulica varchar(15) NOT NULL,
Kod varchar(15) NOT NULL,
Miasto varchar(15) NOT NULL,
)

create table Kierowcy
(
Nr_k int primary key identity(1,1) NOT NULL,
Nazwisko varchar(20) NOT NULL,
Imie varchar(15) NOT NULL,
Ulica varchar(15) NOT NULL,
Kod varchar(6) NOT NULL,
Miasto varchar(15) NOT NULL,
)

create table Pracownicy 
(
Nr_pr int NOT NULL primary key identity(1,1),
Imie varchar(15) NOT NULL,
Nazwisko varchar(15) NOT NULL,
Telefon varchar(11),
Email varchar(20),
)




ALTER TABLE Sprzedaz add constraint klucz_sprzedaz foreign key (Nr_s) references Samochody (Nr_s)
ALTER TABLE Sprzedaz add constraint klucz_sprzedaz2 foreign key (Nr_k) references Kierowcy (Nr_k)
ALTER TABLE Sprzedaz add constraint klucz_sprzedaz3 foreign key (Nr_pr) references Pracownicy (Nr_pr)

ALTER TABLE Samochody add constraint klucz_samochody foreign key (Nr_h) references Handlarze (Nr_h)


INSERT INTO Pracownicy (Imie, Nazwisko, Telefon, Email) VALUES ('Mateusz', 'Kochelski', '99799799797', 'mkochelski@rmb.pl'), ('Jakub', 'Kazek', '48531552784', 'kubakazgmail.com'), ('Szymon', 'Jazwinski', '99999999999', 'szymek@wp.pl'), ('Ondrej', 'Duda', '0-700', 'oduda@rp.pl'), ('Jakub', 'Cinkrof', '911', 'lec@wp.pl');

INSERT INTO Kierowcy (Nazwisko, Imie, Ulica, Kod, Miasto) VALUES ('Darek', 'Wilczynski', 'Rembieszow 25', '98-220', 'RMB'), ('Jakub', 'Grabia', 'Rembieszow 20', '98-220', 'RMB'), ('Mateusz', 'Zakrzewski', 'Poludniowa 1', '98-220', 'zdw'), ('Krzysztof', 'Gonciarz', 'Japonska 20', '92-120', 'Warszawa'), ('Joseph', 'Bratan', 'Pod_Blokiem 20', '50-200', 'Warszawa');

INSERT INTO Handlarze (Nazwa, Ulica, Kod, Miasto) VALUES ('POLCAR', 'Laska 22', '98-220', 'ZDW'), ('ZDWCARS', 'Szadkowska 30', '98-220', 'ZDW'), ('AutoAles', 'Mostowa 1a', '98-220', 'Zdw'), ('Szrot-U-Jarka', 'Laska 99', '98-220', 'Zdunska Wola'), ('Nie-klepane', 'Klepana 13', '98-220', 'Zduñska Wola');

INSERT INTO Samochody (Marka, Model, Pojemnosc, Kolor, Rocznik, Spalanie, Nr_h) VALUES ('Ford', 'Fiesta', 1.4, 'Bialy', 2012, 10, 1), ('Audi', 'A4', 2.0, 'Czarny', 2017, 12, 3), ('Opel', 'Vectra', 1.8, 'Szary', 2010, 9, 4), ('Fiat', 'Panda', 1.2, 'Bialy', 2012, 7.5, 5), ('Peugeot', '307', 1.3, 'Bialy', 2008, 8, 2); 

INSERT INTO Sprzedaz (Nr_s, Data_wys, Cena_k, Cena_s, Nr_k, Nr_pr, Data_sp) VALUES (2, '20211107', 20000, 23000, 1, 2, '20211110'), (1, '20211101', 12000, 135000, 2, 1, '20211103'), (3, '20211028', 5200, 7600, 2, 3, '20211102'), (5, '20211008', 5000, 8000, 5, 4, '20211105'), (4, '20211020', 300, 1200, 4, 5, '20211102'); 


SELECT * from Pracownicy;
SELECT * FROM Kierowcy;
SELECT * FROM Handlarze;
SELECT * FROM Samochody;
SELECT * FROM Sprzedaz;

