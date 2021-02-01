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
-- Table structure for table `bus_booking`
--

DROP TABLE IF EXISTS `bus_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_booking` (
  `user_id` int DEFAULT NULL,
  `transaction_id` varchar(45) DEFAULT NULL,
  `Bus_no` int DEFAULT NULL,
  `start` varchar(45) DEFAULT NULL,
  `end` varchar(45) DEFAULT NULL,
  `PNR` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `Comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PNR`,`fname`),
  KEY `user_id_idx` (`user_id`),
  KEY `bus_no_idx` (`Bus_no`),
  KEY `transaction_id_idx` (`transaction_id`),
  CONSTRAINT `bus_booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `primary_details` (`user_id`),
  CONSTRAINT `bus_booking_ibfk_2` FOREIGN KEY (`Bus_no`) REFERENCES `bus` (`bus_no`),
  CONSTRAINT `bus_booking_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `passbook` (`Transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_booking`
--

LOCK TABLES `bus_booking` WRITE;
/*!40000 ALTER TABLE `bus_booking` DISABLE KEYS */;
INSERT INTO `bus_booking` VALUES (101,'TD1025',1001,'Bangalore','Kohlapur','18070124025','ABC','Singh','1975-05-12','M',1500,10,'NULL'),(108,'TD1027',1003,'Pune ','Ooty','18070124056','JKL','Agarwal','1990-08-01','M ',1600,5,'NULL'),(109,'TD1028',1004,'Sholapur','Hyderabad','18070124063','KLM','Kumar','2003-12-30','F',800,7,'NULL'),(102,'TD1026',1002,'Mumbai','Pune','18070256903','BCD','sen','2000-06-22','F',1200,9,'NULL');
/*!40000 ALTER TABLE `bus_booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:11
