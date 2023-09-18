.mode columns
.headers on
.nullvalue NULL

select * from visitante 
inner join visitado
on visitante.idjogo = visitado.idjogo group by visitado.idjogo;

