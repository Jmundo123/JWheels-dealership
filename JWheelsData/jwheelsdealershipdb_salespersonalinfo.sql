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
-- Table structure for table `salespersonalinfo`
--

DROP TABLE IF EXISTS `salespersonalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salespersonalinfo` (
  `SalesSSN` varchar(15) NOT NULL,
  `SalesDateHired` date NOT NULL,
  `SalesPosition` varchar(45) NOT NULL,
  `SaleHourlyPay` decimal(18,2) NOT NULL,
  `Dealership_BranchNo` int NOT NULL,
  PRIMARY KEY (`SalesSSN`,`Dealership_BranchNo`),
  KEY `fk_SalesPersonalInfo_Dealership1_idx` (`Dealership_BranchNo`),
  CONSTRAINT `fk_SalesPersonalInfo_Dealership1` FOREIGN KEY (`Dealership_BranchNo`) REFERENCES `dealership` (`BranchNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salespersonalinfo`
--

LOCK TABLES `salespersonalinfo` WRITE;
/*!40000 ALTER TABLE `salespersonalinfo` DISABLE KEYS */;
INSERT INTO `salespersonalinfo` VALUES ('32XXXXXXX','2001-03-25','SalesPerson',33.77,126),('33XXXXXXX','2001-04-17','SalesPerson',38.90,126),('34XXXXXXX','2004-04-08','SalesPerson',32.54,126),('35XXXXXXX','2004-04-04','SalesPerson',34.94,225),('36XXXXXXX','2002-11-14','SalesPerson',32.52,225),('37XXXXXXX','1998-07-12','SalesPerson',38.59,225),('38XXXXXXX','1998-07-20','SalesPerson',30.14,255),('39XXXXXXX','2004-12-14','SalesPerson',39.66,255),('40XXXXXXX','1998-07-08','SalesPerson',39.37,255),('41XXXXXXX','2004-05-10','SalesPerson',38.69,263),('42XXXXXXX','2005-04-24','SalesPerson',31.77,263),('43XXXXXXX','1998-11-27','SalesPerson',30.63,263),('44XXXXXXX','2004-01-07','SalesPerson',32.03,515),('45XXXXXXX','2004-12-24','SalesPerson',34.97,515),('46XXXXXXX','1999-10-15','SalesPerson',32.66,515),('47XXXXXXX','2001-11-13','SalesPerson',30.27,847),('48XXXXXXX','2001-09-12','SalesPerson',37.48,847),('49XXXXXXX','1999-02-09','SalesPerson',32.95,847),('50XXXXXXX','2002-11-11','Manager',52.14,126),('51XXXXXXX','2005-06-23','Manager',61.22,225),('52XXXXXXX','2004-12-28','Manager',41.55,255),('53XXXXXXX','2001-12-29','Manager',53.13,263),('54XXXXXXX','2003-09-06','Manager',55.60,515),('55XXXXXXX','2001-10-05','Manager',54.16,847),('56XXXXXXX','2013-05-03','SalesPerson',30.50,126);
/*!40000 ALTER TABLE `salespersonalinfo` ENABLE KEYS */;
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
