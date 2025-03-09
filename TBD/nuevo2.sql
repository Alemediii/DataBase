select p.nombre, p.apellido1 || ' ' || p.apellido2, p.fecha_nacimiento 
from profesores p where 
p.nombre like 'M%' and 
months_between(sysdate, p.tfecha_nacimiento) / 12 > 45 and
months_between(sysdate, p.fecha_nacimiento) / 12 < 65;

select p.id 
from profesores p 
where p.id not in (select id_profesor from investigadores)
and p.id not in (select profesor from impartir);

select distinct a1.nombre, a1.apellido1, a2.nombre, a2.apellido1
from alumnos a1 join municipio m1 on (a1.cpro=m1.cpro),
alumnos a2 join municipio m2 on (a2.cpro=m2.cpro)
where a1.genero like 'FEM' and a2.genero like 'FEM' 
and m1.nombre = m2.nombre and a1.dni < a2.dni
and to_char(a1.fecha_nacimiento , 'YYYY') = to_char(a2.fecha_nacimiento , 'YYYY');

select cpro, p.nombre, hombres
from provincia p join municipio m on(p.codigo=m.cpro)
group by cpro, p.nombre, hombres
having count(*) >= 2;