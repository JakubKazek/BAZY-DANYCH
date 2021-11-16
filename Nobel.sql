Create database Nobel1313211;
go 
use  Nobel1313211;

create table kontynenty
(
id_kon int identity(1,1) primary key,
Nazwa varchar(20) not null,
Powierzchnia float,
)

create table kraje
(
id_kr int identity(1,1) primary key,
Nazwa varchar(25) not null,
Stolica varchar(20) not null,
Powierzchnia float,
id_kon int references kontynenty(id_kon),
)



create table naukowiec
(
id_n int identity(1,1) primary key,
Imie varchar(25) not null,
Nazwisko varchar(25) not null,
id_kr int references kraje(id_kr) not null,
)



create table dziedzina
(
id_d int identity(1,1) primary key,
Nazwa varchar(50) not null,
)



create table praca_naukowa
(
id_pr int identity(1,1) primary key,
Tytul varchar(200)  not null,
id_d int references dziedzina(id_d) not null,
Data_pub date not null,
)



create table nagrody
(
id_nag int identity(1,1) primary key,
id_pr int references praca_naukowa(id_pr) unique not null,
Rok int not null,
)



create table prace_naukowcow
(
id_prn int identity(1,1) primary key,
id_pr int references praca_naukowa(id_pr) not null,
id_n int references naukowiec(id_n)  not null,
)




insert into kontynenty (Nazwa, Powierzchnia) values ('Afryka', 30000000), ('Azja', 44000000), ('Ameryka Pó³nocna', 24000000), ('Ameryka Po³udniowa', 17000000), ('Europa', 10000000);
insert into kraje (Nazwa, Stolica, Powierzchnia, Id_kon) values ('Polska', 'Warszawa', 313000, 5), ('USA', 'Waszyngton', 98335200, 2), ('Francja', 'Pary¿', 4500000, 5), ('Niemcy', 'Berlin', 4500000, 5), ('Szwecja', 'Malmoe', 250000, 5), ('Belgia', 'Bruksela', 250000, 5), ('Chiny', 'Pekin', 9562911, 2);
insert into naukowiec (Imie, Nazwisko, Id_kr)  values ('Henryk', 'Sienkiewicz', 1), ('Maria', 'Sk³odowska-Curie', 1), ('Wis³awa', 'Szymborska', 1), ('Romain', 'Rolland', 3), ('Anatole', 'France', 3), ('Henri', 'Bergson', 3), ('Lee','Tsung-Dao',7),('Yang','Chen Ning',7),('Charles','Kuen Kao',7), ('Carl', 'David Anderson', 2);  
insert into dziedzina (Nazwa) values ('Chemia'), ('Fizyka'), ('Literatura'), ('Pokojowa nagroda Nobla'), ('Medycyna');
insert into praca_naukowa (Tytul, Id_d, Data_pub) values ('Odkrycie RADu i POLONu', 1, '19031022'), ('Za geniusz Epiki, ca³okszta³t', 3, '19030512'), ('Za genialna Poezje', 3, '19050101'), ('Wielki idealizm utworów literackich',3,'19151005'),('B³yskotliwe osi¹gniêcia literackie wyró¿niaj¹ce siê wykwintnoœci¹ stylu',3,'19210505'),('Znak uznania dla jego jaskrawych i podtrzymuj¹cych wiarê w ¿ycie idei',3,'19271202'), ('Za wnikliwe zbadanie tak zwanego prawa zachowania parzystoœci, co doprowadzi³o do wa¿nych odkryæ zwi¹zanych z cz¹stkami elementarnymi',2,'19570101'),('Za odkrycie sposobu transmisji œwiat³a poprzez w³ókna optyczne',2,'20090101'), ('Za odkrycie Pozyton', 2, '19361020');
insert into nagrody (Id_pr, Rok) values (1, 1903), (2, 1905), (3, 1996),(4,1915),(5,1921),(6,1927), (7,1957),(8,2009),(9,1936);
insert into prace_naukowcow (id_pr, id_n) values (1, 2), (2,1), (3,3), (4,4),(5,5),(6,6), (7,7),(7,8),(8,9), (9,10);

SELECT * FROM kontynenty;
SELECT * FROM kraje;
SELECT * FROM naukowiec;
SELECT * FROM dziedzina;
SELECT * FROM praca_naukowa;
SELECT * FROM nagrody;
SELECT * FROM prace_naukowcow;

