/*ejercicio 1.1 */
SELECT NOMBRE
FROM articulos;

/*ejercicio 1.2 */
SELECT NOMBRE, PRECIO
FROM articulos;

/*ejercicio1.3*/
SELECT NOMBRE
FROM articulos
WHERE PRECIO <= 200;

/*ejercicio1.4*/
SELECT *
FROM articulos
WHERE PRECIO >= 60 AND PRECIO <= 120;

/*ejercicio1.5*/
SELECT NOMBRE, PRECIO*166.386
FROM articulos;

/*ejercicio1.6*/
SELECT AVG(PRECIO)
FROM articulos;

/*ejercicio1.7*/
SELECT AVG(PRECIO)
FROM articulos
WHERE FABRICANTE = 2;

/*ejercicio1.8*/
SELECT COUNT(CODIGO)
FROM articulos
WHERE PRECIO >= 180;

/*ejercicio1.9*/
SELECT NOMBRE, PRECIO
FROM articulos
WHERE PRECIO >= 180
order by NOMBRE;

/*ejercicio1.10*/
SELECT *
FROM articulos
LEFT OUTER JOIN fabricantes ON articulos.FABRICANTE = fabricantes.CODIGO;

/*ejercicio1.11*/
SELECT articulos.NOMBRE, articulos.PRECIO, fabricantes.NOMBRE
FROM articulos
LEFT OUTER JOIN fabricantes ON articulos.FABRICANTE = fabricantes.CODIGO;

/*ejercicio1.12*/
SELECT fabricantes.CODIGO, AVG(articulos.PRECIO)
FROM fabricantes
LEFT OUTER JOIN articulos ON fabricantes.CODIGO = articulos.FABRICANTE
GROUP BY fabricantes.CODIGO;

/*ejercicio1.13*/
SELECT articulos.NOMBRE, fabricantes.NOMBRE, AVG(articulos.PRECIO)
FROM articulos
LEFT OUTER JOIN fabricantes ON articulos.FABRICANTE = fabricantes.CODIGO
GROUP BY articulos.NOMBRE, fabricantes.NOMBRE;

/*ejercicio1.14*/
SELECT fabricantes.NOMBRE, AVG(articulos.PRECIO)
FROM fabricantes
LEFT OUTER JOIN articulos ON fabricantes.CODIGO = articulos.FABRICANTE 
WHERE articulos.PRECIO >= 150
GROUP BY fabricantes.NOMBRE;

/*ejercicio1.15*/
SELECT NOMBRE, PRECIO
FROM articulos
WHERE PRECIO = ANY(
SELECT MIN(PRECIO)
FROM articulos);

/*ejercicio1.16*/
SELECT articulos.NOMBRE, articulos.PRECIO, fabricantes.NOMBRE
FROM articulos
LEFT OUTER JOIN fabricantes ON articulos.FABRICANTE = fabricantes.CODIGO
WHERE articulos.PRECIO = (
 SELECT MAX(articulos.PRECIO)
 FROM articulos
 WHERE articulos.FABRICANTE = fabricantes.CODIGO);

/*ejercicio1.17*/
INSERT INTO articulos VALUES(11, 'Altavoces', 70, 2);

/*ejercicio1.18*/
UPDATE articulos SET NOMBRE = 'Impresora Laser' 
WHERE Codigo = 8;

/*ejercicio1.19*/
UPDATE articulos SET PRECIO = PRECIO* 0.9;

/*ejercicio1.20*/
UPDATE articulos SET PRECIO = PRECIO - 10 WHERE PRECIO >= 120;