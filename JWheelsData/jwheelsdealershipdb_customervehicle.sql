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
-- Table structure for table `customervehicle`
--

DROP TABLE IF EXISTS `customervehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customervehicle` (
  `Vehicle_Id` int NOT NULL,
  `CustomerVIN` varchar(45) NOT NULL,
  `CustomerMake` varchar(45) NOT NULL,
  `CustomerModel` varchar(45) NOT NULL,
  `CustomerYear` varchar(5) NOT NULL,
  PRIMARY KEY (`Vehicle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customervehicle`
--

LOCK TABLES `customervehicle` WRITE;
/*!40000 ALTER TABLE `customervehicle` DISABLE KEYS */;
INSERT INTO `customervehicle` VALUES (1,'1GCDC14K2LE198114','Chevrolet','C K 1500 Series','1999'),(2,'KMHCN4AC4BU618590','Hyundai','Accent','2006'),(3,'3GYFK62817G278819','Cadillac','Escalade EXT','2007'),(4,'WV2YB0257EH008533','Volkswagen','Vanagon','1984'),(5,'1HGEM21292L047875','Honda','Civic','2002'),(6,'1GMDX03E8VD266902','Pontiac','Trans Sport','1997'),(7,'19UUA66298A735593','Acura','TL','2008'),(8,'JTDKB204483306260','Toyota','Prius','2008'),(9,'4T1BK36B164088910','Toyota','Avalon XL XLS Tour LTD','2006'),(10,'2B3CA3CV4A8247071','Dodge','Charger','2010'),(11,'KNDJD733745329696','KIA','Sorento','2004'),(12,'2T1KU4EE8CC902947','Toyota','Corolla Matrix','2012'),(13,'2C8GP54L91R299294','Chrysler','Town and Country','2001'),(14,'JN1CV6FP0A0019352','Infinity','G37','2010'),(15,'5TFMY5F11CX230620','Toyota','Tundra','2012'),(16,'1G6AH5RX0G0100963','Cadillac','ATS','2016'),(17,'TRUPD28N361952787','Audi','TT','2006'),(18,'1N6AA07A16N571909','NISSAN','Titan XE Crew Cab','2006');
/*!40000 ALTER TABLE `customervehicle` ENABLE KEYS */;
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
