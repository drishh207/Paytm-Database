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
-- Table structure for table `movie_timing`
--

DROP TABLE IF EXISTS `movie_timing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_timing` (
  `timing_id` int NOT NULL,
  `movie_id` int DEFAULT NULL,
  `screen_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `seatr` int DEFAULT NULL,
  `seatp` int DEFAULT NULL,
  `seatg` int DEFAULT NULL,
  `seats` int DEFAULT NULL,
  `seatn` int DEFAULT NULL,
  `costr` int DEFAULT NULL,
  `costp` int DEFAULT NULL,
  `costg` int DEFAULT NULL,
  `costs` int DEFAULT NULL,
  `costn` int DEFAULT NULL,
  PRIMARY KEY (`timing_id`),
  KEY `movie_id_idx` (`movie_id`),
  KEY `screen_id_idx` (`screen_id`),
  CONSTRAINT `movie_timing_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  CONSTRAINT `movie_timing_ibfk_2` FOREIGN KEY (`screen_id`) REFERENCES `screen` (`screen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_timing`
--

LOCK TABLES `movie_timing` WRITE;
/*!40000 ALTER TABLE `movie_timing` DISABLE KEYS */;
INSERT INTO `movie_timing` VALUES (101,1,1,'2020-12-18','08:00',15,23,14,23,23,700,500,400,300,250),(102,2,2,'2020-12-18','14:30',13,13,13,13,13,700,650,400,300,250),(103,2,3,'2020-12-20','14:30',56,56,56,3,22,800,500,400,300,250),(104,3,4,'2020-12-21','15:25',33,33,33,33,33,700,500,400,300,250),(105,1,5,'2020-12-23','16:10',12,12,11,12,12,650,550,400,300,250),(106,2,6,'2020-12-23','23:00',23,23,11,23,23,700,500,400,300,250),(107,3,7,'2020-12-23','20:35',12,12,12,17,12,765,600,400,300,250),(108,1,8,'2020-12-25','21:35',23,15,5,15,15,700,500,400,300,250),(109,3,9,'2020-12-25','22:35',16,19,16,16,16,660,500,400,300,250),(110,2,10,'2020-12-25','12:00',26,17,21,17,17,700,500,400,300,250);
/*!40000 ALTER TABLE `movie_timing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:04
