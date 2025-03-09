--SECOND PARTIAL
select p.apellido1 || ', ' || p.nombre as nombre
from profesores p
where months_between(sysdate, p.antiguedad) / 12 > 24;

--THE SUM OF THE CREDITS GIVEN BY EACH DEPARTMENT
select p.departamento, sum(a.creditos)
from departamentos d join profesores p on(p.departamento=d.codigo)
join asignaturas a on(a.departamento=d.codigo)
group by p.departamento;

select a.nombre, a.apellido1, a.apellido2, count(*), 
round(avg(decode(calificacion, 'AP', 5, 'MH', 10, 'SB', 9, 'NT', 7)) ,1) as grade
from alumnos a join matricular m on(a.dni=m.alumno)
where calificacion is not null and calificacion <> 'SP' and calificacion <> 'NP'
group by a.nombre, a.apellido1, a.apellido2;

-- HOW MANY PROFESSORS BY EACH SUBJECT
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


