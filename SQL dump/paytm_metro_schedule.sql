-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: paytm
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `metro_schedule`
--

DROP TABLE IF EXISTS `metro_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metro_schedule` (
  `schedule_id` int NOT NULL,
  `route_id` int DEFAULT NULL,
  `from` varchar(45) DEFAULT NULL,
  `to` varchar(45) DEFAULT NULL,
  `datea` varchar(45) DEFAULT NULL,
  `dated` varchar(45) DEFAULT NULL,
  `timea` varchar(45) DEFAULT NULL,
  `timed` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `rrr_idx` (`route_id`),
  CONSTRAINT `metro_schedule_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `metro_route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metro_schedule`
--

LOCK TABLES `metro_schedule` WRITE;
/*!40000 ALTER TABLE `metro_schedule` DISABLE KEYS */;
INSERT INTO `metro_schedule` VALUES (1,1,'airport road','Marol Naka','','','','','blue'),(2,1,'Marol Naka','Saki naka','','','','','blue'),(3,1,'Saki Naka','Asalpha','','','','','blue'),(4,1,'Asalpha','Jagruti Nagar','','','','','blue'),(5,2,'AIIMS ','Green park','','','','','yellow'),(6,2,'Green Park','Hauz Khas','','','','','yellow'),(7,2,'Hauz Khas','Saket','','','','','yellow'),(8,2,'Saket','Qutab Minar','','','','','yellow'),(9,2,'Qutab Minar','Sultanpur','','','','','yellow'),(10,2,'Yamuna Bank','Karkarduma','','','','','blue'),(11,3,'Balangar','SR Nagar','','','','','red'),(12,3,'SR Nagar','Ameerpet','','','','','red'),(13,3,'Ameerpet','Gandhi Bhavan','','','','','red'),(14,3,'Gandhi Bhavan','New Market','','','','','red'),(15,4,'Chandni Chowk','Mahatma Gandhi Road','','','','','blue'),(16,4,'Mahatma Gandhi Road','Shyambazar','','','','','blue'),(17,4,'Shyambazar','Dum Dum','','','','','blue');
/*!40000 ALTER TABLE `metro_schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:03
