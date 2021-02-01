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
-- Table structure for table `flight_schedule`
--

DROP TABLE IF EXISTS `flight_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_schedule` (
  `schedule_id` int NOT NULL,
  `flight_no` varchar(45) DEFAULT NULL,
  `from` int DEFAULT NULL,
  `to` int DEFAULT NULL,
  `depart_time` varchar(15) DEFAULT NULL,
  `arrival_time` varchar(15) DEFAULT NULL,
  `depart_date` date DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `seatb` int DEFAULT NULL,
  `seate` int DEFAULT NULL,
  `seatpe` int DEFAULT NULL,
  `seatb_a` int DEFAULT NULL,
  `seatb_i` int DEFAULT NULL,
  `seate_a` int DEFAULT NULL,
  `seate_i` int DEFAULT NULL,
  `seatpe_a` int DEFAULT NULL,
  `seatpe_i` int DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `airport_id_idx` (`from`),
  KEY `airportto_idx` (`to`),
  CONSTRAINT `airportfrom` FOREIGN KEY (`from`) REFERENCES `airports` (`airport_id`),
  CONSTRAINT `airportto` FOREIGN KEY (`to`) REFERENCES `airports` (`airport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_schedule`
--

LOCK TABLES `flight_schedule` WRITE;
/*!40000 ALTER TABLE `flight_schedule` DISABLE KEYS */;
INSERT INTO `flight_schedule` VALUES (1,'SG102',2,1,'10:00','11:00','2020-12-15','2020-12-15',20,25,2,5670,3670,4780,4000,4780,3000),(2,'SG102',1,5,'16:40','18:00','2020-12-17','2020-12-17',20,25,2,6600,3670,4000,3500,4780,3000),(3,'VS101',4,5,'14:00','15:15','2020-12-18','2020-12-18',0,30,5,6570,2340,4780,4000,4920,3700),(4,'AI101',1,3,'08:30','10:00','2020-12-15','2020-12-15',5,32,6,4890,3670,4620,4220,4780,3000),(5,'ID102',3,2,'05:30','07:00','2020-12-17','2020-12-17',15,22,1,5555,3670,4780,4000,4780,3000);
/*!40000 ALTER TABLE `flight_schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:08
