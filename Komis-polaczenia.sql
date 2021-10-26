CREATE DATABASE Jakub_K4;
go
USE Jakub_K4;

CREATE TABLE Samochody
(
Nr_s int identity(1,1) primary key NOT NULL,
Marka varchar(15) NOT NULL,
Model varchar(15) NOT NULL,
Pojemnosc float NOT NULL,
Kolor varchar(10) NOT NULL,
Spalanie float NOT NULL,
Nr_h int NOT NULL,
);
CREATE TABLE Handlarze
(
Nr_h int primary key identity(1,1) NOT NULL,
Nazwa varchar(20) NOT NULL,
Ulica varchar(15) NOT NULL,
Kod varchar(15) NOT NULL,
Miasto varchar(15) NOT NULL,
);
CREATE TABLE Sprzedaz
(
Nr_sp int NOT NULL primary key identity(1,1),
Nr_s int NOT NULL,
Data_wys date NOT NULL,
Cena_h money NOT NULL,
Cena money NOT NULL,
Nr_k int ,
Nr_pr int,
Data_sp date,
);
CREATE TABLE Kierowcy
(
Nr_k int NOT NULL primary key identity(1,1),
Nazwisko varchar(20) NOT NULL,
Imie varchar(15) NOT NULL,
Ulica varchar(15) NOT NULL,
Kod varchar(6) NOT NULL,
Miasto varchar(15) NOT NULL,
);

CREATE TABLE Pracownicy
(
Nr_pr int NOT NULL primary key identity(1,1),
Imie varchar(15) NOT NULL,
Nazwisko varchar(20) NOT NULL,
Telefon varchar(11),
Email varchar(20),
);

ALTER TABLE Samochody add constraint Klucz_Samochody1 Foreign key (Nr_h) References Handlarze (Nr_h);

ALTER TABLE Sprzedaz add constraint Klucz_sprzedaz1 Foreign key (Nr_s) References Samochody (Nr_s);
ALTER TABLE Sprzedaz add constraint Klucz_sprzedaz2 Foreign key (Nr_k) References Kierowcy (Nr_k);
ALTER TABLE Sprzedaz add constraint Klucz_sprzedaz3 Foreign key (Nr_pr) References Pracownicy (Nr_pr);






