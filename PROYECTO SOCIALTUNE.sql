-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: socialtune
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `IDinter` int NOT NULL,
  `IDpublicidad` int NOT NULL,
  `Bloqueada` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDinter`,`IDpublicidad`),
  KEY `IDpublicidad` (`IDpublicidad`),
  CONSTRAINT `ads_ibfk_1` FOREIGN KEY (`IDpublicidad`) REFERENCES `publicidad` (`ID`),
  CONSTRAINT `ads_ibfk_2` FOREIGN KEY (`IDinter`) REFERENCES `interfaz` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (48845,533790499,1),(488492,798974599,1),(488611,510626899,0),(488754,291666499,0),(4887563,893653599,0);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Pais` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'The Rolling Stones',NULL,'Inglaterra'),(2,'Lady Gaga',NULL,'Estados Unidos'),(3,'León','Larregui','México'),(4,'Davd','Guetta','Francia'),(5,'Manuel','Turizo','Colombia'),(6,'The Matchboock Romance',NULL,'Estados Unidos');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `IdEvento` int NOT NULL,
  `IdGrupo` int NOT NULL,
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`IdGrupo`,`IdEvento`),
  KEY `IdEvento` (`IdEvento`),
  CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`ID`),
  CONSTRAINT `asistencia_ibfk_2` FOREIGN KEY (`IdGrupo`) REFERENCES `grupo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (5555,3333,'2020-06-06'),(87932,9513,'2020-05-05'),(5589,12834,'2020-12-14'),(49832,67889,'2020-10-05'),(79899,989856,'2019-04-06');
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion`
--

DROP TABLE IF EXISTS `cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancion` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Duracion` time DEFAULT NULL,
  `TipoDeMusica` varchar(255) DEFAULT NULL,
  `IDUsuario` int DEFAULT NULL,
  `IDGenero` int DEFAULT NULL,
  `nombreCancion` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDUsuario` (`IDUsuario`),
  KEY `IDGenero` (`IDGenero`),
  CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `cancion_ibfk_2` FOREIGN KEY (`IDGenero`) REFERENCES `genero` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion`
--

LOCK TABLES `cancion` WRITE;
/*!40000 ALTER TABLE `cancion` DISABLE KEYS */;
INSERT INTO `cancion` VALUES (45,'00:03:52','Cancion Oficial',1,5,'Borraxxa'),(46,'00:05:41','Cancion Oficial',NULL,1,'Wild Horses'),(67,'00:04:06','Cancion Oficial',2,4,'Titanium'),(78,'00:05:41','Cancion Oficial',10,3,'Locos'),(98,'00:05:09','Cancion Oficial',4,2,'Bad Romance');
/*!40000 ALTER TABLE `cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Texto` mediumtext,
  `TipoArchivo` varchar(255) DEFAULT NULL,
  `IDPublicacion` int DEFAULT NULL,
  `IDUsuario` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDPublicacion` (`IDPublicacion`),
  KEY `IDUsuario` (`IDUsuario`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`IDPublicacion`) REFERENCES `publicacion` (`ID`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=97611 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1033,'Muestrame cómo','perreointenso.gif',33000215,3),(2203,'No lo escuché',NULL,6200132,1),(9687,'Me gusta el Rock','IMG020200423.png',78468523,3),(9946,'El pop tambien me gusta, escucha DuaLipa','IMG0606438.png',75544921,4),(97610,'Alguien para bailar?',NULL,33000215,4);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composicion`
--

DROP TABLE IF EXISTS `composicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composicion` (
  `IDArtista` int NOT NULL,
  `IDCancion` int NOT NULL,
  `YearLanzamiento` year DEFAULT NULL,
  `nombreComposision` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`IDArtista`,`IDCancion`),
  KEY `IDCancion` (`IDCancion`),
  CONSTRAINT `composicion_ibfk_1` FOREIGN KEY (`IDArtista`) REFERENCES `artista` (`ID`),
  CONSTRAINT `composicion_ibfk_2` FOREIGN KEY (`IDCancion`) REFERENCES `cancion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composicion`
--

LOCK TABLES `composicion` WRITE;
/*!40000 ALTER TABLE `composicion` DISABLE KEYS */;
INSERT INTO `composicion` VALUES (1,46,1971,'Sticky Fingers'),(2,98,2009,'The Fame Monster'),(3,78,2016,'Voluma'),(4,67,2012,'Nothing but the beat'),(5,45,2020,'Borraxxa');
/*!40000 ALTER TABLE `composicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenidoplaylist`
--

DROP TABLE IF EXISTS `contenidoplaylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenidoplaylist` (
  `IDCancion` int NOT NULL,
  `IDPlaylist` int NOT NULL,
  `Agregado` datetime DEFAULT NULL,
  PRIMARY KEY (`IDPlaylist`,`IDCancion`),
  KEY `IDCancion` (`IDCancion`),
  CONSTRAINT `contenidoplaylist_ibfk_1` FOREIGN KEY (`IDPlaylist`) REFERENCES `playlist` (`ID`),
  CONSTRAINT `contenidoplaylist_ibfk_2` FOREIGN KEY (`IDCancion`) REFERENCES `cancion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidoplaylist`
--

LOCK TABLES `contenidoplaylist` WRITE;
/*!40000 ALTER TABLE `contenidoplaylist` DISABLE KEYS */;
INSERT INTO `contenidoplaylist` VALUES (46,100,'2020-02-01 00:00:00'),(78,100,'2020-02-25 00:00:00'),(98,101,'2020-03-13 00:00:00'),(78,103,'2020-01-05 00:00:00'),(45,104,'2020-03-08 00:00:00');
/*!40000 ALTER TABLE `contenidoplaylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donacion`
--

DROP TABLE IF EXISTS `donacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donacion` (
  `ID` int NOT NULL,
  `IDUsuario` int NOT NULL,
  `feedback` text,
  `monto` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`IDUsuario`,`ID`),
  CONSTRAINT `donacion_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donacion`
--

LOCK TABLES `donacion` WRITE;
/*!40000 ALTER TABLE `donacion` DISABLE KEYS */;
INSERT INTO `donacion` VALUES (5001,1,'Me gustaria que tenga temas en la iterfaz',5.45),(5008,2,'Me gusta mucho',0.05),(5003,3,'Muy buen trabajo',130.50),(5004,4,'Muy cool',10.25),(5005,6,'El chat se cuelga un poco',0.10),(5002,7,'Muybuena la app',0.25);
/*!40000 ALTER TABLE `donacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiqueta`
--

DROP TABLE IF EXISTS `etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etiqueta` (
  `IDPublicacion` int NOT NULL,
  `IDUsuario` int NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`IDPublicacion`,`IDUsuario`),
  KEY `IDUsuario` (`IDUsuario`),
  CONSTRAINT `etiqueta_ibfk_1` FOREIGN KEY (`IDPublicacion`) REFERENCES `publicacion` (`ID`),
  CONSTRAINT `etiqueta_ibfk_2` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiqueta`
--

LOCK TABLES `etiqueta` WRITE;
/*!40000 ALTER TABLE `etiqueta` DISABLE KEYS */;
INSERT INTO `etiqueta` VALUES (6200132,1,'2020-03-14'),(33000215,3,'2020-03-23'),(75544921,4,'2020-03-18'),(78468523,3,'2020-03-01'),(449852665,2,'2020-03-25');
/*!40000 ALTER TABLE `etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(255) DEFAULT NULL,
  `Categoria` varchar(50) DEFAULT NULL,
  `Direccion` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=87933 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (5555,'ElectroPreste','Electronica,','5995 In Avenida'),(5589,'Drinks and rock','Rock','1983 Augue C/'),(49832,'Party','Pop','6954 Lorem C/'),(79899,'Chupa','Reggaeton','Apdo.:535-3608 In Avda.'),(87932,'Vivamus','Indie','7637 Etiam Calle');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Rock'),(2,'Pop'),(3,'Indie'),(4,'Electronica'),(5,'Reggaeton');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) DEFAULT NULL,
  `Estado` varchar(15) DEFAULT NULL,
  `Categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=989857 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (3333,'DjForever','cerrado','electronica'),(9513,'lectus','publico','indie,'),(12834,'Rockeros','abierto','rock'),(67889,'BestPop','privado','pop'),(989856,'Daddy Yankee lovers','publico','reggaeton');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interfaz`
--

DROP TABLE IF EXISTS `interfaz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interfaz` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Codchat` int DEFAULT NULL,
  `IDUsuario` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDUsuario` (`IDUsuario`),
  CONSTRAINT `interfaz_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4887564 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interfaz`
--

LOCK TABLES `interfaz` WRITE;
/*!40000 ALTER TABLE `interfaz` DISABLE KEYS */;
INSERT INTO `interfaz` VALUES (48845,777,1),(488492,772,3),(488611,771,2),(488754,774,5),(4887563,773,4);
/*!40000 ALTER TABLE `interfaz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membresia`
--

DROP TABLE IF EXISTS `membresia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membresia` (
  `IDUsuario` int NOT NULL,
  `IDGrupo` int NOT NULL,
  `FechaEntrada` date DEFAULT NULL,
  PRIMARY KEY (`IDUsuario`,`IDGrupo`),
  KEY `IDGrupo` (`IDGrupo`),
  CONSTRAINT `membresia_ibfk_1` FOREIGN KEY (`IDGrupo`) REFERENCES `grupo` (`ID`),
  CONSTRAINT `membresia_ibfk_2` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membresia`
--

LOCK TABLES `membresia` WRITE;
/*!40000 ALTER TABLE `membresia` DISABLE KEYS */;
INSERT INTO `membresia` VALUES (1,12834,'2020-05-27'),(2,67889,'2020-09-11'),(3,9513,'2020-01-23'),(4,3333,'2020-04-03'),(5,989856,'2019-03-23');
/*!40000 ALTER TABLE `membresia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensaje` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Texto` mediumtext,
  `tipoArchivo` varchar(255) DEFAULT NULL,
  `IdDestinado` int DEFAULT NULL,
  `IdAutor` int DEFAULT NULL,
  `IdChat` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IdDestinado` (`IdDestinado`),
  KEY `IdAutor` (`IdAutor`),
  KEY `IdChat` (`IdChat`),
  CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`IdDestinado`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `mensaje_ibfk_2` FOREIGN KEY (`IdAutor`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `mensaje_ibfk_3` FOREIGN KEY (`IdChat`) REFERENCES `interfaz` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1664019044 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES (96278152,'Tambien me gusta el indie',NULL,3,4,4887563),(169550837,'Me parece feo el Pop','Queasco.mp4',2,1,48845),(731222337,'Escucha esta rola','Coronao.mp3',4,5,488754),(1664019042,'Quieres salir a bailar el finde?','dance.gif',4,2,488611),(1664019043,'Prefiero quedarme en casa :(',NULL,2,4,488611);
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (100,'Rock clasico'),(101,'Pop 80s'),(102,'Indie & Chill'),(103,'Elecroparty'),(104,'Rolas chupa %100');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacion` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(255) DEFAULT NULL,
  `IDUsuario` int DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDUsuario` (`IDUsuario`),
  CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=449852666 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` VALUES (6200132,'Quién esta escuchando Radiohead ahora mismo?',3,'2020-03-14'),(33000215,'Me gusta bailar mucho',4,'2020-03-18'),(75544921,'Me podrían recomendar pop?',2,'2020-03-23'),(78468523,'Hola,  a quienes les gusta el rock?',1,'2020-03-25'),(449852665,'Me guta peleal y salil lo fine de semana',5,'2020-03-01');
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicidad`
--

DROP TABLE IF EXISTS `publicidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicidad` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IDpublicitante` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDpublicitante` (`IDpublicitante`),
  CONSTRAINT `publicidad_ibfk_1` FOREIGN KEY (`IDpublicitante`) REFERENCES `publicitante` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=893653600 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicidad`
--

LOCK TABLES `publicidad` WRITE;
/*!40000 ALTER TABLE `publicidad` DISABLE KEYS */;
INSERT INTO `publicidad` VALUES (893653599,116037659),(291666499,449149419),(510626899,734446689),(533790499,794502629),(798974599,975737279);
/*!40000 ALTER TABLE `publicidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicitante`
--

DROP TABLE IF EXISTS `publicitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicitante` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NombrePublicitante` varchar(255) DEFAULT NULL,
  `IDTipo` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDTipo` (`IDTipo`),
  CONSTRAINT `publicitante_ibfk_1` FOREIGN KEY (`IDTipo`) REFERENCES `tipodepublicidad` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=975737280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicitante`
--

LOCK TABLES `publicitante` WRITE;
/*!40000 ALTER TABLE `publicitante` DISABLE KEYS */;
INSERT INTO `publicitante` VALUES (116037659,'Veggies_For_U',64233400),(449149419,'FullChuño',73333695),(734446689,'Doggers',72798889),(794502629,'CocaChina corona real',438200),(975737279,'EspecialDrug',40747720);
/*!40000 ALTER TABLE `publicitante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reaccion`
--

DROP TABLE IF EXISTS `reaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reaccion` (
  `IDPublicacion` int NOT NULL,
  `IDUsuario` int NOT NULL,
  `darlike` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDPublicacion`,`IDUsuario`),
  KEY `IDUsuario` (`IDUsuario`),
  CONSTRAINT `reaccion_ibfk_1` FOREIGN KEY (`IDPublicacion`) REFERENCES `publicacion` (`ID`),
  CONSTRAINT `reaccion_ibfk_2` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reaccion`
--

LOCK TABLES `reaccion` WRITE;
/*!40000 ALTER TABLE `reaccion` DISABLE KEYS */;
INSERT INTO `reaccion` VALUES (6200132,1,1),(33000215,1,1),(75544921,2,1),(78468523,3,1),(449852665,3,1);
/*!40000 ALTER TABLE `reaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reproduccion`
--

DROP TABLE IF EXISTS `reproduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reproduccion` (
  `IDCancion` int NOT NULL,
  `IDUsuario` int NOT NULL,
  `Reproduccion` datetime DEFAULT NULL,
  PRIMARY KEY (`IDUsuario`,`IDCancion`),
  KEY `IDCancion` (`IDCancion`),
  CONSTRAINT `reproduccion_ibfk_1` FOREIGN KEY (`IDCancion`) REFERENCES `cancion` (`ID`),
  CONSTRAINT `reproduccion_ibfk_2` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reproduccion`
--

LOCK TABLES `reproduccion` WRITE;
/*!40000 ALTER TABLE `reproduccion` DISABLE KEYS */;
INSERT INTO `reproduccion` VALUES (46,1,'2020-03-22 00:00:00'),(78,2,'2020-03-25 00:00:00'),(67,3,'2020-03-25 00:00:00'),(98,4,'2020-03-24 00:00:00'),(45,5,'2020-02-19 00:00:00');
/*!40000 ALTER TABLE `reproduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodepublicidad`
--

DROP TABLE IF EXISTS `tipodepublicidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodepublicidad` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(30) DEFAULT NULL,
  `Duracion` time DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=73333696 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodepublicidad`
--

LOCK TABLES `tipodepublicidad` WRITE;
/*!40000 ALTER TABLE `tipodepublicidad` DISABLE KEYS */;
INSERT INTO `tipodepublicidad` VALUES (438200,'video','00:00:52'),(40747720,'video.','00:00:45'),(64233400,'video','00:00:49'),(72798889,'imagen.','00:00:10'),(73333695,'imagen','00:00:12');
/*!40000 ALTER TABLE `tipodepublicidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(25) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `DescripcionPerfil` mediumtext,
  `FotoDePerfil` varchar(255) DEFAULT NULL,
  `Telefono` int DEFAULT NULL,
  `FechaDeNacimiento` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juan Carrasco','CarrascoJuansi@gmail.com','florsitaamor2020','Estudiante de la Universidad Privada Boliviana','img_23042020.jpg',6557843,'1998-03-30'),(2,'Carlos Vilaseca','ChalieVila@gmail.com','carlitos001','Bailarín profecional, Boliviano','img23022020uxzafgs.jpeg',60434354,'1992-06-23'),(3,'Cristian Paz','crispaz@gmail.com','pazcris123','Estudiante de la Universidad Catolica','img_25062020.jpg',69823161,'1997-05-14'),(4,'Lucia Gonzales','lalugon@gmail.com','lugonza001','Modelo Profesional','img1561951uxzafgs.jpeg',60316670,'1999-08-24'),(5,'Avye Morrow','avyerrowmo@gmail.com','ayves241','Fotógrafo Profesional Chileno','img15161203.png',78912346,'1990-01-12'),(6,'Julian Aramburo','julyguns@gmail.com','julysito15','Diseñador Grafico Profesional','img8794565.jpg',79151610,'2000-12-14'),(7,'Sergio Chavez','Chavezgio@gmail.com','sergitocha','Ingeniero Comercial, Boliviano','img251561.jpg',60434354,'1988-12-29'),(8,'Carlita Bresse','Bressecarla@gmail.com','bressie354',' Farmaceutica ','img64720224.png',76118103,'1995-04-11');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_playlist`
--

DROP TABLE IF EXISTS `usuario_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_playlist` (
  `IDPlaylist` int NOT NULL,
  `IDUsuario` int NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`IDUsuario`,`IDPlaylist`),
  KEY `IDPlaylist` (`IDPlaylist`),
  CONSTRAINT `usuario_playlist_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `usuario_playlist_ibfk_2` FOREIGN KEY (`IDPlaylist`) REFERENCES `playlist` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_playlist`
--

LOCK TABLES `usuario_playlist` WRITE;
/*!40000 ALTER TABLE `usuario_playlist` DISABLE KEYS */;
INSERT INTO `usuario_playlist` VALUES (100,1,'2020-03-13'),(101,2,'2020-01-19'),(102,3,'2020-02-25'),(103,4,'2020-01-05'),(104,5,'2020-03-08');
/*!40000 ALTER TABLE `usuario_playlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-24 20:18:49
