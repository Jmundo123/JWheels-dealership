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
-- Table structure for table `servicecustomervehicle`
--

DROP TABLE IF EXISTS `servicecustomervehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicecustomervehicle` (
  `ServiceVehicle_Id` int NOT NULL,
  `ServiceVIN` varchar(45) NOT NULL,
  `ServiceMake` varchar(45) NOT NULL,
  `ServiceModel` varchar(45) NOT NULL,
  `ServiceYear` varchar(45) NOT NULL,
  `ServiceCust_Id` int NOT NULL,
  PRIMARY KEY (`ServiceVehicle_Id`,`ServiceCust_Id`),
  KEY `fk_ServiceCustomerVehicle_ServiceCustomer1_idx` (`ServiceCust_Id`),
  CONSTRAINT `fk_ServiceCustomerVehicle_ServiceCustomer1` FOREIGN KEY (`ServiceCust_Id`) REFERENCES `servicecustomer` (`ServiceCust_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecustomervehicle`
--

LOCK TABLES `servicecustomervehicle` WRITE;
/*!40000 ALTER TABLE `servicecustomervehicle` DISABLE KEYS */;
INSERT INTO `servicecustomervehicle` VALUES (1,'5TFAW5F15JX712769','TOYOTA','Tundra','2018',1),(2,'2T1BU4EE3BC648790','TOYOTA','Corolla','2011',2),(3,'5TDBRKECXNS113181','TOYOTA','Sienna','2022',3),(4,'1FTEW1CP3MFC28208','Ford','F-150','2021',4),(5,'1FMFU17586LA77837 ','Ford','Expedition','2006',5),(6,'1FAHP3F29CL392395','Ford','Focus','2012',6),(7,'1N6ED1CL9NN647395','Nissan','Frontier','2022',7),(8,'3N1AB7AP3KY227178','Nissan','Sentra','2019',8),(9,'5N1AA08AX5N730485','Nissan','Armada','2005',9),(10,'WDBRF40J55F577499','Mercedes','C 230','2005',10),(11,'4JGFB5KB2LA068987','Mercedes','GLE 450','2020',11),(12,'WDDHF5KB4FB106385','Mercedes','E-Class','2015',12),(13,'5J6RE38399L035943','Honda','CR-V','2009',13),(14,'2HGFC2F65MH555005','Honda','Civic','2021',14),(15,'5FNRL5H43FB125037','Honda','Odessey','2015',15),(16,'1GYS3HKJ1LR220651','Cadillac','Escalade ESV','2020',16),(17,'KL7CJNSM9NB503168','Chevrolet','Trax','2022',17),(18,'1G1BE5SM5H7270246','Chevrolet','Cruze','2017',18),(19,'5TDYRKEC8NS135609','TOYOTA','Sienna','2022',1);
/*!40000 ALTER TABLE `servicecustomervehicle` ENABLE KEYS */;
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
