-- MySQL dump 10.13  Distrib 5.7.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel_luxury
-- ------------------------------------------------------
-- Server version	5.7.28-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Lunvyn Tetiana','0661230001'),(2,'Melnik Andriy','0661230002'),(3,'Baryl Vasil','0661230003'),(4,'Maryn Rofik','0661230004'),(5,'Oleg Jordan','0661230005'),(6,'Oleksandr Trila','0661230006'),(7,'Olena Abramova','0661230007'),(8,'Valentyna Tomak','0661230008'),(9,'Iryna Galir','0661230009'),(10,'Pavlo Zhykov','0661230010'),(11,'Orest Petrovich','0661230011'),(12,'Artem Slodar','0661230012'),(13,'Vira Hovir','0661230013'),(14,'Lubov Kruk','0661230014'),(15,'Nadia Markiv','0661230015');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_typeOfNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_clients_id_fk` (`id_client`),
  CONSTRAINT `orders_clients_id_fk_2` FOREIGN KEY (`id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,5,'1'),(2,2,'2'),(3,4,'6'),(4,2,'9'),(5,8,'5'),(6,1,'5'),(7,12,'5'),(8,13,'2'),(9,3,'3'),(10,6,'7');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `typeOfNumber` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `numberOfRooms` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'standart(single)',900,5),(2,'standart(double)',1300,10),(3,'standert(triple)',1500,5),(4,'family(room)',2000,5),(5,'Suite(single)',2800,7),(6,'Suite(double)',3500,10),(7,'de luxe(single)',3500,3),(8,'de luxe(double)',3800,3),(9,'president',4500,2);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `id_worker` int(11) NOT NULL,
  `sizeOfSalary` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_worker`),
  CONSTRAINT `salary_workers_id_fk` FOREIGN KEY (`id_worker`) REFERENCES `workers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,60000),(2,20000),(3,20000),(4,20000),(5,20000),(6,12000),(7,12000),(8,12000),(9,12000),(10,12000),(11,10000),(12,14000),(13,14000),(14,15000),(15,15000),(16,22000),(17,25000),(18,11500),(19,11500),(20,14000),(21,16000),(22,15000),(23,15000),(24,15000),(25,13000),(26,13000),(27,11000);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workers` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'Ostap','Rosar','38099009901','director'),(2,'Oksana','Tokar','38099009902','administrator'),(3,'Taras','Kruk','38099009903','administrator'),(4,'Alex','Potapov','38099009904','administrator'),(5,'OLga','Verba','38099009905','administrator'),(6,'Olena','Sirko','38099009906','chambermaid'),(7,'Mykola','Zazruk','38099009907','chambermaid'),(8,'Antot','lutvyn','38099009908','chambermaid'),(9,'Viktoria','Sas','38099009909','chambermaid'),(10,'Diana','Zaits','38099009910','chambermaid'),(11,'Maria','Tarnavska','38099009911','chambermaid'),(12,'Nika','Lorakul','38099009912','chambermaid'),(13,'Anastasia','Chorna','38099009913','chambermaid'),(14,'Andriana','Pavlip','38099009914','chambermaid'),(15,'Iryna','Verbola','38099009915','chambermaid'),(16,'Petro','Vaspol','38099009916','cooker'),(17,'Nazar','Bulka','38099009917','cooker'),(18,'Sofia','Shvach','38099009918','washerwoman'),(19,'Kateryna','Shevchenko','38099009919','washerwoman'),(20,'Nazar','Koval','38099009920','gardener'),(21,'Pavlo','Borey','38099009921','guardian'),(22,'Andrew','Ilkiv','38099009922','guardian'),(23,'Denys','Aksoniv','38099009923','guardian'),(24,'Taras','Ostapchuk','38099009924','guardian'),(25,'Alex','Luka','38099009925','butler'),(26,'Ivan','Palar','38099009926','butler'),(27,'Nazar','Kilib','38099009927','driver');
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-21  3:42:50
