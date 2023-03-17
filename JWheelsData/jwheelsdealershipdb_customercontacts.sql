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
-- Table structure for table `customercontacts`
--

DROP TABLE IF EXISTS `customercontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customercontacts` (
  `CustContactId` int NOT NULL,
  `CustPhone` varchar(15) NOT NULL,
  `CustEmail` varchar(250) NOT NULL,
  `Cust_Id` int NOT NULL,
  PRIMARY KEY (`CustContactId`,`Cust_Id`),
  KEY `fk_CustomerContacts_Customers1_idx` (`Cust_Id`),
  CONSTRAINT `fk_CustomerContacts_Customers1` FOREIGN KEY (`Cust_Id`) REFERENCES `customers` (`Cust_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customercontacts`
--

LOCK TABLES `customercontacts` WRITE;
/*!40000 ALTER TABLE `customercontacts` DISABLE KEYS */;
INSERT INTO `customercontacts` VALUES (1,'(111)-111-1110','JDL@mail.com',1),(2,'(111)-555-1111','KJ@mail.com',2),(3,'(111)-111-2222','KalebMK@mail.com',3),(4,'(132)-123-1234','LindseyLopez@mail.com',4),(5,'(001)-002-0003','MarkWillis@mail.com',5),(6,'(222)-333-4444','GeorgeGuillano@mail.com',6),(7,'(888)-999-7777','Michael123@mail.com',7),(8,'(556)-665-5556','Sabrina456@mail.com',8),(9,'(333)-222-1111','CabreraM77@mail.com',9),(10,'(555)-667-8777','BenjaminG@mail.com',10),(11,'(444)-666-8887','LuciaMendez1@mail.com',11),(12,'(777)-888-8874','Kumar101@mail.com',12),(13,'(464)-888-7982','SidoroAnastasia@mail.com',13),(14,'(666)-888-4444','Mel007@mail.com',14),(15,'(787)-787-7878','Jmilton@mail.com',15),(16,'(818)-818-8181','Hope777@mail.com',16),(17,'(432)-432-4321','DestinyLove@mail.com',17),(18,'(123)-456-7890','Hansley03@mail.com',18),(19,'(987)-654-3210','WilliamJrGarrison@mail.com',19),(20,'(985)-985-9855)','Bradley@mail.com',20);
/*!40000 ALTER TABLE `customercontacts` ENABLE KEYS */;
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
