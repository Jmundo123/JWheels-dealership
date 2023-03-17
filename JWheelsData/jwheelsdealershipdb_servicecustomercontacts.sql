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
-- Table structure for table `servicecustomercontacts`
--

DROP TABLE IF EXISTS `servicecustomercontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicecustomercontacts` (
  `ServCustContact_Id` int NOT NULL,
  `ServCustPhone` varchar(15) NOT NULL,
  `ServCustEmail` varchar(150) NOT NULL,
  `ServiceCust_Id` int NOT NULL,
  PRIMARY KEY (`ServCustContact_Id`,`ServiceCust_Id`),
  KEY `fk_ServiceCustomerContacts_ServiceCustomer1_idx` (`ServiceCust_Id`),
  CONSTRAINT `fk_ServiceCustomerContacts_ServiceCustomer1` FOREIGN KEY (`ServiceCust_Id`) REFERENCES `servicecustomer` (`ServiceCust_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecustomercontacts`
--

LOCK TABLES `servicecustomercontacts` WRITE;
/*!40000 ALTER TABLE `servicecustomercontacts` DISABLE KEYS */;
INSERT INTO `servicecustomercontacts` VALUES (1,'(456)-855-7890','MarkDeVeillis@mail.com',1),(2,'(456)-835-7891','CarrieJohson@mail.com',2),(3,'(321)-456-9871','NathanTesla@mail.com',3),(4,'(858)-313-9781','KyoshiSakamoto@mail.com',4),(5,'(616)-510-6679','McRonald@mail.com',5),(6,'(696)-697-2829','BobbyTen@mail.com',6),(7,'(797)-797-2829','YenniferCastillo@mail.com',7),(8,'(898)-897-2829','KellyMcDougal@mail.com',8),(9,'(999)-997-2829','CristianoC@mail.com',9),(10,'(109)-107-2829','MikeC@mail.com',10),(11,'(119)-197-2829','WendyChabas@mail.com',11),(12,'(122)-297-2829','JasonStark@mail.com',12),(13,'(113)-137-2829','MichealDawnson@mail.com',13),(14,'(114)-197-2829','MayraMartinez@mail.com',14),(15,'(159)-157-2829','JohnRilley@mail.com',15),(16,'(169)-697-2829','YennyMcRodgers@mail.com',16),(17,'(117)-177-2829','EricDoe@mail.com',17),(18,'(189)-189-2829','YolandaVazquez@mail.com',18);
/*!40000 ALTER TABLE `servicecustomercontacts` ENABLE KEYS */;
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
