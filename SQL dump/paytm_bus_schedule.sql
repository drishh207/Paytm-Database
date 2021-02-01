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
-- Table structure for table `bus_schedule`
--

DROP TABLE IF EXISTS `bus_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_schedule` (
  `schedule_id` varchar(45) NOT NULL,
  `route_id` int DEFAULT NULL,
  `start` varchar(45) DEFAULT NULL,
  `end` varchar(45) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `times` varchar(10) DEFAULT NULL,
  `timee` varchar(10) DEFAULT NULL,
  `acsit` int DEFAULT NULL,
  `acsemsleep` int DEFAULT NULL,
  `acsleep` int DEFAULT NULL,
  `nacsit` int DEFAULT NULL,
  `nacsemsleep` int DEFAULT NULL,
  `nacsleep` int DEFAULT NULL,
  `acsitf` int DEFAULT NULL,
  `acsemsleepf` int DEFAULT NULL,
  `acsleepf` int DEFAULT NULL,
  `nacsitf` int DEFAULT NULL,
  `nacsemsleepf` int DEFAULT NULL,
  `nacsleepf` int DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `route_id_idx` (`route_id`),
  CONSTRAINT `bus_schedule_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `bus_route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_schedule`
--

LOCK TABLES `bus_schedule` WRITE;
/*!40000 ALTER TABLE `bus_schedule` DISABLE KEYS */;
INSERT INTO `bus_schedule` VALUES ('1',1,'bangalore','Hubli','2020-12-16','2020-12-16','13:30','16:00',500,500,500,450,450,450,500,500,500,450,450,450),('10',4,'Pune','Sholapur','2020-12-19','2020-12-19','10:30','17:00',500,500,500,450,450,450,500,500,500,450,450,450),('11',4,'sholapur','Hyderabad','2020-12-19','2020-12-20','17:20','01:30',800,800,800,750,750,750,800,800,800,750,750,750),('2',1,'Hubli','Kohlapur','2020-12-16','2020-12-17','16:20','20:00',700,700,700,650,650,650,700,700,700,650,650,650),('3',1,'Kohlapur','Mumbai','2020-12-17','2020-12-17','20:15','11:00',450,450,450,400,400,400,450,450,450,400,400,400),('4',2,'Mumbai','Panvel','2020-12-18','2020-12-18','12:20','13:20',300,300,300,250,250,250,300,300,300,250,250,250),('5',2,'panvel','Lonavala','2020-12-18','2020-12-18','14:00','14:40',300,300,300,250,250,250,300,300,300,250,250,250),('6',2,'Lonavala','Pune','2020-12-18','2020-12-18','14:50','16:00',300,300,300,250,250,250,300,300,300,250,250,250),('7',3,'Mumbai','Pune','2020-12-19','2020-12-19','20:45','22:45',450,450,450,400,400,400,450,450,450,400,400,400),('8',3,'Pune','Belgaum','2020-12-19','2020-12-20','23:00','05:30',560,560,560,510,510,510,560,560,560,510,510,510),('9',3,'Belgaum','Ooty','2020-12-20','2020-12-21','05:40','04:30',690,690,690,640,640,640,690,690,690,640,640,640);
/*!40000 ALTER TABLE `bus_schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:06
