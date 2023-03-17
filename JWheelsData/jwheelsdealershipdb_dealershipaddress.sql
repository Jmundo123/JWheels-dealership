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
-- Table structure for table `dealershipaddress`
--

DROP TABLE IF EXISTS `dealershipaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealershipaddress` (
  `DealerAddress_Id` int NOT NULL,
  `DealerAddress` varchar(45) NOT NULL,
  `DealerCity` varchar(45) NOT NULL,
  `DealerState` varchar(2) NOT NULL,
  `DealerZip` varchar(45) NOT NULL,
  `BranchNo` int NOT NULL,
  PRIMARY KEY (`DealerAddress_Id`,`BranchNo`),
  KEY `fk_DealershipAddress_Dealership1_idx` (`BranchNo`),
  CONSTRAINT `fk_DealershipAddress_Dealership1` FOREIGN KEY (`BranchNo`) REFERENCES `dealership` (`BranchNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealershipaddress`
--

LOCK TABLES `dealershipaddress` WRITE;
/*!40000 ALTER TABLE `dealershipaddress` DISABLE KEYS */;
INSERT INTO `dealershipaddress` VALUES (1,'12345 1st Dealer St.','Houston','TX','77033',126),(2,'12347 3rd Dealer St.','Los Angeles','CA','12144',225),(3,'12346 2nd Dealer St.','Houston','TX','78903',255),(4,'12348 4th Dealer St.','Los Angeles','CA','36619',263),(5,'54872 Inventory St.','Sugar Land','TX','61967',515),(6,'78925 Hawaii St','Long Beach','CA','21474',847);
/*!40000 ALTER TABLE `dealershipaddress` ENABLE KEYS */;
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
