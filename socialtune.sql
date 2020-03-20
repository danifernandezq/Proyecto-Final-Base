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
  `IDpublicidad` varchar(255) NOT NULL,
  `Bloqueada` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDinter`,`IDpublicidad`),
  KEY `IDpublicidad` (`IDpublicidad`),
  CONSTRAINT `ads_ibfk_1` FOREIGN KEY (`IDinter`) REFERENCES `interfaz` (`ID`),
  CONSTRAINT `ads_ibfk_2` FOREIGN KEY (`IDpublicidad`) REFERENCES `publicidad` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `CodArtista` varchar(50) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Pais` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CodArtista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `IdEvento` varchar(50) NOT NULL,
  `IdGrupo` varchar(50) NOT NULL,
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`IdGrupo`,`IdEvento`),
  KEY `IdEvento` (`IdEvento`),
  CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`CodEvento`),
  CONSTRAINT `asistencia_ibfk_2` FOREIGN KEY (`IdGrupo`) REFERENCES `grupo` (`CodGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
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
  PRIMARY KEY (`ID`),
  KEY `IDUsuario` (`IDUsuario`),
  KEY `IDGenero` (`IDGenero`),
  CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `cancion_ibfk_2` FOREIGN KEY (`IDGenero`) REFERENCES `genero` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion`
--

LOCK TABLES `cancion` WRITE;
/*!40000 ALTER TABLE `cancion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `ID` varchar(255) NOT NULL,
  `Texto` mediumtext,
  `TipoArchivo` varchar(255) DEFAULT NULL,
  `IDPublicacion` varchar(255) DEFAULT NULL,
  `IDUsuario` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDPublicacion` (`IDPublicacion`),
  KEY `IDUsuario` (`IDUsuario`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`IDPublicacion`) REFERENCES `publicacion` (`ID`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composicion`
--

DROP TABLE IF EXISTS `composicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composicion` (
  `IDArtista` varchar(50) NOT NULL,
  `IDCancion` int NOT NULL,
  `AñoLanzamiento` year DEFAULT NULL,
  PRIMARY KEY (`IDArtista`,`IDCancion`),
  KEY `IDCancion` (`IDCancion`),
  CONSTRAINT `composicion_ibfk_1` FOREIGN KEY (`IDArtista`) REFERENCES `artista` (`CodArtista`),
  CONSTRAINT `composicion_ibfk_2` FOREIGN KEY (`IDCancion`) REFERENCES `cancion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composicion`
--

LOCK TABLES `composicion` WRITE;
/*!40000 ALTER TABLE `composicion` DISABLE KEYS */;
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
  `IDPlaylist` varchar(255) NOT NULL,
  `Agregado` datetime DEFAULT NULL,
  PRIMARY KEY (`IDPlaylist`,`IDCancion`),
  KEY `IDCancion` (`IDCancion`),
  CONSTRAINT `contenidoplaylist_ibfk_1` FOREIGN KEY (`IDPlaylist`) REFERENCES `playlist` (`CodPlaylist`),
  CONSTRAINT `contenidoplaylist_ibfk_2` FOREIGN KEY (`IDCancion`) REFERENCES `cancion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidoplaylist`
--

LOCK TABLES `contenidoplaylist` WRITE;
/*!40000 ALTER TABLE `contenidoplaylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `contenidoplaylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creacion`
--

DROP TABLE IF EXISTS `creacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creacion` (
  `IDPlaylist` varchar(255) NOT NULL,
  `IDUsuario` int NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`IDPlaylist`,`IDUsuario`),
  KEY `IDUsuario` (`IDUsuario`),
  CONSTRAINT `creacion_ibfk_1` FOREIGN KEY (`IDPlaylist`) REFERENCES `playlist` (`CodPlaylist`),
  CONSTRAINT `creacion_ibfk_2` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creacion`
--

LOCK TABLES `creacion` WRITE;
/*!40000 ALTER TABLE `creacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `creacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donacion`
--

DROP TABLE IF EXISTS `donacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donacion` (
  `Id` int NOT NULL,
  `Idusuario` int NOT NULL,
  `feedback` text,
  `monto` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Idusuario`,`Id`),
  CONSTRAINT `donacion_ibfk_1` FOREIGN KEY (`Idusuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donacion`
--

LOCK TABLES `donacion` WRITE;
/*!40000 ALTER TABLE `donacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `donacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiqueta`
--

DROP TABLE IF EXISTS `etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etiqueta` (
  `IDPublicacion` varchar(255) NOT NULL,
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
/*!40000 ALTER TABLE `etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `CodEvento` varchar(50) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Categoria` varchar(50) DEFAULT NULL,
  `Direccion` text,
  PRIMARY KEY (`CodEvento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `CodGrupo` varchar(50) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Estado` varchar(15) DEFAULT NULL,
  `Categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CodGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interfaz`
--

LOCK TABLES `interfaz` WRITE;
/*!40000 ALTER TABLE `interfaz` DISABLE KEYS */;
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
  `IDGrupo` varchar(50) NOT NULL,
  `FechaEntrada` date DEFAULT NULL,
  PRIMARY KEY (`IDUsuario`,`IDGrupo`),
  KEY `IDGrupo` (`IDGrupo`),
  CONSTRAINT `membresia_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `membresia_ibfk_2` FOREIGN KEY (`IDGrupo`) REFERENCES `grupo` (`CodGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membresia`
--

LOCK TABLES `membresia` WRITE;
/*!40000 ALTER TABLE `membresia` DISABLE KEYS */;
/*!40000 ALTER TABLE `membresia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensaje` (
  `ID` varchar(255) NOT NULL,
  `Texto` mediumtext,
  `tipoArchivo` varchar(255) DEFAULT NULL,
  `IdDestinado` int DEFAULT NULL,
  `IdAutor` int DEFAULT NULL,
  `IdChat` int DEFAULT NULL,
  KEY `IdDestinado` (`IdDestinado`),
  KEY `IdAutor` (`IdAutor`),
  KEY `IdChat` (`IdChat`),
  CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`IdDestinado`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `mensaje_ibfk_2` FOREIGN KEY (`IdAutor`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `mensaje_ibfk_3` FOREIGN KEY (`IdChat`) REFERENCES `interfaz` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `CodPlaylist` varchar(255) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CodPlaylist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacion` (
  `ID` varchar(255) NOT NULL,
  `Tipo` varchar(255) DEFAULT NULL,
  `IDUsuario` int DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDUsuario` (`IDUsuario`),
  CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicidad`
--

DROP TABLE IF EXISTS `publicidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicidad` (
  `ID` varchar(255) NOT NULL,
  `IDpublicitante` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDpublicitante` (`IDpublicitante`),
  CONSTRAINT `publicidad_ibfk_1` FOREIGN KEY (`IDpublicitante`) REFERENCES `publicitante` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicidad`
--

LOCK TABLES `publicidad` WRITE;
/*!40000 ALTER TABLE `publicidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicitante`
--

DROP TABLE IF EXISTS `publicitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicitante` (
  `ID` varchar(255) NOT NULL,
  `NombrePublicitante` varchar(255) DEFAULT NULL,
  `IDTipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDTipo` (`IDTipo`),
  CONSTRAINT `publicitante_ibfk_1` FOREIGN KEY (`IDTipo`) REFERENCES `tipodepublicidad` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicitante`
--

LOCK TABLES `publicitante` WRITE;
/*!40000 ALTER TABLE `publicitante` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicitante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reaccion`
--

DROP TABLE IF EXISTS `reaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reaccion` (
  `IDPublicacion` varchar(255) NOT NULL,
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
  CONSTRAINT `reproduccion_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `reproduccion_ibfk_2` FOREIGN KEY (`IDCancion`) REFERENCES `cancion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reproduccion`
--

LOCK TABLES `reproduccion` WRITE;
/*!40000 ALTER TABLE `reproduccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `reproduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodepublicidad`
--

DROP TABLE IF EXISTS `tipodepublicidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodepublicidad` (
  `ID` varchar(255) NOT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  `Duracion` time DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodepublicidad`
--

LOCK TABLES `tipodepublicidad` WRITE;
/*!40000 ALTER TABLE `tipodepublicidad` DISABLE KEYS */;
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
  `Contraseña` varchar(50) DEFAULT NULL,
  `DescripcionPerfil` mediumtext,
  `FotoDePerfil` varchar(255) DEFAULT NULL,
  `Telefono` int DEFAULT NULL,
  `FechaDeNacimiento` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-19 20:19:59
