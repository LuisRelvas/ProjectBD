.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''

.print 'Verificamos que nao existe nenhum jogador inscrito na champions league com idjogador > 61'

select count(*) as 'IDJOGADOR = 62' from jogador 
where idjogador = 62; 

.print '' 
.print 'Criação de um jogador com idjogador = 62 -> dispara gatilho;'
.print '' 

insert into Jogador(idjogador,nome,idequipa) values(62,'Wilson Manafa',7);

.print ''
.print 'Verificação da criação na tabela contem'
.print ' '

select count(*) as 'Verifica' from contem
where idjogador = 62; 

