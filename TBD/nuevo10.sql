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


select p.departamento, sum(a.creditos)
from departamentos d join profesores p on(p.departamento=d.codigo)
join asignaturas a on(a.departamento=d.codigo)
group by p.departamento;


select a.nombre, count(distinct profesor) as "Many professor(s)", 
i.curso
from asignaturas a left join impartir i on(a.codigo=i.asignatura) 
group by i.curso, a.nombre;


-- STUDENTS WHO DO SHARE PROFESSORS AVOIDING REPETITIONS
select distinct a1.nombre || ' ' ||  a1.apellido1 || ' ' ||  a1.apellido2 as alumno1, 
a2.nombre || ' ' || a2.apellido1 || ' ' ||  a2.apellido2 as alumno2
from alumnos a1 join alumnos a2 on(a1.dni < a2.dni)
where (a1.dni, a2.dni) not in
(select m1.alumno, m2.alumno from 
matricular m1 join impartir i1 on(m1.asignatura = i1.asignatura and m1.curso = i1.curso),
matricular m2 join impartir i2 on(m2.asignatura = i2.asignatura and m2.curso = i2.curso)
where i1.profesor = i2.profesor and m1.alumno < m2.alumno);     

select distinct p.id
from profesores p join impartir i on(i.profesor=p.id)
join matricular m using(asignatura, grupo, curso)
join alumnos al on(al.dni=m.alumno)
where extract(year from al.fecha_nacimiento) < 1995
and p.id in
(select p.id from profesores join impartir i on(p.id=i.profesor) 
group by p.id having count(i.asignatura) > 2);

select a1.nombre, a1.codigo, a1.curso
from asignaturas a1, asignaturas a2
where a1.curso = a2.curso
  and a1.creditos < a2.creditos;
  
select nombre, codigo, curso from asignaturas where curso is not null
minus
(select a1.nombre, a1.codigo, a1.curso
from asignaturas a1, asignaturas a2
where a1.curso = a2.curso
  and a1.creditos < a2.creditos);