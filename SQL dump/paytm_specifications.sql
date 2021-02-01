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
-- Table structure for table `specifications`
--

DROP TABLE IF EXISTS `specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specifications` (
  `cat_id` int DEFAULT NULL,
  `subcat_id` int DEFAULT NULL,
  `spec_id` int NOT NULL,
  `spec_name` varchar(60) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`spec_id`),
  KEY `cat_id_idx` (`cat_id`),
  KEY `subcat_id_idx` (`subcat_id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `specifications_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`),
  CONSTRAINT `specifications_ibfk_2` FOREIGN KEY (`subcat_id`) REFERENCES `sub_category` (`subcat_id`),
  CONSTRAINT `specifications_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specifications`
--

LOCK TABLES `specifications` WRITE;
/*!40000 ALTER TABLE `specifications` DISABLE KEYS */;
INSERT INTO `specifications` VALUES (201,1,1,'Display','6.38 inch',1),(201,1,2,'Brand','Vivo',1),(201,1,3,'Product Code','MOBVIVO-V18-908',1),(201,1,4,'Processor','Qualcomm Snapdragon 675',1),(201,1,5,'OS','Funtouch OS 9.1',1),(201,1,6,'Internal Memory','128 GB',1),(201,1,7,'Camera','48 MP + 8 MP+ 2 MP+ 2 MP',1),(201,1,8,'Sim Type','Dual Sim',1),(201,1,9,'Black Color','6',1),(201,1,10,'Blue Color','13',1),(201,1,11,'RAM ','8GB',1),(202,1,12,'XS','0',2),(202,1,13,'S','123',2),(202,1,14,'M','22',2),(202,1,15,'L','37',2),(202,1,16,'Fit','Regular Fit',2),(202,1,17,'Neck Type','Round Neck',2),(202,1,18,'material','Cotton',2),(202,1,19,'Length','Calf Length',2),(202,1,20,'Pattern ','Ethnic Motifs',2),(203,1,21,'Brand','Singer',3),(203,1,22,'type','Room Heater',3),(203,1,23,'White Color','56',3),(203,1,24,'Power Consumption','2000 watts',3),(203,1,25,'In sales package','main unit',3),(204,2,26,'Brand','SORICH ORGANICS',4),(204,2,27,'Product weight','800g',4),(204,2,28,'Type','Mixed Fruits',4),(204,2,29,'Veg/Non-veg','veg',4),(204,2,30,'Expiry date','44473',4),(204,2,31,'Set Contents','pack of 4',4),(205,3,32,'Brand','Seagate',5),(205,3,33,'capacity','2TB',5),(205,3,34,'Connectivity','USB 3.0',5),(205,3,35,'Blue Color','34',5),(205,3,36,'Form Factor','Portable',5);
/*!40000 ALTER TABLE `specifications` ENABLE KEYS */;
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
