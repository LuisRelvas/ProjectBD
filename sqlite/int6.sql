.mode columns
.headers on
.nullvalue NULL

select jogador.nome as Jogador, count(*) as Num_Golos from golo,jogador where golo.idjogador = jogador.idjogador group by jogador.nome order by count(*) desc; 