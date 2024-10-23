drop database if exists ejercicio3;
create database ejercicio3;
use ejercicio3;

create table ejercicio3(
  clave1 int,
  clave2 int,
  indice varchar(255),
  primary key(clave1, clave2),
  index idx_ejercicio3_indice(indice)
);

insert into ejercicio3 values (1, 1, 'indice');