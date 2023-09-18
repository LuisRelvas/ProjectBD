.mode columns
.headers on
.nullvalue NULL

select max(num) as 'Equipa com mais Jogadores', Nome from(
select count(*) as num,equipa.nome as Nome from contem,equipa where contem.idequipa = equipa.idequipa group by equipa.idequipa order by 1 desc);