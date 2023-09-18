.mode columns
.headers on
.nullvalue NULL

select Nome from (select cartao.idjogador,jogador.nome as Nome from cartao,jogador where jogador.idjogador = cartao.idjogador intersect select golo.idjogador,jogador.nome as Nome1 from golo,jogador where jogador.idjogador = golo.idjogador); 