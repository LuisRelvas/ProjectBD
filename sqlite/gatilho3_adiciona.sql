.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

Create Trigger IF NOT EXISTS R3
BEFORE INSERT ON CARTAO 
FOR EACH ROW
BEGIN
SELECT CASE 
WHEN (((select contador from (select count(*) as contador,cartao.idjogador as id from cartao,evento,jogo
where evento.idevento = cartao.idevento and 
evento.idjogo = jogo.idjogo and cartao.cor == 'A'
group by cartao.idjogador) where id = new.idjogador)>1) OR
((select contador from (select count(*) as contador,cartao.idjogador as id from cartao,evento,jogo
where evento.idevento = cartao.idevento and 
evento.idjogo = jogo.idjogo and cartao.cor == 'V'
group by cartao.idjogador) where id = new.idjogador)>=0))
THEN RAISE(ABORT, 'JOGADOR EXPULSO')
END;
END;



