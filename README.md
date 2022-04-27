# BTC_Reus2022_UD16


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
