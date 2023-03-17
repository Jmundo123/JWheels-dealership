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
-- Table structure for table `registeredvehicle`
--

DROP TABLE IF EXISTS `registeredvehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registeredvehicle` (
  `Register_Id` int NOT NULL,
  `RegisterDate` date NOT NULL,
  `CustMileage` varchar(45) NOT NULL,
  `Cust_Id` int NOT NULL,
  `Vehicle_Id` int NOT NULL,
  PRIMARY KEY (`Register_Id`,`Cust_Id`,`Vehicle_Id`),
  KEY `fk_CustomerVehicle_Customers_idx` (`Cust_Id`),
  KEY `fk_RegisteredVehicle_CustomerVehicle1_idx` (`Vehicle_Id`),
  CONSTRAINT `fk_CustomerVehicle_Customers` FOREIGN KEY (`Cust_Id`) REFERENCES `customers` (`Cust_Id`),
  CONSTRAINT `fk_RegisteredVehicle_CustomerVehicle1` FOREIGN KEY (`Vehicle_Id`) REFERENCES `customervehicle` (`Vehicle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registeredvehicle`
--

LOCK TABLES `registeredvehicle` WRITE;
/*!40000 ALTER TABLE `registeredvehicle` DISABLE KEYS */;
INSERT INTO `registeredvehicle` VALUES (1,'2022-09-24','210125',1,1),(2,'2022-04-04','85154',2,2),(3,'2022-12-01','67962',3,3),(4,'2022-08-07','106582',4,4),(5,'2022-02-12','97059',5,5),(6,'2022-07-07','113813',6,6),(7,'2022-03-20','89178',7,7),(8,'2022-08-27','66586',8,8),(9,'2022-09-15','102013',9,9),(10,'2022-12-11','68695',10,10),(11,'2022-05-13','118412',11,11),(12,'2022-08-20','58507',12,12),(13,'2022-05-01','80263',13,13),(14,'2022-12-29','59692',14,14),(15,'2022-08-05','112382',15,15),(16,'2022-05-28','61157',16,16),(17,'2022-11-10','65874',17,17),(18,'2022-03-15','223458',20,18);
/*!40000 ALTER TABLE `registeredvehicle` ENABLE KEYS */;
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
