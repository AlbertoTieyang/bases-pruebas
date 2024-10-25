drop database if exists ejercicio4;
create database ejercicio4;
use ejercicio4;

create table clientes(
    id int primary key,
    nombre varchar(255),
    correo_electronio varchar(255) unique key,
    telefono varchar(255) unique key,
    dirreccion varchar(255)
);


create table reservas(
    id int primary key,
    fk_cliente_id int,
    fk_paquetes_id int,
    fecha_reserva datetime check(fecha_reserva<'2030-01-01 00:00:00'),
    estado varchar(255),
    foreign key (fk_cliente_id) references clientes(id)
);

create table pagos(
    id int primary key,
    fk_reserva_id int,
    fecha_pago datetime,
    monto int,
    metodo_pago varchar(255),
    estado varchar(255),
    foreign key (fk_reserva_id) references reservas(id)
);

create table destinos(
    id int primary key,
    nombre varchar(255),
    pais varchar(255),
    descripcion varchar(255)
);

create table paquetes(
    id int primary key,
    nombre varchar(255),
    precio int,
    duracion_dias int check (1<duracion_dias<30),
    fk_destino_id int,
    foreign key (fk_destino_id) references destinos(id)
);