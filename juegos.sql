drop database if exists juegos;
create database juegos;
use juegos;

create table desarrollador(
  nombre varchar(255) primary key 
);

create table juego(
  id int primary key,
  nombre varchar(255),
  fk_desarrolladora varchar(255),
  foreign key (fk_desarrolladora) references desarrollador(nombre) on delete cascade
);

create table personaje(
  nombre varchar(255) primary key,
  vida float,
  fk_juego int,
  foreign key (fk_juego) references juego(id) on delete set null
  
);

insert into desarrollador values ('Buggy Soft');
insert into juego values 
  (0, 'Las aventuras del capitán salami', 'Buggy Soft'),
  (1, 'Las aventuras del capitán salami', 'Buggy Soft');
insert into personaje values 
  ('Cap. Salami', 10, 0),
  ('Señor Cuchillier', 10, 0),
  ('Cap. Saián', 10, 1),
  ('Señor Cuchallier', 10,1);
  
SELECT * FROM personaje;
SELECT * FROM juego;
SELECT * FROM desarrollador;

DELETE FROM desarrollador WHERE nombre='Buggy Soft';
SELECT * FROM juego;
SELECT * FROM personaje;




