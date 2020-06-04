/**
 * ESTE SCRIPT SE ENCARGA DE LLENAR TODAS LAS TABLAS DE LA BASE DE DATOS
 */

-- INSERCION EN TABLA PAISES
INSERT INTO PAISES(nombre)VALUES('Mexico');
INSERT INTO PAISES(nombre)VALUES('Chile');
INSERT INTO PAISES(nombre)VALUES('Ecuador');
INSERT INTO PAISES(nombre)VALUES('Brasil');


-- INSERCION EN TABLA CLIENTES
INSERT INTO CLIENTES(identificacion,nombres,apellidoPaterno,apellidoMaterno,pais) VALUES
('249757',	'Andrey',	'Hernandez',	'Alonso',	1),
('249758',	'Oscar',	'Martinez',		'Alonso',	3),
('246757',	'Luis',		'Ramirez',		'Montilha',	4),
('249777',	'Felipe',	'Rosas',		'Perez',	1),
('249227',	'Ivanildo',	'Garcia',		'Alonso',	2),
('149751',	'Diego',	'Medina',		'Guzman',	1);

-- INSERCION EN TABLA PRODUCTOS
INSERT INTO PRODUCTOS(idProducto,nombre,presentacion,valor) VALUES
(2,'zapato deportivo',	'hombre',	200.00),
(3,'tennis',			'mujer',	250.00),
(4,'zapato niño',		'niño',		770.00),
(5,'tenis soccer',		'niña',		307.00),
(6,'tennis soccer',		'niño',		500.00),
(7,'zapato gala',		'hombre',	333.00);


-- INSERCION EN TABLA FACTURAS
INSERT INTO FACTURAS(idFactura,idCliente,impuestos,descuentos) VALUES(1,'249757',10,12);
INSERT INTO FACTURAS(idFactura,idCliente,impuestos,descuentos) VALUES(2,'149751',200,0);
INSERT INTO FACTURAS(idFactura,idCliente,impuestos,descuentos) VALUES(3,'149751',0,100);

-- INSERCION EN TABLA INVENTARIOS
INSERT INTO INVENTARIOS(idProducto,idFactura,tipoMov,fecha,cantidad) VALUES(2,1,'salida','03/06/2020',2);
INSERT INTO INVENTARIOS(idProducto,idFactura,tipoMov,fecha,cantidad) VALUES(3,1,'salida','03/06/2020',1);
INSERT INTO INVENTARIOS(idProducto,idFactura,tipoMov,fecha,cantidad) VALUES(6,2,'salida','10/06/2020',2);
INSERT INTO INVENTARIOS(idProducto,idFactura,tipoMov,fecha,cantidad) VALUES(2,3,'salida','20/06/2020',3);

