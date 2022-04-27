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