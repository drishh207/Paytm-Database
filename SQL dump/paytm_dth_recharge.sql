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
-- Table structure for table `dth_recharge`
--

DROP TABLE IF EXISTS `dth_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dth_recharge` (
  `user_id` int DEFAULT NULL,
  `dth_number` bigint NOT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `plan_id` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `recharge_date` date DEFAULT NULL,
  `next_recharge_date` date DEFAULT NULL,
  PRIMARY KEY (`dth_number`,`transaction_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `plan_id_idx` (`plan_id`),
  KEY `transaction_id_idx` (`transaction_id`),
  CONSTRAINT `dth_recharge_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `primary_details` (`user_id`),
  CONSTRAINT `dth_recharge_ibfk_2` FOREIGN KEY (`plan_id`) REFERENCES `dth_plans` (`plan_id`),
  CONSTRAINT `dth_recharge_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `passbook` (`Transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dth_recharge`
--

LOCK TABLES `dth_recharge` WRITE;
/*!40000 ALTER TABLE `dth_recharge` DISABLE KEYS */;
INSERT INTO `dth_recharge` VALUES (105,53453245,'TD1045',3,500,559,'2020-11-30','2021-05-29'),(104,234325245,'TD1044',2,400,3274,'2020-11-25','2021-11-20'),(109,325443534,'TD1046',NULL,690,5230,'2020-12-05','2021-06-03');
/*!40000 ALTER TABLE `dth_recharge` ENABLE KEYS */;
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
