drop database if exists ejercicio2;
create database ejercicio2;
use ejercicio2;

create table ejercicio2(
  fecha date auto_increment primary key,
  check (fecha >'2010-12-31')
);
