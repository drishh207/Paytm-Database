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
-- Table structure for table `gas_order`
--

DROP TABLE IF EXISTS `gas_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gas_order` (
  `user_id` int DEFAULT NULL,
  `account_no` bigint NOT NULL,
  `dealer_no` bigint DEFAULT NULL,
  `company_id_cylinder` int DEFAULT NULL,
  `company_id_gas` int DEFAULT NULL,
  `agency_id` int DEFAULT NULL,
  `mobile_no` bigint DEFAULT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `amount` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `recharge_date` date DEFAULT NULL,
  `next_recharge_date` date DEFAULT NULL,
  PRIMARY KEY (`account_no`,`transaction_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `transaction_id_idx` (`transaction_id`),
  KEY `agency_id_idx` (`agency_id`),
  KEY `gas_company_idx` (`company_id_gas`),
  KEY `cylinder_company_idx` (`company_id_cylinder`),
  CONSTRAINT `gas_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `primary_details` (`user_id`),
  CONSTRAINT `gas_order_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `passbook` (`Transaction_id`),
  CONSTRAINT `gas_order_ibfk_3` FOREIGN KEY (`agency_id`) REFERENCES `gas_agency` (`agency_id`),
  CONSTRAINT `gas_order_ibfk_4` FOREIGN KEY (`company_id_gas`) REFERENCES `gas_provider` (`company_id`),
  CONSTRAINT `gas_order_ibfk_5` FOREIGN KEY (`company_id_cylinder`) REFERENCES `cylinder_provider` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gas_order`
--

LOCK TABLES `gas_order` WRITE;
/*!40000 ALTER TABLE `gas_order` DISABLE KEYS */;
INSERT INTO `gas_order` VALUES (102,18070124025,7896521463,NULL,2,3,9378542685,'TD1053',590,45,'2020-11-25','2020-12-26'),(106,18070124059,1856329755,NULL,2,5,9378542625,'TD1054',459,25,'2020-12-01','2021-01-01'),(105,18070125036,6954823614,NULL,2,2,9378542611,'TD1055',723,0,'2020-12-14','2021-01-14');
/*!40000 ALTER TABLE `gas_order` ENABLE KEYS */;
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
