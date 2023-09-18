
.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;


Create Trigger IF NOT EXISTS R1
After Insert on Jogador
For each Row
Begin
insert into contem(idequipa,idjogador) values (new.idequipa,new.idjogador);
End;
