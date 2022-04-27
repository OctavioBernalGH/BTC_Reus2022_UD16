### Ejercicios SQL Unidad UD16<hr>

Este ejercicio ha sido realizado por los miembros del equipo 1. Dicho equipo esta formado por:

[- Octavio Bernal](https://github.com/OctavioBernalGH)<br>
[- David Dalmau](https://github.com/DavidDalmauDieguez)<br>
[- J.Oriol López Bosch](https://github.com/mednologic)

![ejercicio_1](https://user-images.githubusercontent.com/103035621/165497244-a7df2931-23a9-48e0-ad5f-6c8cba527c1c.PNG)


<details>
  <summary>Sentencias SQL ejercicio 1 UD16</summary>
<br>
<p align="justify">En este ejercicio se practican las sentencias select , insert con sus respectivos parámetros.. </p>
  
  ```sql
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
  ```
 </details>
 <br>



![ejercicio_2](https://user-images.githubusercontent.com/103035621/165496604-b5f94f60-8378-4a93-b793-44d1723b3a37.PNG)


<details>
  <summary>Sentencias SQL ejercicio 2 UD16</summary>
<br>
<p align="justify">En este ejercicio se practican las sentencias select , insert con sus respectivos parámetros.. </p>
  
  ```sql

  ```
 </details>
 <br>


![ejercicio_3](https://user-images.githubusercontent.com/103035621/165496141-eded7dea-3dd2-43bf-be70-1fbda53537cc.PNG)


<details>
  <summary>Sentencias SQL ejercicio 3 UD16</summary>
<br>
<p align="justify">En este ejercicio se practican las sentencias select , insert con sus respectivos parámetros.. </p>
  
  ```sql
select * from almacenes;
select * from cajas;
-- ejercicio 3.1
select * from almacenes;
-- ejercicio 3.2
select * from cajas where valor > 150;
-- ejercicio 3.3
select distinct contenido from cajas;
-- ejercicio 3.4
select AVG(valor) from cajas;
-- ejercicio 3.5
select almacen, AVG(valor) from cajas group by ALMACEN;
-- ejercicio 3.6
select almacen, AVG(valor) < 150 from cajas group by ALMACEN;
-- ejercicio 3.7
select numreferencia, lugar from cajas, almacenes  where almacenes.codigo = cajas.almacen;
-- ejercicio 3.8
select almacen, count(numreferencia) from cajas group by almacen;
-- ejercicio 3.9
select codigo from almacenes where capacidad < (select count(*) from cajas where almacen = codigo);
-- ejercicio 3.10
select numreferencia, lugar from cajas, almacenes where almacenes.lugar = 'Bilbao';
-- ejercicio 3.11
insert into almacenes (codigo, lugar, capacidad) values (6,'Barcelona', 3);
select * from almacenes where lugar = 'Barcelona';
-- ejercicio 3.12
insert into cajas(numreferencia, contenido, valor, almacen) values ('H5RT', 'Papers', 200, 2);
select * from cajas where numreferencia  = 'H5RT';
-- ejercicio 3.13
update cajas set valor = valor * 0.85;
-- ejercicio 3.14
update cajas set valor = valor * 0.80 where valor > (select AVG(valor));
-- ejercicio 3.15
delete from cajas where valor < 100;
select valor from cajas;
-- ejercicio 3.16
delete from cajas where almacen in (select codigo from almacenes where capacidad < (select count(*)  where almacen = codigo));
  ```
 </details>
 <br>


![ejercicio_4](https://user-images.githubusercontent.com/103035621/165496409-813e9cfc-a741-4042-a55f-ec9f1a26a7d1.PNG)


<details>
  <summary>Sentencias SQL ejercicio 4 UD16</summary>
<br>
<p align="justify">En este ejercicio se practican las sentencias select , insert con sus respectivos parámetros.. </p>
  
  ```sql

  ```
 </details>
 <br>
