select al.nombre || ' ' || al.apellido1 || ' was born in ' 
|| to_char(al.fecha_nacimiento, 'YYYY')
from alumnos al;

select distinct al.nombre || ' ' || al.apellido1,
p.nombre || ' ' || p.apellido1
from alumnos al join matricular m on(al.dni = m.alumno)
join impartir i on(i.asignatura = m.asignatura and i.curso = m.curso)
join profesores p on(p.id = i.profesor);

select al.nombre, al.apellido1
from alumnos al
minus
select a2.nombre, a2.apellido1
from alumnos a2 join matricular m on(a2.dni = m.alumno)
where m.calificacion like 'SP';


select a.nombre, count(*)
from asignaturas a join matricular m on(m.asignatura = a.codigo)
where m.calificacion in ('AP','MH','SB','NT')
group by a.nombre
having count(*) >= 10;

select al.dni, al.nombre, al.apellido1, count(*)
from alumnos al join matricular m on(al.dni=m.alumno)
where calificacion = 'SP'
group by al.dni, al.nombre, al.apellido1
having count(*) = 
(select max(count(*)) from matricular where calificacion = 'SP' group by alumno);
