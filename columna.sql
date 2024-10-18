drop database if exists columna;
create database columna;
use columna; 

create table tabla (
	uno int not null,
	dos varchar(5) default 'ABC'

);
insert into tabla values (1, 'hola');
insert into tabla(uno,dos) values (1, 'bye');
insert into tabla(dos,uno) values ('otra', 3);

insert into tabla(uno) values (2);
-- insert into tabla(dos) values ('prueb);
insert into tabla values (5, null);

SELECT * FROM tabla;
