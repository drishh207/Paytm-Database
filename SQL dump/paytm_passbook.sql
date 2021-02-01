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
-- Table structure for table `passbook`
--

DROP TABLE IF EXISTS `passbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passbook` (
  `Transaction_id` varchar(45) NOT NULL,
  `Sender_type` varchar(45) DEFAULT NULL,
  `stransaction_id_type` varchar(45) DEFAULT NULL,
  `Suser_ID` int DEFAULT NULL,
  `SPhone_no` bigint DEFAULT NULL,
  `Sacc_no` bigint DEFAULT NULL,
  `debited_amt` int DEFAULT NULL,
  `SDate` date DEFAULT NULL,
  `STime` varchar(10) DEFAULT NULL,
  `Sstatus` varchar(45) DEFAULT NULL,
  `reciever_type` varchar(45) DEFAULT NULL,
  `rtransaction_id_type` varchar(45) DEFAULT NULL,
  `Rdate` date DEFAULT NULL,
  `rtime` varchar(10) DEFAULT NULL,
  `rfasttag_id` int DEFAULT NULL,
  `ruser_id` varchar(100) DEFAULT NULL,
  `rphone_no` bigint DEFAULT NULL,
  `racc_no` bigint DEFAULT NULL,
  `credited_amt` int DEFAULT NULL,
  `r_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Transaction_id`),
  KEY `suser_idx` (`Suser_ID`),
  KEY `fasttag_idx` (`rfasttag_id`),
  KEY `suser_idx1` (`Suser_ID`),
  KEY `fasttag_idx1` (`rfasttag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passbook`
--

LOCK TABLES `passbook` WRITE;
/*!40000 ALTER TABLE `passbook` DISABLE KEYS */;
INSERT INTO `passbook` VALUES ('TD1001','paytm user','wallet',104,9378542677,NULL,1199,'2020-10-13','11:20','Success','paytm e-commerce','UPI','2020-10-13','11:20',NULL,'PAYTM',25641254,458921251452,1199,'Success'),('TD1002','paytm user','UPI',106,9378542625,789654123369,599,'2020-10-14','14:20','Success','paytm e-commerce','UPI','2020-10-14','14:20',NULL,'PAYTM',25641254,458921251452,599,'Success'),('TD1003','paytm user','wallet',107,9378542696,NULL,15999,'2020-11-01','17:50','Success','paytm e-commerce','UPI','2020-11-01','17:50',NULL,'PAYTM',25641254,458921251452,15999,'Success'),('TD1004','paytm user','wallet',107,9378542696,NULL,2307,'2020-11-01','17:50','Success','paytm e-commerce','UPI','2020-11-01','17:50',NULL,'PAYTM',25641254,458921251452,2307,'Success'),('TD1005','paytm user','UPI',110,9378542636,125478564932,1199,'2020-11-05','07:54','Cancelled','paytm e-commerce','UPI','2020-11-05','07:54',NULL,'PAYTM',25641254,458921251452,1199,'Cancelled'),('TD1006','paytm user','UPI',102,9378542685,659321458741,250,'2020-10-15','11:20','Success','Theatre','UPI','2020-10-15','11:20',NULL,'A THEATRE',25694522,987452145236,250,'Success'),('TD1007','paytm user','wallet',108,9378542682,NULL,300,'2020-11-09','17:50','Success','Theatre','UPI','2020-11-09','17:50',NULL,'E THEATRE',36530148,548752136547,300,'Success'),('TD1008','paytm user','wallet',108,9378542682,NULL,300,'2020-11-09','17:50','Success','Theatre','UPI','2020-11-09','17:50',NULL,'E THEATRE',36530148,548752136547,300,'Success'),('TD1009','paytm user','UPI',105,9378542611,695321458741,300,'2020-11-25','14:20','Success','Theatre','UPI','2020-11-25','14:20',NULL,'B THEATRE',65874201,548752154855,300,'Success'),('TD1010','paytm user','wallet',109,9378542644,NULL,400,'2020-12-04','07:54','Success','Theatre','UPI','2020-12-04','07:54',NULL,'E THEATRE',36530148,548752136547,400,'Success'),('TD1011','paytm user','Wallet',108,9378542682,NULL,500,'2020-12-05','08:54','Success','Theatre','UPI','2020-12-05','08:54',NULL,'F THEATRE',56987421,148569752148,500,'Success'),('TD1012','PAYTM','UPI',NULL,25641254,458921251452,20,'2020-10-02','17:50','Success','paytm user','wallet','2020-10-02','17:50',NULL,'101',NULL,NULL,20,'Success'),('TD1013','PAYTM','UPI',NULL,25641254,458921251452,20,'2020-10-25','14:20','Success','paytm user','wallet','2020-10-25','14:20',NULL,'103',NULL,NULL,20,'Success'),('TD1014','PAYTM','UPI',NULL,25641254,458921251452,10,'2020-11-14','07:54','Success','paytm user','wallet','2020-11-14','07:54',NULL,'104',NULL,NULL,10,'Success'),('TD1015','PAYTM','UPI',NULL,25641254,458921251452,500,'2020-11-25','08:54','Success','paytm user','wallet','2020-11-25','08:54',NULL,'105',NULL,NULL,500,'Success'),('TD1016','paytm user','wallet',101,9378542693,NULL,4780,'2020-10-14','11:20','Success','Flight companies','UPI','2020-10-14','11:20',NULL,'Spice jet airlines',47851256,845213369547,4780,'Success'),('TD1017','paytm user','wallet',101,9378542693,NULL,4780,'2020-10-14','11:20','Success','Flight companies','UPI','2020-10-14','11:20',NULL,'Spice jet airlines',47851256,845213369547,4780,'Success'),('TD1018','paytm user','UPI',103,9378542665,963254125874,4890,'2020-11-25','17:50','Cancelled','Flight companies','UPI','2020-11-25','17:50',NULL,'Air India Airlines',65894215,548621458792,4890,'Cancelled'),('TD1019','paytm user','UPI',106,9378542625,789654123369,4780,'2020-11-29','04:15','Success','Flight companies','UPI','2020-11-29','04:15',NULL,'Indigo Airlines',12345678,134567891011,4780,'Success'),('TD1020','paytm user','wallet',107,9378542696,NULL,4000,'2020-12-07','07:54','Success','Flight companies','UPI','2020-12-07','07:54',NULL,'Spice jet airlines',47851256,845213369547,4000,'Success'),('TD1021','paytm user','wallet',101,9378542693,NULL,5000,'2020-10-14','14:18','Success','IRCTC','UPI','2020-10-14','14:18',NULL,'IRCTC',14856952,458796521245,5000,'Success'),('TD1022','paytm user','wallet',104,9378542677,NULL,2000,'2020-11-15','09:48','Success','IRCTC','UPI','2020-11-15','09:48',NULL,'IRCTC',14856952,458796521245,2000,'Success'),('TD1023','paytm user','UPI',103,9378542665,963254125874,5600,'2020-11-26','17:56','Success','IRCTC','UPI','2020-11-26','17:56',NULL,'IRCTC',14856952,458796521245,5600,'Success'),('TD1024','paytm user','wallet',108,9378542682,NULL,400,'2020-12-02','16:16','Cancelled','IRCTC','UPI','2020-12-02','16:16',NULL,'IRCTC',14856952,458796521245,400,'Cancelled'),('TD1025','paytm user','UPI',101,9378542693,563214874123,1500,'2020-10-01','04:15','Success','bus companies','UPI','2020-10-14','11:20',NULL,'Deccan Travels and Tours',48479654,965412365874,1500,'Cancelled'),('TD1026','paytm user','UPI',102,9378542685,659321458741,1200,'2020-10-25','07:54','Success','bus companies','UPI','2020-11-01','11:20',NULL,'Global Travels',25841254,365214897564,1200,'Success'),('TD1027','paytm user','wallet',108,9378542682,NULL,1600,'2020-11-06','14:18','Success','bus companies','UPI','2020-11-01','17:50',NULL,'Global Travels',12548965,256954136587,1600,'Success'),('TD1028','paytm user','wallet',109,9378542644,NULL,800,'2020-12-14','09:48','Success','bus companies','UPI','2020-11-05','04:15',NULL,'Akash Tours and Travels',36521487,524479632547,800,'Success'),('TD1029','paytm user','wallet',106,9378542625,NULL,30,'2020-10-15','17:56','Success','metro','UPI','2020-10-15','17:56',NULL,'Mumbai metro ',56984521,236514587965,30,'Success'),('TD1030','paytm user','wallet',104,9378542677,NULL,50,'2020-11-03','16:16','Success','metro','UPI','2020-11-03','16:16',NULL,'Delhi metro',63254125,458621547896,50,'Success'),('TD1031','paytm user','wallet',105,9378542611,NULL,40,'2020-12-02','04:15','Success','metro','UPI','2020-12-02','04:15',NULL,'Kolkata metro',68547521,365289651452,40,'Success'),('TD1032','paytm user','UPI',101,9378542693,563214874123,50,'2020-11-01','15:30','Success','PAYTM','UPI','2020-11-01','15:30',NULL,'PAYTM',25641254,458921251452,50,'Success'),('TD1033','paytm user','wallet',102,9378542685,NULL,40,'2020-12-04','20:00','Success','PAYTM','UPI','2020-12-04','20:00',NULL,'PAYTM',25641254,458921251452,40,'Success'),('TD1034','paytm user','wallet',109,9378542644,NULL,20,'2020-12-12','13:37','Success','PAYTM','UPI','2020-12-12','13:37',NULL,'PAYTM',25641254,458921251452,20,'Success'),('TD1035','paytm user','wallet',109,9378542644,NULL,50,'2020-12-31','16:16','Success','PAYTM','UPI','2020-12-31','16:16',NULL,'PAYTM',25641254,458921251452,50,'Success'),('TD1036','paytm user','wallet',107,9378542696,NULL,70,'2020-12-28','04:15','Success','PAYTM','UPI','2020-12-28','04:15',NULL,'PAYTM',25641254,458921251452,70,'Success'),('TD1037','paytm user','wallet',106,9378542625,NULL,36,'2020-12-25','15:30','Success','PAYTM','UPI','2020-12-25','15:30',NULL,'PAYTM',25641254,458921251452,36,'Success'),('TD1038','paytm user','wallet',101,9378542693,NULL,199,'2020-10-23','17:56','Success','Prepaid companies','UPI','2020-10-23','17:56',NULL,'Jio ',56932445,563114587125,199,'Success'),('TD1039','paytm user','wallet',108,9378542682,NULL,331,'2020-10-24','16:16','Success','Prepaid companies','UPI','2020-10-24','16:16',NULL,'Vodafone',21236541,231456236547,331,'Success'),('TD1040','paytm user','wallet',104,9378542677,NULL,505,'2020-10-25','04:15','Success','Prepaid companies','UPI','2020-10-25','04:15',NULL,'Jio ',56932445,563114587125,505,'Success'),('TD1041','paytm user','wallet',105,9378542611,NULL,590,'2020-10-23','14:26','Success','Postpaid companies','UPI','2020-10-23','14:26',NULL,'Vodafone',21236541,231456236547,590,'Success'),('TD1042','paytm user','UPI',102,9378542685,659321458741,462,'2020-10-24','10:05','Success','Postpaid companies','UPI','2020-10-24','10:05',NULL,'Jio',56932445,563114587125,462,'Success'),('TD1043','paytm user','UPI',106,9378542625,789654123369,840,'2020-10-25','18:55','Success','Postpaid companies','UPI','2020-10-25','18:55',NULL,'Airtel',65421563,964123651485,840,'Success'),('TD1044','paytm user','wallet',104,9378542677,NULL,3274,'2020-11-25','20:15','Success','DTH Companies','UPI','2020-11-25','20:15',NULL,'Airtel Digital TV',48479654,256954136587,3274,'Success'),('TD1045','paytm user','wallet',105,9378542611,NULL,559,'2020-11-30','14:26','Success','DTH Companies','UPI','2020-11-30','14:26',NULL,'Sun Direct',25841254,524479632547,559,'Success'),('TD1046','paytm user','wallet',109,9378542644,NULL,5230,'2020-12-05','10:05','Success','DTH Companies','UPI','2020-12-05','10:05',NULL,'Tata Sky',12548965,236514587965,5230,'Success'),('TD1047','paytm user','UPI',105,9378542611,18070124056,10000,'2020-11-25','17:56','Success','Broadband providers','UPI','2020-11-25','17:56',NULL,'BSNL',21236541,134567891011,10000,'Success'),('TD1048','paytm user','wallet',109,9378542644,NULL,9600,'2020-11-30','08:40','Success','Broadband providers','UPI','2020-11-30','08:40',NULL,'Tata Sky Broadband',56932445,845213349547,9600,'Success'),('TD1049','paytm user','wallet',110,9378542636,NULL,11560,'2020-12-05','15:15','Success','Broadband providers','UPI','2020-12-05','15:15',NULL,'MTNL Delhi',65421563,458796521245,11560,'Success'),('TD1050','paytm user','wallet',104,9378542677,NULL,360,'2020-10-14','10:05','Success','Electricity board','UPI','2020-10-14','10:05',NULL,'Adani Electricity',56942154,365214587452,360,'Success'),('TD1051','paytm user','UPI',106,9378542625,789654123369,450,'2020-11-22','18:55','Success','Electricity board','UPI','2020-11-22','18:55',NULL,'Mahavitatan-Maharashtra State Electricity Distribution Company LTD.',36214521,536521458795,450,'Success'),('TD1052','paytm user','wallet',110,9378542636,NULL,780,'2020-12-12','20:15','Success','Electricity board','UPI','2020-12-12','20:15',NULL,'dakshin Gujrat Vij company limited',36521458,362541759845,780,'Success'),('TD1053','paytm user','wallet',102,9378542685,NULL,590,'2020-11-25','18:55','Success','Gas Providers','UPI','2020-11-25','18:55',NULL,'Krishna Gas Service',55632145,134567891011,590,'Success'),('TD1054','paytm user','wallet',106,9378542625,NULL,459,'2020-12-01','20:15','Success','Gas Providers','UPI','2020-12-01','20:15',NULL,'N F Gas mart',35264158,845213349547,459,'Success'),('TD1055','paytm user','wallet',105,9378542611,NULL,723,'2020-12-14','14:26','Success','Gas Providers','UPI','2020-12-14','14:26',NULL,'Kang Gas Service',63214897,458796521245,723,'Success'),('TD1056','paytm user','wallet',106,9378542625,NULL,963,'2020-11-02','08:40','Success','water providers','UPI','2020-11-02','08:40',NULL,'Bhopal Municipal Corporation',48479654,524479632547,963,'Success'),('TD1057','paytm user','wallet',103,9378542665,NULL,872,'2020-10-06','15:15','Success','water providers','UPI','2020-10-06','15:15',NULL,'Indore Municipal Corporation',25841254,236514587965,872,'Success'),('TD1058','paytm user','wallet',109,9378542644,NULL,987,'2020-12-16','10:05','Success','water providers','UPI','2020-12-16','10:05',NULL,'Pune Municipal Corporation-Water',12548965,134567891011,987,'Success'),('TD1060','paytm user','wallet',104,9378542677,NULL,260,'2020-11-07','14:36','Success','Toll operators','UPI','2020-11-07','14:36',NULL,'BETPL',65214523,125441264122,260,'Success'),('TD1061','paytm user','wallet',108,9378542682,NULL,100,'2020-11-26','10:58','Success','Toll operators','UPI','2020-11-26','10:58',NULL,'MEP',96541256,563458712546,100,'Success'),('TD1062','paytm user','wallet',106,9378542625,NULL,150,'2020-10-01','12:10','Success','Toll operators','UPI','2020-10-01','12:10',NULL,'MEP',96541256,563458712546,150,'Success'),('TD1063','paytm user','wallet',105,9378542611,NULL,200,'2020-11-25','15:46','Success','Transport Authority','UPI','2020-11-25','15:46',NULL,'Maharashtra Traffic Police',65421563,845213349547,200,'Success'),('TD1064','paytm user','wallet',106,9378542625,NULL,400,'2020-12-06','20:38','Success','Transport Authority','UPI','2020-12-06','20:38',NULL,'Chennai Trafic Police E Challan',56942154,458796521245,400,'Success'),('TD1065','paytm user','wallet',108,9378542682,NULL,500,'2020-12-25','08:30','Success','Transport Authority','UPI','2020-12-25','08:30',NULL,'Andhra Pradesh Traffic Police',36214521,365214587452,500,'Success'),('TD1066','PAYTM','UPI',NULL,25641254,458921251452,1199,'2020-11-05','08:54','Success','paytm user','UPI','2020-11-06','08:54',NULL,'110',NULL,NULL,1199,'Success'),('TD1067','paytm user','fasttag-wallet',101,9378542693,NULL,100,'2020-10-05','10:30','Success','Fasttag operators','UPI','2020-10-05','10:30',10001,'lonavala toll 1',52145896,569842136558,100,'Success'),('TD1068','paytm user','fasttag-wallet',102,9378542685,NULL,250,'2020-12-03','08:50','Success','Fasttag operators','UPI','2020-12-03','08:50',10003,'vadodara toll 2',23654125,569425631458,250,'Success'),('TD1069','paytm user','wallet',101,9378542693,NULL,200,'2020-12-05','15:10','Success','paytm user','wallet','2020-12-05','15:10',NULL,'102',9378542685,NULL,200,'Success');
/*!40000 ALTER TABLE `passbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 18:40:09