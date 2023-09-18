.mode columns
.headers on
.nullvalue NULL

select avg(num) as MEDIA from(
select equipa.nome,count(jogador.idjogador) as "Num" from equipa, jogador where jogador.idequipa = equipa.idequipa group by equipa.nome order by count(jogador.idjogador) desc); 
