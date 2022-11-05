-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: TuffyBayDB
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Bids`
--

DROP TABLE IF EXISTS `Bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bids` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `productID` int NOT NULL,
  `userID` int NOT NULL,
  `currentPrice` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bids`
--

LOCK TABLES `Bids` WRITE;
/*!40000 ALTER TABLE `Bids` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(100) NOT NULL DEFAULT '',
  `Password` varchar(100) NOT NULL DEFAULT '',
  `FirstName` varchar(100) NOT NULL DEFAULT '',
  `LastName` varchar(100) NOT NULL DEFAULT '',
  `Birthday` date NOT NULL DEFAULT '1900-01-01',
  `AccountCreation` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `Email` varchar(50) NOT NULL DEFAULT '',
  `Credits` float(10,2) NOT NULL DEFAULT '0.00',
  `Address` varchar(200) NOT NULL DEFAULT '',
  `Phone` varchar(20) NOT NULL DEFAULT '',
  `Locked` enum('FALSE','TRUE') NOT NULL DEFAULT 'FALSE',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'a','$2y$10$OdRU7JBbfe4AA2wMwyGLke3tAXBtzQgXst3VGXeDJEkY33UAZZ.DO','aaa','aaa','1900-01-01','1900-01-01 00:00:00','a@csu.fullerton.edu',0.00,'','1','FALSE'),(2,'123','$2y$10$i60TPuH.6KAWlaoS.S1ZmOX8aOyylybt/CJ0545pwf0yFggXkxkNK','123','123','1900-01-01','1900-01-01 00:00:00','123',0.00,'','1','FALSE'),(3,'b','$2y$10$6uPJs3zKGGpuSu51hUvUsu0DT.drZDVtWvNRfwEh1dddDz8oUaNiS','bbb','bbb','1900-01-01','1900-01-01 00:00:00','123',0.00,'','1','FALSE'),(4,'dan','$2y$10$Px7oK/GdAD30jFouOE89CeDm70T0s3adLZ4NJtL6a.Fsa3Y06JOdy','Daniel','Wu','1900-01-01','1900-01-01 00:00:00','123',0.00,'','1','FALSE'),(5,'1231','$2y$10$fMALc3nAblveGPB3bIoZ5.hDDLEWJ4QVpL/JTIEBopqP20MPldvIW','123','123','1900-01-01','1900-01-01 00:00:00','123',0.00,'','1','FALSE'),(6,'date','$2y$10$RtAp.4xN00CHYOx1DPC/K.FvGx09jcsTBIADr828tkJMFSTVzj8Zq','date','date','2022-09-28','1900-01-01 00:00:00','123',0.00,'','1','FALSE'),(7,'date1','$2y$10$nV9Kgku13MsM6NEflqnKxOYGIWNes4O.SKg1zBs0Xssk7PK2w4IZG','date1','date1','2022-09-28','1900-01-01 00:00:00','123',0.00,'','1','FALSE'),(8,'date2','$2y$10$CMMqaAU/0495mFrbrGmUs.W3g97GzAaYLEFjmDai2tGNSZxvOnqmS','date','date','1969-12-31','1900-01-01 00:00:00','123',0.00,'','1','FALSE'),(9,'date3','$2y$10$5uQNGSsg6qJZq3ZAmfHlgeZTpGZwbZ1lOfm2ffmyYXNobl/adzqWG','da','da','2022-09-28','1900-01-01 00:00:00','123',0.00,'','1','FALSE'),(10,'date4','$2y$10$aQzwidi9icn1duTT8nDaVuofvYsMNpUkn95owZSPNezJMvePf7MVu','t','t','2000-01-01','1900-01-01 00:00:00','123',0.00,'','1','FALSE'),(11,'date5','$2y$10$Bn3jeU2OX82KfFxB7eBOY.08OACTEljNG4USkio0EVnl7E.79y8V6','d','d','2022-09-05','1900-01-01 00:00:00','123',0.00,'','1','FALSE'),(12,'n','$2y$10$0A7wPvHRDZuM2jDFhwoeE.d5qvwVr/NLmQ/qq3s3//LOc50nSgWBe','now','now','2022-09-26','2022-09-28 21:49:58','123',0.00,'','1','FALSE'),(13,'e','$2y$10$A2c/0croRj.SBUoJBKyXzeRaWmQgRNAmDBRP4LBTt/02Zy.CHA8z6','email','email','2022-09-29','2022-09-29 13:56:38','',0.00,'','1','FALSE'),(14,'e1','$2y$10$EUx19EWD0iFd1atNQaXgIe0l9HNCao..4qkFReGTFPyvhp4/i60mO','e','e','2022-09-29','2022-09-29 14:03:01','e@csu.fullerton.edu',0.00,'','1','FALSE'),(15,'p','$2y$10$xCSYO27HMFPHoyJnHZ4hcOVZXCVfv1p3iLWjKHKVaWPB3D6dmx2ZC','phone','p','2022-09-29','2022-09-29 14:27:44','p@csu.fullerton.edu',0.00,'','0123456789','FALSE'),(16,'address','$2y$10$ChISg19TYmzEg8OmfP1BsuUdMM4VTAT/Gk9xKA6YwwNZ8fKz7wxKu','a','a','2022-09-29','2022-09-29 14:40:30','ad@csu.fullerton.edu',0.00,'123 abc, fullerton, CA','1234567890','FALSE'),(17,'abcd','$2y$10$GTfJ/WJAwucCju8eEN9Vj.bIJS6o.9Cr/rpsqhyhiWaawtIZ/9AX.','a','a','2022-09-30','2022-09-30 20:21:19','ad2@csu.fullerton.edu',0.00,'1','1234567890','FALSE'),(18,'johndoe','$2y$10$3kAlBuEyHgq2nnSOjH.gkOD0pDH9rj1p/GRqPM39yIopelp6u1Yz2','John','Doe','2022-10-03','2022-10-03 18:11:07','johndoe@csu.fullerton.edu',0.00,'800 N State Blvd, Fullerton, CA 92831','9876543210','FALSE'),(19,'mmouse','$2y$10$NCbQotvaSRagg3ImAb2v3.00.vsjUYKYxsT99/nGlYRLAjbyzOXKC','Mickey','Mouse','1900-01-01','1900-01-01 00:00:00','',0.00,'Katella Ave Anaheim CA','6675309','FALSE');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Category` varchar(1000) NOT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'TV','LCD, CRT, OLED, PLASMA, LED...'),(2,'BOOK - MATH','Math related books'),(3,'BOOK - PHYSICS','Physics related books'),(4,'Notebooks','all kinds of notebooks');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_list`
--

DROP TABLE IF EXISTS `product_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_list` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(25) NOT NULL DEFAULT '[PH]NAME',
  `product_description` varchar(50) DEFAULT NULL,
  `product_latest_seller` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '[PH]SELLER',
  `product_photo_path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `product_final_sell_date` timestamp NULL DEFAULT NULL,
  `product_stock` int NOT NULL DEFAULT '0',
  `product_price` float(4,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_list`
--

LOCK TABLES `product_list` WRITE;
/*!40000 ALTER TABLE `product_list` DISABLE KEYS */;
INSERT INTO `product_list` VALUES (1,'Product 1','Test description for product 1','Test Seller for Product 1','./product_photo/books.png','2022-10-19 12:13:33',99,9.99),(2,'Product 2','Test description for product 2','Test Seller for Product 2','./product_photo/books.png','2022-11-22 08:00:00',88,8.88),(3,'Product 3','Test 3','Who?','./product_photo/books.png','2022-09-22 07:00:00',2,10.00);
/*!40000 ALTER TABLE `product_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'TuffyBayDB'
--

--
-- Dumping routines for database 'TuffyBayDB'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-05 18:16:04
