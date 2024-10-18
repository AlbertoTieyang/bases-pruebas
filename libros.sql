drop database if exists libros;
create database libros;
use libros;

create table autor(
  id int auto_increment primary key,
  nombre varchar(100),
  dni varchar(20) unique key  
);

create table tienda (
  cif varchar(100) primary key,
  ubicacion varchar(100),
  web varchar(100)
);

create table libro (
  isbn varchar(100) primary key,
  titulo varchar(100),
  genero varchar(100) default 'Fantasía',
  precio double,
  fecha_publicacion date,
  id_autor int,
  cif_tienda varchar(100),
  foreign key (id_autor) references autor(id),
  foreign key (cif_tienda) references tienda(cif),
  check (precio < 50),
  check (fecha_publicacion > '2014-12-31')	 
);


