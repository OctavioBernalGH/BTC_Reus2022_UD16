### <img src="/dou-logo.png" alt="Team DOU"/> Ejercicios SQL Unidad UD16<hr>

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
-- 1- Obtener apellidos de los empleados
SELECT APELLIDOS FROM empleados;
-- 2- Obtener los apellidos de los empleados sin repeticiones
SELECT DISTINCT APELLIDOS FROM empleados;
-- 3- Obtener todos los datos de los empleados que se apellidan 'Smith'
SELECT * FROM empleados WHERE APELLIDOS = "Smith";
-- 4- Obtener todos los datos de los empleados que se apellidan 'Smith' y se apellida "Rogers"
SELECT * FROM empleados WHERE APELLIDOS = "Smith" OR APELLIDOS = "Rogers";
-- 5- Obtener todos los datos de los empleados que trabajan para el departamento 14
SELECT * FROM empleados WHERE departamento = 14;
-- 6- Obtener todos los datos de los empleados que trabajan para el departamento 14 y 77
SELECT * FROM empleados WHERE departamento = 14 OR departamento = 77;
-- 7- Obtener todos los empleados cuyo apellido comience por "P"
SELECT * FROM empleados WHERE APELLIDOS LIKE'P%';
-- 8- Obtener el presupuesto total de todos los departamentos
SELECT SUM(PRESUPUESTO) FROM departamentos;
-- 9- Obtener el número de empleados en cada departamento
SELECT d.NOMBRE, COUNT(e.NOMBRE) AS NUM_EMPLEADOS FROM empleados AS e, departamentos AS d GROUP BY d.NOMBRE;
-- 10- Obtener un listado completo de empleados incluyendo datos de empleado y datos departamento
SELECT * FROM empleados AS e, departamentos;
-- 11- Obtener un listado completo de empleados incluyendo datos de empleado (nombre, apellidos) y datos departamento (presupuesto)
SELECT e.NOMBRE, e.APELLIDOS, d.PRESUPUESTO FROM empleados AS e, departamentos AS d;
-- 12- Obtener un listado completo de empleados incluyendo datos de empleado (nombre, apellidos) y datos departamento (presupuesto>60.000)
SELECT e.NOMBRE, e.APELLIDOS, d.PRESUPUESTO FROM empleados AS e, departamentos AS d WHERE d.PRESUPUESTO>60000;
-- 13- Obtener todos los departamentos cuyo presupuesto es superior al medio
SELECT * FROM departamentos WHERE PRESUPUESTO > (SELECT AVG(PRESUPUESTO)FROM departamentos);
-- 14- Obtener nombres de los departamentos con mas de dos empleados
SELECT Nombre FROM departamentos WHERE CODIGO IN (
SELECT Departamento FROM empleados GROUP BY DEPARTAMENTO HAVING COUNT(*)>2);
-- 15- Añadir departamento "Calidad" presupuesto 40000 codigo 11 y crear y vincular empleado ester vazquez dni 89267109
INSERT INTO departamentos VALUES (11, "Calidad", 40000);
INSERT INTO empleados VALUES ("89267109", "Esther", "Vàzquez", 11);
-- 16- Recortar presupuesto de departamentos en un 10%
UPDATE departamentos SET PRESUPUESTO = Presupuesto * 0.9;
-- 17- Reasignar a todos los trabajadores de departamento 77 a 14
UPDATE empleados SET DEPARTAMENTO=14 WHERE DEPARTAMENTO=77;
-- 18- Despedir a los trabajadores del departamento 14
DELETE FROM empleados WHERE DEPARTAMENTO=14;
-- 19- Despedir a los trabajadores que trabajen en un departamento que tenga mas de 60000 de presupuesto
DELETE FROM empleados WHERE DEPARTAMENTO IN (
SELECT CODIGO FROM departamentos WHERE PRESUPUESTO>=60000);
-- 20- Despedir a todo el mundo
DELETE FROM empleados;
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
/*ejercicio4.1*/
SELECT NOMBRE
FROM peliculas;

/*ejercicio4.2*/
SELECT CALIFICACIONEDAD
FROM peliculas;

/*ejercicio4.3*/
SELECT NOMBRE, CALIFICACIONEDAD
FROM peliculas
WHERE CALIFICACIONEDAD IS null;

/*ejercicio4.4*/
SELECT *
FROM salas
WHERE PELICULA IS null;

/*ejercicio4.5*/
SELECT *
FROM salas
LEFT OUTER JOIN peliculas ON peliculas.CODIGO = salas.PELICULA;

/*ejercicio4.6*/
SELECT *
FROM peliculas
LEFT OUTER JOIN salas ON salas.PELICULA = peliculas.CODIGO;

/*ejercicio4.7*/
SELECT peliculas.NOMBRE
FROM peliculas
LEFT OUTER JOIN salas ON salas.PELICULA = peliculas.CODIGO
WHERE salas.PELICULA IS null;

/*ejercicio4.8*/
INSERT INTO peliculas VALUES(10, 'Uno, Dos, Tres', '7');

/*ejercicio4.9*/
UPDATE peliculas SET CALIFICACIONEDAD = 13
WHERE CALIFICACIONEDAD IS null;

/*ejercicio4.10*/
select *
from peliculas;
DELETE FROM salas WHERE PELICULA IN 
(SELECT CODIGO 
FROM peliculas
WHERE CALIFICACIONEDAD = G);
  ```
 </details>
 <br>
