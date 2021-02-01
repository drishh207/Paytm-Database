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
-- Table structure for table `train_booking`
--

DROP TABLE IF EXISTS `train_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train_booking` (
  `user_id` int DEFAULT NULL,
  `stationd` varchar(45) DEFAULT NULL,
  `stationa` varchar(45) DEFAULT NULL,
  `train_no` int DEFAULT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `PNR` varchar(45) NOT NULL,
  `irctc_id` varchar(45) DEFAULT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PNR`,`fname`,`transaction_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `train_no_idx` (`train_no`),
  KEY `transaction_id_idx` (`transaction_id`),
  CONSTRAINT `train_booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `primary_details` (`user_id`),
  CONSTRAINT `train_booking_ibfk_2` FOREIGN KEY (`train_no`) REFERENCES `train` (`train_no`),
  CONSTRAINT `train_booking_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `passbook` (`Transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_booking`
--

LOCK TABLES `train_booking` WRITE;
/*!40000 ALTER TABLE `train_booking` DISABLE KEYS */;
INSERT INTO `train_booking` VALUES (101,'surat','pune',22230,'TD1021','18070124025','IR458963','ABC','Singh','1975-05-12','M',5000,'Active'),(103,'Jhansi','Pune',12370,'TD1023','18070124056','IR458452','CDE','Kumar','1990-08-01','M',5600,'Active'),(108,'Surat','Mumbai',22230,'TD1024','18070124063','IR485166','IJK','Sen','2003-12-30','F',400,'Cancelled'),(104,'Haridwar','Bhopal',12346,'TD1022','18070256903','IR658964','DEF','kaur','2000-06-22','F',2000,'Active');
/*!40000 ALTER TABLE `train_booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:07
