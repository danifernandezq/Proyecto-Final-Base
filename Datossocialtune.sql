use socialtune;
insert into usuario
value(0,'Juan Carrasco','CarrascoJuansi@gmail.com','florsitaamor2020','Estudiante de la Universidad Privada Boliviana','img_23042020.jpg',6557843,'1998-03-30'),
(0,'Carlos Vilaseca','ChalieVila@gmail.com','carlitos001','Bailarín profecional, Boliviano','img23022020uxzafgs.jpeg',60434354,'1992-06-23'),
(0, 'Cristian Paz','crispaz@gmail.com','pazcris123','Estudiante de la Universidad Catolica','img_25062020.jpg',69823161,'1997-05-14'),
(0,'Lucia Gonzales', 'lalugon@gmail.com','lugonza001','Modelo Profesional','img1561951uxzafgs.jpeg',60316670,'1999-08-24'),
(0,'Avye Morrow', 'avyerrowmo@gmail.com', 'ayves241', 'Fotógrafo Profesional Chileno', 'img15161203.png',78912346, '1990-01-12'),
(0, 'Julian Aramburo','julyguns@gmail.com','julysito15','Diseñador Grafico Profesional','img8794565.jpg',79151610,'2000-12-14'),
(0,'Sergio Chavez','Chavezgio@gmail.com','sergitocha','Ingeniero Comercial, Boliviano','img251561.jpg',60434354,'1988-12-29'),
(0,'Carlita Bresse', 'Bressecarla@gmail.com', 'bressie354', ' Farmaceutica ', 'img64720224.png',76118103, '1995-04-11');

insert into genero
value (0, 'Rock'),
(0, 'Pop'),
(0, 'Indie'),
(0, 'Electronica'),
(0, 'Reggaeton');

ALTER TABLE artista
MODIFY COLUMN CodArtista int not null auto_increment; 
 
insert into artista
value(0,'The Rolling Stones',null,'Inglaterra'),
(0,'Lady Gaga',null,'Estados Unidos'),
(0,'León','Larregui','México'),
(0,'Davd','Guetta','Francia'),
(0,'Manuel','Turizo','Colombia');

ALTER TABLE cancion
ADD nombreCancion varchar(90);
insert into cancion
value(0,'00.05.41','Cancion Oficial',null,0,'Wild Horses'),
(0,'00.05.09','Cancion Oficial',null,1,'Bad Romance'),
(0,'00.05.41','Cancion Oficial',null,2,'Locos'),
(0,'00.04.06','Cancion Oficial',null,3,'Titanium'),
(0,'00.03.52','Cancion Oficial',null,4,'Borraxxa');

ALTER TABLE composicion
ADD nombreComposision varchar(90);

insert into composicion
value(0,0,1971,'Sticky Fingers'),
(1,1,2009,'The Fame Monster'),
(2,2,2016,'Voluma'),
(3,3,2012,'Nothing but the beat'),
(4,4,2020,'Borraxxa');

insert into reproduccion
value(0,0,'2020-03-22'),
(1,1,'2020-03-25'),
(2,2,'2020-03-25'),
(3,3,'2020-03-24'),
(4,4,'2020-02-19');

insert into playlist
value('0','Rock clasico'),
('1','Pop 80s'),
('2','Indie & Chill'),
('3','Elecroparty'),
('4','Rolas chupa %100');

insert into contenidoplaylist
value(0,'0','2020-03-13'),
(1,'1','2020-02-01'),
(2,'2','2020-02-25'),
(3,'3','2020-01-05'),
(4,'4','2020-03-08');

insert into creacion
value('0',0,'2020-03-13'),
('1',1,'2020-01-19'),
('2',2,'2020-02-25'),
('3',3,'2020-01-05'),
('4',4,'2020-03-08');

insert into publicacion
value(0,'Hola,  a quienes les gusta el rock?',0,'2020-03-25'),
(1,'Me podrían recomendar pop?',1,'2020-03-23'),
(2,'Quién esta escuchando Radiohead ahora mismo?',2,'2020-03-14'),
(3,'Me gusta bailar mucho',3,'2020-03-18'),
(4,'Me guta peleal y salil lo fine de semana',4,'2020-03-01');

insert into comentario
value(0,'Me gusta el Rock','IMG020200423.png',0,2),
(0,'El pop tambien me gusta, escucha DuaLipa','IMG0606438.png',1,3),
(0,'No lo escuché',null,2,0),
(0,'Alguien para bailar?',null,3,3),
(0,'Muestrame cómo','perreointenso.gif',4,1);

insert into reaccion
value(0,2,1),
(1,3,1),
(2,0,1),
(3,3,1),
(4,1,1);
insert into etiqueta
value (0,2,'2020-03-25'),
(1,3,'2020-03-23'),
(2,0,'2020-03-14'),
(3,4,'2020-03-18'),
(4,3,'2020-03-01');

insert into donacion
value(0,0,'Muybuena la app',00.25),
(1,1,'Me gustaria que tenga temas en la iterfaz',05.45),
(2,2,'Me gusta mucho',00.05),
(3,3,'Muy buen trabajo',130.50),
(4,4,'Muy cool',10.25);

INSERT INTO Evento (CodEvento,Titulo,Categoria,Direccion)
 VALUES ("73513348799","Fiestanga1","Rock","1983 Augue C/"),
 ("48266122399","Party","Pop","6954 Lorem C/"),
 ("96888307999","Vivamus","Indie","7637 Etiam Calle"),
 ("73585411999","ElectroPreste","Electronica,","5995 In Avenida"),
("46768971299","Chupa","Reggaeton","Apdo.:535-3608 In Avda.");

INSERT INTO Asistencia (IdEvento,IdGrupo,Fecha)
 VALUES ("73513348799","tempus","2020-12-14 "),
 ("48266122399","et","2020-10-05 09:51:33"),
 ("96888307999","lectus","2020-05-05"),
 ("73585411999","sodales","2020-06-06"),
("46768971299","Nam","2019-04-06");

INSERT INTO Grupo (CodGrupo,Nombre,Estado,Categoria) 
VALUES ("tempus ","elit.","abierto","rock"),
(" et","cursus","privado","pop"),
(" lectus ","sodales","publico","indie,"), 
("sodales","Aliquam","cerrado","electronica"),
("92459093599","hendrerit","publico","reggaeton");

INSERT INTO Membresia (IDUsuario,IDGrupo,FechaEntrada)
 VALUES ("0","tempus","2020-05-27"),
 ("1","et","2020-01-23")
 ,("2","lectus","2020-04-03")
 ,("3","sodales","2019-03-23"),
("4","nam","2020-09-11");

INSERT INTO TipoDePublicidad (ID,Tipo,Duracion)
 VALUES ("0043598200","video","00:00:52"),
 ("7270498889","imagen.","00:00:10"),
 ("4076547720","video.","00:00:45"),
 ("6423973400","video","00:00:49"),
 ("7333313695","imagen","00:00:12");

INSERT INTO Publicitante (Id,Nombre,IdTipo) 
VALUES ("71945026299","Sed","0043598200"),
("73444266899","Cum","7270498889"),
("97573782799","etelo","4076547720"),
("11603876599","eu","6423973400"),
("44914974199","neque."," 7333313695");

INSERT INTO Publicidad (Id,IdPublicitante)
 VALUES ("33533790499","Sed"),
 ("38510626899","Cum"),
 ("95798974599","etelo"),
 ("95893653599","eu,"),
 ("56291666499","neque");
 
 INSERT INTO Ads (IdInter,IdPublicidad,Bloqueado) 
 VALUES (0," 33533790499","1"),
 (1," 38510626899","0"),
 (2," 95798974599.","1"),
 (3," 95893653599","0"),
 (4," 56291666499","0");
 
INSERT INTO Interfaz (Id,CodChat,IdUsuario)
 VALUES (0,0,0),
 (1,1,1),
 (2,2,2),
 (3,3,3),
 (4,4,4);
 
 INSERT INTO Mensaje (Id,Texto,TipoArchivo,IdDestinado,IdAutor,IdChat)
 VALUES ("169506250837","justo eu arcu.","Z0483",0,0,0),
 ("166304019042","Nunc pulvinar arcu et pede. Nunc sed","Z6540",1,1,1),
 ("167503292224","sollicitudin a, malesuada id,","Z8468",2,2,2),
 ("160206278152","magna, malesuada vel, convallis","Z1184",3,3,3),
 ("167312242337","neque tellus, imperdiet non, vestibulum nec,","Z9473",4,4,4)