select al.dni,
       lpad(m.calificacion, 15, ' ') as just,
       decode(m.calificacion, 'AP', 5, 'NT', 7, 'MH', 10, 'SB', 9) as grade
from alumnos al 
join matricular m on (m.alumno = al.dni)
where m.asignatura = 200 
  and m.calificacion in ('AP', 'SB', 'NT', 'MH')
order by grade desc;

select a.nombre, a.apellido1,
trunc(months_between(sysdate, a.fecha_nacimiento) / 12, 0) as age
from alumnos a join provincia p on(a.cpro=p.codigo)
where p.nombre not like 'Badajoz';

select replace(upper(a1.apellido1), 'Z', 'S') as apellido1 from alumnos a1 
where a1.apellido1 like '%Z%'
union 
select replace(upper(a2.apellido2), 'Z', 'S') as apellido1 from alumnos a2 
where a2.apellido2 like '%Z%';

select al.nombre, al.apellido1, al.apellido2
from alumnos al 
where al.dni not in
(select m.alumno from matricular m natural join impartir i join profesores p on(i.profesor = p.id) 
where to_char(antiguedad, 'mmmm') between 1 AND 9);

select p.nombre, p.apellido1, nvl(sum(i.carga_creditos), 0), nvl(i.curso, '22/23')
from profesores p left join impartir i on (i.profesor = p.id)
where i.curso = '22/23' or i.curso is null
group by p.nombre, p.apellido1, nvl(i.curso, '22/23');

select p.nombre, round(abs(avg(m.hombres) - avg(m.mujeres)))
from provincia p join municipio m on(p.codigo=m.cpro)
group by p.codigo, p.nombre
having count(*) > 100;