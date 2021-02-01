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
-- Table structure for table `challan_payment`
--

DROP TABLE IF EXISTS `challan_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challan_payment` (
  `user_id` int DEFAULT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `authority_id` int DEFAULT NULL,
  `vehicle_no` varchar(15) DEFAULT NULL,
  `challan_no` int NOT NULL,
  `engine_No` varchar(45) DEFAULT NULL,
  `traffic_id` int DEFAULT NULL,
  `rc_no` varchar(45) DEFAULT NULL,
  `licens_no` varchar(45) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`challan_no`,`transaction_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `transaction_id_idx` (`transaction_id`),
  KEY `authority_id_idx` (`authority_id`),
  CONSTRAINT `challan_payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `primary_details` (`user_id`),
  CONSTRAINT `challan_payment_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `passbook` (`Transaction_id`),
  CONSTRAINT `challan_payment_ibfk_3` FOREIGN KEY (`authority_id`) REFERENCES `transport_authority` (`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challan_payment`
--

LOCK TABLES `challan_payment` WRITE;
/*!40000 ALTER TABLE `challan_payment` DISABLE KEYS */;
INSERT INTO `challan_payment` VALUES (108,'TD1065',1,'AP 09 GH 4581',125632,'99874',3621459,'RC78936521','LC25641',500,'2020-12-25','08:30'),(106,'TD1064',2,'TN 02 GE 6695',245692,'99321',98452175,'RC96485123','LC78542',400,'2020-12-06','20:38'),(105,'TD1063',4,'MH 12 RY 5985',695420,'99654',5648563,'RC56954215','LC69541',200,'2020-11-25','15:46');
/*!40000 ALTER TABLE `challan_payment` ENABLE KEYS */;
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
