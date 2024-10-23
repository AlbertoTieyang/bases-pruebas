drop database if exists ejercicio1;
create database ejercicio1;
use ejercicio1;

create table ejercicio1(
  palabra char(4),
  frase varchar(255),
  entero int, 
  entero_coma float,
  decimales decimal(5,2),
  fecha date,
  fechaExacta datetime,
  hora time
);
insert into ejercicio1 values ('hopa', 'Buenos dias', 12, 12.005, 123.45, '2024-10-21', '2024-10-21 12:00:00', '12:00:00');
