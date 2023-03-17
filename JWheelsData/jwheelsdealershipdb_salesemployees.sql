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
-- Table structure for table `salesemployees`
--

DROP TABLE IF EXISTS `salesemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesemployees` (
  `SalesEmp_Id` int NOT NULL,
  `SalesFirstName` varchar(45) NOT NULL,
  `SalesLastName` varchar(45) NOT NULL,
  `SalesSSN` varchar(15) NOT NULL,
  `SalesAddress_Id` int NOT NULL,
  PRIMARY KEY (`SalesEmp_Id`,`SalesSSN`,`SalesAddress_Id`),
  KEY `fk_SalesEmployees_SalesAddress1_idx` (`SalesAddress_Id`),
  KEY `fk_SalesEmployees_SalesPersonalInfo1_idx` (`SalesSSN`),
  CONSTRAINT `fk_SalesEmployees_SalesAddress1` FOREIGN KEY (`SalesAddress_Id`) REFERENCES `salesaddress` (`SalesAddress_Id`),
  CONSTRAINT `fk_SalesEmployees_SalesPersonalInfo1` FOREIGN KEY (`SalesSSN`) REFERENCES `salespersonalinfo` (`SalesSSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesemployees`
--

LOCK TABLES `salesemployees` WRITE;
/*!40000 ALTER TABLE `salesemployees` DISABLE KEYS */;
INSERT INTO `salesemployees` VALUES (1,'Claudia','Hartley','32XXXXXXX',1),(2,'Faizah','Murillo','33XXXXXXX',2),(3,'Nathan','Ellis','34XXXXXXX',3),(4,'Saad','Sheridan','35XXXXXXX',4),(5,'Tufor','Swift','36XXXXXXX',5),(6,'James','Carter','37XXXXXXX',6),(7,'Lilian','Power','38XXXXXXX',7),(8,'Jason','Mandela','39XXXXXXX',8),(9,'Cristiano','Rodriguez','40XXXXXXX',9),(10,'Robert','Johnson','41XXXXXXX',10),(11,'Crystal','Martinez','42XXXXXXX',11),(12,'James','Roberts','43XXXXXXX',12),(13,'Lu','Xiao','44XXXXXXX',13),(14,'Yukio','Yamamoto','45XXXXXXX',14),(15,'James','Carson','46XXXXXXX',15),(16,'Mike','Davidson','47XXXXXXX',16),(17,'Alice','Wonderland','48XXXXXXX',17),(18,'Marco','Polo','49XXXXXXX',18),(19,'Mike','Alliston','50XXXXXXX',19),(20,'Mark','Whatley','51XXXXXXX',20),(21,'Joseph','Micheals','52XXXXXXX',21),(22,'Jerry','Randy','53XXXXXXX',22),(23,'Darius','Flint','54XXXXXXX',23),(24,'Lorean','Jarret','55XXXXXXX',24);
/*!40000 ALTER TABLE `salesemployees` ENABLE KEYS */;
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
