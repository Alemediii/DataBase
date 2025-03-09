select p.nombre, p.apellido1, nvl(p.apellido2, ' ') as apellido2 
from profesores p 
where departamento = 4 and p.id not in
(select i.profesor from matricular m natural join impartir i where calificacion like 'MH');

select a.nombre, al.cpro, count(distinct alumno) as a
from asignaturas a join matricular m on (m.asignatura=a.codigo)
join alumnos al on(al.dni=m.alumno)
where m.curso='22/23'
group by a.nombre, al.cpro
order by a.nombre;

select upper(nombre), count(*)
from municipio where nombre not like '%,%'
group by upper(nombre)
having count(*) > 1;

select p.nombre, m.nombre, m.hombres+m.mujeres
from provincia p join municipio m on(m.cpro=p.codigo)
where
(m.hombres+m.mujeres) = (select max(m1.hombres+m1.mujeres) from municipio m1 where m.cpro=m1.cpro)
and m.nombre != p.nombre;

select p.id, p.nombre, count(i.asignatura)
from profesores p left join impartir i on(i.profesor=p.id)
left join departamentos d on(d.codigo=p.departamento)
where d.nombre = 'Arquitectura de Computadores'
group by p.id, p.nombre;


