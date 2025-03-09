select m.cpro, p.nombre, m.mujeres, count(*) as "how many"
from municipio m join provincia p on(cpro=p.codigo)
group by m.cpro, p.nombre, m.mujeres
having count(*) >= 2;

select al.nombre || ' ' || al.apellido1, 
sum(a.creditos), round(avg(a.creditos), 2)
from alumnos al join matricular m on(m.alumno=al.dni)
join asignaturas a on(a.codigo=m.asignatura)
where m.curso = '22/23'
group by al.nombre || ' ' || al.apellido1;

select i.curso, p.nombre || ' ' || p.apellido1, i.carga_creditos, 
round(months_between(sysdate, p.fecha_nacimiento) / 12, 0) as age
from profesores p left join impartir i on (p.id=i.profesor)
group by i.curso, p.nombre || ' ' || p.apellido1, i.carga_creditos, p.fecha_nacimiento
order by curso asc;

select al.dni, al.nombre, al.apellido1 from alumnos al where dni in
(select alumno from matricular where curso = '22/23')
and al.dni not in (select alumno from matricular where curso = '22/23' 
and calificacion in ('AP','SB','NT','MH'))