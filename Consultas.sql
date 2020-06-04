/**
 * ESTE SCRIPT CONTIENE TODAS LAS CONSULTAS DE LAS TABLAS
 */

--1) Consulte la facturacion de un cliente en especifico

SELECT	 
		-- Datos del cliente
		c.nombres 			AS NOMBRE, 
		c.apellidoPaterno 	AS PATERNO, 
		c.apellidoMaterno 	AS MATERNO,
		-- Datos de  la factura
		f.impuestos 		AS IMPUESTOS, 
		f.descuentos 		AS DESCUENTOS, 
		f.valorAPagar 		AS TOTAL
		
FROM		CLIENTES c
INNER JOIN	FACTURAS f ON c.identificacion = f.idCliente -- Relacion de la factura con el cliente
WHERE 		c.identificacion = '249757';


--2) Consulta la facturacion de un producto en  especifico
SELECT 
		-- Datos del producto
		p.nombre 		AS NOMBRE, 
		p.presentacion 	AS PRESENTACION, 
		p.valor 		AS VALOR,
		-- Datos de  la factura
		f.impuestos 	AS IMPUESTOS, 
		f.descuentos 	AS DESCUENTOS, 
		f.valorAPagar 	AS TOTAL 	 

FROM 		PRODUCTOS  p 
INNER JOIN 	INVENTARIOS i 	ON i.idProducto = p.idProducto 	-- Relacion del inventario con el producto
INNER JOIN 	FACTURAS f 		ON f.idFactura = i.idFactura	-- relacion del inventario con la factura
WHERE 		p.idProducto = 2;

--3) Consulta la facturacion de un rango de fechas
SELECT 
		-- Datos de  la factura
		f.impuestos 	AS IMPUESTOS, 
		f.descuentos 	AS DESCUENTOS, 
		f.valorAPagar 	AS TOTAL,
		-- Datos del inventario
		i.fecha			AS FECHA

FROM 		FACTURAS  f 
INNER JOIN 	INVENTARIOS i 	ON i.idFactura = f.idFactura 	-- Relacion del inventario con la factura
WHERE 		i.fecha BETWEEN '10/06/2020' AND '20/06/2020';

/**
 *  4) De la facturación, consulta los clientes únicos 
 * (es decir, se requiere el listado de los clientes que han comprado por lo menos una vez, 
 * pero en el listado no se deben repetir los clientes)
 */

SELECT 		c.identificacion, c.nombres,c.apellidoPaterno,c.apellidoMaterno 
FROM  		CLIENTES c, FACTURAS f
WHERE		f.idCliente = c.identificacion
GROUP BY 	c.identificacion;
