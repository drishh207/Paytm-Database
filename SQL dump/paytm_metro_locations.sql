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
-- Table structure for table `metro_locations`
--

DROP TABLE IF EXISTS `metro_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metro_locations` (
  `station_id` int NOT NULL,
  `location name` varchar(45) DEFAULT NULL,
  `city_code` int DEFAULT NULL,
  PRIMARY KEY (`station_id`),
  KEY `city_code_idx` (`city_code`),
  CONSTRAINT `city_code` FOREIGN KEY (`city_code`) REFERENCES `metro_types` (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metro_locations`
--

LOCK TABLES `metro_locations` WRITE;
/*!40000 ALTER TABLE `metro_locations` DISABLE KEYS */;
INSERT INTO `metro_locations` VALUES (1,'Airport Road',1),(2,'Marol Naka',1),(3,'Saki Naka',1),(4,'Asalpha',1),(5,'Jagruti Nagar',1),(6,'AIIMS',2),(7,'Green Park',2),(8,'Hauz Khas',2),(9,'Saket',2),(10,'Qutab Minar',2),(11,'Sultanpur',2),(12,'Yamuna Bank',2),(13,'Karkarduma',2),(14,'Welcome',2),(15,'Balangar',3),(16,'SR Nagar',3),(17,'Ameerpet',3),(18,'Gandhi Bhavan',3),(19,'New Market',3),(20,'Chandni Chowk',4),(21,'Mahatma Gandhi Road',4),(22,'Shyambazar',4),(23,'Dum Dum',4);
/*!40000 ALTER TABLE `metro_locations` ENABLE KEYS */;
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
