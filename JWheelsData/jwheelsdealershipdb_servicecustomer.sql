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
-- Table structure for table `servicecustomer`
--

DROP TABLE IF EXISTS `servicecustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicecustomer` (
  `ServiceCust_Id` int NOT NULL,
  `ServiceFirstName` varchar(45) NOT NULL,
  `ServiceLastName` varchar(45) NOT NULL,
  `CustAddress_Id` int NOT NULL,
  PRIMARY KEY (`ServiceCust_Id`,`CustAddress_Id`),
  KEY `fk_ServiceCustomer_ServiceCustomerAddress1_idx` (`CustAddress_Id`),
  CONSTRAINT `fk_ServiceCustomer_ServiceCustomerAddress1` FOREIGN KEY (`CustAddress_Id`) REFERENCES `servicecustomeraddress` (`CustAddress_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecustomer`
--

LOCK TABLES `servicecustomer` WRITE;
/*!40000 ALTER TABLE `servicecustomer` DISABLE KEYS */;
INSERT INTO `servicecustomer` VALUES (1,'Mark','DeVellis',1),(2,'Carrie','Johnson',2),(3,'Jonathan','Tesla',3),(4,'Kyoshi','Sakamoto',4),(5,'Ronald','McDonald',5),(6,'Bobby','Ten',6),(7,'Yennifer','Castillo',7),(8,'Kelly','McDougal',8),(9,'Cristiano','Castellas',9),(10,'Mike','Cox',10),(11,'Wendy','Vasquez',11),(12,'Jason','Stark',12),(13,'Micheal','Dawnson',13),(14,'Mayra','Martinez',14),(15,'John','Rilley',15),(16,'Yenny','McRodgers',16),(17,'Eric','Doe',17),(18,'Yolanda','Vazquez',18);
/*!40000 ALTER TABLE `servicecustomer` ENABLE KEYS */;
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
