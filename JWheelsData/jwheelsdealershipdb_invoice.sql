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
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `Invoice_Id` int NOT NULL,
  `SalesDate` date NOT NULL,
  `Cust_Id` int NOT NULL,
  `Payment_Id` int NOT NULL,
  `GrandTotal` decimal(18,2) NOT NULL,
  `SalesEmp_Id` int NOT NULL,
  `Dealership_BranchNo` int NOT NULL,
  `DealerVehicleId` int NOT NULL,
  PRIMARY KEY (`Invoice_Id`,`Cust_Id`,`Payment_Id`,`SalesEmp_Id`,`Dealership_BranchNo`,`DealerVehicleId`),
  KEY `fk_Invoice_Payments1_idx` (`Payment_Id`),
  KEY `fk_Invoice_Customers1_idx` (`Cust_Id`),
  KEY `fk_Invoice_SalesEmployees1_idx` (`SalesEmp_Id`),
  KEY `fk_Invoice_Dealership1_idx` (`Dealership_BranchNo`),
  KEY `fk_Invoice_DealerVehicles1_idx` (`DealerVehicleId`),
  CONSTRAINT `fk_Invoice_Customers1` FOREIGN KEY (`Cust_Id`) REFERENCES `customers` (`Cust_Id`),
  CONSTRAINT `fk_Invoice_Dealership1` FOREIGN KEY (`Dealership_BranchNo`) REFERENCES `dealership` (`BranchNo`),
  CONSTRAINT `fk_Invoice_DealerVehicles1` FOREIGN KEY (`DealerVehicleId`) REFERENCES `dealervehicles` (`DealerVehicleId`),
  CONSTRAINT `fk_Invoice_Payments1` FOREIGN KEY (`Payment_Id`) REFERENCES `payments` (`Payment_Id`),
  CONSTRAINT `fk_Invoice_SalesEmployees1` FOREIGN KEY (`SalesEmp_Id`) REFERENCES `salesemployees` (`SalesEmp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'2022-09-24',1,1,44585.00,1,126,1),(2,'2022-04-04',2,2,21423.00,2,126,4),(3,'2022-12-01',3,3,31405.00,5,225,11),(4,'2022-08-07',4,4,14190.00,4,225,16),(5,'2022-02-12',5,5,43655.00,9,255,21),(6,'2022-07-07',6,6,14548.00,6,225,19),(7,'2022-03-20',7,7,447998.00,12,263,36),(8,'2022-08-27',8,8,25775.00,3,126,3),(9,'2022-09-15',9,9,21581.00,17,847,57),(10,'2022-12-11',10,10,73364.00,16,847,58),(11,'2022-05-13',11,11,29255.00,15,515,42),(12,'2022-08-20',12,12,31800.00,11,263,33),(13,'2022-05-01',13,13,42938.00,10,263,37),(14,'2022-12-29',14,14,35878.00,15,515,47),(15,'2022-08-05',15,15,25620.00,5,225,13),(16,'2022-05-28',16,16,20322.00,8,255,22),(17,'2022-11-10',17,17,16690.00,9,255,28),(18,'2022-07-31',18,18,6541.00,3,126,9),(19,'2022-04-29',19,19,13448.00,8,255,30);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 19:11:48
