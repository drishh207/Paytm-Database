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
-- Table structure for table `primary_details`
--

DROP TABLE IF EXISTS `primary_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `primary_details` (
  `user_id` int NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone_no` bigint NOT NULL,
  `email_id` varchar(60) DEFAULT NULL,
  `Mini_kyc` varchar(45) DEFAULT NULL,
  `full_kyc` varchar(45) DEFAULT NULL,
  `bank_acc` varchar(45) DEFAULT NULL,
  `upi` varchar(45) DEFAULT NULL,
  `paytm_first` varchar(45) DEFAULT NULL,
  `post_eligible` varchar(45) DEFAULT NULL,
  `wallet_id` int NOT NULL,
  `Cashback` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `phone_no_UNIQUE` (`phone_no`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `wallet_id_UNIQUE` (`wallet_id`),
  CONSTRAINT `wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`wallet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primary_details`
--

LOCK TABLES `primary_details` WRITE;
/*!40000 ALTER TABLE `primary_details` DISABLE KEYS */;
INSERT INTO `primary_details` VALUES (101,'ABC',9378542693,'abc@gmail.com','Yes','No','No','Yes','Yes','No',1001,'No'),(102,'BCD',9378542685,'bcd@gmail.com','Yes','Yes','No','Yes','Yes','No',1002,'No'),(103,'CDE',9378542665,'cde@gmail.com','Yes','No','Yes','Yes','Yes','No',1003,'Yes'),(104,'DEF',9378542677,'def@gmail.com','Yes','Yes','No','No','No','Yes',1004,'No'),(105,'EFG',9378542611,'efg@gmail.com','Yes','No','No','Yes','Yes','No',1005,'No'),(106,'GHI',9378542625,'ghi@gmail.com','Yes','Yes','Yes','Yes','No','No',1006,'Yes'),(107,'HIJ',9378542696,'hij@gmail.com','Yes','Yes','No','No','No','Yes',1007,'No'),(108,'IJK',9378542682,'ijk@gmail.com','Yes','No','Yes','No','Yes','No',1008,'No'),(109,'JKL',9378542644,'jkl@gmail.com','Yes','No','No','Yes','Yes','No',1009,'No'),(110,'KLM',9378542636,'klm@gmail.com','Yes','Yes','Yes','Yes','No','No',1010,'Yes');
/*!40000 ALTER TABLE `primary_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:12
