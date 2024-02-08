insert into jugadores(nombre, salario, fechaNac) values ('Pepe',50000, "2000/05/16");
 select * from jugadores;
insert into jugadores values(5, "Cristina", "2006/09/06", "defensa", 99999, "zurdo", 175, 68.5, "FRancia");
delete from jugadores; **vacia la tabla"**
drop jugadores; **la elimina**
delete from jugadores where nombre="pepe"; **borrara todos los datos de las filas relacionadas con pepe, por eso es mejor siempre con ID**
update jugadores set dominancia="diestro"; **cambia ese campo de toda la tabl**
update jugadores set dominancia="diestro" where idjugador="1"; **aqui se pouede usar y, or,....**
update jugadores set posición="delantero" where posición is null; **    asi se pone con null**
insert into equipos values (100, "los osos"),(200, "las aguilas"),(300, "los gatos") **inserto varios equipos a la vez**
select nombre, salario, posición from jugadores; **seleccion de datos de todos los jugadores, los campos que quiero**
select nombre, salario, posición from jugadores where nacionalidad="españa"; **lo mismo con condiciones, filtrado horizontal**
select * from jugadores order by salario; **filtramos la vista con un filtro, y sale predeterminado ascendetde**
select * from jugadores order by salario desc; **el desc s de descendente**
select * from jugadores order by salario desc, nombre; **pongo un segundo filtro**
select count(*) from jugadores where dominancia="diestro"; **ver cuantos elementos cumplenla condicion**
select count(*) as numDi from jugadores where dominancia="diestro"; **se le puede poner un alias**
 select dominancia, count(*) as numJug from jugadores group by dominancia; **el group by sirve para ver agrupaciones por campos de golpe**
select dominancia, count(*) as numJug from jugadores group by dominancia having numJug>1; **el having me sirve para hacer filtro adicionales**

