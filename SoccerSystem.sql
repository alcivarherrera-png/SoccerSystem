-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: SoccerSystem
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Campeonato`
--

DROP TABLE IF EXISTS `Campeonato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Campeonato` (
  `id_campeonato` varchar(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `premio` int NOT NULL,
  `codigo_presidente` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_campeonato`),
  KEY `codigo_presidente` (`codigo_presidente`),
  CONSTRAINT `Campeonato_ibfk_1` FOREIGN KEY (`codigo_presidente`) REFERENCES `Presidente` (`id_presidente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campeonato`
--

LOCK TABLES `Campeonato` WRITE;
/*!40000 ALTER TABLE `Campeonato` DISABLE KEYS */;
INSERT INTO `Campeonato` VALUES ('CAM001','Copa Barrial Norte','2026-01-10',1000,'PRE001'),('CAM002','Liga Comunitaria','2026-01-15',800,'PRE002'),('CAM003','Torneo Juvenil','2026-02-01',500,'PRE003'),('CAM004','Copa Zamora','2026-02-12',1200,'PRE004'),('CAM005','Liga Deportiva Sur','2026-03-05',700,'PRE005'),('CAM006','Campeonato Amigos','2026-03-18',900,'PRE006'),('CAM007','Copa Integracion','2026-04-02',1100,'PRE007'),('CAM008','Liga Master','2026-04-20',600,'PRE008'),('CAM009','Torneo Relampago','2026-05-01',400,'PRE009'),('CAM010','Super Copa Barrial','2026-05-15',1500,'PRE010');
/*!40000 ALTER TABLE `Campeonato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campeonato_Equipo`
--

DROP TABLE IF EXISTS `Campeonato_Equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Campeonato_Equipo` (
  `id_camp_equipo` varchar(10) NOT NULL,
  `codigo_campeonato` varchar(10) NOT NULL,
  `nombre_equipo` varchar(15) NOT NULL,
  PRIMARY KEY (`id_camp_equipo`),
  KEY `codigo_campeonato` (`codigo_campeonato`),
  KEY `nombre_equipo` (`nombre_equipo`),
  CONSTRAINT `Campeonato_Equipo_ibfk_1` FOREIGN KEY (`codigo_campeonato`) REFERENCES `Campeonato` (`id_campeonato`),
  CONSTRAINT `Campeonato_Equipo_ibfk_2` FOREIGN KEY (`nombre_equipo`) REFERENCES `Equipo` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campeonato_Equipo`
--

LOCK TABLES `Campeonato_Equipo` WRITE;
/*!40000 ALTER TABLE `Campeonato_Equipo` DISABLE KEYS */;
INSERT INTO `Campeonato_Equipo` VALUES ('CEQ001','CAM001','Halcones'),('CEQ002','CAM002','Titanes'),('CEQ003','CAM003','LeonesFC'),('CEQ004','CAM004','Guerreros'),('CEQ005','CAM005','Dinamicos'),('CEQ006','CAM006','RealSur'),('CEQ007','CAM007','Atleticos'),('CEQ008','CAM008','UnionFC'),('CEQ009','CAM009','Estrellas'),('CEQ010','CAM010','Juventud');
/*!40000 ALTER TABLE `Campeonato_Equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campeonato_Escenario`
--

DROP TABLE IF EXISTS `Campeonato_Escenario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Campeonato_Escenario` (
  `id_camp_escenario` varchar(10) NOT NULL,
  `codigo_campeonato` varchar(10) NOT NULL,
  `codigo_escenario` varchar(10) NOT NULL,
  PRIMARY KEY (`id_camp_escenario`),
  KEY `codigo_campeonato` (`codigo_campeonato`),
  KEY `codigo_escenario` (`codigo_escenario`),
  CONSTRAINT `Campeonato_Escenario_ibfk_1` FOREIGN KEY (`codigo_campeonato`) REFERENCES `Campeonato` (`id_campeonato`),
  CONSTRAINT `Campeonato_Escenario_ibfk_2` FOREIGN KEY (`codigo_escenario`) REFERENCES `Escenario` (`id_escenario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campeonato_Escenario`
--

LOCK TABLES `Campeonato_Escenario` WRITE;
/*!40000 ALTER TABLE `Campeonato_Escenario` DISABLE KEYS */;
INSERT INTO `Campeonato_Escenario` VALUES ('CE001','CAM001','ESC001'),('CE002','CAM002','ESC002'),('CE003','CAM003','ESC003'),('CE004','CAM004','ESC004'),('CE005','CAM005','ESC005'),('CE006','CAM006','ESC006'),('CE007','CAM007','ESC007'),('CE008','CAM008','ESC008'),('CE009','CAM009','ESC009'),('CE010','CAM010','ESC010');
/*!40000 ALTER TABLE `Campeonato_Escenario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Encuentro`
--

DROP TABLE IF EXISTS `Encuentro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Encuentro` (
  `id_encuentro` varchar(10) NOT NULL,
  `fecha` date NOT NULL,
  `duracion` varchar(10) NOT NULL,
  `codigo_campeonato` varchar(10) DEFAULT NULL,
  `codigo_stast` varchar(10) DEFAULT NULL,
  `id_personal` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_encuentro`),
  KEY `codigo_campeonato` (`codigo_campeonato`),
  KEY `codigo_stast` (`codigo_stast`),
  KEY `id_personal` (`id_personal`),
  CONSTRAINT `Encuentro_ibfk_1` FOREIGN KEY (`codigo_campeonato`) REFERENCES `Campeonato` (`id_campeonato`),
  CONSTRAINT `Encuentro_ibfk_2` FOREIGN KEY (`codigo_stast`) REFERENCES `Estadisticas` (`id_estadistica`),
  CONSTRAINT `Encuentro_ibfk_3` FOREIGN KEY (`id_personal`) REFERENCES `Personal_Mesa` (`id_personal_mesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Encuentro`
--

LOCK TABLES `Encuentro` WRITE;
/*!40000 ALTER TABLE `Encuentro` DISABLE KEYS */;
INSERT INTO `Encuentro` VALUES ('ENC001','2026-01-12','90 min','CAM001','EST001','PM001'),('ENC002','2026-01-18','90 min','CAM002','EST002','PM002'),('ENC003','2026-02-03','95 min','CAM003','EST003','PM003'),('ENC004','2026-02-15','90 min','CAM004','EST004','PM004'),('ENC005','2026-03-08','92 min','CAM005','EST005','PM005'),('ENC006','2026-03-20','90 min','CAM006','EST006','PM006'),('ENC007','2026-04-05','94 min','CAM007','EST007','PM007'),('ENC008','2026-04-22','90 min','CAM008','EST008','PM008'),('ENC009','2026-05-03','91 min','CAM009','EST009','PM009'),('ENC010','2026-05-18','90 min','CAM010','EST010','PM010');
/*!40000 ALTER TABLE `Encuentro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entrenador`
--

DROP TABLE IF EXISTS `Entrenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Entrenador` (
  `id_entrenador` varchar(10) NOT NULL,
  `certificado` enum('Habilitado','No Habilitado') NOT NULL,
  `cedula_persona` varchar(10) NOT NULL,
  `nombre_equipo` varchar(15) NOT NULL,
  PRIMARY KEY (`id_entrenador`),
  KEY `cedula_persona` (`cedula_persona`),
  KEY `nombre_equipo` (`nombre_equipo`),
  CONSTRAINT `Entrenador_ibfk_1` FOREIGN KEY (`cedula_persona`) REFERENCES `Persona` (`cedula`),
  CONSTRAINT `Entrenador_ibfk_2` FOREIGN KEY (`nombre_equipo`) REFERENCES `Equipo` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entrenador`
--

LOCK TABLES `Entrenador` WRITE;
/*!40000 ALTER TABLE `Entrenador` DISABLE KEYS */;
INSERT INTO `Entrenador` VALUES ('ENT001','Habilitado','1100000001','Halcones'),('ENT002','Habilitado','1100000002','Titanes'),('ENT003','No Habilitado','1100000003','LeonesFC'),('ENT004','Habilitado','1100000004','Guerreros'),('ENT005','Habilitado','1100000005','Dinamicos'),('ENT006','No Habilitado','1100000006','RealSur'),('ENT007','Habilitado','1100000007','Atleticos'),('ENT008','Habilitado','1100000008','UnionFC'),('ENT009','No Habilitado','1100000009','Estrellas'),('ENT010','Habilitado','1100000010','Juventud');
/*!40000 ALTER TABLE `Entrenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Equipo`
--

DROP TABLE IF EXISTS `Equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipo` (
  `nombre` varchar(15) NOT NULL,
  `color_uniforme` varchar(10) NOT NULL,
  `denominacion` enum('Visitante','Local') NOT NULL,
  `id_personal` varchar(10) NOT NULL,
  PRIMARY KEY (`nombre`),
  KEY `id_personal` (`id_personal`),
  CONSTRAINT `Equipo_ibfk_1` FOREIGN KEY (`id_personal`) REFERENCES `Personal_Mesa` (`id_personal_mesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipo`
--

LOCK TABLES `Equipo` WRITE;
/*!40000 ALTER TABLE `Equipo` DISABLE KEYS */;
INSERT INTO `Equipo` VALUES ('Atleticos','Celeste','Local','PM007'),('Dinamicos','Blanco','Local','PM005'),('Estrellas','Morado','Local','PM009'),('Guerreros','Negro','Visitante','PM004'),('Halcones','Rojo','Local','PM001'),('Juventud','Gris','Visitante','PM010'),('LeonesFC','Verde','Local','PM003'),('RealSur','Amarillo','Visitante','PM006'),('Titanes','Azul','Visitante','PM002'),('UnionFC','Naranja','Visitante','PM008');
/*!40000 ALTER TABLE `Equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Escenario`
--

DROP TABLE IF EXISTS `Escenario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Escenario` (
  `id_escenario` varchar(10) NOT NULL,
  `tamanio` varchar(10) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_escenario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Escenario`
--

LOCK TABLES `Escenario` WRITE;
/*!40000 ALTER TABLE `Escenario` DISABLE KEYS */;
INSERT INTO `Escenario` VALUES ('ESC001','Grande','Barrio Central'),('ESC002','Mediano','Av Universitaria'),('ESC003','Pequeño','Sector El Prado'),('ESC004','Grande','Cdla Deportiva'),('ESC005','Mediano','Barrio La Paz'),('ESC006','Grande','Av del Maestro'),('ESC007','Pequeño','Sector Norte'),('ESC008','Mediano','Barrio Obrero'),('ESC009','Grande','Av Zamora'),('ESC010','Pequeño','Sector Sur');
/*!40000 ALTER TABLE `Escenario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Estadisticas`
--

DROP TABLE IF EXISTS `Estadisticas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estadisticas` (
  `id_estadistica` varchar(10) NOT NULL,
  `cantidad_goles` int DEFAULT NULL,
  `cantidad_corners` int DEFAULT NULL,
  `marcador_final` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_estadistica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estadisticas`
--

LOCK TABLES `Estadisticas` WRITE;
/*!40000 ALTER TABLE `Estadisticas` DISABLE KEYS */;
INSERT INTO `Estadisticas` VALUES ('EST001',3,5,'2-1'),('EST002',1,3,'1-0'),('EST003',6,7,'4-2'),('EST004',0,2,'0-0'),('EST005',4,6,'3-1'),('EST006',8,8,'5-3'),('EST007',4,4,'2-2'),('EST008',3,5,'1-2'),('EST009',10,9,'6-4'),('EST010',3,3,'3-0');
/*!40000 ALTER TABLE `Estadisticas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jugador`
--

DROP TABLE IF EXISTS `Jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Jugador` (
  `numero_camisa` int NOT NULL,
  `posicion_juego` varchar(15) DEFAULT NULL,
  `cedula_persona` varchar(10) NOT NULL,
  `nombre_equipo` varchar(15) NOT NULL,
  PRIMARY KEY (`numero_camisa`),
  KEY `cedula_persona` (`cedula_persona`),
  KEY `nombre_equipo` (`nombre_equipo`),
  CONSTRAINT `Jugador_ibfk_1` FOREIGN KEY (`cedula_persona`) REFERENCES `Persona` (`cedula`),
  CONSTRAINT `Jugador_ibfk_2` FOREIGN KEY (`nombre_equipo`) REFERENCES `Equipo` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jugador`
--

LOCK TABLES `Jugador` WRITE;
/*!40000 ALTER TABLE `Jugador` DISABLE KEYS */;
INSERT INTO `Jugador` VALUES (1,'Mediocampo','1100000023','Dinamicos'),(2,'Extremo','1100000015','LeonesFC'),(3,'Arquero','1100000006','Titanes'),(4,'Delantero','1100000004','Halcones'),(5,'Extremo','1100000020','Guerreros'),(6,'Defensa','1100000012','LeonesFC'),(7,'Defensa','1100000002','Halcones'),(8,'Mediocampo','1100000018','Guerreros'),(9,'Mediocampo','1100000008','Titanes'),(10,'Extremo','1100000025','Dinamicos'),(11,'Delantero','1100000014','LeonesFC'),(12,'Arquero','1100000001','Halcones'),(13,'Defensa','1100000022','Dinamicos'),(14,'Extremo','1100000010','Titanes'),(15,'Mediocampo','1100000028','RealSur'),(16,'Defensa','1100000017','Guerreros'),(17,'Arquero','1100000026','RealSur'),(18,'Defensa','1100000007','Titanes'),(19,'Mediocampo','1100000003','Halcones'),(20,'Delantero','1100000034','Atleticos'),(21,'Extremo','1100000030','RealSur'),(22,'Arquero','1100000011','LeonesFC'),(23,'Defensa','1100000032','Atleticos'),(24,'Delantero','1100000024','Dinamicos'),(25,'Extremo','1100000005','Halcones'),(26,'Arquero','1100000036','UnionFC'),(27,'Delantero','1100000009','Titanes'),(28,'Defensa','1100000027','RealSur'),(29,'Delantero','1100000019','Guerreros'),(30,'Arquero','1100000031','Atleticos'),(31,'Mediocampo','1100000013','LeonesFC'),(32,'Extremo','1100000035','Atleticos'),(33,'Delantero','1100000029','RealSur'),(34,'Defensa','1100000037','UnionFC'),(35,'Arquero','1100000016','Guerreros'),(36,'Mediocampo','1100000043','Estrellas'),(37,'Delantero','1100000039','UnionFC'),(38,'Arquero','1100000041','Estrellas'),(39,'Defensa','1100000047','Juventud'),(40,'Arquero','1100000021','Dinamicos'),(41,'Mediocampo','1100000033','Atleticos'),(42,'Mediocampo','1100000038','UnionFC'),(43,'Extremo','1100000045','Estrellas'),(44,'Extremo','1100000040','UnionFC'),(45,'Defensa','1100000042','Estrellas'),(46,'Mediocampo','1100000048','Juventud'),(47,'Delantero','1100000049','Juventud'),(48,'Delantero','1100000044','Estrellas'),(49,'Extremo','1100000050','Juventud'),(50,'Arquero','1100000046','Juventud');
/*!40000 ALTER TABLE `Jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Persona`
--

DROP TABLE IF EXISTS `Persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Persona` (
  `cedula` varchar(10) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellido` varchar(15) NOT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persona`
--

LOCK TABLES `Persona` WRITE;
/*!40000 ALTER TABLE `Persona` DISABLE KEYS */;
INSERT INTO `Persona` VALUES ('1100000001','Carlos','Mendoza'),('1100000002','Luis','Vega'),('1100000003','Andres','Lopez'),('1100000004','Kevin','Sanchez'),('1100000005','Mateo','Castro'),('1100000006','Diego','Ramirez'),('1100000007','Jhon','Torres'),('1100000008','Pedro','Guerrero'),('1100000009','Bryan','Ortega'),('1100000010','Marco','Salinas'),('1100000011','Jose','Mora'),('1100000012','Daniel','Herrera'),('1100000013','Steven','Cueva'),('1100000014','Michael','Rojas'),('1100000015','Anthony','Luna'),('1100000016','Cristian','Valdez'),('1100000017','Fernando','Jaramillo'),('1100000018','Angel','Pineda'),('1100000019','Leonardo','Paz'),('1100000020','Alex','Benitez'),('1100000021','David','Cabrera'),('1100000022','Byron','Reyes'),('1100000023','Gabriel','Cedeno'),('1100000024','Victor','Maldonado'),('1100000025','Ronald','Flores'),('1100000026','Erick','Quinde'),('1100000027','Santiago','Bravo'),('1100000028','Jean','Aguirre'),('1100000029','Pablo','Suarez'),('1100000030','Wilson','Carrion'),('1100000031','Edgar','Celi'),('1100000032','Ivan','Vasquez'),('1100000033','Ricardo','Ochoa'),('1100000034','Manuel','Romero'),('1100000035','Hector','Yaguana'),('1100000036','Julio','Narvaez'),('1100000037','Patricio','Morocho'),('1100000038','Jonathan','Mina'),('1100000039','Cesar','Carpio'),('1100000040','Raul','Soto'),('1100000041','Esteban','Guaman'),('1100000042','Kevin','Poma'),('1100000043','Mauricio','Burneo'),('1100000044','Adrian','Paredes'),('1100000045','Franklin','Tocto'),('1100000046','Oscar','Jimenez'),('1100000047','Miguel','Pinto'),('1100000048','Henry','Alvarado'),('1100000049','Javier','Espinoza'),('1100000050','Nicolas','Sarmiento');
/*!40000 ALTER TABLE `Persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personal_Mesa`
--

DROP TABLE IF EXISTS `Personal_Mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Personal_Mesa` (
  `id_personal_mesa` varchar(10) NOT NULL,
  `codigo_usuario` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_personal_mesa`),
  KEY `codigo_usuario` (`codigo_usuario`),
  CONSTRAINT `Personal_Mesa_ibfk_1` FOREIGN KEY (`codigo_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personal_Mesa`
--

LOCK TABLES `Personal_Mesa` WRITE;
/*!40000 ALTER TABLE `Personal_Mesa` DISABLE KEYS */;
INSERT INTO `Personal_Mesa` VALUES ('PM001','USR001'),('PM002','USR002'),('PM003','USR003'),('PM004','USR004'),('PM005','USR005'),('PM006','USR006'),('PM007','USR007'),('PM008','USR008'),('PM009','USR009'),('PM010','USR010');
/*!40000 ALTER TABLE `Personal_Mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Presidente`
--

DROP TABLE IF EXISTS `Presidente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Presidente` (
  `id_presidente` varchar(10) NOT NULL,
  `codigo_usuario` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_presidente`),
  KEY `codigo_usuario` (`codigo_usuario`),
  CONSTRAINT `Presidente_ibfk_1` FOREIGN KEY (`codigo_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Presidente`
--

LOCK TABLES `Presidente` WRITE;
/*!40000 ALTER TABLE `Presidente` DISABLE KEYS */;
INSERT INTO `Presidente` VALUES ('PRE001','USR001'),('PRE002','USR002'),('PRE003','USR003'),('PRE004','USR004'),('PRE005','USR005'),('PRE006','USR006'),('PRE007','USR007'),('PRE008','USR008'),('PRE009','USR009'),('PRE010','USR010');
/*!40000 ALTER TABLE `Presidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sancion`
--

DROP TABLE IF EXISTS `Sancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sancion` (
  `id_sancion` varchar(10) NOT NULL,
  `tipo_sancion` enum('Tarjeta_Amarilla','Tarjeta_Roja') DEFAULT NULL,
  `motivo` varchar(25) NOT NULL,
  `minuto` int NOT NULL,
  PRIMARY KEY (`id_sancion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sancion`
--

LOCK TABLES `Sancion` WRITE;
/*!40000 ALTER TABLE `Sancion` DISABLE KEYS */;
INSERT INTO `Sancion` VALUES ('SAN001','Tarjeta_Amarilla','Falta peligrosa',12),('SAN002','Tarjeta_Roja','Juego brusco',45),('SAN003','Tarjeta_Amarilla','Mano intencional',23),('SAN004','Tarjeta_Amarilla','Reclamo arbitral',30),('SAN005','Tarjeta_Roja','Agresion rival',67),('SAN006','Tarjeta_Amarilla','Demora de juego',15),('SAN007','Tarjeta_Roja','Doble amarilla',72),('SAN008','Tarjeta_Amarilla','Entrada fuerte',54),('SAN009','Tarjeta_Amarilla','Sujetacion rival',38),('SAN010','Tarjeta_Roja','Conducta violenta',81);
/*!40000 ALTER TABLE `Sancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sancion_Persona`
--

DROP TABLE IF EXISTS `Sancion_Persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sancion_Persona` (
  `id_sancion_persona` int NOT NULL,
  `cedula_persona` varchar(10) NOT NULL,
  `id_sancion` varchar(10) NOT NULL,
  PRIMARY KEY (`id_sancion_persona`),
  KEY `cedula_persona` (`cedula_persona`),
  KEY `id_sancion` (`id_sancion`),
  CONSTRAINT `Sancion_Persona_ibfk_1` FOREIGN KEY (`cedula_persona`) REFERENCES `Persona` (`cedula`),
  CONSTRAINT `Sancion_Persona_ibfk_2` FOREIGN KEY (`id_sancion`) REFERENCES `Sancion` (`id_sancion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sancion_Persona`
--

LOCK TABLES `Sancion_Persona` WRITE;
/*!40000 ALTER TABLE `Sancion_Persona` DISABLE KEYS */;
INSERT INTO `Sancion_Persona` VALUES (1,'1100000001','SAN001'),(2,'1100000002','SAN002'),(3,'1100000003','SAN003'),(4,'1100000004','SAN004'),(5,'1100000005','SAN005'),(6,'1100000006','SAN006'),(7,'1100000007','SAN007'),(8,'1100000008','SAN008'),(9,'1100000009','SAN009'),(10,'1100000010','SAN010');
/*!40000 ALTER TABLE `Sancion_Persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuario` (
  `id_usuario` varchar(10) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellido` varchar(15) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES ('USR001','Carlos','Maldonado'),('USR002','Luis','Herrera'),('USR003','Andres','Jaramillo'),('USR004','Kevin','Lopez'),('USR005','Marco','Sanchez'),('USR006','Diego','Romero'),('USR007','Jhon','Castillo'),('USR008','Pedro','Velez'),('USR009','Mateo','Ortega'),('USR010','Bryan','Gonzalez');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-20 11:09:03
