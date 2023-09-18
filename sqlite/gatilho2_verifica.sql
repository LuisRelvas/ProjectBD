.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''
.print 'Verificação da data:'
.print ''

select data from jogo where idjogo = 1; 

.print ''
.print 'Update da data do jogo com ID = 1 -> dispara gatilho no qual é valida ou não a data ;'
.print ''
.print 'Data do jogo = 2019-03-19 (caso invalido) :'
.print ''

UPDATE Jogo SET data = '2019-03-19' WHERE idjogo = 1;

.print ''
select data from jogo where idjogo = 1; 
.print ''
.print 'Data do jogo = 2021-11-15 (caso valido) :'
.print ''

UPDATE jogo set data = '2021-11-15' where idjogo = 1; 

select data from jogo where idjogo = 1; 
