.mode columns
.headers on
.nullvalue NULL

select equipa.nome from equipa,visitante where equipa.idequipa not in( select equipa.idequipa from visitante,equipa where equipa.idequipa = visitante.idequipa) group by equipa.nome;
