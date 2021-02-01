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
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train` (
  `train_no` int NOT NULL,
  `train_name` varchar(65) DEFAULT NULL,
  `ac1` int DEFAULT NULL,
  `ac2` int DEFAULT NULL,
  `ac3` int DEFAULT NULL,
  `sleeper` int DEFAULT NULL,
  `fsitting` int DEFAULT NULL,
  `ssitting` int DEFAULT NULL,
  `ac1f` int DEFAULT NULL,
  `ac2f` int DEFAULT NULL,
  `ac3f` int DEFAULT NULL,
  `sleeperf` int DEFAULT NULL,
  `fsittingf` int DEFAULT NULL,
  `ssittingf` int DEFAULT NULL,
  `tac1` int DEFAULT NULL,
  `tac2` int DEFAULT NULL,
  `tac3` int DEFAULT NULL,
  `tsleeper` int DEFAULT NULL,
  `tfsitting` int DEFAULT NULL,
  `tssitting` int DEFAULT NULL,
  PRIMARY KEY (`train_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (12346,'Mumbai - Haridwar rajdhani',200,250,400,300,100,200,80,100,100,100,50,50,100,100,100,60,40,45),(12370,'Pune - Agra cantt rajdhani',200,250,400,300,100,200,80,100,100,100,50,50,100,100,100,60,40,45),(12864,'Bhopal - Mumbai duronto',200,250,400,300,100,200,80,100,100,100,50,50,100,100,100,60,40,45),(22230,'Pune - Surat - Bhopal duronto',200,250,400,300,100,200,80,100,100,100,50,50,100,100,100,60,40,45);
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
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
