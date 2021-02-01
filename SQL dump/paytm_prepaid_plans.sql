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
-- Table structure for table `prepaid_plans`
--

DROP TABLE IF EXISTS `prepaid_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prepaid_plans` (
  `company_id` int DEFAULT NULL,
  `plan_name` varchar(60) DEFAULT NULL,
  `plan_id` varchar(10) NOT NULL,
  `Plan_cost` int DEFAULT NULL,
  `Validity` int DEFAULT NULL,
  `Talktime` varchar(45) DEFAULT NULL,
  `sms` varchar(45) DEFAULT NULL,
  `data` float DEFAULT NULL,
  `data_validity` float DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`plan_id`),
  KEY `company_id_idx` (`company_id`),
  CONSTRAINT `prepaid_plans_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `prepaid_company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prepaid_plans`
--

LOCK TABLES `prepaid_plans` WRITE;
/*!40000 ALTER TABLE `prepaid_plans` DISABLE KEYS */;
INSERT INTO `prepaid_plans` VALUES (1,'Popular','P1',149,28,'unlimited','300',56,2,'Unlimited local/national calls to all networks'),(1,'Diwali Special Packs','P2',351,56,'unlimited','unlimited',100,NULL,'2G/3G/4G Data. Vi moves and access'),(2,'Recommended','P3',199,28,'unlimited ','unlimited',42,1.5,'unlimited calls -- jio to non-jio'),(2,'Smartphone','P4',555,84,'unlimited','unlimited',126,1.5,'unlimited calls -- jio to non-jio'),(3,'Popular','P5',149,28,'unlimited','300',56,2,'unlimited local, STD and roaming calls on any network');
/*!40000 ALTER TABLE `prepaid_plans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:06
