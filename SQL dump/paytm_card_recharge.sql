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
-- Table structure for table `card_recharge`
--

DROP TABLE IF EXISTS `card_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_recharge` (
  `city_code` int DEFAULT NULL,
  `card_no` bigint NOT NULL,
  `amount` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `prev_bal` int DEFAULT NULL,
  `transaction_id` varchar(45) NOT NULL,
  `date` date DEFAULT NULL,
  `Time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`,`card_no`),
  KEY `user_id_idx` (`user_id`),
  KEY `city_code_idx` (`city_code`),
  CONSTRAINT `card_recharge_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `primary_details` (`user_id`),
  CONSTRAINT `card_recharge_ibfk_2` FOREIGN KEY (`city_code`) REFERENCES `metro_types` (`city_code`),
  CONSTRAINT `card_recharge_ibfk_3` FOREIGN KEY (`transaction_id`) REFERENCES `passbook` (`Transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_recharge`
--

LOCK TABLES `card_recharge` WRITE;
/*!40000 ALTER TABLE `card_recharge` DISABLE KEYS */;
INSERT INTO `card_recharge` VALUES (1,254696325,50,101,0,'TD1032','2020-11-01','15:30'),(1,569412488,40,102,30,'TD1033','2020-12-04','20:00'),(2,2148967412,20,109,10,'TD1034','2020-12-12','13:37');
/*!40000 ALTER TABLE `card_recharge` ENABLE KEYS */;
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
