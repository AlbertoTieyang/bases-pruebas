drop database if exists ejercicio2;
create database ejercicio2;
use ejercicio2;

create table Ejercicio2(
  clave_primaria int primary key auto_increment,
  fecha date check (fecha > '2010-12-31')
);

insert into ejercicio2(fecha) values ('2024-12-02');
insert into ejercicio2 values (3, '2024-10-22');