--EX1 
select d.nombre, count(*) "Numero profesores"
from departamentos d join profesores p on (d.codigo=p.departamento)
group by d.nombre;

--EX1 SECOND WAY, JUST TO UNDERSTAND THE JOIN
select d.nombre, count(*) "Numero profesores"
from departamentos d, profesores p
where d.codigo = p.departamento
group by d.nombre;

--EX2
select d.nombre, sum(a.creditos) "CREDITOS"
from departamentos d join asignaturas a on(d.codigo=a.departamento)
group by d.nombre order by "CREDITOS" desc;

--EX3
select a.curso, count(distinct al.dni) "alumnos"
from asignaturas a join matricular m on(a.codigo = m.asignatura) 
join alumnos al on (m.alumno=al.dni) 
where a.curso is not null group by a.curso;

--EX4
select p.despacho, sum(i.carga_creditos)
from profesores p join impartir i on(p.id = i.profesor)
where p.despacho is not null group by p.despacho;

--EX5
select m.asignatura, 
round((sum(decode(al.genero,'FEM',1,'MASC',0))/count(al.dni))*100 , 2) "%"
from matricular m join alumnos al on(m.alumno=al.dni) 
group by m.asignatura order by m.asignatura;

--EX6
select p.nombre, sum(m.hombres+m.mujeres) suma
from provincia p join municipio m on(p.codigo=m.cpro)
group by p.nombre order by p.nombre;

--curiosity
select m.nombre from municipio m where m.cpro = 29;

-- Grouping Part 2: SELECT … FROM … WHERE … IN …
--EX7
select d.nombre departamento, p.nombre || ' ' || p.apellido1 "Oldest"
from departamentos d join profesores p on(d.codigo=p.departamento)
where(p.departamento, p.fecha_nacimiento) in
(select departamento, min(fecha_nacimiento) from profesores 
where departamento = p.departamento group by departamento);

--EX8
select al.dni alumno, a.nombre asignatura
from alumnos al join matricular m on(al.dni=m.alumno)
join asignaturas a on(m.asignatura=a.codigo)
where(alumno, creditos) in 
(select m.alumno, max(a.creditos) from matricular m join asignaturas a on(a.codigo=m.asignatura) group by alumno);

--EX9
select d.nombre, p.nombre, p.apellido1, p.apellido2
from profesores p join departamentos d on(p.departamento=d.codigo)
where(p.departamento, p.antiguedad) in
(select p.departamento, min(p.antiguedad) from profesores p group by p.departamento);

--EX10
select d.nombre, a.nombre, a.creditos
from departamentos d join asignaturas a on(d.codigo=a.departamento)
where(d.codigo, a.creditos) in
(select a.departamento, min(a.creditos) from asignaturas a group by a.departamento);

--EX11
/*
select a.nombre ASIGNATURA, al.nombre || ' ' || al.apellido1
|| ' ' || al.apellido2 ALUMNO, al.fecha_nacimiento
from asignaturas a join matricular m on(m.asignatura=a.codigo) join
alumnos al on(m.alumno=al.dni)
where m.curso='20/21' and (m.asignatura, al.fecha_nacimiento) in
(select m.asignatura, al.fecha_nacimiento from matricular m
join alumnos al on (m.alumno=al.dni)
group by m.asignatura);
*/

-- Grouping Part 3: SELECT … FROM … WHERE … GROUP BY … HAVING …
--EX12
select p.nombre ||' '|| p.apellido1 "Professor", sum(carga_creditos)
from profesores p join impartir i on(p.id=i.profesor)
group by id,nombre,apellido1
having sum(carga_creditos)=(select max(sum(carga_creditos)) from impartir group by profesor);

--EX13
select d.nombre departamento from departamentos d join asignaturas a
on (d.codigo=a.departamento) group by d.nombre having count(*)=
(select max(count(*)) from asignaturas group by departamento);

--EX14
select p.id, sum(i.carga_creditos) 
from profesores p join impartir i on(p.id=i.profesor)
group by p.id having sum(carga_creditos)<10
order by sum(i.carga_creditos) desc;

--EX15
select p.nombre, p.apellido1, p.apellido2
from profesores p join impartir i on(p.id=i.profesor)
group by p.nombre, p.apellido1, p.apellido2
having sum(i.carga_creditos) < (select avg(sum(carga_creditos)) from impartir group by profesor);

--EX16
select profesor from impartir where curso = '22/23'
and carga_creditos < 6.5 group by profesor having count(asignatura) >= 2;

--Negations: SELECT … FROM … WHERE … NOT IN …
--EX17
select nombre from asignaturas where codigo
not in (select asignatura from matricular where calificacion
in('AP','NT','SB','MH'));

--EX18
select nombre from departamentos where codigo not in
(select departamento from asignaturas where creditos > 6);

--EX19
--TO UNDERSTAND IS IMPORTANT
select p.nombre || ' ' || p.apellido1 || ' ' || p.apellido2 PROFESOR
from profesores p join impartir i on(p.id=i.profesor) join
asignaturas a on(i.asignatura=a.codigo)
where a.caracter='OP' and (i.asignatura, i.curso, i.grupo) not in
(select asignatura, curso, grupo from matricular)
order by p.apellido1, p.apellido2, p.nombre;

--EX20
select p1.nombre || ' ' || p1.apellido1 || ' ' || p1.apellido2,
p2.nombre || ' ' || p2.apellido1 || ' ' || p2.apellido2
from profesores p1, profesores p2 where p1.id < p2.id and not exists
((select alumno from matricular natural join impartir where profesor = p1.id)
intersect
(select alumno from matricular natural join impartir where profesor = p2.id));

--EX21
select p1.nombre || ' ' || p1.apellido1 || ' ' || p1.apellido2 PROFESOR1,
p2.nombre || ' ' || p2.apellido1 || ' ' || p2.apellido2 PROFESOR2
from profesores p1, profesores p2 where p1.id<p2.id and not exists
((select asignatura from impartir where profesor = p1.id) intersect
(select asignatura from impartir where profesor = p2.id));

--EX22
select nombre ASIGNARTURA from asignaturas
where codigo not in
(select a.codigo from asignaturas a join matricular m on(a.codigo
=m.asignatura) join alumnos al on(m.alumno=al.dni)
group by a.codigo, al.cpro, al.cmun
having count(*)>=2);

--EX23
select distinct al.dni, al.nombre, al.apellido1, al.apellido2 from alumnos al join matricular m on(al.dni = m.alumno)
join impartir i using(grupo, curso, asignatura) where profesor not in 
(select id from profesores where fecha_nacimiento = (select min(fecha_nacimiento) from profesores));

--EX24 
select m.alumno from matricular m group by m.alumno having count(*) > 2
and m.alumno not in (select m.alumno from matricular m natural
join impartir i join profesores p on(i.profesor=p.id)
join departamentos d  on(p.departamento = d.codigo) where d.nombre = 'Matematica Aplicada');

--EX25
select a.nombre, a.departamento from asignaturas a where a.creditos = (select max(creditos) from 
asignaturas where a.departamento=departamento and a.codigo not in
(select i.asignatura from impartir i join profesores p on(i.profesor
=p.id) where to_char(p.fecha_nacimiento, 'YYYY')<1970));

--EX26
select a.departamento, sum(carga_creditos)
from asignaturas a join impartir i on(a.codigo=i.asignatura)
where a.departamento in
(select a2.departamento from asignaturas a2 join matricular m on
(a2.codigo=m.asignatura) group by a2.departamento having 
count(m.alumno)>10) group by a.departamento order by sum(carga_creditos);

--EX27
select i.profesor, count(*) from impartir i
join matricular m on(i.asignatura=m.asignatura) where profesor in
(select i2.profesor from impartir i2 join asignaturas a on
(i2.asignatura=a.codigo) where a.practicos>a.teoricos) group by i.profesor;

--EX28
select a.asignatura, m.alumno from (select m.asignatura from matricular m where 
m.curso = '20/21' group by m.asignatura having count(m.alumno)> 3) a join matricular m on
(m.asignatura = a.asignatura) join alumnos al on (al.dni = m.alumno) where
al.fecha_prim_matricula = (select min(al.fecha_prim_matricula) from alumnos al join
matricular m on (m.alumno = al.dni) where m.asignatura = a.asignatura);

--EX29
select a.nombre ”ASIGNATURA”, (select count(distinct im.profesor) from impartir im where
im.asignatura = a.codigo and im.curso='21/22') ”PROFESORES” from asignaturas a 
where a.codigo in (select m.asignatura from matricular m where m.curso ='21/22' 
group by m.asignatura having count(*) <16 and a.departamento in (select d.codigo
from departamentos d where d.fecha_creacion in (select min(d.fecha_creacion) from
departamentos d))) order by a.codigo;

--EX30
select i.profesor PROFESOR from impartir i natural join matricular m
where i.profesor in (select i.profesor from impartir i group by i.profesor having count
(*)>=2) and m.alumno in (select al.dni from alumnos al where to_char 
(al.fecha_nacimiento,'YYYY')<'1995');
