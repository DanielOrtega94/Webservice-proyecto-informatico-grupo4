create VIEW partidos_ganados as
select e.id, e.nombre as Equipo, COUNT(p.ganador) as PG
from partidos as p, equipos as e , divisiones as d
where  (d.id = e.divisionid and p.ganador=e.id) and (e.id = p.equipo_1  or e.id = p.equipo_2 )
group by e.id;


create VIEW partidos_jugados as
select e.id,e.nombre as Equipo, COUNT(e.nombre) as PJ
from partidos as p, equipos as e , divisiones as d
where  (d.id = e.divisionid) and (e.id = p.equipo_1  or e.id = p.equipo_2 )
group by e.id;

#DATE(NOW())
create VIEW partidos_perdidos as
select e.id,e.nombre as Equipo, COUNT(e.nombre) as PP
from partidos as p, equipos as e , divisiones as d
where  (d.id = e.divisionid and p.ganador <> e.id) and (e.id = p.equipo_1  or e.id = p.equipo_2 )
group by e.id;

create view goles_1 as
select e.id ,e.nombre as Equipo, sum(p.m_local) as GF, sum(p.m_visita) as GC
from partidos as p, equipos as e , divisiones as d
where  (d.id = e.divisionid ) and (e.id = p.equipo_1)
group by e.id;	

create view goles_2 as
select e.id ,e.nombre as Equipo, sum(p.m_visita) as GF, sum(p.m_local) as GC
from partidos as p, equipos as e , divisiones as d
where  (d.id = e.divisionid ) and (e.id = p.equipo_2)
group by e.id;	

create view goles_totales as
SELECT g1.id ,g1.Equipo,
COALESCE(g1.GF + g2.GF,0) as GF, 
COALESCE(g1.GC+ g2.GC,0) as GC 
FROM goles_1 as g1 LEFT JOIN goles_2 as g2 ON g1.id = g2.id
group by g1.id;

#malo
create VIEW partidos_empatados as
SELECT DISTINCT e1.id,e1.nombre as Equipo, COALESCE(COUNT(e1.id),0) as PE
from   equipos as e1 LEFT JOIN partidos as p1 ON e1.id = p1.equipo_1, equipos as e2 LEFT JOIN partidos as p2 ON e2.id = p2.equipo_2
where  (p1.ganador is NULL and DATE(NOW()) > p1.fecha) and (p2.ganador is NULL and DATE(NOW()) > p2.fecha) 
group by e1.id;

#malo
create VIEW partidos_empatados as
select e.id,e.nombre as Equipo, COALESCE(COUNT(e.nombre),0) as PE
from  divisiones as d, partidos as p, equipos as e 
where  (d.id = e.divisionid and p.ganador is NULL and DATE(NOW()) > fecha) and (e.id = p.equipo_1  or e.id = p.equipo_2 )
group by e.id;


select e.divisionid ,e.id, pj.Equipo as Equipo, pj.PJ ,pg.PG ,  COALESCE(pp.PP,0), gt.GF,gt.GC, gt.GF-gt.GC as DIFGOLES
from equipos as e, partidos_jugados as pj, goles_totales as gt, partidos_ganados as pg LEFT JOIN partidos_perdidos as pp
on pg.id = pp.id
where e.id = pj.id and  pj.id = pg.id and gt.id =pg.id



create view  proximos as
SELECT de.deporte,d.nombre,d.nombre as division,c.nombre as campeonato, e1.nombre as equipo_1,e2.nombre as equipo_2,fecha, hora, lu.nombre as lugar_id 
FROM campeonatos as c ,divisiones as d, partidos as p, equipos as e1, equipos as e2, lugares as lu, deportes as de
WHERE p.equipo_1 = e1.id and p.equipo_2 = e2.id and lu.id = p.lugarid and DATE(NOW()) < p.fecha and d.deporteid = de.id
ORDER by  deporteid