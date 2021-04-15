CREATE TABLE Cliente(
    id_cliente bigint PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    apellido varchar(100) NOT NULL,
    correo varchar(100) NOT NULL,
    telefono varchar(100) NOT NULL,
    direccion varchar(100) NOT NULL
);

CREATE TABLE Estado(
    id_estado int PRIMARY KEY,
    descripcion varchar(100)
);

CREATE TABLE Pedido(
    id_pedido bigint PRIMARY KEY,
    id_cliente bigint NOT NULL,
    id_estado int NOT NULL,
    fecha_creacion timestamp DEFAULT NOW(),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_estado) REFERENCES Estado(id_estado) 
);