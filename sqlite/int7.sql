.mode columns
.headers on
.nullvalue NULL

select jogador.nome as NOME_JOGADOR, equipa.nome as EQUIPA_NOME from equipa,jogador,golo where 
golo.idjogador = jogador.idjogador and jogador.idequipa = equipa.idequipa and jogador.nome like'%r%' group by jogador.nome;