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
-- Table structure for table `movie_seats`
--

DROP TABLE IF EXISTS `movie_seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_seats` (
  `screen_id` int NOT NULL,
  `row_name` varchar(5) NOT NULL,
  `start_seat` int DEFAULT NULL,
  `End_seat` int DEFAULT NULL,
  PRIMARY KEY (`screen_id`,`row_name`),
  CONSTRAINT `screen_id` FOREIGN KEY (`screen_id`) REFERENCES `screen` (`screen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_seats`
--

LOCK TABLES `movie_seats` WRITE;
/*!40000 ALTER TABLE `movie_seats` DISABLE KEYS */;
INSERT INTO `movie_seats` VALUES (1,'A',1,10),(1,'B',11,40),(1,'C',41,70),(2,'A',1,10),(2,'B',11,30),(2,'C',31,80),(2,'D',81,95),(2,'E',96,115),(3,'A',1,30),(3,'B',31,50),(3,'C',51,65),(3,'D',66,78),(4,'A',1,20),(4,'B',21,50),(4,'C',51,80),(5,'A',1,30),(5,'B',31,70),(6,'A',1,10),(6,'B',11,40),(6,'C',41,60),(7,'A',1,20),(7,'B',21,40),(7,'C',41,60),(7,'D',61,90),(8,'A',1,10),(8,'B',11,30),(8,'C',31,80),(8,'D',81,95),(9,'A',1,10),(9,'B',11,30),(9,'C',31,80),(9,'D',81,95),(10,'A',1,10),(10,'B',11,30),(10,'C',31,80),(10,'D',81,95);
/*!40000 ALTER TABLE `movie_seats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:12
