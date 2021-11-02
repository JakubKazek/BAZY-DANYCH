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
Nr_e int,
Nr_g int,
Gatunek varchar(25),
Cena money,
);

CREATE TABLE Gatunki
(
Nr_g INT  NOT NULL Primary Key identity(1,1),
Nazwa varchar(25),
);

CREATE TABLE Epoki
(
Nr_e int NOT NULL primary key identity(1,1),
Nazwa varchar(25),
Start_e int,
Stop_e int,
);

CREATE TABLE Ksiazki2
(
Id int NOT NULL identity (1,1),
Tytul varchar(50),
Rok_wydania int,
Liczba_str int,
ISBN varchar(25),
);

ALTER TABLE Wypozyczenia add constraint Klucz_wypozyczenia Foreign key (Nr_kl) References Klienci (Nr_kl) 
ALTER TABLE Wypozyczenia add constraint Klucz_wypozyczenia2 Foreign key (Nr_ks) References Ksiazki (Nr_ks)
ALTER TABLE Ksiazki add constraint Klucz_Ksiazki Foreign key (Nr_a) References Autorzy (Nr_a)
ALTER TABLE Ksiazki add constraint Klucz_Ksiazki2 Foreign key (Nr_e) References Epoki (Nr_e)
ALTER TABLE Ksiazki add constraint Klucz_Ksiazki3 Foreign key (Nr_g) References Gatunki (Nr_g);

ALTER TABLE Ksiazki2 add constraint kl_glowny primary key (Id)
ALTER TABLE Ksiazki2 ALTER COLUMN Tytul int NOT NULL
ALTER TABLE Ksiazki2 add constraint sprawdzenie CHECK (Rok_wydania < 2021)
ALTER TABLE Ksiazki2 add constraint unique_1 UNIQUE (ISBN)
ALTER TABLE Ksiazki2 add constraint default_1 DEFAULT 200 for Liczba_str;

