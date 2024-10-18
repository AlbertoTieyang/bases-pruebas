drop database if exists tienda;
create database tienda;
use tienda;

create table fabricante (
  codigo int primary key,
  nombre varchar(100)
);

create table producto (
  codigo int primary key,
  nombre varchar(100),
  precio double,
  codigo_fabricante int,
  foreign key (codigo_fabricante) references fabricante(codigo)
);

insert into fabricante values(50, 'Intel');
insert into fabricante values(51, 'Asus');

insert into producto values
(1, 'Procesador i3', 70.12, 50),
(2, 'Procesador i5', 90.55, 50),
(3, 'Procesador i7', 120.90, 50);
