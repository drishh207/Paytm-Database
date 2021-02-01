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
-- Table structure for table `water_bill`
--

DROP TABLE IF EXISTS `water_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `water_bill` (
  `user_id` int DEFAULT NULL,
  `account_no` bigint NOT NULL,
  `company_id` int DEFAULT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `amount` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `recharge_date` date DEFAULT NULL,
  `next_recharge_date` date DEFAULT NULL,
  PRIMARY KEY (`account_no`,`transaction_id`),
  KEY `transaction_id_idx` (`transaction_id`),
  KEY `company_id_idx` (`company_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `water_bill_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `primary_details` (`user_id`),
  CONSTRAINT `water_bill_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `passbook` (`Transaction_id`),
  CONSTRAINT `water_bill_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `water_provider` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_bill`
--

LOCK TABLES `water_bill` WRITE;
/*!40000 ALTER TABLE `water_bill` DISABLE KEYS */;
INSERT INTO `water_bill` VALUES (106,18070124088,2,'TD1056',963,0,'2020-11-02','2020-12-02'),(103,18070126545,4,'TD1057',872,0,'2020-10-06','2020-11-05'),(109,56942221232,5,'TD1058',987,0,'2020-12-16','2021-01-15');
/*!40000 ALTER TABLE `water_bill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:05
