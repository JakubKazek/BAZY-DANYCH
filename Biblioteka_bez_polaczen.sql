CREATE DATABASE Marcel;
go
USE Marcel;

CREATE TABLE Auotrzy
(
Nr_a	int identity(1,1) primary key NOT NULL,
Imie	varchar(25),
Nazwisko	varchar(25),
Rok_ur	int,
Rok_sm int NOT NULL

);
CREATE TABLE Ksiazki
(
Nr_ks	int identity(1,1) primary key NOT NULL,
Tytul	varchar(60),
Rok_wyd	int,
Nr_a	int,
Nr_g	int,
Nr_e	int,
Cena	money
);
CREATE TABLE Epoki
(
Nr_e	int identity(1,1) primary key NOT NULL,
Nazwa	varchar(25),
Start_e	int,
Stop_e	int,
);
CREATE TABLE Klienci
(
Nr_kl	int identity(1,1) primary key NOT NULL,
Imie	varchar(25),
Nazwisko	varchar(25),
Telefon	varchar(11),
Email	varchar(25),
Ulica	varchar(25),
Kod	varchar(6),
Miasto	varchar(25)
);
CREATE TABLE Gatunki
(
Nr_g	int identity(1,1) primary key NOT NULL,
Nazwa varchar(25)
);
CREATE TABLE Wypozyczenia
(
Nr_wyp	int identity(1,1) primary key NOT NULL,
Nr_kl	int,
Nr_ks	int,
Data_wyp	date,
Data_odd	date
);