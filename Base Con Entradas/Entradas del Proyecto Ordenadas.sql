
use socialtune;
insert into usuario
value(10,'Juan Carrasco','CarrascoJuansi@gmail.com','florsitaamor2020','Estudiante de la Universidad Privada Boliviana','img_23042020.jpg',6557843,'1998-03-30'),
	(3,'Carlos Vilaseca','ChalieVila@gmail.com','carlitos001','Bailarín profecional, Boliviano','img23022020uxzafgs.jpeg',60434354,'1992-06-23'),
	(null, 'Cristian Paz','crispaz@gmail.com','pazcris123','Estudiante de la Universidad Catolica','img_25062020.jpg',69823161,'1997-05-14'),
	(2,'Lucia Gonzales', 'lalugon@gmail.com','lugonza001','Modelo Profesional','img1561951uxzafgs.jpeg',60316670,'1999-08-24'),
	(1,'Avye Morrow', 'avyerrowmo@gmail.com', 'ayves241', 'Fotógrafo Profesional Chileno', 'img15161203.png',78912346, '1990-01-12'),		
	(null, 'Julian Aramburo','julyguns@gmail.com','julysito15','Diseñador Grafico Profesional','img8794565.jpg',79151610,'2000-12-14'),
	(4,'Sergio Chavez','Chavezgio@gmail.com','sergitocha','Ingeniero Comercial, Boliviano','img251561.jpg',60434354,'1988-12-29'),
	(null,'Carlita Bresse', 'Bressecarla@gmail.com', 'bressie354', ' Farmaceutica ', 'img64720224.png',76118103, '1995-04-11');
 
insert into artista
value(null,'The Rolling Stones',null,'Inglaterra'),
(null,'Lady Gaga',null,'Estados Unidos'),
(null,'León','Larregui','México'),
(null,'Davd','Guetta','Francia'),
(null,'Manuel','Turizo','Colombia');
insert into artista
value(15,'The Matchboock Romance',null,'Estados Unidos');


insert into playlist
value(100,'Rock clasico'),
(101,'Pop 80s'),
(102,'Indie & Chill'),
(103,'Elecroparty'),
(104,'Rolas chupa %100');

insert into genero
value (2, 'Rock'),
	(1, 'Pop'),
	(3, 'Indie'),
	(4, 'Electronica'),
	(5, 'Reggaeton');
 
 
 
INSERT INTO Grupo 
VALUES (12834,'elit.','abierto','rock'),
(67889,'cursus','privado','pop'),
(9513,'lectus','publico','indie,'), 
(3333,'Aliquam','cerrado','electronica'),
(989856,'hendrerit','publico','reggaeton');



INSERT INTO Evento 
 VALUES (5589,'Fiestanga1','Rock','1983 Augue C/'),
 (49832,'Party','Pop','6954 Lorem C/'),
 (87932,'Vivamus','Indie','7637 Etiam Calle'),
 (5555,'ElectroPreste','Electronica,','5995 In Avenida'),
(79899,'Chupa','Reggaeton','Apdo.:535-3608 In Avda.');



INSERT INTO Asistencia 
 VALUES (5589,12834,'2020-12-14'),
 (87932,67889,'2020-10-05'),
 (49832,9513,'2020-05-05'),
 (5555,3333,'2020-06-06'),
(79899,989856,'2019-04-06');


ALTER TABLE cancion
ADD nombreCancion varchar(90);
insert into cancion
value(46,'00:05:41','Cancion Oficial',null,5,'Wild Horses'),
(98,'00:05:09','Cancion Oficial',4,1,'Bad Romance'),
(78,'00:05:41','Cancion Oficial',10,2,'Locos'),
(67,'00:04:06','Cancion Oficial',2,3,'Titanium'),
(45,'00:03:52','Cancion Oficial',1,4,'Borraxxa');

ALTER TABLE composicion
ADD nombreComposision varchar(90);

insert into composicion
value(15,46,1971,'Sticky Fingers'),
(1,98,2009,'The Fame Monster'),
(2,78,2016,'Voluma'),
(3,67,2012,'Nothing but the beat'),
(4,45,2020,'Borraxxa');


insert into contenidoplaylist 
value(98,101,'2020-03-13'),
(46,101,'2020-02-01'),
(67,100,'2020-02-25'),
(78,103,'2020-01-05'),
(45,104,'2020-03-08');

insert into usuario_playlist 
value(100,1,'2020-03-13'),
(100,10,'2020-01-19'),
(102,4,'2020-02-25'),
(103,3,'2020-01-05'),
(104,2,'2020-03-08');


insert into donacion
value(5002,10,'Muybuena la app',00.25),
(5001,1,'Me gustaria que tenga temas en la iterfaz',05.45),
(5008,2,'Me gusta mucho',00.05),
(5003,3,'Muy buen trabajo',130.50),
(5004,4,'Muy cool',10.25),
(5005,10,'El chat se cuelga un poco', 00.10);



INSERT INTO Interfaz (Id,CodChat,IdUsuario)
 VALUES (48845,777,10),
 (488611,771,2),
 (488492,772,3),
 (4887563,773,10),
 (488754,774,4);
 
INSERT INTO Membresia 
 VALUES (10,12834,'2020-05-27'),
 (1,9513,'2020-01-23')
 ,(2,3333,'2020-04-03')
 ,(3,989856,'2019-03-23'),
(4,67889,'2020-09-11');


 INSERT INTO Mensaje 
 VALUES (169550837,'justo eu arcu.','Z0483',10,4,48845),
 (1664019042,'Nunc pulvinar arcu et pede. Nunc sed','Z6540',1,10,488611),
 (150292224,'sollicitudin a, malesuada id,','Z8468',3,2,488492),
 (96278152,'magna, malesuada vel, convallis','Z1184',3,2,4887563),
 (731222337,'neque tellus, imperdiet non, vestibulum nec,','Z9473',4,2,488754);
 
 
insert into publicacion
value(78468523,'Hola,  a quienes les gusta el rock?',10,'2020-03-25'),
(75544921,'Me podrían recomendar pop?',1,'2020-03-23'),
(6200132,'Quién esta escuchando Radiohead ahora mismo?',2,'2020-03-14'),
(33000215,'Me gusta bailar mucho',3,'2020-03-18'),
(449852665,'Me guta peleal y salil lo fine de semana',4,'2020-03-01');


insert into comentario
value(9687,'Me gusta el Rock','IMG020200423.png',78468523,2),
(9946,'El pop tambien me gusta, escucha DuaLipa','IMG0606438.png',75544921,2),
(2203,'No lo escuché',null,6200132,10),
(97610,'Alguien para bailar?',null,33000215,4),
(1033,'Muestrame cómo','perreointenso.gif',33000215,3);

insert into etiqueta
value (449852665,2,'2020-03-25'),
(33000215,3,'2020-03-23'),
(6200132,10,'2020-03-14'),
(75544921,4,'2020-03-18'),
(78468523,3,'2020-03-01');

INSERT INTO TipoDePublicidad (ID,Tipo,Duracion)
 VALUES (00438200,'video','00:00:52'),
 (72798889,'imagen.','00:00:10'),
 (40747720,'video.','00:00:45'),
 (64233400,'video','00:00:49'),
 (73333695,'imagen','00:00:12');

INSERT INTO Publicitante 
VALUES (794502629,'Sed',00438200),
(734446689,'Cum',72798889),
(975737279,'etelo',40747720),
(116037659,'eu',64233400),
(449149419,'neque.',73333695);

INSERT INTO Publicidad (Id,IdPublicitante)
 VALUES (533790499,794502629),
 (510626899,734446689),
 (798974599,975737279),
 (893653599,116037659),
 (291666499,449149419);
 
 
 
insert into reaccion
value(75544921,2,1),
(78468523,3,1),
(33000215,10,1),
(449852665,3,1),
(6200132,1,1);


insert into reproduccion
value(46,10,'2020-03-22'),
(78,1,'2020-03-25'),
(67,2,'2020-03-25'),
(98,3,'2020-03-24'),
(45,4,'2020-02-19');

 INSERT INTO Ads  
 VALUES (48845,533790499,1),
 (488611,510626899,0),
 (488492,798974599,1),
 (4887563,893653599,0),
 (488754,291666499,0);