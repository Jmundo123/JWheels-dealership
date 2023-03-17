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
-- Table structure for table `vehiclefeaturesinfo`
--

DROP TABLE IF EXISTS `vehiclefeaturesinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiclefeaturesinfo` (
  `Features_Id` int NOT NULL,
  `VehicleType` varchar(45) NOT NULL,
  `VehicleColor` varchar(45) NOT NULL,
  `VehiclePackage` varchar(45) NOT NULL,
  `DealerVehicleId` int NOT NULL,
  PRIMARY KEY (`Features_Id`,`DealerVehicleId`),
  KEY `fk_VehicleFeaturesInfo_DealerVehicles1_idx` (`DealerVehicleId`),
  CONSTRAINT `fk_VehicleFeaturesInfo_DealerVehicles1` FOREIGN KEY (`DealerVehicleId`) REFERENCES `dealervehicles` (`DealerVehicleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiclefeaturesinfo`
--

LOCK TABLES `vehiclefeaturesinfo` WRITE;
/*!40000 ALTER TABLE `vehiclefeaturesinfo` DISABLE KEYS */;
INSERT INTO `vehiclefeaturesinfo` VALUES (1,'Extended cab/Pickup','White','Base',1),(2,'Crew Cab/Pick up','Lunar Rock','TRD Pro',2),(3,'4 Door Sedan','Black Sand Pearl','SE',3),(4,'4 Door Sedan','Celestite','LE',4),(5,'Van','Midnight Black Metallic','XLE',5),(6,'Van','Predawn Gray','Base',6),(7,'SUV','Black Graphite','SR5',7),(8,'SUV','Solar Octane','TRD Pro',8),(9,'SUV','Bluestone Metallic','Base',9),(10,'SUV','White','TRD Pro',10),(11,'Crew Cab/Pick up','Carbonized Gray Metallic','Lariat',11),(12,'Crew Cab/Pick up','Oxford White','XL High',12),(13,'Regular Cab','Agate Black Metallic','XL Chrome',13),(14,'2 Door','Dark Matter Gray Metallic','GT Premium Standard (400a)',14),(15,'Crew Cab/Pick up','Agate Black Metallic','Lariat',15),(16,'4 Door Sedan','Black','Base',16),(17,'4 Door SUV','Area 51','Outer Banks',17),(18,'Van','White','Base',18),(19,'SUV','Agate Black Metallic','SE',19),(20,'SUV','White Metallic','MACH-E',20),(21,'Crew Cab/Pick up','Baja Storm','Pro-4x',21),(22,'Crew Cab/Pick up','Java Metallic','Platinum Reserve',22),(23,'SUV','Brillian Silver','Platinum',23),(24,'SUV','Scarlet Ember Tintcoat','SV',24),(25,'SUV','Super Black','SV',25),(26,'King Cab','Glacier White','SV',26),(27,'4 Door Sedan','Gray','Base',27),(28,'SUV','Scarlet Ember Pearl','SL',28),(29,'Coupe','Jet Black Pearl','Premium',29),(30,'Minivan','White','S',30),(31,'SUV','Polar White','N/A',31),(32,'Coupe','Black','N/A',32),(33,'Coupe','Polar White','N/A',33),(34,'SUV','Obsidian Black Metallic','N/A',34),(35,'4 Door Sedan','Red','N/A',35),(36,'Coupe','Black','GT Black Series',36),(37,'Coupe','White','Performante Convertible',37),(38,'4 Door Sedan','Black','N/A',38),(39,'Crew Cab/Pick up','Red','N/A',39),(40,'Sedan','Iridium Silver Metallic','N/A',40),(41,'Sedan','Still Night Pearl','Sport',41),(42,'SUV','Crystal Black Pearl','EX',42),(43,'Sedan','Sonic Gray Pearl','Sport Touring',43),(44,'SUV','Black','EX-L',44),(45,'Crew Cab/Pick up','Gray Metallic','RTS',45),(46,'Crew Cab/Pick up','Crystal Black Pearl','RTL',46),(47,'Crew Cab/Pick up','Crystal Black Pearl','Black Edition',47),(48,'Sedan','Blue Metallic','EX',48),(49,'Sedan','Smokey Mauve Pearl','Sport Touring',49),(50,'Sedan','Lunar Silver','Sport Touring',50),(51,'Crew Cab/Pick up','Summit White','Customs Special Edition',51),(52,'Regular Cab','Summit White','3500HD',52),(53,'Crew Cab/Pick up','Silver Ice Metallic','1500LTD',53),(54,'SUV','Black','RS FWD',54),(55,'SUV','Sterling Gray Metallic','2WD RST',55),(56,'Coupe','Summit White','Convertible 1SS',56),(57,'Sedan','Summit White','LT',57),(58,'Crew Cab/Pick up','Silver Ice Metallic','3500HD High Country',58),(59,'Coupe','White','Stingray convertible',59),(60,'Coupe','Accelerate Yellow Metallic','Stingray 2LT',60);
/*!40000 ALTER TABLE `vehiclefeaturesinfo` ENABLE KEYS */;
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
