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
-- Table structure for table `serviceinvoice`
--

DROP TABLE IF EXISTS `serviceinvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceinvoice` (
  `ServiceInvoice_Id` int NOT NULL,
  `TransactionDate` date NOT NULL,
  `Service_Id` int NOT NULL,
  `Parts_PartNumber` varchar(45) NOT NULL,
  `ServiceLabor` decimal(18,2) NOT NULL,
  `ServiceTotal` decimal(18,2) NOT NULL,
  `Employee_Id` int NOT NULL,
  `Dealership_BranchNo` int NOT NULL,
  `ServiceCust_Id` int NOT NULL,
  PRIMARY KEY (`ServiceInvoice_Id`,`Service_Id`,`Parts_PartNumber`,`Employee_Id`,`Dealership_BranchNo`,`ServiceCust_Id`),
  KEY `fk_ServiceInvoice_ServiceRecords1_idx` (`Service_Id`),
  KEY `fk_ServiceInvoice_Dealership1_idx` (`Dealership_BranchNo`),
  KEY `fk_ServiceInvoice_ServiceEmployees1_idx` (`Employee_Id`),
  KEY `fk_ServiceInvoice_ServiceCustomer1_idx` (`ServiceCust_Id`),
  KEY `fk_ServiceInvoice_Parts1_idx` (`Parts_PartNumber`),
  CONSTRAINT `fk_ServiceInvoice_Dealership1` FOREIGN KEY (`Dealership_BranchNo`) REFERENCES `dealership` (`BranchNo`),
  CONSTRAINT `fk_ServiceInvoice_Parts1` FOREIGN KEY (`Parts_PartNumber`) REFERENCES `parts` (`PartNumber`),
  CONSTRAINT `fk_ServiceInvoice_ServiceCustomer1` FOREIGN KEY (`ServiceCust_Id`) REFERENCES `servicecustomer` (`ServiceCust_Id`),
  CONSTRAINT `fk_ServiceInvoice_ServiceEmployees1` FOREIGN KEY (`Employee_Id`) REFERENCES `serviceemployees` (`Employee_Id`),
  CONSTRAINT `fk_ServiceInvoice_ServiceRecords1` FOREIGN KEY (`Service_Id`) REFERENCES `servicerecords` (`Service_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceinvoice`
--

LOCK TABLES `serviceinvoice` WRITE;
/*!40000 ALTER TABLE `serviceinvoice` DISABLE KEYS */;
INSERT INTO `serviceinvoice` VALUES (1,'2022-06-26',1,'811500C211',150.00,571.21,1,126,1),(2,'2021-07-25',2,'8155002460',100.00,257.14,2,126,2),(3,'2021-02-11',3,'90915YZZN1',150.00,219.50,1,126,3),(4,'2022-06-11',4,'14529',150.00,178.33,3,225,4),(5,'2022-08-25',5,'10849',150.00,634.35,4,225,5),(6,'2021-02-16',6,'5804320',1500.00,4295.35,4,225,6),(7,'2021-11-28',7,'T99M6-9BU0A',100.00,180.00,5,255,7),(8,'2020-06-26',8,'999L1-VZ001',150.00,425.00,6,255,8),(9,'2021-03-06',9,'15208-9E01A',50.00,146.40,5,255,9),(10,'2022-01-29',10,'203-680-01-87-8H81',150.00,354.96,20,263,10),(11,'2021-09-04',11,'256-140-99-00',1500.00,4419.30,7,263,11),(12,'2021-05-27',12,'276-180-00-09',300.00,415.00,20,263,12),(13,'2022-02-13',13,'04631-SYE-A00ZZ',150.00,505.79,23,515,13),(14,'2022-11-02',14,'08E16-TBA-100B',100.00,226.75,24,515,14),(15,'2022-06-03',15,'15400-PLM-A02 ',150.00,251.20,24,515,15),(16,'2020-03-14',16,'22832918',50.00,61.69,22,847,16),(17,'2022-09-15',17,'96955193',100.00,174.97,21,847,17),(18,'2020-09-19',18,'12696048',75.00,130.26,21,847,18),(19,'2022-11-12',19,'90915YZZN1',100.00,257.14,2,126,1);
/*!40000 ALTER TABLE `serviceinvoice` ENABLE KEYS */;
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
