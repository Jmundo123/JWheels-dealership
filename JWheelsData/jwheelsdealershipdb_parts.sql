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
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts` (
  `PartNumber` varchar(45) NOT NULL,
  `PartName` varchar(100) NOT NULL,
  `Manufacturer` varchar(45) NOT NULL,
  `VehicleModelFit` varchar(45) NOT NULL,
  `PartPrice` decimal(18,2) NOT NULL,
  `InventoryStock` int NOT NULL,
  PRIMARY KEY (`PartNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES ('01469-T7W-A00','Power Set Master','Honda','Honda HR-V 2016 - 2020',99.96,15),('04152YZZA6','Engine Oil Filter','TOYOTA','Toyota Corolla 2009 - 2018',5.69,100),('04631-SYE-A00ZZ','Right Side Sill Panel','Honda','Honda CR-V 2007 - 2011',355.79,4),('08E16-TBA-100B','Illumination Armrest Red','Honda','Honda Civic 2021',126.75,10),('10849','Instrument Cluster','Ford','Ford Expedition 2006',484.35,4),('12696048','Engine Oil Filter','Chevrolet','Chevrolet Cruze 2017',5.26,100),('14529','Door Window Switch','Ford','Ford F150 2021 - 2023',28.33,100),('15208-65F0E','Engine Oil Filter','Nissan','Nissan Sentra 2005',14.99,100),('15208-9E01A','Engine Oil Filter','Nissan','Nissan Armada 2005',6.40,50),('15400-PLM-A02 ','Engine Oil Filter','Honda','Honda Odyssey 2015',11.20,50),('17683','Door Mirror (Driver side)','Ford','Ford Expedition 2012 - 2017',293.42,8),('19133063','Output Shaft Bearing','Chevrolet','Applications containing (NQ6)',14.70,20),('203-680-01-87-8H81','Instrument Panel','Mercedes','Mercedes C 230 & C 320 2005',204.96,6),('203-880-08-57-28','Hood','Mercedes','Mercedes C 55 AMG 2005 - 2006',511.84,2),('203-880-11-18','Fender (Driver Front)','Mercedes','Mercedes C 55 AMG 2005 - 2006',397.60,5),('204-240-20-17-64','Front Mount','Mercedes','Mercedes GLK 350 2010 - 2012',128.80,5),('22832918','Control Module Bracket','Chevrolet','Parts containing (IO5) and (IO6)',11.69,13),('22875187','Speaker Grille','Chevrolet','Applications containing (UQA), (UW6), (4BO)',4.13,25),('256-140-99-00','Catalytic Converter','Mercedes','Mercedes GLE 450 2020 - 2021',2919.30,3),('276-180-00-09','Engine Oil Filter','Mercedes','Mercedes E-Class 2015',25.00,20),('30110PA1732','O-ring','Honda','Accord years 1976 - 2002',2.89,100),('50451-SWA-A00','Weight, Side Engine Mount','Honda','Honda CR-V 2007 - 2011',18.50,20),('5804320','Dashboard Panel - Instrument Panel','Ford','Ford Focus 2012 - 2014',2795.35,5),('6582','Cylinder Head Cover - Right','Ford','Ford 150 2013 - 2023',110.83,25),('6881','Adaptor Oil Filter','Ford','Ford Transit 2015 - 2023',164.67,13),('79600-SJC-A43ZC','Control Assembly, Auto AC','Honda','Honda Ridgeline 2009 - 2014',454.16,5),('811100C140','HeadLight (Right)','TOYOTA','Toyota Tundra 2018 - 2022',421.21,10),('811500C211','HeadLight (Left)','TOYOTA','Toyota Tundra 2018 - 2021',421.21,10),('8155002460','Tail Light (Right Rear)','TOYOTA','Toyota Corolla 2009 - 2011',157.14,10),('8156002460','Tail Light (Left Rear)','TOYOTA','Toyota Corolla 2009 - 2011',157.14,10),('84653082','Front Floor Console Upper Panel','Chevrolet','Applications containing BLACK',38.97,15),('90915YZZN1','Engine Oil Filter','TOYOTA','Toyota Sienna 2022',9.50,100),('96955193','Rear Wiper Motor','Chevrolet','Applications containing (C25)',74.97,12),('999E1-W4000','All - Season Floor Mats (Rubber)','Nissan','Nissan Titan 2016 - 2023',180.00,15),('999L1-VZ001','Fog Lights','Nissan','Nissan Sentra 2016 - 2019',275.00,5),('N/A','N/A','N/A','N/A',0.00,0),('T99D3-6MA0A','Side Window Deflectors','Nissan','Nissan Rougue Sport 2017 - 2022',130.00,8),('T99F3-5ZW00','Interior Lighting Package','Nissan','Nissan Armada 2017 - 2019',250.00,4),('T99M6-9BU0A','Exhaust Finisher Kit','Nissan','Nissan Frontier 2022',80.00,20);
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;
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
