PRAGMA foreign_keys = ON;
.mode columns
.headers on
DROP TABLE IF EXISTS Equipa;
DROP TABLE IF EXISTS Beneficiado;
DROP TABLE IF EXISTS Visitante;
DROP TABLE IF EXISTS Visitado;
DROP TABLE IF EXISTS Contem;
DROP TABLE IF EXISTS Financas;
DROP TABLE IF EXISTS Estadio;
DROP TABLE IF EXISTS Clube;
DROP TABLE IF EXISTS Jornada;
DROP TABLE IF EXISTS Eliminatoria;
DROP TABLE IF EXISTS Jogo;
DROP TABLE IF EXISTS Jogador; 
DROP TABLE IF EXISTS Evento;
DROP TABLE IF EXISTS Golo;
DROP TABLE IF EXISTS Cartao;
DROP TABLE IF EXISTS Substituicao;



CREATE TABLE Equipa( 
idEquipa INTEGER PRIMARY KEY, 
nome NVARCHAR(50) NOT NULL);				

CREATE TABLE Beneficiado( 
idEquipa NUMBER REFERENCES Equipa(idEquipa),	
idEvento NUMBER REFERENCES Evento(idEvento), 
CONSTRAINT pk_beneficiado PRIMARY KEY (idEquipa,idEvento));

CREATE TABLE Visitante( 
premio INTEGER(50) CHECK(premio == 0 or premio == 500 or premio == 1000 or premio == 1500 or premio == 10000), 
idEquipa NUMBER REFERENCES Equipa(idEquipa),
idJogo NUMBER REFERENCES Jogo(idJogo),
CONSTRAINT pk_visitante PRIMARY KEY(idEquipa, idJogo));

CREATE TABLE Visitado(
premio INTEGER(50) CHECK(premio == 0 or premio == 500 or premio == 1000), 
idEquipa NUMBER REFERENCES Equipa(idEquipa),
idJogo NUMBER REFERENCES Jogo(idJogo),
CONSTRAINT pk_visitado PRIMARY KEY(idEquipa, idJogo));

CREATE TABLE Contem( 
idEquipa NUMBER REFERENCES Equipa(idEquipa),
idJogador NUMBER REFERENCES Jogador(idJogador),
CONSTRAINT pk_contem PRIMARY KEY (idEquipa,idJogador));

CREATE TABLE Estadio(
idEstadio INTEGER PRIMARY KEY,
nome NVARCHAR(50) NOT NULL,
cidade NVARCHAR(50) NOT NULL);

CREATE TABLE Clube( 
idClube INTEGER PRIMARY KEY,
nome NVARCHAR(50) NOT NULL , 
morada NVARCHAR(50) NOT NULL,
anoFundacao NVARCHAR(50),
idEstadio NUMBER REFERENCES Estadio(idEstadio),
idEquipa NUMBER REFERENCES Equipa(idEquipa));

CREATE TABLE Jornada(
idJornada INTEGER PRIMARY KEY AUTOINCREMENT);

CREATE TABLE Eliminatoria(
IdEliminatoria INTEGER PRIMARY KEY AUTOINCREMENT,
tipo NVARCHAR(50) CHECK (tipo == 'FG' or tipo == 'OF' or tipo == 'QF' or tipo == 'MF' or tipo == 'F'));

CREATE TABLE Jogo(
idJogo INTEGER PRIMARY KEY,
local NVARCHAR(50) NOT NULL,
data DATE NOT NULL,
idEliminatoria NUMBER REFERENCES Eliminatoria(idEliminatoria),
idJornada NUMBER REFERENCES Jornada(idJornada),
idEstadio NUMBER REFERENCES Estadio(idEstadio));

CREATE TABLE Evento(
idEvento INTEGER PRIMARY KEY,
Minuto INT(50) CHECK (Minuto > 0),
idJogo NUMBER REFERENCES Jogo(idJogo));

CREATE TABLE Golo(
idEvento NUMBER REFERENCES Evento(idEvento),
idJogador NUMBER REFERENCES Jogador(idJogador),
CONSTRAINT pk_golo PRIMARY KEY (idEvento,idJogador));

CREATE TABLE Cartao(
cor NVARCHAR(50) CHECK (cor =='V' or cor == 'A'),
idEvento NUMBER REFERENCES Evento(idEvento),
idJogador NUMBER REFERENCES Jogador(idJogador),
CONSTRAINT pk_cartao PRIMARY KEY (idEvento,idJogador));

CREATE TABLE Substituicao(
idEvento NUMBER REFERENCES Evento(idEvento),
idJogador NUMBER REFERENCES Jogador(idJogador),
CONSTRAINT pk_substituicao PRIMARY KEY (idEvento,idJogador));

CREATE TABLE Jogador(
idJogador INTEGER PRIMARY KEY, 
nome NVARCHAR(50) NOT NULL,
idEquipa NUMBER REFERENCES Equipa(idEquipa));