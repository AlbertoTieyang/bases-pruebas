drop database if exists futbol;
create database futbol;
use futbol;

create table equipo (
  id int primary key,
  nombre varchar(255),
  ciudad varchar(255)
);

create table jugador(
  dni varchar(15) primary key,
  nombre varchar(100),
  nacionalidad varchar(100),
  dorsal int,
  altura float,
  id_equipo int,
  foreign key (id_equipo) references equipo(id)
);
insert into equipo values (1, 'real madrid', 'madrid');
insert into equipo values (2, 'futbol club barcelona', 'barcelona');

insert into jugador values ('11', 'Messi', 'Argentino', 10, 1.69, 2);
insert into jugador values ('12', 'Iniesta', 'Español', 8, 1.71, 2);
insert into jugador values ('13', 'Sergio Ramos', 'Español', 4, 1.84, 1);
insert into jugador values ('14', 'Cristiano Ronaldo','Portugués', 7, 1.87, 1);
