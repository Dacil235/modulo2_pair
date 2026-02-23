-- Ejercicio 1
CREATE SCHEMA tienda_zapatillas;
USE tienda_zapatillas;

CREATE TABLE Zapatillas(
	id_zapatilla INT AUTO_INCREMENT NOT NULL,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_zapatilla)
);

CREATE TABLE Clientes(
	id_cliente INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    numero_telefono INT NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45),
    provincia VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    codigo_postal VARCHAR(45) NOT NULL,
	PRIMARY KEY (Id_cliente)
);

CREATE TABLE Empleados(
	id_empleado INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    tienda VARCHAR(45) NOT NULL,
    salario INT,
    fecha_incorporacion DATE NOT NULL,
	PRIMARY KEY ( id_empleado)
);

CREATE TABLE Facturas(
	id_factura INT AUTO_INCREMENT NOT NULL,
    numero_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
    id_zapatilla INT NOT NULL,
    id_empleado INT NOT NULL,
    id_cliente INT NOT NULL,
    PRIMARY KEY (id_factura),
    CONSTRAINT fk_id_zapatilla_factura
		FOREIGN KEY (id_zapatilla)
        REFERENCES Zapatillas(id_zapatilla),
	CONSTRAINT fk_id_empleado_factura
		FOREIGN KEY (id_empleado)
		REFERENCES Empleados(id_empleado),
	CONSTRAINT fk_id_cliente_factura
		FOREIGN KEY (id_cliente)
        REFERENCES Clientes(id_cliente)
);
-- Ejercicio 2
CREATE TABLE clientes2MAL (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    email VARCHAR(50) UNIQUE,
    fecha_registro DATE DEFAULT NOW(),
    edad INT CHECK edad > 18,
    saldo DECIMAL(10,2) DEFAULT 0,
    PRIMARY KEY (id_cliente)
);
CREATE TABLE clientes2CORREGIDA (
    id_cliente INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    fecha_registro DATE DEFAULT (CURDATE()), -- Estudiar que esto es nuevo!!
    edad INT CHECK (edad > 18),
    saldo DECIMAL(10,2) DEFAULT 0,
    PRIMARY KEY (id_cliente)
);

