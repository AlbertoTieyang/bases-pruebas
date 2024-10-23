drop database if exists ejercicio4;
create database ejercicio4;
use ejercicio4;

create table pagos(
    id int primary key,
    fk_reserva_id int,
    fecha_pago date,
    monto int,
    metodo_pago varchar(255),
    estado varchar(255)
);

create table reservas(
    id int primary key,
    fk_cliente_id int,
    fecha_reserva date,
    estado varchar(255),
    foreign key (id) references pagos(fk_reserva_id)
);

create table clientes(
    id int primary key,
    nombre varchar(255),
    correo_electronio varchar(255),
    telefono varchar(255) unique key,
    dirreccion varchar(255),
    foreign key (id) references reservas(id)
);