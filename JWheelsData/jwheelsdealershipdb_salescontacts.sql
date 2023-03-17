-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jwheelsdealershipdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `salescontacts`
--

DROP TABLE IF EXISTS `salescontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salescontacts` (
  `SalesContact_Id` int NOT NULL,
  `SalesPhone` varchar(15) NOT NULL,
  `SalesEmail` varchar(250) NOT NULL,
  `SalesEmp_Id` int NOT NULL,
  PRIMARY KEY (`SalesContact_Id`,`SalesEmp_Id`),
  KEY `fk_SalesContacts_SalesEmployees1_idx` (`SalesEmp_Id`),
  CONSTRAINT `fk_SalesContacts_SalesEmployees1` FOREIGN KEY (`SalesEmp_Id`) REFERENCES `salesemployees` (`SalesEmp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salescontacts`
--

LOCK TABLES `salescontacts` WRITE;
/*!40000 ALTER TABLE `salescontacts` DISABLE KEYS */;
INSERT INTO `salescontacts` VALUES (1,'(852)-456-7913','HartleyClaudia@mail.com',1),(2,'(258)-654-1379','FaizahRillo@mail.com',2),(3,'(654)-456-9731','NathanEllis@mail.com',3),(4,'(793)-793-1397','SaadRidan@mail.com',4),(5,'(999)-888-7777','TuforSwift@mail.com',5),(6,'(777)-888-4564','JamesCarter@mail.com',6),(7,'(987)-654-3211','LilianPower@mail.com',7),(8,'(556)-556-5556','JasonMandela@mail.com',8),(9,'(784)-885-2526','CristianoRodriguez@mail.com',9),(10,'(421)-285-2867','RobertJohnson@mail.com',10),(11,'(254)-854-6688','CrystalMartinez@mail.com',11),(12,'(131)-568-7411','JamesRoberts@mail.com',12),(13,'(968)-968-9688','XiaoLu@mail.com',13),(14,'(313)-411-4113','YukioYamamoto@mail.com',14),(15,'(316)-311-4311','JamesCarson@mail.com',15),(16,'(985)-589-9859','MikeDavidson@mail.com',16),(17,'(741)-742-7430','Aliceland@mail.com',17),(18,'(123)-122-1221','MarcoPolo@mail.com',18),(19,'(122)-123-1234','MikeAlliston@mail.com',19),(20,'(858)-313-4311','MarkWhatley@mail.com',20),(21,'(784)-788-7886','JosephMicheals@mail.com',21),(22,'(321)-322-3223','JerryRandy@mail.com',22),(23,'(518)-937-2168','Flint@mail.com',23),(24,'(777)-887-7887','LoreanJarret@mail.com',24),(25,'(555)-444-3321','KalilBrown@mail.com',25);
/*!40000 ALTER TABLE `salescontacts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 19:11:46
