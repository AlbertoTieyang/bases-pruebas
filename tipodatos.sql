drop database if exists tipodatos;
create database tipodatos;
use tipodatos;

create table TiposDatos (
	flotante float(5,2),
	decimales decimal(7,3),
	codigo char(4),
	texto text,
	dia date,
	momento datetime,
	hora time,
	enumeración enum('rojo', 'verde', 'azul')
);
insert into TiposDatos values (23.1, 77.12, 'ABCD', 'Texto largooooooo','2024-09-04', '2024-09-04 12:00:00', '12:01:00', 'rojo');
