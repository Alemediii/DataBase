select distinct a1.nombre || ' ' || a1.apellido1,
a2.nombre || ' ' || a2.apellido1
from alumnos a1 join alumnos a2 on(a1.dni < a2.dni)
where a1.cpro = a2.cpro and a1.cpro != 29;

select distinct al.nombre || ' ' || al.apellido1 || ' ' || al.apellido2 as nombre,
nvl(a.nombre, 'No matriculado') as asignatura, nvl(m.curso, 'No matriculado') as year
from alumnos al left join matricular m on(m.alumno=al.dni) 
left join asignaturas a on(m.asignatura=a.codigo)
order by al.nombre || ' ' || al.apellido1 || ' ' || al.apellido2;

select to_char(fecha_nacimiento, 'month') as month,
to_char(fecha_nacimiento, 'yyyy') as year, count(*)
from alumnos 
group by to_char(fecha_nacimiento, 'month'),
to_char(fecha_nacimiento, 'yyyy')
order by to_char(fecha_nacimiento, 'yyyy');