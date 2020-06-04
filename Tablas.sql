/**
 * Ejercicio SQL Zapateria "El zapato roto"
 * Autor:		Héctor Andrey Hernández Alonso
 * Fecha:		04/06/2020
 * MANEJADOR:	PostgreSQL
 */

-- Comando para crear base de datos
CREATE DATABASE EJERCICIO_SQL;


-- 1) Tabla Paises

CREATE TABLE PAISES(
	idPais	SERIAL NOT NULL PRIMARY KEY,
	NOMBRE	VARCHAR(50) NOT NULL,
    UNIQUE(NOMBRE) --Evita que se duplique el nombre
);

--2) Tabla Clientes

CREATE TABLE CLIENTES(
	identificacion 	VARCHAR(10) NOT NULL PRIMARY KEY,
	nombres			VARCHAR(30) NOT NULL,
	apellidoPaterno	VARCHAR(30) NOT NULL,
	apellidoMaterno	VARCHAR(30) NOT NULL,
	pais			INT			NOT NULL,
	FOREIGN KEY(pais) REFERENCES PAISES(idPais)
);


--3) Tabla Productos

CREATE TABLE PRODUCTOS(
	idProducto		INT NOT NULL PRIMARY KEY,
	nombre			VARCHAR(20) NOT NULL,
	presentacion	VARCHAR(50) NOT NULL,
	valor			FLOAT NOT NULL
);

--4) Tabla Facturas
CREATE TABLE FACTURAS(
	idFactura	INT NOT NULL PRIMARY KEY,
	idCliente	VARCHAR(10) NOT NULL,
	FOREIGN KEY(idCliente) REFERENCES CLIENTES(identificacion),
	impuestos	FLOAT NOT NULL,
	descuentos	FLOAT NOT NULL,
	valorAPagar	FLOAT NOT NULL DEFAULT 0
);


--5) Tabla Inventario
CREATE TABLE INVENTARIOS(
	idProducto 	INT NOT NULL,
	FOREIGN KEY(idProducto) REFERENCES PRODUCTOS(idProducto),
	idFactura	INT NOT NULL,
	FOREIGN KEY(idFactura) REFERENCES FACTURAS(idFactura),
	tipoMov		VARCHAR(10) NOT NULL,
	fecha		DATE NOT NULL,
	cantidad	INT NOT NULL,
	CHECK(tipoMov = 'entrada' OR tipoMov = 'salida') -- Solo permite estos dos campos
);

