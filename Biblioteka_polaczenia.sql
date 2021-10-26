CREATE DATABASE Jakub_K2;
go
USE Jakub_K2;

CREATE TABLE Wypozyczenia
(
Nr_wyp	int identity(1,1) primary key NOT NULL,
Nr_kl	int,
Nr_ks	int,
Data_wyp datetime,
Data_odd datetime,
);
CREATE TABLE Autorzy
(
Nr_a int primary key identity(1,1) NOT NULL,
Imie varchar(25),
Nazwisko varchar(25),
);
CREATE TABLE Klienci
(
Nr_kl int NOT NULL primary key identity(1,1),
Imie varchar(25),
Nazwisko varchar(25),
Ulica varchar(25),
Kod varchar(6),
Miasto varchar(25),
PESEL varchar(16),
);
CREATE TABLE Ksiazki
(
Nr_ks int NOT NULL primary key identity(1,1),
Tytul varchar(60),
Rok int,
Nr_a int,
Gatunek varchar(25),
Cena money,
);

ALTER TABLE Wypozyczenia add constraint Klucz_wypozyczenia Foreign key (Nr_kl) References Klienci (Nr_kl) 

ALTER TABLE Wypozyczenia add constraint Klucz_wypozyczenia2 Foreign key (Nr_ks) References Ksiazki (Nr_ks)


ALTER TABLE Ksiazki add constraint Klucz_Ksiazki Foreign key (Nr_a) References Autorzy (Nr_a);



