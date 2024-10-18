drop database if exists checks;
create database checks;
use checks;
-- El check que se hace en la misma línea solo sirve para esa línea, en cambio si se hace al final, se puede hacer referencia a otros atributos. Es decir, no podemos hacer que en la columna a sea condición por la columna b si estamos en la línea a.
create table checks(
  a int check (a >= 3),
  b int,
  c int,
  check (b < 10),
  check (a > c),
  check (a<>b),
 -- Sirve para dar nombre a las restricciones.
  Constraint chk_nombre check (b>a and b>c)
);

insert into checks values (1,1,1);
SELECT * FROM checks;
