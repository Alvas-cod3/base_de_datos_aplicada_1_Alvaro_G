
SELECT * FROM FACTURAS;
SELECT * FROM DETALLE_FACTURA;
SELECT * FROM VENDEDORES;
SELECT * FROM ZONAS;
SELECT * FROM COMUNAS;
SELECT * FROM CLIENTES;

--Pregunta 5.1: Desarrolle una consulta que muestre el nombre de 
--la comuna y el total de productos vendidos por comuna 
--(sumando las unidades de cantidad). Ordenado por total de productos, de mayor a menor.

SELECT co.NOM_COMUNA, SUM(CANTIDAD) AS CANTIDAD_PRODUCTOS_VENDIDOS 
FROM DETALLE_FACTURA d 
JOIN FACTURAS f 
ON d.FACTURA_ID=f.ID 
JOIN CLIENTES c 
ON f.CLIENTE_ID=c.ID JOIN COMUNAS co 
ON c.COMUNA_ID=co.ID 
GROUP BY co.NOM_COMUNA 
ORDER BY CANTIDAD_PRODUCTOS_VENDIDOS DESC;

--Pregunta 5.2: Desarrolle una consulta que muestre los datos del vendedor 
--y el monto total vendido por cada vendedor (calculado como la suma de cantidad * precio). 
--Ordenado por monto total vendido, de mayor a menor.
SELECT ve.RUT_VENDEDOR,ve.NOMBRES,
ve.PATERNO,ve.FEC_NAC,ve.FEC_CONTRATO,SUM(de.CANTIDAD*ar.PRECIO) 
AS MONTO_TOTAL_VENDIDO FROM DETALLE_FACTURA de 
JOIN ARTICULOS ar ON de.ARTICULO_ID=ar.ID 
JOIN FACTURAS fa ON de.FACTURA_ID=fa.ID 
JOIN VENDEDORES ve ON fa.VENDEDOR_ID=ve.ID 
GROUP BY ve.RUT_VENDEDOR,ve.NOMBRES,
ve.PATERNO,ve.FEC_NAC,ve.FEC_CONTRATO 
ORDER BY MONTO_TOTAL_VENDIDO DESC;