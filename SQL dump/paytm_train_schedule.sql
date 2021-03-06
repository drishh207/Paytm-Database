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
-- Table structure for table `train_schedule`
--

DROP TABLE IF EXISTS `train_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train_schedule` (
  `schedule_id` int NOT NULL,
  `route_id` int DEFAULT NULL,
  `start` varchar(45) DEFAULT NULL,
  `end` varchar(45) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `times` varchar(10) DEFAULT NULL,
  `timee` varchar(10) DEFAULT NULL,
  `ac1` int DEFAULT NULL,
  `ac2` int DEFAULT NULL,
  `ac3` int DEFAULT NULL,
  `sleeper` int DEFAULT NULL,
  `fsitting` int DEFAULT NULL,
  `ssitting` int DEFAULT NULL,
  `tac1` int DEFAULT NULL,
  `tac2` int DEFAULT NULL,
  `ac1_copy2` int DEFAULT NULL,
  `tsleeper` int DEFAULT NULL,
  `tfsitting` int DEFAULT NULL,
  `tssitting` int DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `route_id_idx` (`route_id`),
  CONSTRAINT `route_id` FOREIGN KEY (`route_id`) REFERENCES `train_route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_schedule`
--

LOCK TABLES `train_schedule` WRITE;
/*!40000 ALTER TABLE `train_schedule` DISABLE KEYS */;
INSERT INTO `train_schedule` VALUES (1,1,'pune','lonavala','2020-12-13','2020-12-13','04:30','07:30',1000,954,800,150,200,200,450,300,200,150,100,100),(2,1,'lonavala','mumbai','2020-12-13','2020-12-13','08:00','10:00',1000,954,800,150,200,200,450,300,200,150,100,100),(3,1,'mumbai','vadodara','2020-12-13','2020-12-14','11:00','17:30',1500,970,850,200,200,200,450,300,200,150,100,100),(4,1,'vadodara','surat','2020-12-14','2020-12-15','18:00','05:30',1000,954,800,150,200,200,450,300,200,150,100,100),(5,2,'Mumbai','Bhopal','2020-12-13','2020-12-14','17:50','05:30',1000,954,800,150,200,200,450,300,200,150,100,100),(6,2,'Bhopal','Delhi','2020-12-14','2020-12-15','06:00','04:30',4200,3040,2500,1500,2000,2000,4500,3000,2000,1050,1000,1000),(7,2,'Delhi','dehradun','2020-12-15','2020-12-15','05:00','11:00',1000,954,800,150,200,200,450,300,200,150,100,100),(8,2,'Dehradun','haridwar','2020-12-15','2020-12-16','12:00','15:30',1000,954,800,150,200,200,450,300,200,150,100,100),(9,3,'Pune','Bhopal','2020-12-14','2020-12-15','14:00','05:30',1000,954,800,150,200,200,450,300,200,150,100,100),(10,3,'Bhopal','Jhansi','2020-12-15','2020-12-15','06:00','15:25',4000,954,800,150,200,200,450,300,200,150,100,100),(11,3,'Jhansi','Gwailor','2020-12-15','2020-12-16','15:45','11:00',1000,954,800,150,200,200,450,300,200,150,100,100),(12,3,'Gwalior','Agra','2020-12-16','2020-12-17','12:00','23:00',1000,954,800,150,200,200,450,300,200,150,100,100),(13,4,'Bhopal','Indore','2020-12-18','2020-12-18','12:30','22:45',1000,954,800,150,200,200,450,300,200,150,100,100),(14,4,'Indore','Nashik','2020-12-18','2020-12-19','23:00','09:20',1000,954,800,150,200,200,450,300,200,150,100,100),(15,4,'Nashik','mumbai','2020-12-19','2020-12-19','09:40','20:00',1000,954,800,150,200,200,450,300,200,150,100,100);
/*!40000 ALTER TABLE `train_schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:13
