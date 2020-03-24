
DROP DATABASE IF exists SOCIALTUNE;
CREATE DATABASE SOCIALTUNE;
USE SOCIALTUNE;
DROP TABLE IF EXISTS usuario;

CREATE TABLE usuario (
  ID int NOT NULL AUTO_INCREMENT,
  Nombre varchar(25) DEFAULT NULL,
  Email varchar(100) DEFAULT NULL,
  Password varchar(50) DEFAULT NULL,
  DescripcionPerfil mediumtext,
  FotoDePerfil varchar(255) DEFAULT NULL,
  Telefono int DEFAULT NULL,
  FechaDeNacimiento date DEFAULT NULL,
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS artista;
CREATE TABLE artista (
  ID int NOT NULL AUTO_INCREMENT,
  Nombre varchar(30) DEFAULT NULL,
  Apellido varchar(50) DEFAULT NULL,
  Pais varchar(30) DEFAULT NULL,
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS playlist;

CREATE TABLE playlist (
  ID int NOT NULL AUTO_INCREMENT,
  Nombre varchar(255) DEFAULT NULL,
  PRIMARY KEY (ID)
) ;


DROP TABLE IF EXISTS genero;

CREATE TABLE genero (
  ID int NOT NULL AUTO_INCREMENT,
  Nombre varchar(15) DEFAULT NULL,
  PRIMARY KEY (ID)
) ;

DROP TABLE IF EXISTS grupo;

CREATE TABLE grupo (
  ID int NOT NULL AUTO_INCREMENT,
  Nombre varchar(255) DEFAULT NULL,
  Estado varchar(15) DEFAULT NULL,
  Categoria varchar(50) DEFAULT NULL,
  PRIMARY KEY (ID)
  );


DROP TABLE IF EXISTS evento;

CREATE TABLE evento (
  ID int NOT NULL AUTO_INCREMENT,
  Titulo varchar(255) DEFAULT NULL,
  Categoria varchar(50) DEFAULT NULL,
  Direccion text,
  PRIMARY KEY (ID)
) ;




DROP TABLE IF EXISTS asistencia;
CREATE TABLE asistencia (
  IdEvento int NOT NULL,
  IdGrupo int NOT NULL,
  Fecha date DEFAULT NULL,
  
  FOREIGN KEY (IdEvento) REFERENCES Evento(ID),
  FOREIGN KEY (IDGrupo) REFERENCES Grupo(ID),
  CONSTRAINT PK_Asistencia PRIMARY KEY (IdGrupo,IdEvento)
) ;

--

--
-- Table structure for table cancion
--

DROP TABLE IF EXISTS cancion;
CREATE TABLE cancion (
  ID int NOT NULL AUTO_INCREMENT,
  Duracion time DEFAULT NULL,
  TipoDeMusica varchar(255) DEFAULT NULL,
  IDUsuario int DEFAULT NULL,
  IDGenero int DEFAULT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (IDUsuario) REFERENCES USUARIO(ID),
  FOREIGN KEY (IDGenero) REFERENCES GENERO(ID)
) ;

--
-- Dumping data for table cancion
--

-- Table structure for table comentario
--



DROP TABLE IF EXISTS composicion;

CREATE TABLE composicion (
  IDArtista int NOT NULL,
  IDCancion int NOT NULL,
  YearLanzamiento year DEFAULT NULL,
  FOREIGN KEY  (IDArtista) REFERENCES Artista(ID),
  FOREIGN KEY (IDCancion) REFERENCES Cancion(ID),
  CONSTRAINT PK_Composicion   PRIMARY KEY (IDArtista,IDCancion)
) ;


DROP TABLE IF EXISTS contenidoplaylist;

CREATE TABLE contenidoplaylist (
  IDCancion int NOT NULL,
  IDPlaylist int NOT NULL,
  Agregado datetime DEFAULT NULL,

  FOREIGN KEY (IDPlaylist) REFERENCES Playlist(ID),
  FOREIGN KEY (IDCancion) REFERENCES cancion (ID),
  CONSTRAINT PK_Contenidoplaylist   PRIMARY KEY (IDPlaylist,IDCancion)
) ;

--

DROP TABLE IF EXISTS usuario_playlist;
CREATE TABLE usuario_playlist (
  
  IDPlaylist int NOT NULL,
  IDUsuario int NOT NULL,
  fecha date DEFAULT NULL, 
  
  FOREIGN KEY (IDUsuario) REFERENCES Usuario(ID),
  FOREIGN KEY (IDPlaylist) REFERENCES Playlist(ID),
  CONSTRAINT PK_Usuario_Playlist PRIMARY KEY (IDUsuario, IDPlaylist)
);

DROP TABLE IF EXISTS donacion;
CREATE TABLE donacion (
  ID int NOT NULL,
  IDUsuario int NOT NULL,
  feedback text,
  monto decimal(5,2) DEFAULT NULL,
  FOREIGN KEY (IDUsuario) REFERENCES Usuario(ID),
  CONSTRAINT PK_Donacion PRIMARY KEY (IDUsuario,ID)
) ;



DROP TABLE IF EXISTS interfaz;

CREATE TABLE interfaz (
  ID int NOT NULL AUTO_INCREMENT,
  Codchat int DEFAULT NULL,
  IDUsuario int DEFAULT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (IDUsuario) REFERENCES usuario (ID)
) ;


DROP TABLE IF EXISTS membresia;

CREATE TABLE membresia (
  IDUsuario int NOT NULL,
  IDGrupo int NOT NULL,
  FechaEntrada date DEFAULT NULL,
  PRIMARY KEY (IDUsuario,IDGrupo),
  FOREIGN KEY (IDGrupo) REFERENCES Grupo(ID),
  FOREIGN KEY (IDUsuario) REFERENCES usuario (ID)
) ;



DROP TABLE IF EXISTS mensaje;

CREATE TABLE mensaje (
  ID int NOT NULL AUTO_INCREMENT,
  Texto mediumtext,
  tipoArchivo varchar(255) DEFAULT NULL,
  IdDestinado int DEFAULT NULL,
  IdAutor int DEFAULT NULL,
  IdChat int DEFAULT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (IdDestinado) REFERENCES usuario (ID),
  FOREIGN KEY (IdAutor) REFERENCES usuario (ID),
  FOREIGN KEY (IdChat) REFERENCES interfaz (ID)
);




DROP TABLE IF EXISTS publicacion;

CREATE TABLE publicacion (
  ID int NOT NULL AUTO_INCREMENT,
  Tipo varchar(255) DEFAULT NULL,
  IDUsuario int DEFAULT NULL,
  FechaCreacion date DEFAULT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (IDUsuario) REFERENCES usuario(ID)
);

DROP TABLE IF EXISTS comentario;

CREATE TABLE comentario (
  ID int NOT NULL AUTO_INCREMENT,
  Texto mediumtext,
  TipoArchivo varchar(255) DEFAULT NULL,
  IDPublicacion int DEFAULT NULL,
  IDUsuario int DEFAULT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (IDPublicacion) REFERENCES Publicacion(ID),
  FOREIGN KEY (IDUsuario) REFERENCES usuario (ID)
) ;

DROP TABLE IF EXISTS etiqueta;
CREATE TABLE etiqueta (
  IDPublicacion int NOT NULL,
  IDUsuario int NOT NULL,
  fecha date DEFAULT NULL,
  FOREIGN KEY (IDPublicacion) REFERENCES Publicacion(ID),
  FOREIGN KEY (IDUsuario) REFERENCES usuario(ID),
  CONSTRAINT PK_Etiqueta PRIMARY KEY (IDPublicacion,IDUsuario)
) ;



DROP TABLE IF EXISTS tipodepublicidad;

CREATE TABLE tipodepublicidad (
  ID int NOT NULL AUTO_INCREMENT,
  Tipo varchar(30) DEFAULT NULL,
  Duracion time DEFAULT NULL,
  PRIMARY KEY (ID)
);


DROP TABLE IF EXISTS publicitante;

CREATE TABLE publicitante (
  ID int NOT NULL AUTO_INCREMENT,
  NombrePublicitante varchar(255) DEFAULT NULL,
  IDTipo int NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (IDTipo) REFERENCES tipodepublicidad (ID)
);

DROP TABLE IF EXISTS publicidad;

CREATE TABLE publicidad (
  ID int NOT NULL AUTO_INCREMENT,
  IDpublicitante int DEFAULT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (IDpublicitante) REFERENCES Publicitante(ID)
) ;






DROP TABLE IF EXISTS reaccion;

CREATE TABLE reaccion (
  IDPublicacion int NOT NULL,
  IDUsuario int NOT NULL,
  darlike tinyint(1) DEFAULT NULL,
  foreign key (IDPublicacion) REFERENCES Publicacion(ID),
  foreign key (IDUsuario) REFERENCES Usuario(ID),
  CONSTRAINT PK_Reaccion PRIMARY KEY (IDPublicacion, IDUsuario)
);


DROP TABLE IF EXISTS reproduccion;

CREATE TABLE reproduccion(
  IDCancion int NOT NULL,
  IDUsuario int NOT NULL,
  Reproduccion datetime DEFAULT NULL,
  FOREIGN KEY (IDCancion) References Cancion(ID),
  FOREIGN KEY (IDUsuario) REFERENCES Usuario(ID),
  CONSTRAINT PK_Reproduccion PRIMARY KEY (IDUsuario, IDCancion)
);

DROP TABLE IF EXISTS ads;

CREATE TABLE ads (
  IDinter int NOT NULL,
  IDpublicidad int NOT NULL,
  Bloqueada tinyint(1) DEFAULT NULL,
  
  FOREIGN KEY (IDpublicidad) REFERENCES publicidad(ID),
  FOREIGN KEY (IDinter) REFERENCES interfaz(ID),
  CONSTRAINT PK_ads  PRIMARY KEY (IDinter,IDpublicidad)
);


