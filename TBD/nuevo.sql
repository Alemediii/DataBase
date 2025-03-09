select a.nombre, count(*)
from asignaturas a join matricular m on(a.codigo=m.asignatura)
where m.calificacion like 'SB' or m.calificacion like 'AP' or 
m.calificacion like 'MH' or m.calificacion like 'NT'
group by a.nombre
having count(*) >= 10;

select a.nombre, a.apellido1, a.apellido2, count(*) as manytimes
from alumnos a join matricular m on(m.alumno=a.dni)
where m.calificacion='SP'
group by a.nombre, a.apellido1, a.apellido2
having count(*) = (select max(count(*)) from matricular where calificacion
= 'SP' group by alumno);

select a1.dni, a2.dni
from alumnos a1 join matricular m1 on(m1.alumno=a1.dni) 
join matricular m2 on(m2.asignatura=m1.asignatura and m2.curso=m1.curso and m2.grupo=m1.grupo)
join alumnos a2 on(a2.dni=m2.alumno)
where a1.dni < a2.dni 
group by a1.dni, a2.dni 
having count(*) >= 5;

select p.nombre ||' '|| p.apellido1, 
nvl(email, 'Does not have email')
from profesores p where 
months_between(sysdate, p.antiguedad) / 12 < 24;

select d.nombre, d.codigo, sum(a.creditos)
from departamentos d join asignaturas a on(a.departamento = d.codigo)
group by d.nombre, d.codigo
having sum(a.creditos) > 20;

select a.dni, count(*), 
round(avg(decode(m.calificacion, 'AP',5,'NT',7,'MH',10,'SB',9)),1) as grade
from matricular m join alumnos a on(a.dni = m.alumno)
where m.calificacion in ('AP','NT','SB','MH')   
group by a.dni
having count(*) > 4;


