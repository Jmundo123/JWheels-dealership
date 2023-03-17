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
-- Table structure for table `salesaddress`
--

DROP TABLE IF EXISTS `salesaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesaddress` (
  `SalesAddress_Id` int NOT NULL,
  `SalesAddress` varchar(155) NOT NULL,
  `SalesCity` varchar(45) NOT NULL,
  `SalesState` varchar(2) NOT NULL,
  `SalesZip` varchar(45) NOT NULL,
  PRIMARY KEY (`SalesAddress_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesaddress`
--

LOCK TABLES `salesaddress` WRITE;
/*!40000 ALTER TABLE `salesaddress` DISABLE KEYS */;
INSERT INTO `salesaddress` VALUES (1,'12387 Rolling Stone Blvd.','Houston','TX','77999'),(2,'45687 Carter St.','Houston','TX','77998'),(3,'78912 Julian Dr.','Houston','TX','77997'),(4,'98741 Monitor St.','Los Angeles','CA','90222'),(5,'41745 Rumble Dr.','Los Angeles','CA','90223'),(6,'52147 Sun Heat St.','Los Angeles','CA','98997'),(7,'55741 Loveview St.','Houston','TX','77996'),(8,'87411 London Blvd','Houston','TX','77995'),(9,'66855 Rukia Dr','Houston','TX','77994'),(10,'89744 Linebacker st.','Los Angeles','CA','90211'),(11,'85214 Villa St.','Los Angeles','CA','90212'),(12,'54687 Cullen Rd','Los Angeles','CA','90213'),(13,'66588 New St.','Sugar Land','TX','77993'),(14,'79574 Carston Point Dr','Sugar Land','TX','77992'),(15,'74125 Midnight St','Sugar Land','TX','77991'),(16,'32158 McAlliston Dr','Long Beach','CA','99877'),(17,'87410 Job St','Long Beach','CA','99876'),(18,'66616 Kane St','Long Beach','CA','99875'),(19,'85746 HummingBird St','Houston','TX','77910'),(20,'85746 Fort Point Rd','Los Angeles','CA','90222'),(21,'55468 Marco St','Houston','TX','77911'),(22,'98744 Polo St','Los Angeles','CA','90223'),(23,'94152 Middle St','Sugar Land','TX','77969'),(24,'58547 McKaileb Blvd','Long Beach','CA','99852'),(25,'1235 One Way St','Houston','TX','77895');
/*!40000 ALTER TABLE `salesaddress` ENABLE KEYS */;
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
