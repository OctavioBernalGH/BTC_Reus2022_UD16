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