.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;


.print ''
.print 'Criação de 4 eventos para testar o trigger'
.print ''

insert into evento(idevento,minuto,idjogo) values(NULL,88,42),
(NULL,89,42),
(NULL,90,42),
(NULL,91,42);

select * from evento where idevento > 40;

.print ''
.print 'Adicionar ao jogador com id 15 mais um amarelo de forma a ser expulso'
.print ''
.print 'Numero de amarelos sobe para 2 e o jogador é expulso'
.print ''

insert into cartao(cor,idevento,idjogador) values('A',41,15);

.print ''
select * from cartao; 
.print ''
.print 'Atribuição de um vermelho a um jogador no idjogo = 42'
.print ''

insert into cartao(cor,idevento,idjogador) values ('V',42,12);

.print '' 
select * from cartao; 
.print ''
.print 'Verificação que o jogador 15 e 12 foram expulsos'
insert into cartao(cor,idevento,idjogador) values('A',43,15);
select * from cartao; 
insert into cartao(cor,idevento,idjogador) values('A',44,12);



