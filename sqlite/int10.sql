.mode columns
.headers on
.nullvalue NULL

create view total_visitado as
select equipa.nome,sum(visitado.premio) as total1 from equipa,visitado,jogo where 
jogo.idjogo = visitado.idjogo and 
visitado.idequipa = equipa.idequipa 
group by equipa.nome order by 2 desc; 


create view total_visitante as
select equipa.nome,sum(visitante.premio) as total2 from equipa,visitante,jogo where 
jogo.idjogo = visitante.idjogo and 
visitante.idequipa = equipa.idequipa 
group by equipa.nome order by 2 desc; 


select EQUIPA,sum(total1) as Montante from(
select nome as EQUIPA, total1 from total_visitado
union all
select nome,total2 from total_visitante) group by equipa order by 2 desc;