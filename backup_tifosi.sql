-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tifosi
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boisson` (
  `id_boisson` int(11) NOT NULL AUTO_INCREMENT,
  `nom_boisson` varchar(100) NOT NULL,
  `volume_ml` int(11) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `id_marque` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_boisson`),
  KEY `id_marque` (`id_marque`),
  CONSTRAINT `boisson_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boisson`
--

LOCK TABLES `boisson` WRITE;
/*!40000 ALTER TABLE `boisson` DISABLE KEYS */;
INSERT INTO `boisson` VALUES (1,'San Pellegrino Citron',330,2.50,1),(2,'Coca-Cola Classique',330,2.00,2),(3,'Fanta Orange',330,2.00,3);
/*!40000 ALTER TABLE `boisson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focaccia` (
  `id_focaccia` int(11) NOT NULL AUTO_INCREMENT,
  `nom_focaccia` varchar(100) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_focaccia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focaccia`
--

LOCK TABLES `focaccia` WRITE;
/*!40000 ALTER TABLE `focaccia` DISABLE KEYS */;
INSERT INTO `focaccia` VALUES (1,'Focaccia Jambon Mozza',7.90),(2,'Focaccia Végétarienne',6.90);
/*!40000 ALTER TABLE `focaccia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `focaccia_ingredient`
--

DROP TABLE IF EXISTS `focaccia_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `focaccia_ingredient` (
  `id_focaccia` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL,
  PRIMARY KEY (`id_focaccia`,`id_ingredient`),
  KEY `id_ingredient` (`id_ingredient`),
  CONSTRAINT `focaccia_ingredient_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE CASCADE,
  CONSTRAINT `focaccia_ingredient_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `focaccia_ingredient`
--

LOCK TABLES `focaccia_ingredient` WRITE;
/*!40000 ALTER TABLE `focaccia_ingredient` DISABLE KEYS */;
INSERT INTO `focaccia_ingredient` VALUES (1,1),(1,2),(1,4),(2,3),(2,5),(2,6),(2,7);
/*!40000 ALTER TABLE `focaccia_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `id_ingredient` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ingredient` varchar(100) NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Jambon'),(2,'Mozzarella'),(3,'Tomates séchées'),(4,'Basilic'),(5,'Roquette'),(6,'Pesto'),(7,'Parmesan');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marque`
--

DROP TABLE IF EXISTS `marque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(100) NOT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marque`
--

LOCK TABLES `marque` WRITE;
/*!40000 ALTER TABLE `marque` DISABLE KEYS */;
INSERT INTO `marque` VALUES (1,'San Pellegrino'),(2,'Coca-Cola'),(3,'Fanta');
/*!40000 ALTER TABLE `marque` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-18 11:56:02
