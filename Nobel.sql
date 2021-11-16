Create database Nobel
go 
use  Nobel
go
create table kontynenty
(
id_kon int identity(1,1) primary key,
Nazwa varchar(15) not null,
Powierzchnia float,
)
go
create table kraje
(
id_kr int identity(1,1) primary key,
Nazwa varchar(25) not null,
Stolica varchar(20) not null,
Powierzchnia float,
id_kon int references kontynenty(id_kon),
)

go

create table naukowiec
(
id_n int identity(1,1) primary key,
Imie varchar(25) not null,
Nazwisko varchar(25) not null,
id_kr int references kraje(id_kr) not null,
)

go

create table dziedzina
(
id_d int identity(1,1) primary key,
Nazwa varchar(15) not null,
)

go

create table praca_naukowa
(
id_pr int identity(1,1) primary key,
Tytul varchar(25)  not null,
id_d int references dziedzina(id_d) not null,
Data_pub date not null,
)

go

create table nagrody
(
id_nag int identity(1,1) primary key,
id_pr int references praca_naukowa(id_pr) unique not null,
Rok int not null,
)

go

create table prace_naukowcow
(
id_prn int identity(1,1) primary key,
id_pr int references praca_naukowa(id_pr) not null,
id_n int references naukowiec(id_n)  not null,
)

go


insert into kontynenty (Nazwa, Powierzchnia) values ('Afryka', 30000000), ('Azja', 44000000), ('Ameryka Pó³nocna', 24000000), ('Ameryka Po³udniowa', 17000000), ('Europa', 10000000);
insert into kraje (Nazwa, Stolica, Powierzchnia, Id_kon) values ('Polska', 'Warsaw', 313000, 5), ('Hiszpania', 'Madryt', 350000, 5), ('Nigeria', 'Abudza', 1000000, 1), ('Niemcy', 'Berlin', 4500000, 5), ('Szwecja', 'Malmoe', 250000, 5);
insert into Naukowiec (Imie, Nazwisko, Id_kr)  values ('Szymi', 'Szhituzzo', 1), ('Piotr', 'Hurkacz', 1), ('Julia', 'Pazeis', 1), ('Adam', 'Grala', 1), ('Witold', 'Bartczak', 1);  
insert into Dziedzina (Nazwa) values ('Chemia'), ('Fizyka'), ('Matematyka'), ('Informatyka'), ('Biologia');
insert into Praca_Naukowa (Tytul, Id_d, Data_pub) values ('Algebruh', 3, '2000-06-09'), ('Teoria Ewolucji', 5, '2002-09-10'), ('Prawa Newtona', 2, '2006-09-20'), ('Prawa Natury', 5, '2012-12-20'), ('Pyton czy Pajton', 4, '2012-03-20');
insert into Nagrody (Id_pr, Rok) values (1, '2012-12-22'), (2, '2007-04-19'), (3, '2007-10-20'), (4, '2009-09-20'), (5, '2021-3-20');
insert into prace_naukowcow (id_pr, id_n) values (1, 1), (2,2), (3,3), (4,4), (5,5);