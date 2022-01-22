-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: thuvien
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrow` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(20) NOT NULL,
  `DocumentID` varchar(20) NOT NULL,
  `NameDocument` varchar(45) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'wait',
  `BorrowingTime` int DEFAULT NULL,
  `BorrowDate` date DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  `Note` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `borrow_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `users` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
INSERT INTO `borrow` VALUES (1,'AT150267','KMA000001','Toán cao cấp A1','borrowed',1,'2022-01-20',NULL,NULL),(2,'AT150267','KMA000002','Toán cao cấp A1','borrowed',14,'2022-01-20',NULL,NULL),(3,'AT150267','KMA000025','Toán cao cấp A2','borrowed',30,'2022-01-20',NULL,NULL),(4,'AT150267','KMA000080','Lập trình nhân an toàn','wait',14,NULL,NULL,NULL);
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `borrowtrend`
--

DROP TABLE IF EXISTS `borrowtrend`;
/*!50001 DROP VIEW IF EXISTS `borrowtrend`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `borrowtrend` AS SELECT 
 1 AS `ID`,
 1 AS `Name`,
 1 AS `Author`,
 1 AS `Description`,
 1 AS `Quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `borrowtrendspecialization`
--

DROP TABLE IF EXISTS `borrowtrendspecialization`;
/*!50001 DROP VIEW IF EXISTS `borrowtrendspecialization`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `borrowtrendspecialization` AS SELECT 
 1 AS `ID`,
 1 AS `Name`,
 1 AS `Author`,
 1 AS `Description`,
 1 AS `Quantity`,
 1 AS `Specialization`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Toán học',''),(2,'Vật lý học',''),(3,'Hoá học',''),(4,'Công nghệ Thông tin',''),(5,'Mật mã',''),(6,'Kiến trúc máy tính',''),(7,'An Toàn Thông Tin',''),(8,'Điện tử viễn thông',''),(9,'Triết học',''),(10,'Khác','');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_documents`
--

DROP TABLE IF EXISTS `category_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_documents` (
  `CategoryID` int NOT NULL,
  `DocumentsID` int NOT NULL,
  PRIMARY KEY (`CategoryID`,`DocumentsID`),
  KEY `DocumentsID` (`DocumentsID`),
  CONSTRAINT `category_documents_ibfk_1` FOREIGN KEY (`DocumentsID`) REFERENCES `documents` (`ID`),
  CONSTRAINT `category_documents_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_documents`
--

LOCK TABLES `category_documents` WRITE;
/*!40000 ALTER TABLE `category_documents` DISABLE KEYS */;
INSERT INTO `category_documents` VALUES (1,1),(1,2),(4,3),(4,4),(7,4),(7,5);
/*!40000 ALTER TABLE `category_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `category_quantity`
--

DROP TABLE IF EXISTS `category_quantity`;
/*!50001 DROP VIEW IF EXISTS `category_quantity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `category_quantity` AS SELECT 
 1 AS `ID`,
 1 AS `Name`,
 1 AS `Description`,
 1 AS `Available`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `ID` varchar(20) NOT NULL,
  `DocumentsID` int NOT NULL,
  `Reprint` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Status` varchar(50) NOT NULL DEFAULT 'available',
  PRIMARY KEY (`ID`),
  KEY `DocumentsID` (`DocumentsID`),
  CONSTRAINT `document_ibfk_1` FOREIGN KEY (`DocumentsID`) REFERENCES `documents` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES ('KMA000001',1,1,100000,'not available'),('KMA000002',1,1,100000,'not available'),('KMA000003',1,1,100000,'available'),('KMA000004',1,1,100000,'available'),('KMA000005',1,1,100000,'available'),('KMA000006',1,1,100000,'available'),('KMA000007',1,1,100000,'available'),('KMA000008',1,1,100000,'available'),('KMA000009',1,1,100000,'available'),('KMA000010',1,1,100000,'available'),('KMA000011',1,1,100000,'available'),('KMA000012',1,1,100000,'available'),('KMA000013',1,1,100000,'available'),('KMA000014',1,1,100000,'available'),('KMA000015',1,1,100000,'available'),('KMA000016',1,1,100000,'available'),('KMA000017',1,1,100000,'available'),('KMA000018',1,1,100000,'available'),('KMA000019',1,1,100000,'available'),('KMA000020',1,1,100000,'available'),('KMA000021',1,1,100000,'available'),('KMA000022',1,1,100000,'available'),('KMA000023',1,1,100000,'available'),('KMA000024',1,1,100000,'available'),('KMA000025',2,1,100000,'not available'),('KMA000026',2,1,100000,'available'),('KMA000027',2,1,100000,'available'),('KMA000028',2,1,100000,'available'),('KMA000029',2,1,100000,'available'),('KMA000030',2,1,100000,'available'),('KMA000031',2,1,100000,'available'),('KMA000032',2,1,100000,'available'),('KMA000033',2,1,100000,'available'),('KMA000034',2,1,100000,'available'),('KMA000035',2,1,100000,'available'),('KMA000036',2,1,100000,'available'),('KMA000037',2,1,100000,'available'),('KMA000038',2,1,100000,'available'),('KMA000039',2,1,100000,'available'),('KMA000040',2,1,100000,'available'),('KMA000041',2,1,100000,'available'),('KMA000042',2,1,100000,'available'),('KMA000043',2,1,100000,'available'),('KMA000044',2,1,100000,'available'),('KMA000045',2,1,100000,'available'),('KMA000046',2,1,100000,'available'),('KMA000047',2,1,100000,'available'),('KMA000048',2,1,100000,'available'),('KMA000049',2,1,100000,'available'),('KMA000050',3,1,100000,'available'),('KMA000051',3,1,100000,'available'),('KMA000052',3,1,100000,'available'),('KMA000053',3,1,100000,'available'),('KMA000054',3,1,100000,'available'),('KMA000055',3,1,100000,'available'),('KMA000056',3,1,100000,'available'),('KMA000057',3,1,100000,'available'),('KMA000058',3,1,100000,'available'),('KMA000059',3,1,100000,'available'),('KMA000060',3,1,100000,'available'),('KMA000061',3,1,100000,'available'),('KMA000062',3,1,100000,'available'),('KMA000063',3,1,100000,'available'),('KMA000064',3,1,100000,'available'),('KMA000065',3,1,100000,'available'),('KMA000066',3,1,100000,'available'),('KMA000067',3,1,100000,'available'),('KMA000068',3,1,100000,'available'),('KMA000069',3,1,100000,'available'),('KMA000070',3,1,100000,'available'),('KMA000071',3,1,100000,'available'),('KMA000072',3,1,100000,'available'),('KMA000073',3,1,100000,'available'),('KMA000074',3,1,100000,'available'),('KMA000075',3,1,100000,'available'),('KMA000076',3,1,100000,'available'),('KMA000077',3,1,100000,'available'),('KMA000078',3,1,100000,'available'),('KMA000079',3,1,100000,'available'),('KMA000080',4,1,100000,'not available'),('KMA000081',4,1,100000,'available'),('KMA000082',4,1,100000,'available'),('KMA000083',4,1,100000,'available'),('KMA000084',4,1,100000,'available'),('KMA000085',4,1,100000,'available'),('KMA000086',4,1,100000,'available'),('KMA000087',4,1,100000,'available'),('KMA000088',4,1,100000,'available'),('KMA000089',4,1,100000,'available'),('KMA000090',4,1,100000,'available'),('KMA000091',4,1,100000,'available'),('KMA000092',4,1,100000,'available'),('KMA000093',4,1,100000,'available'),('KMA000094',4,1,100000,'available'),('KMA000095',4,1,100000,'available'),('KMA000096',4,1,100000,'available'),('KMA000097',4,1,100000,'available'),('KMA000098',4,1,100000,'available'),('KMA000099',4,1,100000,'available'),('KMA000100',4,1,100000,'available');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,'Toán cao cấp A1','actvn','ATCBTT7','1'),(2,'Toán cao cấp A2','actvn','ATCBTT2','1'),(3,'Tin học đại cương','actvn','ATCTHT1','4'),(4,'Lập trình nhân an toàn','actvn','ATCT4','4,7'),(5,'An toàn mạng máy tính','actvn','AT 8','7');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `documents_quantity`
--

DROP TABLE IF EXISTS `documents_quantity`;
/*!50001 DROP VIEW IF EXISTS `documents_quantity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `documents_quantity` AS SELECT 
 1 AS `ID`,
 1 AS `Name`,
 1 AS `Author`,
 1 AS `Description`,
 1 AS `Category`,
 1 AS `Available`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Source` varchar(45) DEFAULT NULL,
  `Content` varchar(100) DEFAULT NULL,
  `Destination` varchar(45) DEFAULT NULL,
  `Time` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'AT150265','Add Documents!','1','2022-01-20'),(2,'AT150265','Add Documents!','2','2022-01-20'),(3,'AT150265','Add Documents!','3','2022-01-20'),(4,'AT150265','Add Documents!','4','2022-01-20'),(5,'AT150265','Add Document!','KMA000001','2022-01-20'),(6,'AT150265','Add Document!','KMA000002','2022-01-20'),(7,'AT150265','Add Document!','KMA000003','2022-01-20'),(8,'AT150265','Add Document!','KMA000004','2022-01-20'),(9,'AT150265','Add Document!','KMA000005','2022-01-20'),(10,'AT150265','Add Document!','KMA000006','2022-01-20'),(11,'AT150265','Add Document!','KMA000007','2022-01-20'),(12,'AT150265','Add Document!','KMA000008','2022-01-20'),(13,'AT150265','Add Document!','KMA000009','2022-01-20'),(14,'AT150265','Add Document!','KMA000010','2022-01-20'),(15,'AT150265','Add Document!','KMA000011','2022-01-20'),(16,'AT150265','Add Document!','KMA000012','2022-01-20'),(17,'AT150265','Add Document!','KMA000013','2022-01-20'),(18,'AT150265','Add Document!','KMA000014','2022-01-20'),(19,'AT150265','Add Document!','KMA000015','2022-01-20'),(20,'AT150265','Add Document!','KMA000016','2022-01-20'),(21,'AT150265','Add Document!','KMA000017','2022-01-20'),(22,'AT150265','Add Document!','KMA000018','2022-01-20'),(23,'AT150265','Add Document!','KMA000019','2022-01-20'),(24,'AT150265','Add Document!','KMA000020','2022-01-20'),(25,'AT150265','Add Document!','KMA000021','2022-01-20'),(26,'AT150265','Add Document!','KMA000022','2022-01-20'),(27,'AT150265','Add Document!','KMA000023','2022-01-20'),(28,'AT150265','Add Document!','KMA000024','2022-01-20'),(29,'AT150265','Add Document!','KMA000025','2022-01-20'),(30,'AT150265','Add Document!','KMA000026','2022-01-20'),(31,'AT150265','Add Document!','KMA000027','2022-01-20'),(32,'AT150265','Add Document!','KMA000028','2022-01-20'),(33,'AT150265','Add Document!','KMA000029','2022-01-20'),(34,'AT150265','Add Document!','KMA000030','2022-01-20'),(35,'AT150265','Add Document!','KMA000031','2022-01-20'),(36,'AT150265','Add Document!','KMA000032','2022-01-20'),(37,'AT150265','Add Document!','KMA000033','2022-01-20'),(38,'AT150265','Add Document!','KMA000034','2022-01-20'),(39,'AT150265','Add Document!','KMA000035','2022-01-20'),(40,'AT150265','Add Document!','KMA000036','2022-01-20'),(41,'AT150265','Add Document!','KMA000037','2022-01-20'),(42,'AT150265','Add Document!','KMA000038','2022-01-20'),(43,'AT150265','Add Document!','KMA000039','2022-01-20'),(44,'AT150265','Add Document!','KMA000040','2022-01-20'),(45,'AT150265','Add Document!','KMA000041','2022-01-20'),(46,'AT150265','Add Document!','KMA000042','2022-01-20'),(47,'AT150265','Add Document!','KMA000043','2022-01-20'),(48,'AT150265','Add Document!','KMA000044','2022-01-20'),(49,'AT150265','Add Document!','KMA000045','2022-01-20'),(50,'AT150265','Add Document!','KMA000046','2022-01-20'),(51,'AT150265','Add Document!','KMA000047','2022-01-20'),(52,'AT150265','Add Document!','KMA000048','2022-01-20'),(53,'AT150265','Add Document!','KMA000049','2022-01-20'),(54,'AT150265','Add Document!','KMA000050','2022-01-20'),(55,'AT150265','Add Document!','KMA000051','2022-01-20'),(56,'AT150265','Add Document!','KMA000052','2022-01-20'),(57,'AT150265','Add Document!','KMA000053','2022-01-20'),(58,'AT150265','Add Document!','KMA000054','2022-01-20'),(59,'AT150265','Add Document!','KMA000055','2022-01-20'),(60,'AT150265','Add Document!','KMA000056','2022-01-20'),(61,'AT150265','Add Document!','KMA000057','2022-01-20'),(62,'AT150265','Add Document!','KMA000058','2022-01-20'),(63,'AT150265','Add Document!','KMA000059','2022-01-20'),(64,'AT150265','Add Document!','KMA000060','2022-01-20'),(65,'AT150265','Add Document!','KMA000061','2022-01-20'),(66,'AT150265','Add Document!','KMA000062','2022-01-20'),(67,'AT150265','Add Document!','KMA000063','2022-01-20'),(68,'AT150265','Add Document!','KMA000064','2022-01-20'),(69,'AT150265','Add Document!','KMA000065','2022-01-20'),(70,'AT150265','Add Document!','KMA000066','2022-01-20'),(71,'AT150265','Add Document!','KMA000067','2022-01-20'),(72,'AT150265','Add Document!','KMA000068','2022-01-20'),(73,'AT150265','Add Document!','KMA000069','2022-01-20'),(74,'AT150265','Add Document!','KMA000070','2022-01-20'),(75,'AT150265','Add Document!','KMA000071','2022-01-20'),(76,'AT150265','Add Document!','KMA000072','2022-01-20'),(77,'AT150265','Add Document!','KMA000073','2022-01-20'),(78,'AT150265','Add Document!','KMA000074','2022-01-20'),(79,'AT150265','Add Document!','KMA000075','2022-01-20'),(80,'AT150265','Add Document!','KMA000076','2022-01-20'),(81,'AT150265','Add Document!','KMA000077','2022-01-20'),(82,'AT150265','Add Document!','KMA000078','2022-01-20'),(83,'AT150265','Add Document!','KMA000079','2022-01-20'),(84,'AT150265','Add Document!','KMA000080','2022-01-20'),(85,'AT150265','Add Document!','KMA000081','2022-01-20'),(86,'AT150265','Add Document!','KMA000082','2022-01-20'),(87,'AT150265','Add Document!','KMA000083','2022-01-20'),(88,'AT150265','Add Document!','KMA000084','2022-01-20'),(89,'AT150265','Add Document!','KMA000085','2022-01-20'),(90,'AT150265','Add Document!','KMA000086','2022-01-20'),(91,'AT150265','Add Document!','KMA000087','2022-01-20'),(92,'AT150265','Add Document!','KMA000088','2022-01-20'),(93,'AT150265','Add Document!','KMA000089','2022-01-20'),(94,'AT150265','Add Document!','KMA000090','2022-01-20'),(95,'AT150265','Add Document!','KMA000091','2022-01-20'),(96,'AT150265','Add Document!','KMA000092','2022-01-20'),(97,'AT150265','Add Document!','KMA000093','2022-01-20'),(98,'AT150265','Add Document!','KMA000094','2022-01-20'),(99,'AT150265','Add Document!','KMA000095','2022-01-20'),(100,'AT150265','Add Document!','KMA000096','2022-01-20'),(101,'AT150265','Add Document!','KMA000097','2022-01-20'),(102,'AT150265','Add Document!','KMA000098','2022-01-20'),(103,'AT150265','Add Document!','KMA000099','2022-01-20'),(104,'AT150265','Add Document!','KMA000100','2022-01-20'),(105,'AT150267','Borrow Document','1','2022-01-20'),(106,'AT150267','Borrow Document','2','2022-01-20'),(107,'AT150267','Borrow Document','3','2022-01-20'),(108,'AT150267','Borrow Document','4','2022-01-20'),(109,'AT150265','Confirm Borrow','1','2022-01-20'),(110,'AT150265','Confirm Borrow','2','2022-01-20'),(111,'AT150265','Confirm Borrow','3','2022-01-20'),(112,'AT150265','Add Documents!','5','2022-01-20'),(113,'AT150233','Create User','AT160101','2022-01-20'),(114,'AT150233','Create User','AT160102','2022-01-20'),(115,'AT150233','Create User','AT160103','2022-01-20'),(116,'AT150265','Update User','AT160101','2022-01-20'),(117,'AT150265','Update User','AT160102','2022-01-20'),(118,'AT150265','Update User','AT160103','2022-01-20'),(119,'AT150265','Update User','AT160101','2022-01-20'),(120,'AT150265','Update User','AT160102','2022-01-20'),(121,'AT150265','Update User','AT160103','2022-01-20'),(122,'AT150265','Update User','AT160101','2022-01-20'),(123,'AT150265','Update User','AT160101','2022-01-20'),(124,'AT150265','Update User','AT160102','2022-01-20'),(125,'AT150265','Update User','AT160103','2022-01-20'),(126,'AT150233','Create User','AT160104','2022-01-22'),(127,'AT150233','Create User','AT160105','2022-01-22'),(128,'AT150233','Create User','AT160106','2022-01-22'),(129,'AT150265','Disable User','AT160106','2022-01-22'),(130,'AT150265','Active User','AT160106','2022-01-22'),(131,'AT150265','Extend','AT160106','2022-01-22'),(132,'AT150265','Extend','AT160106','2022-01-22'),(133,'AT150265','Extend','AT150267','2022-01-22'),(134,'AT150265','Extend','AT150267','2022-01-22'),(135,'AT150265','Extend','AT150267','2022-01-22'),(136,'AT150265','Extend','AT150267','2022-01-22'),(137,'AT150265','Extend','AT150267','2022-01-22'),(138,'AT150265','Extend','AT150267','2022-01-22'),(139,'AT150265','Extend','AT150267','2022-01-22'),(140,'AT150265','Active User','AT150267','2022-01-22'),(141,'AT150265','Extend','AT150267','2022-01-22');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `StudentID` varchar(10) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `Specialization` varchar(10) NOT NULL,
  `Class` varchar(10) NOT NULL,
  `Admin` tinyint(1) NOT NULL DEFAULT '0',
  `Token` varchar(40) NOT NULL,
  `Expiry` date NOT NULL,
  `Status` varchar(10) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('AT150233','C44743F329437846CD389357F9994F2F','Đỗ Bá Long','1','ATTT','AT15B',1,'TOKEN','2026-12-19','active'),('AT150265','1808C34F08D41508C9AAF3E4EE241D48','Nguyễn Công Vĩnh','1','ATTT','AT15B',1,'TOKEN','2025-12-18','active'),('AT150266','DDCA97F22636598938B1C091ABF5C986','Nguyễn Văn Vỹ','1','ATTT','AT15B',1,'TOKEN','2022-12-19','active'),('AT150267','35F1484B5EC4F77028EA9723EA44ABDE','Nguyễn Công Vĩnh','0999999999','ATTT','AT15B',0,'TOKEN','2030-12-19','active'),('AT160101','C6CC6B3BAC27363CEB84557C08AD484E','Nguyễn Văn An','0','ATTT','AT16A',0,'TOKEN','2026-01-20','active'),('AT160102','D19E50235885FE481E7F7B58F7E9FAFD','Nguyễn Thị Bình','0','ATTT','AT16A',0,'TOKEN','2026-01-20','active'),('AT160103','D4484302F8E7428930638356C6E8FC37','Phạm Văn Công','0','ATTT','AT16A',0,'TOKEN','2026-01-20','active'),('AT160104','81320C2E4E29D7FB108C42EC8F160249','Phạm Thị Dung','0','ATTT','AT16A',0,'TOKEN','2026-01-22','active'),('AT160105','292029ED36A5578388F3E32E160F4B31','Nguyễn Văn Dũng','0','ATTT','AT16A',0,'TOKEN','2026-01-22','active'),('AT160106','3955B7BDAB1E47B852B7929C1AD362D8','Kiều Văn Đỗ','0','ATTT','AT16A',0,'TOKEN','2026-01-22','active');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `users_hide`
--

DROP TABLE IF EXISTS `users_hide`;
/*!50001 DROP VIEW IF EXISTS `users_hide`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_hide` AS SELECT 
 1 AS `StudentID`,
 1 AS `FullName`,
 1 AS `PhoneNumber`,
 1 AS `Specialization`,
 1 AS `Class`,
 1 AS `Admin`,
 1 AS `Expiry`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `users_hide_password`
--

DROP TABLE IF EXISTS `users_hide_password`;
/*!50001 DROP VIEW IF EXISTS `users_hide_password`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_hide_password` AS SELECT 
 1 AS `StudentID`,
 1 AS `FullName`,
 1 AS `PhoneNumber`,
 1 AS `Specialization`,
 1 AS `Class`,
 1 AS `Admin`,
 1 AS `Token`,
 1 AS `Expiry`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `borrowtrend`
--

/*!50001 DROP VIEW IF EXISTS `borrowtrend`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ncvinh`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `borrowtrend` AS select `documents`.`ID` AS `ID`,`documents`.`Name` AS `Name`,`documents`.`Author` AS `Author`,`documents`.`Description` AS `Description`,count(`borrow`.`DocumentID`) AS `Quantity` from (((`documents` join `document`) join `borrow`) join `users`) where ((`document`.`ID` = `borrow`.`DocumentID`) and (`document`.`DocumentsID` = `documents`.`ID`) and ((`borrow`.`status` = 'borrowed') or (`borrow`.`status` = 'return')) and (`borrow`.`StudentID` = `users`.`StudentID`)) group by `documents`.`ID` order by `Quantity` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `borrowtrendspecialization`
--

/*!50001 DROP VIEW IF EXISTS `borrowtrendspecialization`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ncvinh`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `borrowtrendspecialization` AS select `documents`.`ID` AS `ID`,`documents`.`Name` AS `Name`,`documents`.`Author` AS `Author`,`documents`.`Description` AS `Description`,count(`borrow`.`DocumentID`) AS `Quantity`,`users`.`Specialization` AS `Specialization` from (((`documents` join `document`) join `borrow`) join `users`) where ((`document`.`ID` = `borrow`.`DocumentID`) and (`document`.`DocumentsID` = `documents`.`ID`) and ((`borrow`.`status` = 'borrowed') or (`borrow`.`status` = 'return')) and (`borrow`.`StudentID` = `users`.`StudentID`)) group by `documents`.`ID`,`users`.`Specialization` order by `Quantity` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `category_quantity`
--

/*!50001 DROP VIEW IF EXISTS `category_quantity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ncvinh`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `category_quantity` AS select `category`.`ID` AS `ID`,`category`.`Name` AS `Name`,`category`.`Description` AS `Description`,count(`category_documents`.`DocumentsID`) AS `Available` from (`category` left join `category_documents` on((`category`.`ID` = `category_documents`.`CategoryID`))) group by `category`.`ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `documents_quantity`
--

/*!50001 DROP VIEW IF EXISTS `documents_quantity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ncvinh`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `documents_quantity` AS select `documents`.`ID` AS `ID`,`documents`.`Name` AS `Name`,`documents`.`Author` AS `Author`,`documents`.`Description` AS `Description`,`documents`.`Category` AS `Category`,count(`document`.`DocumentsID`) AS `Available` from (`documents` left join `document` on(((`document`.`DocumentsID` = `documents`.`ID`) and (`document`.`Status` = 'available')))) group by `documents`.`ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users_hide`
--

/*!50001 DROP VIEW IF EXISTS `users_hide`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ncvinh`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `users_hide` AS select `users`.`StudentID` AS `StudentID`,`users`.`FullName` AS `FullName`,`users`.`PhoneNumber` AS `PhoneNumber`,`users`.`Specialization` AS `Specialization`,`users`.`Class` AS `Class`,`users`.`Admin` AS `Admin`,`users`.`Expiry` AS `Expiry`,`users`.`Status` AS `Status` from `users` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users_hide_password`
--

/*!50001 DROP VIEW IF EXISTS `users_hide_password`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ncvinh`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `users_hide_password` AS select `users`.`StudentID` AS `StudentID`,`users`.`FullName` AS `FullName`,`users`.`PhoneNumber` AS `PhoneNumber`,`users`.`Specialization` AS `Specialization`,`users`.`Class` AS `Class`,`users`.`Admin` AS `Admin`,`users`.`Token` AS `Token`,`users`.`Expiry` AS `Expiry`,`users`.`Status` AS `Status` from `users` where (`users`.`Status` = 'active') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-22  9:47:03
