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
-- Table structure for table `vehicleinfo`
--

DROP TABLE IF EXISTS `vehicleinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleinfo` (
  `VehicleInfo_Id` int NOT NULL,
  `VehicleMileage` decimal(18,2) NOT NULL,
  `VehicleCondition` varchar(45) NOT NULL,
  `VehicleStatus` varchar(45) NOT NULL,
  `VehiclePrice` varchar(45) NOT NULL,
  `DealerVehicleId` int NOT NULL,
  PRIMARY KEY (`VehicleInfo_Id`,`DealerVehicleId`),
  KEY `fk_VehicleInfo_DealerVehicles1_idx` (`DealerVehicleId`),
  CONSTRAINT `fk_VehicleInfo_DealerVehicles1` FOREIGN KEY (`DealerVehicleId`) REFERENCES `dealervehicles` (`DealerVehicleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleinfo`
--

LOCK TABLES `vehicleinfo` WRITE;
/*!40000 ALTER TABLE `vehicleinfo` DISABLE KEYS */;
INSERT INTO `vehicleinfo` VALUES (1,100.00,'New','Sold','42285.00',1),(2,15.00,'New','In Stock','86887.00',2),(3,82991.00,'Used','Sold','21993.00',3),(4,20.00,'New','Sold','22573.00',4),(5,5.00,'New','In Stock','54991.00',5),(6,3.00,'New','In Stock','44267.00',6),(7,57975.00,'Used','In Stock','31444.00',7),(8,2.00,'New','In Stock','56621.00',8),(9,198285.00,'Used','Sold','5991.00',9),(10,18325.00,'Pre-Owned','In Stock','78999.00',10),(11,0.00,'New','Sold','52855.00',11),(12,5.00,'New','In Stock','39570.00',12),(13,0.00,'New','Sold','31520.00',13),(14,2.00,'New','In Stock','43065.00',14),(15,12.00,'New','In Stock','72284.00',15),(16,34605.00,'Used','Sold','16990.00',16),(17,2.00,'New','In Stock','49085.00',17),(18,28223.00,'Used','In Stock','25990.00',18),(19,15707.00,'Used','Sold','23998.00',19),(20,3584.00,'Pre-Owned','In Stock','55692.00',20),(21,0.00,'New','Sold','63105.00',21),(22,100983.00,'Used','Sold','33622.00',22),(23,1.00,'New','In Stock','48905.00',23),(24,0.00,'New','In Stock','34295.00',24),(25,0.00,'New','In Stock','39620.00',25),(26,60.00,'New','In Stock','37485.00',26),(27,25892.00,'Used','In Stock','19990.00',27),(28,2.00,'New','Sold','34135.00',28),(29,13488.00,'Pre-Owned','In Stock','138999.00',29),(30,85811.00,'Used','Sold','13998.00',30),(31,1985.00,'Used','In Stock','45500.00',31),(32,13.00,'New','In Stock','54305.00',32),(33,0.00,'New','Sold','57250.00',33),(34,0.00,'New','In Stock','207750.00',34),(35,20748.00,'Used','In Stock','32499.00',35),(36,525.00,'Pre-Owned','Sold','447998.00',36),(37,6865.00,'Pre-Owned','Sold','369998.00',37),(38,35658.00,'Used','In Stock','67995.00',38),(39,18848.00,'Used','In Stock','61990.00',39),(40,57544.00,'Used','In Stock','44981.00',40),(41,10.00,'New','In Stock','30075.00',41),(42,10.00,'New','Sold','30555.00',42),(43,10.00,'New','In Stock','31540.00',43),(44,9721.00,'Pre-Owned','In Stock','40285.00',44),(45,87000.00,'Used','In Stock','23998.00',45),(46,20763.00,'Used','In Stock','35941.00',46),(47,0.00,'New','Sold','50328.00',47),(48,34449.00,'Used','In Stock','22199.00',48),(49,3.00,'New','In Stock','31540.00',49),(50,10.00,'New','In Stock','31755.00',50),(51,9.00,'New','In Stock','31920.00',51),(52,10.00,'New','In Stock','38195.00',52),(53,5.00,'New','In Stock','56305.00',53),(54,1.00,'New','In Stock','48815.00',54),(55,0.00,'New','In Stock','67495.00',55),(56,0.00,'New','In Stock','49285.00',56),(57,15.00,'New','Sold','29281.00',57),(58,12.00,'New','Sold','85251.00',58),(59,12588.00,'Used','In Stock','57990.00',59),(60,4934.00,'Pre-Owned','In Stock','99674.00',60);
/*!40000 ALTER TABLE `vehicleinfo` ENABLE KEYS */;
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
