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
-- Table structure for table `electricity_bill`
--

DROP TABLE IF EXISTS `electricity_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electricity_bill` (
  `user_id` int DEFAULT NULL,
  `account_no` bigint NOT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `division_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `recharge_date` date DEFAULT NULL,
  `next_recharge_date` date DEFAULT NULL,
  PRIMARY KEY (`account_no`,`transaction_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `transaction_id_idx` (`transaction_id`),
  KEY `division_id_idx` (`division_id`),
  CONSTRAINT `electricity_bill_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `primary_details` (`user_id`),
  CONSTRAINT `electricity_bill_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `passbook` (`Transaction_id`),
  CONSTRAINT `electricity_bill_ibfk_3` FOREIGN KEY (`division_id`) REFERENCES `sub_division` (`division_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electricity_bill`
--

LOCK TABLES `electricity_bill` WRITE;
/*!40000 ALTER TABLE `electricity_bill` DISABLE KEYS */;
INSERT INTO `electricity_bill` VALUES (110,18070124011,'TD1052',2,780,0,'2020-12-12','2021-01-11'),(106,18070124023,'TD1051',19,450,0,'2020-11-22','2020-12-22'),(104,18070124059,'TD1050',306,360,0,'2020-10-14','2020-11-14');
/*!40000 ALTER TABLE `electricity_bill` ENABLE KEYS */;
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
