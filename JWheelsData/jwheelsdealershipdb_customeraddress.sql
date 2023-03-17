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
-- Table structure for table `customeraddress`
--

DROP TABLE IF EXISTS `customeraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customeraddress` (
  `CustAddress_Id` int NOT NULL,
  `CustomerAddress` varchar(155) NOT NULL,
  `CustomerCity` varchar(45) NOT NULL,
  `CustomerState` varchar(2) NOT NULL,
  `CustomerZip` varchar(15) NOT NULL,
  PRIMARY KEY (`CustAddress_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customeraddress`
--

LOCK TABLES `customeraddress` WRITE;
/*!40000 ALTER TABLE `customeraddress` DISABLE KEYS */;
INSERT INTO `customeraddress` VALUES (1,'11111 One Way St.','Houston','TX','77777'),(2,'22222 Two Way St.','Houston','TX','77778'),(3,'33333 West Coast Blvd.','Los Angeles','CA','36535'),(4,'56966 Mid Coast Dr.','Houston','TX','44577'),(5,'77845 Great Ave.','Houston','TX','98715'),(6,'55879 Mullen St.','Los Angeles','CA','89745'),(7,'58974 Car World Dr.','Los Angeles','CA','65187'),(8,'88452 RoadBill Dr.','Houston','TX','33859'),(9,'7774 Bill Dean Dr.','Los Angeles','CA','78900'),(10,'55423 Midnight St.','Santa Ana','CA','12170'),(11,'89321 McClean St.','Sugar Land','TX','99884'),(12,'84552 Santos Dr.','Anaheim','CA','63018'),(13,'31254 Country Ranch Blvd','Cinco Ranch','TX','63374'),(14,'45244 McAllen St.','Mission Bend','TX','71023'),(15,'87954 SummerBeach Blvd','Long Beach','CA','94570'),(16,'45382 Heat Springs Dr.','Four Corners','TX','48848'),(17,'66584 Star Spangle St.','Houston','TX','84110'),(18,'85741 Hughes Dr.','Los Angeles','CA','68386'),(19,'48541 Jack Dr.','Houston','TX','14449'),(20,'17179 Man Dr','Los Angeles','CA','84941');
/*!40000 ALTER TABLE `customeraddress` ENABLE KEYS */;
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
