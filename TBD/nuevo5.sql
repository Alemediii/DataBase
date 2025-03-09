select distinct al.nombre, al.apellido1, al.apellido2, a.nombre
from alumnos al join matricular m on(m.alumno=al.dni) 
join asignaturas a on(m.asignatura=a.codigo)
where al.apellido1 like '% %' or al.apellido2 like '% %';

select asignatura, curso, grupo, 
count(distinct alumno) as manya, count(distinct profesor) as manyp
from matricular m join impartir i using(asignatura, curso, grupo)
group by asignatura, grupo, curso;

select distinct a.nombre, a.creditos
from asignaturas a join impartir i on(a.codigo=i.asignatura)
join profesores p on(p.id = i.profesor)
where i.asignatura not in
(select asignatura from profesores p join impartir i on(i.profesor=p.id) where
months_between(sysdate, p.fecha_nacimiento)/12 < 20);

select al.nombre || ' ' || al.apellido1, 
round(avg(decode(m.calificacion, 'MH',1,'SP',2,'AP',3,'NT',4)),2) as grade
from matricular m join alumnos al on(al.dni=m.alumno)
where to_char(al.fecha_nacimiento, 'day') not like 'Lunes' and 
to_char(al.fecha_nacimiento, 'day') not like 'Martes' 
and m.calificacion in('AP','MH','SB','NT')
group by al.nombre || ' ' || al.apellido1;

select p.nombre || ' ' || p.apellido1 || ' ' || p.apellido2
as nombre, a.nombre
from profesores p left outer join impartir i on(p.id=i.profesor) 
left outer join asignaturas a on(a.codigo=i.asignatura)
where p.apellido1 like '%á%' or p.apellido2 like '%á%';

