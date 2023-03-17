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
-- Table structure for table `employeepersonalinfo`
--

DROP TABLE IF EXISTS `employeepersonalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeepersonalinfo` (
  `EmployeeSSN` varchar(45) NOT NULL,
  `EmployeeDateHired` date NOT NULL,
  `EmployeePosition` varchar(45) NOT NULL,
  `EmployeeHourlyRate` decimal(18,2) NOT NULL,
  `Dealership_BranchNo` int NOT NULL,
  PRIMARY KEY (`EmployeeSSN`,`Dealership_BranchNo`),
  KEY `fk_EmployeePersonalInfo_Dealership1_idx` (`Dealership_BranchNo`),
  CONSTRAINT `fk_EmployeePersonalInfo_Dealership1` FOREIGN KEY (`Dealership_BranchNo`) REFERENCES `dealership` (`BranchNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeepersonalinfo`
--

LOCK TABLES `employeepersonalinfo` WRITE;
/*!40000 ALTER TABLE `employeepersonalinfo` DISABLE KEYS */;
INSERT INTO `employeepersonalinfo` VALUES ('56XXXXXXX','2015-09-06','Service Advisor',26.08,126),('57XXXXXXX','1991-09-19','Service Advisor',26.93,126),('58XXXXXXX','1994-06-27','Service Advisor',28.03,225),('59XXXXXXX','2005-02-25','Service Advisor',29.49,225),('60XXXXXXX','1993-08-07','Service Advisor',23.59,255),('61XXXXXXX','2004-02-10','Service Advisor',22.99,255),('62XXXXXXX','1990-04-02','Service Advisor',25.50,263),('63XXXXXXX','2021-03-16','Technician',14.86,126),('64XXXXXXX','1993-05-01','Technician',18.71,126),('65XXXXXXX','2019-06-25','Technician',17.97,225),('66XXXXXXX','2015-04-24','Technician',20.91,225),('67XXXXXXX','2006-04-25','Technician',22.01,255),('68XXXXXXX','1996-01-28','Technician',12.73,255),('69XXXXXXX','2020-11-11','Technician',25.66,263),('70XXXXXXX','2014-01-01','Technician',19.39,263),('71XXXXXXX','2020-05-20','Technician',17.25,515),('72XXXXXXX','2021-08-20','Technician',15.92,515),('73XXXXXXX','2022-10-15','Technician',18.31,847),('74XXXXXXX','2022-04-05','Technician',16.87,847),('75XXXXXXX','2006-04-15','Service Advisor',28.99,263),('76XXXXXXX','1995-03-02','Service Advisor',23.66,847),('77XXXXXXX','2004-05-20','Service Advisor',22.10,847),('78XXXXXXX','2007-01-23','Service Advisor',23.25,515),('79XXXXXXX','2000-09-18','Service Advisor',24.41,515),('80XXXXXXX','2012-12-21','Service Advisor',23.60,515);
/*!40000 ALTER TABLE `employeepersonalinfo` ENABLE KEYS */;
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
