create table artista(
    codigo int NOT NULL AUTO_INCREMENT,
    nombre varchar(30),
    apellido varchar(15),
    pais varchar(20),
    PRIMARY KEY (codigo)
);
create table mensaje(
 ID int NOT NULL AUTO_INCREMENT,
 texto text(500),
 tipo_de_archivo varchar(100),
 votos_positivos int,
 votos_negativos int,
 PRIMARY KEY (ID)
);
create table cancion(
cod_cancion int NOT NULL AUTO_INCREMENT,
titulo varchar(200),
genero varchar(30),
duracion time,
cod_art int NOT NULL,
PRIMARY KEY (cod_cancion),
FOREIGN KEY (cod_art) REFERENCES artista(codigo)
);
create table usuario(
ID int NOT NULL AUTO_INCREMENT,
Nombre varchar(255) ,
Email varchar(255),
Pass varchar(255),
Numero_de_Telefono int,
Fecha_de_Nacimiento date,
Foto_de_perfil text(65535),
Descripcion text(65535),
PRIMARY KEY (ID)
);

