select e.nombre as Equipo ,j.nombre as Jugador, SUM(pj.puntos) AS Goles 
from partido_jugadors as pj , partidos as p, divisiones as d , jugadores as j, equipos as e 
where pj.partidoid = p.id and d.id= p.divisionid and pj.jugadorid = j.id and e.id = j.equipoid  
GROUP by e.nombre,j.nombre 
ORDER by sum(pj.puntos) desc

select e.nombre as Equipo ,j.nombre as Jugador, SUM(pj.puntos) AS Goles 
from partido_jugadors as pj , partidos as p, divisiones as d , jugadores as j, equipos as e 
where pj.partidoid = p.id and d.id= p.divisionid and pj.jugadorid = j.id and e.id = j.equipoid and d.id = 2 
GROUP by e.nombre,j.nombre 
ORDER by sum(pj.puntos) desc

select e.nombre as Equipo ,j.nombre as Jugador, SUM(pj.puntos) AS Goles 
from partido_jugadors as pj , partidos as p, divisiones as d , jugadores as j, equipos as e 
where pj.partidoid = p.id and d.id= p.divisionid and pj.jugadorid = j.id and e.id = j.equipoid and d.id = 3
GROUP by e.nombre,j.nombre 
ORDER by sum(pj.puntos) desc

select e.nombre as Equipo ,j.nombre as Jugador, SUM(pj.puntos) AS Goles 
from partido_jugadors as pj , partidos as p, divisiones as d , jugadores as j, equipos as e 
where pj.partidoid = p.id and d.id= p.divisionid and pj.jugadorid = j.id and e.id = j.equipoid and d.id = 4 
GROUP by e.nombre,j.nombre 
ORDER by sum(pj.puntos) desc

select e.nombre as Equipo ,j.nombre as Jugador, SUM(pj.puntos) AS Goles 
from partido_jugadors as pj , partidos as p, divisiones as d , jugadores as j, equipos as e 
where pj.partidoid = p.id and d.id= p.divisionid and pj.jugadorid = j.id and e.id = j.equipoid and d.id = 5 
GROUP by e.nombre,j.nombre 
ORDER by sum(pj.puntos) desc

select e.nombre as Equipo ,j.nombre as Jugador, SUM(pj.puntos) AS Goles 
from partido_jugadors as pj , partidos as p, divisiones as d , jugadores as j, equipos as e 
where pj.partidoid = p.id and d.id= p.divisionid and pj.jugadorid = j.id and e.id = j.equipoid and d.id = 6 
GROUP by e.nombre,j.nombre 
ORDER by sum(pj.puntos) desc



########################################################################################################################################



select j.nombre as Jugador, e.nombre as Equipo, s.tiempo as Fechas, s.comentario as Motivo 
from sanciones as s, jugadores as j , equipos as e 
where s.jugadorid = j.id and j.equipoid=e.id 
order by s.tiempo desc


########################################################################################################################################



create VIEW partidos_ganados as
select e.nombre as Equipo, COUNT(e.nombre) as PG
from partidos as p, equipos as e , divisiones as d
where e.id = p.equipo_1 or e.id = p.equipo_2 and d.id = e.divisionid and p.ganador=e.id
group by e.nombre;

create VIEW partidos_jugados as
select e.nombre as Equipo, COUNT(e.nombre) as PJ
from partidos as p, equipos as e , divisiones as d
where e.id = p.equipo_1 or e.id = p.equipo_2 and d.id = e.divisionid 
group by e.nombre;

create VIEW partidos_empatados as
select e.nombre as Equipo, COUNT(e.nombre) as PE
from partidos as p, equipos as e , divisiones as d
where e.id = p.equipo_1 or e.id = p.equipo_2 and d.id = e.divisionid and p.ganador = NULL
group by e.nombre;

create VIEW partidos_perdidos as
select e.nombre as Equipo, COUNT(e.nombre) as PP
from partidos as p, equipos as e , divisiones as d
where e.id = p.equipo_1 or e.id = p.equipo_2  and p.ganador<>e.id and d.id = e.divisionid 
group by e.nombre;

create VIEW goles_a_Favor as
select e.nombre as Equipo, sum(e.nombre) as PP
from partidos as p, equipos as e , divisiones as d
where e.id = p.equipo_1 and p.ganador<>e.id and d.id = e.divisionid 
group by e.nombre;


Goles en Contra (GC)
Diferencia de Goles (DIF)



select e.nombre as Equipo, COUNT(e.nombre) as PJ, pg.PG
from partidos as p, equipos as e , divisiones as d, partidos_ganados as pg
where e.id = p.equipo_1 and d.id = e.divisionid and  e.nombre = pg.Equipo and d.id = 1 
GROUP by e.nombre

