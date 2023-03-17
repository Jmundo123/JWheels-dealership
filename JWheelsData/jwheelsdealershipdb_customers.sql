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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Cust_Id` int NOT NULL,
  `CustomerFirstName` varchar(45) NOT NULL,
  `CustomerLastName` varchar(45) NOT NULL,
  `CustomerSSN` varchar(15) NOT NULL,
  `CustAddress_Id` int NOT NULL,
  PRIMARY KEY (`Cust_Id`,`CustomerSSN`,`CustAddress_Id`),
  KEY `fk_Customers_CustomerPersonalInfo1_idx` (`CustomerSSN`),
  KEY `fk_Customers_CustomerAddress1_idx` (`CustAddress_Id`),
  CONSTRAINT `fk_Customers_CustomerAddress1` FOREIGN KEY (`CustAddress_Id`) REFERENCES `customeraddress` (`CustAddress_Id`),
  CONSTRAINT `fk_Customers_CustomerPersonalInfo1` FOREIGN KEY (`CustomerSSN`) REFERENCES `customerpersonalinfo` (`CustomerSSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John','Doe','1XXXXXXXX',1),(2,'Kelly','Johnson','2XXXXXXXX',2),(3,'Kaleb','Kalisto','3XXXXXXXX',3),(4,'Lindsey','Lopez','4XXXXXXXX',4),(5,'Malik','Willis','5XXXXXXXX',5),(6,'George','Guillano','6XXXXXXXX',6),(7,'Michael','Smith','7XXXXXXXX',7),(8,'Sabrina','Johnson','8XXXXXXXX',8),(9,'Maria','Cabrera','9XXXXXXXX',9),(10,'Jose','Guitierrez','10XXXXXXX',10),(11,'Lucia','Mendez','11XXXXXXX',11),(12,'Aarav','Kumar','12XXXXXXX',12),(13,'Anastasia','Sidorov','13XXXXXXX',13),(14,'Mel','Jibson','14XXXXXXX',14),(15,'Joshua','Morrison','15XXXXXXX',15),(16,'Jordan','Jones','16XXXXXXX',16),(17,'Destiny','Aisha','17XXXXXXX',17),(18,'Johnny','Hansley','18XXXXXXX',18),(19,'Jamie','Garrison','19XXXXXXX',19);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 19:11:47
