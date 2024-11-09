DROP DATABASE IF EXISTS conciertos;
CREATE DATABASE conciertos;
USE conciertos;

-- Tabla Clientes
CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

-- Tabla Conciertos
CREATE TABLE Conciertos (
    id INT PRIMARY KEY,
    nombre_concierto VARCHAR(150) NOT NULL,
    fecha DATE NOT NULL,
    lugar VARCHAR(150) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

-- Tabla Tickets con clave primaria compuesta
CREATE TABLE Tickets (
    cliente_id INT NOT NULL,
    concierto_id INT NOT NULL,
    fecha DATE,
    cantidad INT NOT NULL,
    precio_total DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (cliente_id, concierto_id)
);

-- Ejercicio1:
alter table Clientes modify apellidos varchar(255);

-- Ejercicio2: 
alter table Clientes add telefono varchar(15), add fecha_registro DATE;

-- Ejercicio3: 
alter table Clientes modify email varchar(100) not null unique;
alter table Clientes add index index_email (email);

-- Ejercicio4:
alter table Conciertos modify id int AUTO_INCREMENT;

-- Ejercicio5: 
alter table Tickets change fecha fecha_compra date;

-- Ejercicio6:
alter table Tickets add constraint fk_cliente foreign key (cliente_id) references Clientes(id) on delete set null;

-- Ejercicio7: 
alter table Tickets add constraint fk_concierto foreign key (concierto_id) references Conciertos(id) on delete cascade;

-- Ejercicio8: 
alter table Tickets rename Entradas;

-- Ejericio9: 
alter table Conciertos add constraint chk_fecha check (fecha < '2025-12-31');

-- Ejercicio10:
alter table Entradas add constraint chk_cantidad check (1<cantidad<5);