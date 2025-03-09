-- SELECT STUDENTS WHICH HAVE A SURNAME WITH A SPACE, AND PUT THE SUBJECTS IN WHICH THESE ARE FOUND
select distinct al.nombre, al.apellido1, al.apellido2, a.nombre
from alumnos al join matricular m on(m.alumno=al.dni)
join asignaturas a on(m.asignatura=a.codigo)
where al.apellido1 like '% %' or al.apellido2 like '% %';

--SET ALL SUBJECTS AND HOW MANY STUDENTS AND PROFESSORS WE FIND
select asignatura, curso, grupo,
count(distinct alumno) as manya, count(distinct profesor) as manyp
from matricular m join impartir i using(asignatura, curso, grupo)
group by asignatura, grupo, curso;

--SUBJECTS TAUGHT BY TEACHERS OLDER THAN 20 YEARS AND HOW MANY CREDITS
select distinct a.nombre, a.creditos
from asignaturas a join impartir i on(a.codigo=i.asignatura)
join profesores p on(p.id = i.profesor)
where i.asignatura not in
(select asignatura from profesores p join impartir i on(i.profesor=p.id) where
months_between(sysdate, p.fecha_nacimiento)/12 < 20);

--STUDENTS WHO WERE NOT BORN NEITHER ON M OR T AND ITS GRADE IS PASSED, AVG GRADE
select al.nombre || ' ' || al.apellido1,
round(avg(decode(m.calificacion, 'MH',1,'SP',2,'AP',3,'NT',4)),2) as grade
from matricular m join alumnos al on(al.dni=m.alumno)
where to_char(al.fecha_nacimiento, 'day') not like 'Lunes' and
to_char(al.fecha_nacimiento, 'day') not like 'Martes'
and m.calificacion in('AP','MH','SB','NT')
group by al.nombre || ' ' || al.apellido1;


-- ALL PROFESSORS WHO TEACH OR NOT A SUBJECT, BUT HAVE A ACCENT ON ITS SURNAME
select p.nombre || ' ' || p.apellido1 || ' ' || p.apellido2
as nombre, a.nombre
from profesores p left outer join impartir i on(p.id=i.profesor)
left outer join asignaturas a on(a.codigo=i.asignatura)
where p.apellido1 like '%á%' or p.apellido2 like '%á%';

--THE SUM OF THE CREDITS GIVEN BY EACH DEPARTMENT
select p.departamento, sum(a.creditos)
from departamentos d join profesores p on(p.departamento=d.codigo)
join asignaturas a on(a.departamento=d.codigo)
group by p.departamento;


-- STUDENTS WHO DO SHARE PROFESSORS AVOIDING REPETITIONS
select distinct a1.nombre || ' ' ||  a1.apellido1 || ' ' ||  a1.apellido2 as alumno1, 
a2.nombre || ' ' || a2.apellido1 || ' ' ||  a2.apellido2 as alumno2
from alumnos a1 join alumnos a2 on(a1.dni < a2.dni)
where (a1.dni, a2.dni) not in
(select m1.alumno, m2.alumno from 
matricular m1 join impartir i1 on(m1.asignatura = i1.asignatura and m1.curso = i1.curso),
matricular m2 join impartir i2 on(m2.asignatura = i2.asignatura and m2.curso = i2.curso)
where i1.profesor = i2.profesor and m1.alumno < m2.alumno);
