-- use of functions and exercises
-- this is the first exercise of the list 
-- exercise 1
SELECT nombre, apellido1, apellido2
from docencia.profesores
where departamento = 1; 

-- exercise 2
select nombre, apellido1, apellido2
from docencia.profesores
where departamento != 3;

-- exercise 3
select nombre, apellido1, apellido2
from docencia.profesores
where email like '%lcc.uma.es';

-- exercise 4
select nombre, apellido1, apellido2
from docencia.alumnos
where email is null;

-- variable email, because of being an varchar type variable
-- we should treat it with is instead of = 
--  IS NULL checks for null values specifically, which is different from using = (as NULL cannot be compared with =)

-- exercise 5
select nombre, creditos, 
100 * (teoricos / creditos) as teoricos,
100 * (practicos / creditos) as practicos
from docencia.asignaturas
where curso = 3;

-- additionally, we can round the percentage with this
-- exercise 5
select nombre, creditos, 
ROUND(100 * (teoricos / creditos), 2) as teoricos,
ROUND(100 * (practicos / creditos), 2) as practicos
from docencia.asignaturas
where curso = 3;

--exercise 6
select alumno, calificacion, decode(calificacion, 'AP', 5, 'MH', 10, 'SB', 9, 'NT', 8, 'SP', 4, 'NP', 0, null, 0) grade
from docencia.matricular
where asignatura = 112
order by grade;	

-- exercise 7
select nombre, 
hombres + mujeres as population
from docencia.municipio;


-- use of functions
-- exercise 1/8
select 'the student ' || nombre || ' ' || apellido1 || ' '|| apellido2 || ' does not have an email' as information
from docencia.alumnos
where email is null;


--the same but using concat
SELECT 
    CONCAT(
        CONCAT(
            CONCAT(
                CONCAT('The student ', nombre), ' ' || apellido1
            ), ' ' || apellido2
        ), ' does not have an email'
    ) AS information
FROM 
    docencia.alumnos
WHERE 
    email IS NULL;


-- exercise 2
select nombre, apellido1, apellido2
from docencia.profesores
where antiguedad < to_date('01/01/1990', 'dd/mm/yy') 

-- exercise 3
select nombre, apellido1, apellido2
from docencia.profesores
where months_between(fecha_nacimiento, sysdate) > 360

-- exercise 4
select upper(nombre), 
       upper(apellido1), 
       upper(apellido2)
from docencia.profesores
where trunc(MONTHS_BETWEEN(antiguedad, sysdate) / 36) < 3; 