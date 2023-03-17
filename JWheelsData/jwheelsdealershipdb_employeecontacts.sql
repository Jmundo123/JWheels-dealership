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
-- Table structure for table `employeecontacts`
--

DROP TABLE IF EXISTS `employeecontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeecontacts` (
  `EmpContact_Id` int NOT NULL,
  `EmployeePhone` varchar(15) NOT NULL,
  `EmployeeEmail` varchar(150) NOT NULL,
  `Employee_Id` int NOT NULL,
  PRIMARY KEY (`EmpContact_Id`,`Employee_Id`),
  KEY `fk_EmployeeContacts_ServiceEmployees1_idx` (`Employee_Id`),
  CONSTRAINT `fk_EmployeeContacts_ServiceEmployees1` FOREIGN KEY (`Employee_Id`) REFERENCES `serviceemployees` (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeecontacts`
--

LOCK TABLES `employeecontacts` WRITE;
/*!40000 ALTER TABLE `employeecontacts` DISABLE KEYS */;
INSERT INTO `employeecontacts` VALUES (1,'(111)-123-9999','JasonRWilliams@mail.com',1),(2,'(222)-223-9997','MikeWolfgang@mail.com',2),(3,'(333)-323-9996','PatricioMorales@mail.com',3),(4,'(444)-423-9995','LingXiao@mail.com',4),(5,'(555)-523-9994','MariaG@mail.com',5),(6,'(666)-623-9993','OmarLimas@mail.com',6),(7,'(777)-723-9992','JoselinHernandez@mail.com',7),(8,'(888)-823-9991','TenYin@mail.com',8),(9,'(999)-923-9990','JoseLimas@mail.com',9),(10,'(010)-102-9989','BrandonB@mail.com',10),(11,'(111)-113-9988','DoughWilliams@mail.com',11),(12,'(212)-123-9987','RobertoCastillo@mail.com',12),(13,'(313)-323-9986','JohnMayer@mail.com',13),(14,'(414)-423-9985','SamuelSage@mail.com',14),(15,'(515)-523-9984','KalebScott@mail.com',15),(16,'(161)-623-9983','MiloFish@mail.com',16),(17,'(616)-616-9991','JasonVilla@mail.com',17),(18,'(717)-787-9999','MauricioG@mail.com',18),(19,'(717)-585-9998','CesarCastillo@mail.com',19),(20,'(781)-782-7834','JoshuaHopkins@mail.com',20),(21,'(784)-782-7800','Jfields@mail.com',21),(22,'(963)-962-9610','MirayaPenlope@mail.com',22),(23,'(782)-783-7845','SteveRogers@mail.com',23),(24,'(823)-833-8345','AdebowaleAd@mail.com',24),(25,'(515)-252-3366','KenyaE@mail.com',25);
/*!40000 ALTER TABLE `employeecontacts` ENABLE KEYS */;
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
