PRAGMA foreign_keys = ON;

INSERT INTO Equipa(idEquipa,nome) VALUES
(1,'Manchester City'),
(2,'Paris SG'),
(3,'RB Leipzig'),
(4,'Club Brugge'),
(5,'Liverpool'),
(6,'Atletico Madrid'),
(7,'FC Porto'),
(8,'AC Milan'),
(9,'Ajax'),
(10,'Sporting CP'),
(11,'Borussia Dortmund'),
(12,'Besiktas'),
(13,'Real Madrid'),
(14,'Inter Milan'),
(15,'Sheriff'),
(16,'Shakhtar Donetsk'),
(17,'Bayern Munich'),
(18,'SL Benfica'),
(19,'Barcelona'),
(20,'Dynamo Kyiv'),
(21,'Manchester United'),
(22,'Villareal'),
(23,'Atalanta'),
(24,'Young Boys'),
(25,'Lille'),
(26,'RB Salzburg'),
(27,'Sevilla'),
(28,'Wolfsburg'),
(29,'Juventus'),
(30,'Chelsea'),
(31,'Zenit'),
(32,'Malmo');


INSERT INTO Jogador(idJogador,nome,idEquipa) VALUES (1,'Karim Benzema',13),
(2,'Robert Lewandowski',17),
(3,'Sébastien Haller',9),
(4,'Mohamed Salah',5),
(5,'Cristopher Nkunku',3),
(6,'Riyad Mahrez',1),
(7,'Leroy Sane',17),
(8,'Cristiano Ronaldo',21),
(9,'Kylian Mbappé',2),
(10,'Darwin Nuñez',18),
(11,'Arnaut Danjuma',22),
(12,'Lionel Messi',2),
(13,'Rodrygo',13),
(14,'Roberto Firmino',5),
(15,'Sadio Mané',5),
(16,'Timo Werner',30),
(17,'Pedro Gonçalves',10),
(18,'Thomas Muller',17),
(19,'Vinicius Júnior',13),
(20,'Gabriel Jesus',1),
(21,'Antoine Griezmann',6),
(22,'Luis Díaz',5),
(23,'Paulo Dybala',29),
(24,'Steven Berghuis',9),
(25,'Hans Vanaken',4),
(26,'Marco Reus',11),
(27,'Donyell Malen',11),
(28,'Edin Dzeko',14),
(29,'Phil Foden',1),
(30,'Serge Gnabry',17),
(31,'Duván Zapata',23),
(32,'Erling Haaland',11),
(33,'Bernardo Silva',1),
(34,'Burak Yilmaz',25),
(35,'Karim Adeyemi',26),
(36,'Paulinho',10),
(37,'Jonathan David',25),
(38,'Noah Okafor',26),
(39,'André Silva',3),
(40,'Raheem Sterling',1),
(41,'Kai Havertz',30),
(42,'Roman Yaremchuk',18),
(43,'Kingsley Coman',17),
(44,'Federico Chiesa',29),
(45,'João Cancelo',1),
(46,'Antony',9),
(47,'Sebastien Thill',15),
(48,'Jorginho',30),
(49,'Sebastián Coates',10),
(50,'Toni Kroos',13),
(51,'Mehdi Taremi',7),
(52,'Olivier Giroud',8),
(53,'Michy Batshuayi',12),
(54,'Dentinho',16),
(55,'Memphis Depay',19),
(56,'Victor Tsygankov',20),
(57,'Miralem Sulejmani',24),
(58,'En-Nesyri',27),
(59,'Dodi Lukebakio',28),
(60,'Malcom',31),
(61,'Buya Turay',32);

INSERT INTO Estadio(idEstadio,nome,cidade) VALUES(1,'Etihad Stadium','Manchester'),
(2,'Parc des Princes','Paris'),
(3,'Red Bull Arena Leipzig','Leipzig'),
(4,'Jan Breeder Stadium','Brugge'),
(5,'Anfield Road','Liverpool'),
(6,'Wanda Metropolitano','Madrid'),
(7,'Estádio do Dragão','Porto'),
(8,'San Siro','Milan'),
(9,'Johan Cruyff Arena','Amsterdam'),
(10,'Estádio José Alvalade','Lisboa'),
(11,'Signal Iduna Park','Dortmund'),
(12,'Vodafone Park','Istambul'),
(13,'Santiago Bernabéu','Madrid'),
(14,'Giuseppe Meazza','Milan'),
(15,'Sheriff Stadium,','Tiraspol'),
(16,'Kyiv Olympic Stadium','Donetsk'),
(17,'Allianz Arena','Munich'),
(18,'Estádio da Luz','Lisboa'),
(19,'Camp Nou','Barcelona'),
(20,'Kyiv Olympic Stadium','Kyiv'),
(21,'Old Trafford','Manchester'),
(22, 'Estadio de la Cerámica','Villareal'),
(23,'Estádio Atleta Azzurri dItalia','Bergamo'),
(24,'State de Suisse','Bern'),
(25,'Stade Pierre-Mauroy','Lille'),
(26,'Red Bull Arena Salzburg','Salzburg'),
(27,'Estádio Ramón Sanchez Pizjuán','Sevilla'),
(28,'Volkswagen Arena','Wolfsburg'),
(29,'Juventus Stadium','Torino'),
(30,'Stamford Bridge','London'),
(31,'Krestovsky Stadium','Saint Petersburg'),
(32,'Eleda Stadium','Malmo');

INSERT INTO Jornada(idJornada) VALUES(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13);

INSERT INTO Eliminatoria(IdEliminatoria,tipo) VALUES(1,'FG'),
(2,'OF'),
(3,'QF'),
(4,'MF'),
(5,'F');



INSERT INTO Jogo(idJogo,local,data,idEliminatoria,idJornada,idEstadio) VALUES(1,'Belgium','2021-09-15',1,1,4),
(2,'England','2021-09-15',1,1,1),
(3,'France','2021-09-28',1,2,2),
(4,'Germany','2021-09-28',1,2,3),
(5,'Belgium','2021-10-19',1,3,4),
(6,'France','2021-10-19',1,3,2),
(7,'Germany','2021-11-03',1,4,3),
(8,'England','2021-11-03',1,4,1),
(9,'England','2021-11-24',1,5,1),
(10,'Belgium','2021-11-24',1,5,4),
(11,'Germany','2021-12-07',1,6,3),
(12,'France','2021-12-07',1,6,2),
(13,'England','2021-09-15',1,1,5),
(14,'Spain','2021-09-15',1,1,6),
(15,'Portugal','2021-09-28',1,2,7),
(16,'Italy','2021-09-28',1,2,8),
(17,'Portugal','2021-10-19',1,3,7),
(18,'Spain','2021-10-19',1,3,6),
(19,'Italy','2021-11-03',1,4,8),
(20,'England','2021-11-03',1,4,5),
(21,'Spain','2021-11-24',1,5,6),
(22,'England','2021-11-24',1,5,5),
(23,'Portugal','2021-12-07',1,6,7),
(24,'Italy','2021-12-07',1,6,8),
(25,'Portugal','2022-02-15',2,7,10),
(26,'England','2022-03-09',2,8,1),
(27,'France','2022-02-15',2,7,2),
(28,'Spain','2022-03-09',2,8,13),
(29,'England','2022-04-26',4,11,1),
(30,'Spain','2022-05-04',4,12,13),
(31,'France','2022-05-28',5,13,2),
(37,'Italy','2022-02-16',2,7,14),
(38,'England','2022-03-08',2,8,5),
(39,'Portugal','2022-04-05',3,9,18),
(40,'England','2022-04-13',3,10,5),
(41,'England','2022-04-27',4,11,5),
(42,'Spain','2022-05-03',4,12,22),
(43,'France','2022-02-15',2,7,2),
(44,'Spain','2021-03-09',2,8,13);

INSERT INTO Visitante(idEquipa,idJogo,premio) VALUES(2,1,500),
(3,2,0),
(1,3,0),
(4,4,1000),
(1,5,1000),
(3,6,0),
(2,7,1000),
(4,8,0),
(2,9,0),
(3,10,1000),
(1,11,0),
(4,12,0),
(8,13,0),
(7,14,500),
(5,15,1000),
(6,16,1000),
(8,17,0),
(5,18,1000),
(7,19,500),
(6,20,0),
(8,21,1000),
(7,22,0),
(6,23,1000),
(5,24,1000),
(1,25,1000),
(10,26,500),
(13,27,0),
(2,28,0),
(13,29,0),
(1,30,0),
(13,31,10000),
(1,31,1500),
(5,37,1000),
(14,38,0),
(5,39,0),
(18,40,500),
(22,41,0),
(5,42,0);


INSERT INTO Visitado(idEquipa,idJogo,premio) VALUES(4,1,500),
(1,2,1000),
(2,3,1000),
(3,4,0),
(4,5,0),
(2,6,1000),
(3,7,0),
(1,8,1000),
(1,9,1000),
(4,10,0),
(3,11,1000),
(2,12,1000),
(5,13,1000),
(6,14,500),
(7,15,0),
(8,16,0),
(7,17,1000),
(6,18,0),
(8,19,500),
(5,20,1000),
(6,21,0),
(5,22,1000),
(7,23,0),
(8,24,0),
(10,25,0),
(1,26,500),
(2,27,1000),
(13,28,1000),
(1,29,1000),
(13,30,1000),
(14,37,0),
(5,38,1000),
(18,39,1000),
(5,40,500),
(5,41,1000),
(22,42,1000);


INSERT INTO Contem(idEquipa,idJogador) VALUES(13,1), 
(17,2),
(9,2),
(5,4),
(3,5),
(1,6),
(17,7),
(21,8),
(2,9),
(18,10),
(22,11),
(2,12),
(13,13),
(5,14),
(5,15),
(30,16),
(10,17),
(17,18),
(13,19),
(1,20),
(6,21),
(5,22),
(29,23),
(9,24),
(4,25),
(11,26),
(11,27),
(14,28),
(1,29),
(17,30),
(23,31),
(11,32),
(1,33),
(25,34),
(26,35),
(10,36),
(25,37),
(26,38),
(3,39),
(1,40),
(30,41),
(18,42),
(17,43),
(29,44),
(1,45),
(9,46),
(15,47),
(30,48),
(10,49),
(13,50),
(7,51),
(8,52),
(12,53),
(16,54),
(19,55),
(20,56),
(24,57),
(27,58),
(28,59),
(31,60),
(32,61);

INSERT INTO Evento(idEvento,Minuto,idJogo) VALUES(1,75,37),
(2,83,37),
(3,62,38),
(4,17,39),
(5,34,39),
(6,49,39),
(7,87,39),
(8,21,40),
(9,32,40),
(10,55,40),
(11,65,40),
(12,73,40),
(13,82,40),
(14,53,41),
(15,55,41),
(16,3,42),
(17,41,42),
(18,62,42),
(19,67,42),
(20,74,44),
(21,33,29),
(22,82,29),
(23,55,29),
(24,2,29),
(25,11,29),
(26,53,29),
(27,74,29),
(28,95,30),
(29,90,30),
(30,91,30),
(31,73,30),
(32,53,41),
(33,55,41),
(34,3,42),
(35,41,42),
(36,62,42),
(37,67,42),
(38,74,42),
(39,59,31),
(40,59,42);


INSERT INTO Cartao(cor,idEvento,idJogador) VALUES('A',17,15),
('A',18,19),
('A',19,41),
('A',20,1);


INSERT INTO Golo(idEvento,idJogador) VALUES(2,4),
(20,9),
(5,15),
(7,22),
(6,10),
(6,9),
(17,1),
(18,15),
(19,6),
(20,19),
(21,1),
(22,1),
(23,19),
(24,45),
(25,20),
(26,29),
(27,33),
(28,1),
(29,13),
(30,13),
(31,6),
(32,22),
(33,15),
(34,11),
(35,11),
(36,22),
(37,22),
(38,15),
(39,19);

INSERT INTO Substituicao(idEvento,idJogador) VALUES(1,15),
(2,19),
(16,1),
(4,6);