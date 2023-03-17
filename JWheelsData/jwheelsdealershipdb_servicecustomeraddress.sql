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
-- Table structure for table `servicecustomeraddress`
--

DROP TABLE IF EXISTS `servicecustomeraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicecustomeraddress` (
  `CustAddress_Id` int NOT NULL,
  `ServCustomerAddress` varchar(155) NOT NULL,
  `ServCustomerCity` varchar(45) NOT NULL,
  `ServCustomerState` varchar(2) NOT NULL,
  `ServCustomerZip` varchar(10) NOT NULL,
  PRIMARY KEY (`CustAddress_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecustomeraddress`
--

LOCK TABLES `servicecustomeraddress` WRITE;
/*!40000 ALTER TABLE `servicecustomeraddress` DISABLE KEYS */;
INSERT INTO `servicecustomeraddress` VALUES (1,'12341 Texan Dr','Houston','TX','29314'),(2,'51654 H-Town St','Houston','TX','69971'),(3,'59741 Pajaro St','Houston','TX','28207'),(4,'66619 Scarlet St','Los Angeles','CA','71056'),(5,'85254 Red View Blvd','Los Angeles','CA','24281'),(6,'11158 Jet Speed Dr','Los Angeles','CA','13383'),(7,'12351 McDavid St','Houston','TX','12779'),(8,'21514 Bissonet St','Houston','TX','79331'),(9,'84841 Ranch View Dr','Houston','TX','29363'),(10,'85412 Drive View Blvd','Los Angeles','CA','31867'),(11,'78545 Sonic Dr','Los Angeles','CA','30981'),(12,'98984 Bellaire Blvd','Los Angeles','CA','26916'),(13,'78481 Sugar Lake Dr','Sugar Land','TX','61757'),(14,'51214 Sweetwater Dr','Sugar Land','TX','14950'),(15,'14785 Sweet Rolls St','Sugar Land','TX','71575'),(16,'25413 Sun Heat St','Long Beach','CA','58002'),(17,'54108 Sunset Blvd','Long Beach','CA','34095'),(18,'85246 Sandy View Dr.','Long Beach','CA','16413');
/*!40000 ALTER TABLE `servicecustomeraddress` ENABLE KEYS */;
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
