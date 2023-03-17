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
-- Table structure for table `serviceemployees`
--

DROP TABLE IF EXISTS `serviceemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceemployees` (
  `Employee_Id` int NOT NULL,
  `EmployeeFirstName` varchar(100) NOT NULL,
  `EmployeeLastName` varchar(100) NOT NULL,
  `EmployeeSSN` varchar(45) NOT NULL,
  `EmpAddress_Id` int NOT NULL,
  PRIMARY KEY (`Employee_Id`,`EmployeeSSN`,`EmpAddress_Id`),
  KEY `fk_ServiceEmployees_EmployeePersonalInfo1_idx` (`EmployeeSSN`),
  KEY `fk_ServiceEmployees_EmployeeAddress1_idx` (`EmpAddress_Id`),
  CONSTRAINT `fk_ServiceEmployees_EmployeeAddress1` FOREIGN KEY (`EmpAddress_Id`) REFERENCES `employeeaddress` (`EmpAddress_Id`),
  CONSTRAINT `fk_ServiceEmployees_EmployeePersonalInfo1` FOREIGN KEY (`EmployeeSSN`) REFERENCES `employeepersonalinfo` (`EmployeeSSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceemployees`
--

LOCK TABLES `serviceemployees` WRITE;
/*!40000 ALTER TABLE `serviceemployees` DISABLE KEYS */;
INSERT INTO `serviceemployees` VALUES (1,'Jason','Williams','56XXXXXXX',1),(2,'Mike','Wolfgang','57XXXXXXX',2),(3,'Patricio','Morales','58XXXXXXX',3),(4,'Ling','Xiao','59XXXXXXX',4),(5,'Maria','Gonzales','60XXXXXXX',5),(6,'Omar','Limas','61XXXXXXX',6),(7,'Joselin','Hernandez','62XXXXXXX',7),(8,'Yin','Ten','63XXXXXXX',8),(9,'Jose','Limas','64XXXXXXX',9),(10,'Brandon','Bradley','65XXXXXXX',10),(11,'Dough','Williams','66XXXXXXX',11),(12,'Roberto','Castillo','67XXXXXXX',12),(13,'John','Mayer','68XXXXXXX',13),(14,'Samuel','Sage','69XXXXXXX',14),(15,'Kaleb','Scott','70XXXXXXX',15),(16,'Milo','Fish','71XXXXXXX',16),(17,'Ricardo','Villalobos','72XXXXXXX',17),(18,'Mauricio','Gonzales','73XXXXXXX',18),(19,'Cesar','Castillo','74XXXXXXX',19),(20,'Joshua','Hopkins','75XXXXXXX',20),(21,'John','Fields','76XXXXXXX',21),(22,'Miraya','Penelope','77XXXXXXX',22),(23,'Steve','Rogers','78XXXXXXX',23),(24,'Adebowale','Adegoke','79XXXXXXX',24);
/*!40000 ALTER TABLE `serviceemployees` ENABLE KEYS */;
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
