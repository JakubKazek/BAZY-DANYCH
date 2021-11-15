CREATE DATABASE ZSE1;
go
USE ZSE1;

CREATE TABLE Uczniowie
(
Id_u int NOT NULL primary key identity(1,1),
Imie varchar(25) NOT NULL,
Nazwisko varchar(25) NOT NULL,
Id_k int,
)

CREATE TABLE Nauczyciele
(
Id_n int NOT NULL primary key identity(1,1),
Imie varchar(25) NOT NULL,
Nazwisko varchar(25) NOT NULL,
)

CREATE TABLE Kwalifikacje
(
Id_kw int NOT NULL primary key identity(1,1),
Kod varchar(10) NOT NULL,
Nazwa varchar(50) NOT NULL,
)

CREATE TABLE Klasy
(
Id_k int NOT NULL primary key identity(1,1),
Nazwa varchar(15) NOT NULL,
Id_n int NOT NULL unique,
)

CREATE TABLE Przedmioty
(
Id_p int NOT NULL primary key identity(1,1),
Nazwa varchar(50) NOT NULL,
Id_kw int NOT NULL,
)

CREATE TABLE Nauczanie
(
Id_nau int NOT NULL primary key identity(1,1),
Id_p int NOT NULL,
Id_n int NOT NULL,
Id_k int NOT NULL,
);


INSERT INTO Nauczyciele (Imie, Nazwisko) VALUES ('Jakub', 'Kazek'), ('Szymon', 'Jazwinski'), ('Jakub', 'Grabia'), ('Mateusz', 'Kochelski'), ('Mateusz', 'Zakrzewski');
INSERT INTO Kwalifikacje (Kod, Nazwa) VALUES ('EE-04', 'Monta¿ i obs³uga maszyn i urz¹dzeñ elektrycznych'), ('EE-05', 'Monta¿, uruchamianie i konserwacja maszyn elek'), ('EE-06', 'Uruchamianie  sieci telekom'), ('EE-08', 'Eksploatacja systemów komputerowych'), ('EE-09', 'Programowanie i administracja sieciami');
INSERT INTO Przedmioty (Nazwa, Id_kw) VALUES ('Programowanie', 5), ('Bazy danych', 5), ('Lutowanie', 1), ('Eksploatacja maszyn', 2), ('Utrzymywanie sieci telekomunikacyjnych', 3);
INSERT INTO Klasy (Nazwa, Id_n) VALUES ('4cTI', 1), ('2aTE',3), ('3TEA', 2), ('3aTI', 5), ('1cGI', 4);
INSERT INTO Uczniowie (Imie, Nazwisko, Id_k) VALUES ('Tadek', 'Niejadek', 3), ('Damian', 'Ziaja', 1), ('Mateusz', 'Tr¹bka', 2), ('Mariusz', 'Styka³a', 4), ('Marcin', 'Najman', 5);
INSERT INTO Nauczanie (Id_p, Id_n, Id_k) VALUES (2, 1, 1), (1, 2, 2), (4, 3, 3), (3, 4, 4), (5, 5, 5);


ALTER TABLE Uczniowie ADD CONSTRAINT klucz_uczniowie foreign key (Id_k) References Klasy (Id_k)
ALTER TABLE Przedmioty ADD CONSTRAINT klucz_przedmioty foreign key (Id_kw) References Kwalifikacje (Id_kw)
ALTER TABLE Nauczanie ADD CONSTRAINT klucz_naucznie foreign key (Id_n) references Nauczyciele (Id_n)
ALTER TABLE Nauczanie ADD CONSTRAINT klucz_naucznie2 foreign key (Id_k) references Klasy (Id_k)
ALTER TABLE Nauczanie ADD CONSTRAINT klucz_naucznie3 foreign key (Id_p) references Przedmioty (Id_p)
ALTER TABLE Nauczyciele ADD CONSTRAINT klucz_nauczyciele foreign key (Id_n) references Klasy (Id_n)


SELECT * FROM Nauczyciele;
SELECT * FROM Kwalifikacje;
SELECT * FROM Przedmioty;
SELECT * FROM Klasy;
SELECT * FROM Uczniowie;
SELECT * FROM Nauczanie;