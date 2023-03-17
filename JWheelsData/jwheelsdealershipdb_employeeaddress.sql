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
-- Table structure for table `employeeaddress`
--

DROP TABLE IF EXISTS `employeeaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeaddress` (
  `EmpAddress_Id` int NOT NULL,
  `EmployeeAddress` varchar(150) NOT NULL,
  `EmployeeCity` varchar(45) NOT NULL,
  `EmployeeState` varchar(45) NOT NULL,
  `EmployeeZip` varchar(45) NOT NULL,
  PRIMARY KEY (`EmpAddress_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeaddress`
--

LOCK TABLES `employeeaddress` WRITE;
/*!40000 ALTER TABLE `employeeaddress` DISABLE KEYS */;
INSERT INTO `employeeaddress` VALUES (1,'14552 Front Row St.','Houston','TX','77551'),(2,'13552 Back Row St.','Houston','TX','77552'),(3,'90222 Sunset St.','Los Angeles','CA','98740'),(4,'90223 Great Blvd','Sugar Land','TX','77550'),(5,'14553 King Ranch Dr','Long Beach','CA','98741'),(6,'14554 Money St','Houston','TX','77555'),(7,'98774 Hollywood Blvd','Los Angeles','CA','90210'),(8,'58514 North Point Dr.','Houston','TX','37387'),(9,'23144 South Point Dr.','Houston','TX','38307'),(10,'85410 East Point Dr','Los Angeles','CA','21939'),(11,'65895 West Point Dr.','Los Angeles','CA','78947'),(12,'82545 Heart Point St.','Houston','TX','21924'),(13,'85221 Grand St.','Houston','TX','58689'),(14,'51547 Klay Rd','Los Angeles','CA','62038'),(15,'85454 Raymond Dr.','Los Angeles','CA','30794'),(16,'55214 Morrison Dr','Sugar Land','TX','17477'),(17,'12547 Clarity St','Sugar Land','TX','27969'),(18,'85511 Nobility Dr.','Long Beach','CA','22212'),(19,'87984 Make Ville Dr.','Long Beach','CA','45749'),(20,'84514 Markus Dr','Los Angeles','CA','98562'),(21,'54114 Polk Dr','Long Beach','CA','85112'),(22,'87541 Clay Dr','Long Beach','CA','56215'),(23,'85415 Luck St','Sugar Land','TX','14752'),(24,'51254 Moore Dr','Sugar Land','TX','52154'),(25,'56165 Yohana St','Long Beach','CA','65412');
/*!40000 ALTER TABLE `employeeaddress` ENABLE KEYS */;
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
