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
-- Table structure for table `postpaid_recharge`
--

DROP TABLE IF EXISTS `postpaid_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postpaid_recharge` (
  `user_id` int DEFAULT NULL,
  `phone_no` bigint NOT NULL,
  `company_id` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `recharge_date` date DEFAULT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `next_recharge_date` date DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`phone_no`,`transaction_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `company_id_idx` (`company_id`),
  KEY `transaction_id_idx` (`transaction_id`),
  CONSTRAINT `postpaid_recharge_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `primary_details` (`user_id`),
  CONSTRAINT `postpaid_recharge_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `prepaid_company` (`company_id`),
  CONSTRAINT `postpaid_recharge_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `passbook` (`Transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postpaid_recharge`
--

LOCK TABLES `postpaid_recharge` WRITE;
/*!40000 ALTER TABLE `postpaid_recharge` DISABLE KEYS */;
INSERT INTO `postpaid_recharge` VALUES (105,9378542611,1,20,590,'2020-10-23','TD1041','2020-11-20','postpaid'),(106,9378542625,3,20,840,'2020-10-25','TD1043','2021-01-17','postpaid'),(102,9378542685,2,100,462,'2020-10-24','TD1042','2020-12-19','postpaid');
/*!40000 ALTER TABLE `postpaid_recharge` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:04
