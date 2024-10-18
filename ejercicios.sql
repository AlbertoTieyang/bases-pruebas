drop database if exists ejercicios;
create database ejercicios;
use ejercicios;

create table ej01 (
	a int,
	b date,
	c varchar(5)
);

insert into ej01 values (1, '2024-10-08', 'hola');
insert into ej01(b,c,a) values ('2024-10-08', 'pino', 2);
insert into ej01(c,b) values ('mesa', '2024-10-08');
insert into ej01(b) values ('2024-10-08');

SELECT * FROM ej01;

create table ej02 (
	a int not null,
	b int not null default 0,
	c varchar(5),
	d varchar(5) default'hola'
);

insert into ej02(a,b,d) values (1, 1, 'uno');
insert into ej02(a,b,c) values (2, 2, 'dos');
insert into ej02(c,a,d) values ('tres', 3, null);
insert into ej02(a) values (4);
insert into ej02(a,d) values(5, null);

SELECT * FROM ej02; 

create table ej03 (
	a int auto_increment primary key,
	b varchar(5) unique key,
	c varchar(5) default 'hola'
);

insert into ej03(b,c) values 
  ('prueb', 'loco'),
  ('music', 'mono');
insert into ej03 values (5, 'bueno', 'menos');
insert into ej03(b,c) values ('toro', 'gula');

SELECT * FROM ej03;
