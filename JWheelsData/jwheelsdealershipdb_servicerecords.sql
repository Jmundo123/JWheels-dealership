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
-- Table structure for table `servicerecords`
--

DROP TABLE IF EXISTS `servicerecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicerecords` (
  `Service_Id` int NOT NULL,
  `DateRolledIn` date NOT NULL,
  `VehicleMileage` decimal(18,2) NOT NULL,
  `Services` varchar(300) NOT NULL,
  `ServiceVehicle_Id` int NOT NULL,
  PRIMARY KEY (`Service_Id`,`ServiceVehicle_Id`),
  KEY `fk_ServiceRecords_ServiceCustomerVehicle1_idx` (`ServiceVehicle_Id`),
  CONSTRAINT `fk_ServiceRecords_ServiceCustomerVehicle1` FOREIGN KEY (`ServiceVehicle_Id`) REFERENCES `servicecustomervehicle` (`ServiceVehicle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicerecords`
--

LOCK TABLES `servicerecords` WRITE;
/*!40000 ALTER TABLE `servicerecords` DISABLE KEYS */;
INSERT INTO `servicerecords` VALUES (1,'2022-06-26',46375.00,'Needs a new Headlight',1),(2,'2021-07-25',19564.00,'Needs a new Taillight',2),(3,'2021-02-11',10001.00,'Oil Change Maintenance',3),(4,'2022-06-11',21591.00,'Needs a new Door Window Switch',4),(5,'2022-08-25',130482.00,'Needs New Instrument Cluster',5),(6,'2021-02-14',43448.00,'Replace Damaged Dash Panel',6),(7,'2021-11-28',5309.00,'Install Exhaust Finisher Kit',7),(8,'2020-06-26',31520.00,'Replace Damaged Fog Lights',8),(9,'2021-03-06',110539.00,'Oil Change Maintenance',9),(10,'2022-01-29',144264.00,'Reaplace Damaged Instrument Panel',10),(11,'2021-09-02',19148.00,'Install Catalytic Converter',11),(12,'2021-05-27',51236.00,'Tire Rotation & Oil Change Maintenance',12),(13,'2022-02-13',117675.00,'Install Right Side Sill Panel',13),(14,'2022-11-02',16995.00,'Install Illumination Armrest Red',14),(15,'2022-06-03',52414.00,'Tire Rotation & Oil Change Maintenance',15),(16,'2020-03-14',39034.00,'Install Control Module Bracket',16),(17,'2022-09-15',11186.00,'Replace Rear Wiper Motor',17),(18,'2020-09-19',50305.00,'Tire Rotation & Oil Change Maintenance',18),(19,'2022-10-12',5.00,'Tire Rotation & Oil Change Maintenance',19);
/*!40000 ALTER TABLE `servicerecords` ENABLE KEYS */;
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
