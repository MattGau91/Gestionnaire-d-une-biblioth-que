create database if not exists Retour_sur_universite;

create table Modules(
code varchar(10) primary key,
intitulé varchar(20),
niveau char(2),
suit varchar(10),
salle numeric(5),
resp varchar(3),
foreign key (suit) references Modules (code),
foreign key (salle) references Salles(numero),
foreign key (resp) references Enseignants(matricule));

create table Salles(
numero numeric(5) primary key,
nbPlaces numeric(3));

create table Enseignants(
matricule varchar(3) primary key,
nom varchar(15));

create table Inscriptions(
etud numeric(4),
module varchar(5),
anneU numeric(4),
foreign key (etud) references Etudiants(matricule),
foreign key(module) references Modules(code),
foreign key (anneU) references Année(annee));

create table Année(
annee numeric(4) primary key);

create table Etudiants(
matricule numeric(4) primary key);


insert into salles values(35, 409);
update salles set NbPlaces = 450 where numero=35;

