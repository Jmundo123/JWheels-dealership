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

--
-- Table structure for table `customercontacts`
--

DROP TABLE IF EXISTS `customercontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customercontacts` (
  `CustContactId` int NOT NULL,
  `CustPhone` varchar(15) NOT NULL,
  `CustEmail` varchar(250) NOT NULL,
  `Cust_Id` int NOT NULL,
  PRIMARY KEY (`CustContactId`,`Cust_Id`),
  KEY `fk_CustomerContacts_Customers1_idx` (`Cust_Id`),
  CONSTRAINT `fk_CustomerContacts_Customers1` FOREIGN KEY (`Cust_Id`) REFERENCES `customers` (`Cust_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customercontacts`
--

LOCK TABLES `customercontacts` WRITE;
/*!40000 ALTER TABLE `customercontacts` DISABLE KEYS */;
INSERT INTO `customercontacts` VALUES (1,'(111)-111-1110','JDL@mail.com',1),(2,'(111)-555-1111','KJ@mail.com',2),(3,'(111)-111-2222','KalebMK@mail.com',3),(4,'(132)-123-1234','LindseyLopez@mail.com',4),(5,'(001)-002-0003','MarkWillis@mail.com',5),(6,'(222)-333-4444','GeorgeGuillano@mail.com',6),(7,'(888)-999-7777','Michael123@mail.com',7),(8,'(556)-665-5556','Sabrina456@mail.com',8),(9,'(333)-222-1111','CabreraM77@mail.com',9),(10,'(555)-667-8777','BenjaminG@mail.com',10),(11,'(444)-666-8887','LuciaMendez1@mail.com',11),(12,'(777)-888-8874','Kumar101@mail.com',12),(13,'(464)-888-7982','SidoroAnastasia@mail.com',13),(14,'(666)-888-4444','Mel007@mail.com',14),(15,'(787)-787-7878','Jmilton@mail.com',15),(16,'(818)-818-8181','Hope777@mail.com',16),(17,'(432)-432-4321','DestinyLove@mail.com',17),(18,'(123)-456-7890','Hansley03@mail.com',18),(19,'(987)-654-3210','WilliamJrGarrison@mail.com',19),(20,'(985)-985-9855)','Bradley@mail.com',20);
/*!40000 ALTER TABLE `customercontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerpersonalinfo`
--

DROP TABLE IF EXISTS `customerpersonalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerpersonalinfo` (
  `CustomerSSN` varchar(15) NOT NULL,
  `CustomerDOB` date NOT NULL,
  `CustomerCredit` int NOT NULL,
  PRIMARY KEY (`CustomerSSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpersonalinfo`
--

LOCK TABLES `customerpersonalinfo` WRITE;
/*!40000 ALTER TABLE `customerpersonalinfo` DISABLE KEYS */;
INSERT INTO `customerpersonalinfo` VALUES ('10XXXXXXX','1994-01-22',744),('11XXXXXXX','2003-11-09',673),('12XXXXXXX','1988-06-12',734),('13XXXXXXX','1982-04-18',798),('14XXXXXXX','1990-07-20',780),('15XXXXXXX','1985-03-26',711),('16XXXXXXX','2000-09-08',665),('17XXXXXXX','1983-02-21',713),('18XXXXXXX','1983-05-13',798),('19XXXXXXX','1982-09-18',770),('1XXXXXXXX','2000-09-12',740),('20XXXXXXX','1995-02-13',785),('2XXXXXXXX','1993-01-02',790),('3XXXXXXXX','2001-09-06',795),('4XXXXXXXX','1991-02-10',695),('5XXXXXXXX','1993-01-10',792),('6XXXXXXXX','1998-03-11',789),('7XXXXXXXX','1995-06-20',794),('8XXXXXXXX','1989-09-23',772),('9XXXXXXXX','1996-06-23',685);
/*!40000 ALTER TABLE `customerpersonalinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Cust_Id` int NOT NULL,
  `CustomerFirstName` varchar(45) NOT NULL,
  `CustomerLastName` varchar(45) NOT NULL,
  `CustomerSSN` varchar(15) NOT NULL,
  `CustAddress_Id` int NOT NULL,
  PRIMARY KEY (`Cust_Id`,`CustomerSSN`,`CustAddress_Id`),
  KEY `fk_Customers_CustomerPersonalInfo1_idx` (`CustomerSSN`),
  KEY `fk_Customers_CustomerAddress1_idx` (`CustAddress_Id`),
  CONSTRAINT `fk_Customers_CustomerAddress1` FOREIGN KEY (`CustAddress_Id`) REFERENCES `customeraddress` (`CustAddress_Id`),
  CONSTRAINT `fk_Customers_CustomerPersonalInfo1` FOREIGN KEY (`CustomerSSN`) REFERENCES `customerpersonalinfo` (`CustomerSSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John','Doe','1XXXXXXXX',1),(2,'Kelly','Johnson','2XXXXXXXX',2),(3,'Kaleb','Kalisto','3XXXXXXXX',3),(4,'Lindsey','Lopez','4XXXXXXXX',4),(5,'Malik','Willis','5XXXXXXXX',5),(6,'George','Guillano','6XXXXXXXX',6),(7,'Michael','Smith','7XXXXXXXX',7),(8,'Sabrina','Johnson','8XXXXXXXX',8),(9,'Maria','Cabrera','9XXXXXXXX',9),(10,'Jose','Guitierrez','10XXXXXXX',10),(11,'Lucia','Mendez','11XXXXXXX',11),(12,'Aarav','Kumar','12XXXXXXX',12),(13,'Anastasia','Sidorov','13XXXXXXX',13),(14,'Mel','Jibson','14XXXXXXX',14),(15,'Joshua','Morrison','15XXXXXXX',15),(16,'Jordan','Jones','16XXXXXXX',16),(17,'Destiny','Aisha','17XXXXXXX',17),(18,'Johnny','Hansley','18XXXXXXX',18),(19,'Jamie','Garrison','19XXXXXXX',19);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `dealership`
--

DROP TABLE IF EXISTS `dealership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealership` (
  `BranchNo` int NOT NULL,
  `DealerBrand` varchar(45) NOT NULL,
  `DealerPhone` varchar(45) NOT NULL,
  PRIMARY KEY (`BranchNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealership`
--

LOCK TABLES `dealership` WRITE;
/*!40000 ALTER TABLE `dealership` DISABLE KEYS */;
INSERT INTO `dealership` VALUES (126,'Toyota','(832)-450-8964'),(225,'Ford','(619)-619-6196'),(255,'Nissan','(832)-333-4570'),(263,'Mercedes','(619)-855-2306'),(515,'Honda','(832)-180-0018'),(787,'Hyundai','(622)-624-6666'),(847,'Chevrolet','(619)-800-0010');
/*!40000 ALTER TABLE `dealership` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `dealervehicles`
--

DROP TABLE IF EXISTS `dealervehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealervehicles` (
  `DealerVehicleId` int NOT NULL,
  `VehicleVIN` varchar(20) NOT NULL,
  `VehicleMake` varchar(45) NOT NULL,
  `VehicleModel` varchar(45) NOT NULL,
  `VehicleYear` int NOT NULL,
  PRIMARY KEY (`DealerVehicleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealervehicles`
--

LOCK TABLES `dealervehicles` WRITE;
/*!40000 ALTER TABLE `dealervehicles` DISABLE KEYS */;
INSERT INTO `dealervehicles` VALUES (1,'5TFDY5F10MX958995','TOYOTA','Tundra',2021),(2,'5TFPC5DB3NX002791','TOYOTA','Tundra',2022),(3,'JTDS4RCEXLJ014821','TOYOTA','Corolla',2020),(4,'5YFEPMAE5NP365127','TOYOTA','Corolla',2022),(5,'5TDYRKEC2NS094815','TOYOTA','Sienna',2022),(6,'5TDYRKEC2NS132317','TOYOTA','Sienna',2022),(7,'JTEZU5JR1K5204099','TOYOTA','4Runner',2019),(8,'JTELU5JR8P6090061','TOYOTA','4Runner',2022),(9,'JTEDD21A650111177','TOYOTA','Highlander',2006),(10,'5TDEY5B15NS188908','TOYOTA','Sequioa',2022),(11,'1FT7W2BT7NEG23934','Ford','F-250 Super Duty',2022),(12,'1FTFW1CD9NFB86896','Ford','F-150',2022),(13,'1FTMF1CBXNKE38703','Ford','F-150',2022),(14,'1FA6P8CF7N5141006','Ford','Mustang GT',2022),(15,'1FTVW1EL5NWG15161','Ford','F-150 Lightning',2022),(16,'1FADP3E20JL204599','Ford','Focus',2018),(17,'1FMDE5DH7NLB77243','Ford','Bronco',2022),(18,'NM0LS7E79F1176115','Ford','Transit',2015),(19,'1FMCU0G67MUA33986','Ford','Escape',2021),(20,'3FMTK1SS7NMA24999','Ford','Mustang',2022),(21,'1N6AA1ED6PN100956','Nissan','Titan',2022),(22,'1N6AA1E68KN511186','Nissan','Titan',2019),(23,'5N1DR3DH0NC258612','Nissan','Pathfinder',2022),(24,'5N1BT3BA0PC670238','Nissan','Rogue',2023),(25,'5N1AZ2BJ6PC105285','Nissan','Murano',2023),(26,'1N6ED1CL6NN673677','Nissan','Frontier',2022),(27,'3N1AB7AP2KY391019','Nissan','Sentra',2019),(28,'JN1BJ1CV6NW347956','Nissan','Rogue Sport',2022),(29,'JN1AR5BF9MM160050','Nissan','GT-R',2021),(30,'JN8AE2KP3E9105103 ','Nissan','Quest',2014),(31,'W1N0G8DB2NV390415','Mercedes-Benz','GLC-Class',2022),(32,'W1KWJ8DB6NG115868','Mercedes-Benz','C 300',2022),(33,'W1KWK8DB9PG118926','Mercedes-Benz','C-Class',2023),(34,'W1NYC6BJ9NX450062','Mercedes-Benz','G-Class',2022),(35,'WDD3G4EB6KW031821','Mercedes-Benz','A-Class',2019),(36,'W1KYJ8BA7MA041820 ','Mercedes-Benz','AMG',2021),(37,'ZHWUS4ZF6KLA11669 ','Lamborghini','Huracan',2019),(38,'WDDUG8DBXKA434761 ','Mercedes-Benz','Mayback',2019),(39,'WDF4702312G019520','Mercedes-Benz','X-Class',2020),(40,'WDDUG8CB0FA038703','Mercedes-Benz','S-Class S 550',2015),(41,'1HGCV1F32NA064307','Honda','Accord',2022),(42,'5J6RW1H53NA021173','Honda','CR-V',2022),(43,'19XFL1H80NE019387','Honda','Civic',2022),(44,'5FNYF5H54NB010618','Honda','Pilot',2022),(45,'5FPYK1F48CB460257','Honda','Ridgeline',2012),(46,'5FPYK3F58KB046964','Honda','Ridgeline',2019),(47,'5FPYK3F81PB004752','Honda','Ridgeline',2023),(48,'3HGGK5H89KM753334','Honda','Fit',2019),(49,'19XFL1H86NE020978','Honda','Civic',2022),(50,'19XFL1H88NE019167','Honda','Civic',2022),(51,'1GCGSBEN6M1289488','Chevrolet','Colorado',2021),(52,'1GC3WRE7XNF123914','Chevrolet','Silverado',2022),(53,'1GCUYEED7NZ184052','Chevrolet','Silverado',2022),(54,'3GNKBERS9PS106364','Chevrolet','Blazer',2023),(55,'1GNSCEKD3PR129022','Chevrolet','Suburban',2023),(56,'1G1FF3D73P0100355','Chevrolet','Camaro',2023),(57,'1G1ZD5ST6NF196703','Chevrolet','Malibu',2022),(58,'1GC4YVEYXNF332926','Chevrolet','Silverado',2022),(59,'1G1YM3D78G5109442','Chevrolet','Corvette',2016),(60,' 1G1YB3D47N5105794','Chevrolet','Corvette',2022);
/*!40000 ALTER TABLE `dealervehicles` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `employeecontacts`
--

DROP TABLE IF EXISTS `employeecontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeecontacts` (
  `EmpContact_Id` int NOT NULL,
  `EmployeePhone` varchar(15) NOT NULL,
  `EmployeeEmail` varchar(150) NOT NULL,
  `Employee_Id` int NOT NULL,
  PRIMARY KEY (`EmpContact_Id`,`Employee_Id`),
  KEY `fk_EmployeeContacts_ServiceEmployees1_idx` (`Employee_Id`),
  CONSTRAINT `fk_EmployeeContacts_ServiceEmployees1` FOREIGN KEY (`Employee_Id`) REFERENCES `serviceemployees` (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeecontacts`
--

LOCK TABLES `employeecontacts` WRITE;
/*!40000 ALTER TABLE `employeecontacts` DISABLE KEYS */;
INSERT INTO `employeecontacts` VALUES (1,'(111)-123-9999','JasonRWilliams@mail.com',1),(2,'(222)-223-9997','MikeWolfgang@mail.com',2),(3,'(333)-323-9996','PatricioMorales@mail.com',3),(4,'(444)-423-9995','LingXiao@mail.com',4),(5,'(555)-523-9994','MariaG@mail.com',5),(6,'(666)-623-9993','OmarLimas@mail.com',6),(7,'(777)-723-9992','JoselinHernandez@mail.com',7),(8,'(888)-823-9991','TenYin@mail.com',8),(9,'(999)-923-9990','JoseLimas@mail.com',9),(10,'(010)-102-9989','BrandonB@mail.com',10),(11,'(111)-113-9988','DoughWilliams@mail.com',11),(12,'(212)-123-9987','RobertoCastillo@mail.com',12),(13,'(313)-323-9986','JohnMayer@mail.com',13),(14,'(414)-423-9985','SamuelSage@mail.com',14),(15,'(515)-523-9984','KalebScott@mail.com',15),(16,'(161)-623-9983','MiloFish@mail.com',16),(17,'(616)-616-9991','JasonVilla@mail.com',17),(18,'(717)-787-9999','MauricioG@mail.com',18),(19,'(717)-585-9998','CesarCastillo@mail.com',19),(20,'(781)-782-7834','JoshuaHopkins@mail.com',20),(21,'(784)-782-7800','Jfields@mail.com',21),(22,'(963)-962-9610','MirayaPenlope@mail.com',22),(23,'(782)-783-7845','SteveRogers@mail.com',23),(24,'(823)-833-8345','AdebowaleAd@mail.com',24),(25,'(515)-252-3366','KenyaE@mail.com',25);
/*!40000 ALTER TABLE `employeecontacts` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `Invoice_Id` int NOT NULL,
  `SalesDate` date NOT NULL,
  `Cust_Id` int NOT NULL,
  `Payment_Id` int NOT NULL,
  `GrandTotal` decimal(18,2) NOT NULL,
  `SalesEmp_Id` int NOT NULL,
  `Dealership_BranchNo` int NOT NULL,
  `DealerVehicleId` int NOT NULL,
  PRIMARY KEY (`Invoice_Id`,`Cust_Id`,`Payment_Id`,`SalesEmp_Id`,`Dealership_BranchNo`,`DealerVehicleId`),
  KEY `fk_Invoice_Payments1_idx` (`Payment_Id`),
  KEY `fk_Invoice_Customers1_idx` (`Cust_Id`),
  KEY `fk_Invoice_SalesEmployees1_idx` (`SalesEmp_Id`),
  KEY `fk_Invoice_Dealership1_idx` (`Dealership_BranchNo`),
  KEY `fk_Invoice_DealerVehicles1_idx` (`DealerVehicleId`),
  CONSTRAINT `fk_Invoice_Customers1` FOREIGN KEY (`Cust_Id`) REFERENCES `customers` (`Cust_Id`),
  CONSTRAINT `fk_Invoice_Dealership1` FOREIGN KEY (`Dealership_BranchNo`) REFERENCES `dealership` (`BranchNo`),
  CONSTRAINT `fk_Invoice_DealerVehicles1` FOREIGN KEY (`DealerVehicleId`) REFERENCES `dealervehicles` (`DealerVehicleId`),
  CONSTRAINT `fk_Invoice_Payments1` FOREIGN KEY (`Payment_Id`) REFERENCES `payments` (`Payment_Id`),
  CONSTRAINT `fk_Invoice_SalesEmployees1` FOREIGN KEY (`SalesEmp_Id`) REFERENCES `salesemployees` (`SalesEmp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'2022-09-24',1,1,44585.00,1,126,1),(2,'2022-04-04',2,2,21423.00,2,126,4),(3,'2022-12-01',3,3,31405.00,5,225,11),(4,'2022-08-07',4,4,14190.00,4,225,16),(5,'2022-02-12',5,5,43655.00,9,255,21),(6,'2022-07-07',6,6,14548.00,6,225,19),(7,'2022-03-20',7,7,447998.00,12,263,36),(8,'2022-08-27',8,8,25775.00,3,126,3),(9,'2022-09-15',9,9,21581.00,17,847,57),(10,'2022-12-11',10,10,73364.00,16,847,58),(11,'2022-05-13',11,11,29255.00,15,515,42),(12,'2022-08-20',12,12,31800.00,11,263,33),(13,'2022-05-01',13,13,42938.00,10,263,37),(14,'2022-12-29',14,14,35878.00,15,515,47),(15,'2022-08-05',15,15,25620.00,5,225,13),(16,'2022-05-28',16,16,20322.00,8,255,22),(17,'2022-11-10',17,17,16690.00,9,255,28),(18,'2022-07-31',18,18,6541.00,3,126,9),(19,'2022-04-29',19,19,13448.00,8,255,30);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts` (
  `PartNumber` varchar(45) NOT NULL,
  `PartName` varchar(100) NOT NULL,
  `Manufacturer` varchar(45) NOT NULL,
  `VehicleModelFit` varchar(45) NOT NULL,
  `PartPrice` decimal(18,2) NOT NULL,
  `InventoryStock` int NOT NULL,
  PRIMARY KEY (`PartNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES ('01469-T7W-A00','Power Set Master','Honda','Honda HR-V 2016 - 2020',99.96,15),('04152YZZA6','Engine Oil Filter','TOYOTA','Toyota Corolla 2009 - 2018',5.69,100),('04631-SYE-A00ZZ','Right Side Sill Panel','Honda','Honda CR-V 2007 - 2011',355.79,4),('08E16-TBA-100B','Illumination Armrest Red','Honda','Honda Civic 2021',126.75,10),('10849','Instrument Cluster','Ford','Ford Expedition 2006',484.35,4),('12696048','Engine Oil Filter','Chevrolet','Chevrolet Cruze 2017',5.26,100),('14529','Door Window Switch','Ford','Ford F150 2021 - 2023',28.33,100),('15208-65F0E','Engine Oil Filter','Nissan','Nissan Sentra 2005',14.99,100),('15208-9E01A','Engine Oil Filter','Nissan','Nissan Armada 2005',6.40,50),('15400-PLM-A02 ','Engine Oil Filter','Honda','Honda Odyssey 2015',11.20,50),('17683','Door Mirror (Driver side)','Ford','Ford Expedition 2012 - 2017',293.42,8),('19133063','Output Shaft Bearing','Chevrolet','Applications containing (NQ6)',14.70,20),('203-680-01-87-8H81','Instrument Panel','Mercedes','Mercedes C 230 & C 320 2005',204.96,6),('203-880-08-57-28','Hood','Mercedes','Mercedes C 55 AMG 2005 - 2006',511.84,2),('203-880-11-18','Fender (Driver Front)','Mercedes','Mercedes C 55 AMG 2005 - 2006',397.60,5),('204-240-20-17-64','Front Mount','Mercedes','Mercedes GLK 350 2010 - 2012',128.80,5),('22832918','Control Module Bracket','Chevrolet','Parts containing (IO5) and (IO6)',11.69,13),('22875187','Speaker Grille','Chevrolet','Applications containing (UQA), (UW6), (4BO)',4.13,25),('256-140-99-00','Catalytic Converter','Mercedes','Mercedes GLE 450 2020 - 2021',2919.30,3),('276-180-00-09','Engine Oil Filter','Mercedes','Mercedes E-Class 2015',25.00,20),('30110PA1732','O-ring','Honda','Accord years 1976 - 2002',2.89,100),('50451-SWA-A00','Weight, Side Engine Mount','Honda','Honda CR-V 2007 - 2011',18.50,20),('5804320','Dashboard Panel - Instrument Panel','Ford','Ford Focus 2012 - 2014',2795.35,5),('6582','Cylinder Head Cover - Right','Ford','Ford 150 2013 - 2023',110.83,25),('6881','Adaptor Oil Filter','Ford','Ford Transit 2015 - 2023',164.67,13),('79600-SJC-A43ZC','Control Assembly, Auto AC','Honda','Honda Ridgeline 2009 - 2014',454.16,5),('811100C140','HeadLight (Right)','TOYOTA','Toyota Tundra 2018 - 2022',421.21,10),('811500C211','HeadLight (Left)','TOYOTA','Toyota Tundra 2018 - 2021',421.21,10),('8155002460','Tail Light (Right Rear)','TOYOTA','Toyota Corolla 2009 - 2011',157.14,10),('8156002460','Tail Light (Left Rear)','TOYOTA','Toyota Corolla 2009 - 2011',157.14,10),('84653082','Front Floor Console Upper Panel','Chevrolet','Applications containing BLACK',38.97,15),('90915YZZN1','Engine Oil Filter','TOYOTA','Toyota Sienna 2022',9.50,100),('96955193','Rear Wiper Motor','Chevrolet','Applications containing (C25)',74.97,12),('999E1-W4000','All - Season Floor Mats (Rubber)','Nissan','Nissan Titan 2016 - 2023',180.00,15),('999L1-VZ001','Fog Lights','Nissan','Nissan Sentra 2016 - 2019',275.00,5),('N/A','N/A','N/A','N/A',0.00,0),('T99D3-6MA0A','Side Window Deflectors','Nissan','Nissan Rougue Sport 2017 - 2022',130.00,8),('T99F3-5ZW00','Interior Lighting Package','Nissan','Nissan Armada 2017 - 2019',250.00,4),('T99M6-9BU0A','Exhaust Finisher Kit','Nissan','Nissan Frontier 2022',80.00,20);
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `Payment_Id` int NOT NULL,
  `SalesAPR` decimal(18,2) NOT NULL,
  `DownPayment` decimal(18,2) NOT NULL,
  `MonthlyPayments` decimal(18,2) NOT NULL,
  `TradeInValue` decimal(18,2) NOT NULL,
  `Cust_Id` int NOT NULL,
  PRIMARY KEY (`Payment_Id`,`Cust_Id`),
  KEY `fk_Payments_Customers1_idx` (`Cust_Id`),
  CONSTRAINT `fk_Payments_Customers1` FOREIGN KEY (`Cust_Id`) REFERENCES `customers` (`Cust_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,6.85,1000.00,658.00,2500.00,1),(2,6.85,1000.00,328.00,2200.00,2),(3,6.85,20000.00,665.00,5000.00,3),(4,9.09,3000.00,225.00,1500.00,4),(5,6.85,20000.00,680.00,3000.00,5),(6,6.85,10000.00,212.00,1500.00,6),(7,0.00,447998.00,0.00,0.00,7),(8,6.85,5000.00,391.00,2000.00,8),(9,9.09,8000.00,349.00,2000.00,9),(10,5.99,17375.00,1019.00,8000.00,10),(11,9.09,2000.00,479.00,2000.00,11),(12,6.85,20000.00,479.00,9000.00,12),(13,6.85,15000.00,1500.00,1500.00,13),(14,6.85,13000.00,548.00,5000.00,14),(15,9.09,5000.00,443.00,10000.00,15),(16,9.09,10000.00,318.00,6000.00,16),(17,9.09,3000.00,217.00,2000.00,17),(18,6.85,500.00,93.00,0.00,18),(19,6.85,2000.00,203.00,0.00,19),(20,6.85,5000.00,254.00,1000.00,20);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registeredvehicle`
--

DROP TABLE IF EXISTS `registeredvehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registeredvehicle` (
  `Register_Id` int NOT NULL,
  `RegisterDate` date NOT NULL,
  `CustMileage` varchar(45) NOT NULL,
  `Cust_Id` int NOT NULL,
  `Vehicle_Id` int NOT NULL,
  PRIMARY KEY (`Register_Id`,`Cust_Id`,`Vehicle_Id`),
  KEY `fk_CustomerVehicle_Customers_idx` (`Cust_Id`),
  KEY `fk_RegisteredVehicle_CustomerVehicle1_idx` (`Vehicle_Id`),
  CONSTRAINT `fk_CustomerVehicle_Customers` FOREIGN KEY (`Cust_Id`) REFERENCES `customers` (`Cust_Id`),
  CONSTRAINT `fk_RegisteredVehicle_CustomerVehicle1` FOREIGN KEY (`Vehicle_Id`) REFERENCES `customervehicle` (`Vehicle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registeredvehicle`
--

LOCK TABLES `registeredvehicle` WRITE;
/*!40000 ALTER TABLE `registeredvehicle` DISABLE KEYS */;
INSERT INTO `registeredvehicle` VALUES (1,'2022-09-24','210125',1,1),(2,'2022-04-04','85154',2,2),(3,'2022-12-01','67962',3,3),(4,'2022-08-07','106582',4,4),(5,'2022-02-12','97059',5,5),(6,'2022-07-07','113813',6,6),(7,'2022-03-20','89178',7,7),(8,'2022-08-27','66586',8,8),(9,'2022-09-15','102013',9,9),(10,'2022-12-11','68695',10,10),(11,'2022-05-13','118412',11,11),(12,'2022-08-20','58507',12,12),(13,'2022-05-01','80263',13,13),(14,'2022-12-29','59692',14,14),(15,'2022-08-05','112382',15,15),(16,'2022-05-28','61157',16,16),(17,'2022-11-10','65874',17,17),(18,'2022-03-15','223458',20,18);
/*!40000 ALTER TABLE `registeredvehicle` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `salescontacts`
--

DROP TABLE IF EXISTS `salescontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salescontacts` (
  `SalesContact_Id` int NOT NULL,
  `SalesPhone` varchar(15) NOT NULL,
  `SalesEmail` varchar(250) NOT NULL,
  `SalesEmp_Id` int NOT NULL,
  PRIMARY KEY (`SalesContact_Id`,`SalesEmp_Id`),
  KEY `fk_SalesContacts_SalesEmployees1_idx` (`SalesEmp_Id`),
  CONSTRAINT `fk_SalesContacts_SalesEmployees1` FOREIGN KEY (`SalesEmp_Id`) REFERENCES `salesemployees` (`SalesEmp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salescontacts`
--

LOCK TABLES `salescontacts` WRITE;
/*!40000 ALTER TABLE `salescontacts` DISABLE KEYS */;
INSERT INTO `salescontacts` VALUES (1,'(852)-456-7913','HartleyClaudia@mail.com',1),(2,'(258)-654-1379','FaizahRillo@mail.com',2),(3,'(654)-456-9731','NathanEllis@mail.com',3),(4,'(793)-793-1397','SaadRidan@mail.com',4),(5,'(999)-888-7777','TuforSwift@mail.com',5),(6,'(777)-888-4564','JamesCarter@mail.com',6),(7,'(987)-654-3211','LilianPower@mail.com',7),(8,'(556)-556-5556','JasonMandela@mail.com',8),(9,'(784)-885-2526','CristianoRodriguez@mail.com',9),(10,'(421)-285-2867','RobertJohnson@mail.com',10),(11,'(254)-854-6688','CrystalMartinez@mail.com',11),(12,'(131)-568-7411','JamesRoberts@mail.com',12),(13,'(968)-968-9688','XiaoLu@mail.com',13),(14,'(313)-411-4113','YukioYamamoto@mail.com',14),(15,'(316)-311-4311','JamesCarson@mail.com',15),(16,'(985)-589-9859','MikeDavidson@mail.com',16),(17,'(741)-742-7430','Aliceland@mail.com',17),(18,'(123)-122-1221','MarcoPolo@mail.com',18),(19,'(122)-123-1234','MikeAlliston@mail.com',19),(20,'(858)-313-4311','MarkWhatley@mail.com',20),(21,'(784)-788-7886','JosephMicheals@mail.com',21),(22,'(321)-322-3223','JerryRandy@mail.com',22),(23,'(518)-937-2168','Flint@mail.com',23),(24,'(777)-887-7887','LoreanJarret@mail.com',24),(25,'(555)-444-3321','KalilBrown@mail.com',25);
/*!40000 ALTER TABLE `salescontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesemployees`
--

DROP TABLE IF EXISTS `salesemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesemployees` (
  `SalesEmp_Id` int NOT NULL,
  `SalesFirstName` varchar(45) NOT NULL,
  `SalesLastName` varchar(45) NOT NULL,
  `SalesSSN` varchar(15) NOT NULL,
  `SalesAddress_Id` int NOT NULL,
  PRIMARY KEY (`SalesEmp_Id`,`SalesSSN`,`SalesAddress_Id`),
  KEY `fk_SalesEmployees_SalesAddress1_idx` (`SalesAddress_Id`),
  KEY `fk_SalesEmployees_SalesPersonalInfo1_idx` (`SalesSSN`),
  CONSTRAINT `fk_SalesEmployees_SalesAddress1` FOREIGN KEY (`SalesAddress_Id`) REFERENCES `salesaddress` (`SalesAddress_Id`),
  CONSTRAINT `fk_SalesEmployees_SalesPersonalInfo1` FOREIGN KEY (`SalesSSN`) REFERENCES `salespersonalinfo` (`SalesSSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesemployees`
--

LOCK TABLES `salesemployees` WRITE;
/*!40000 ALTER TABLE `salesemployees` DISABLE KEYS */;
INSERT INTO `salesemployees` VALUES (1,'Claudia','Hartley','32XXXXXXX',1),(2,'Faizah','Murillo','33XXXXXXX',2),(3,'Nathan','Ellis','34XXXXXXX',3),(4,'Saad','Sheridan','35XXXXXXX',4),(5,'Tufor','Swift','36XXXXXXX',5),(6,'James','Carter','37XXXXXXX',6),(7,'Lilian','Power','38XXXXXXX',7),(8,'Jason','Mandela','39XXXXXXX',8),(9,'Cristiano','Rodriguez','40XXXXXXX',9),(10,'Robert','Johnson','41XXXXXXX',10),(11,'Crystal','Martinez','42XXXXXXX',11),(12,'James','Roberts','43XXXXXXX',12),(13,'Lu','Xiao','44XXXXXXX',13),(14,'Yukio','Yamamoto','45XXXXXXX',14),(15,'James','Carson','46XXXXXXX',15),(16,'Mike','Davidson','47XXXXXXX',16),(17,'Alice','Wonderland','48XXXXXXX',17),(18,'Marco','Polo','49XXXXXXX',18),(19,'Mike','Alliston','50XXXXXXX',19),(20,'Mark','Whatley','51XXXXXXX',20),(21,'Joseph','Micheals','52XXXXXXX',21),(22,'Jerry','Randy','53XXXXXXX',22),(23,'Darius','Flint','54XXXXXXX',23),(24,'Lorean','Jarret','55XXXXXXX',24);
/*!40000 ALTER TABLE `salesemployees` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `servicecustomer`
--

DROP TABLE IF EXISTS `servicecustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicecustomer` (
  `ServiceCust_Id` int NOT NULL,
  `ServiceFirstName` varchar(45) NOT NULL,
  `ServiceLastName` varchar(45) NOT NULL,
  `CustAddress_Id` int NOT NULL,
  PRIMARY KEY (`ServiceCust_Id`,`CustAddress_Id`),
  KEY `fk_ServiceCustomer_ServiceCustomerAddress1_idx` (`CustAddress_Id`),
  CONSTRAINT `fk_ServiceCustomer_ServiceCustomerAddress1` FOREIGN KEY (`CustAddress_Id`) REFERENCES `servicecustomeraddress` (`CustAddress_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecustomer`
--

LOCK TABLES `servicecustomer` WRITE;
/*!40000 ALTER TABLE `servicecustomer` DISABLE KEYS */;
INSERT INTO `servicecustomer` VALUES (1,'Mark','DeVellis',1),(2,'Carrie','Johnson',2),(3,'Jonathan','Tesla',3),(4,'Kyoshi','Sakamoto',4),(5,'Ronald','McDonald',5),(6,'Bobby','Ten',6),(7,'Yennifer','Castillo',7),(8,'Kelly','McDougal',8),(9,'Cristiano','Castellas',9),(10,'Mike','Cox',10),(11,'Wendy','Vasquez',11),(12,'Jason','Stark',12),(13,'Micheal','Dawnson',13),(14,'Mayra','Martinez',14),(15,'John','Rilley',15),(16,'Yenny','McRodgers',16),(17,'Eric','Doe',17),(18,'Yolanda','Vazquez',18);
/*!40000 ALTER TABLE `servicecustomer` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `servicecustomervehicle`
--

DROP TABLE IF EXISTS `servicecustomervehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicecustomervehicle` (
  `ServiceVehicle_Id` int NOT NULL,
  `ServiceVIN` varchar(45) NOT NULL,
  `ServiceMake` varchar(45) NOT NULL,
  `ServiceModel` varchar(45) NOT NULL,
  `ServiceYear` varchar(45) NOT NULL,
  `ServiceCust_Id` int NOT NULL,
  PRIMARY KEY (`ServiceVehicle_Id`,`ServiceCust_Id`),
  KEY `fk_ServiceCustomerVehicle_ServiceCustomer1_idx` (`ServiceCust_Id`),
  CONSTRAINT `fk_ServiceCustomerVehicle_ServiceCustomer1` FOREIGN KEY (`ServiceCust_Id`) REFERENCES `servicecustomer` (`ServiceCust_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecustomervehicle`
--

LOCK TABLES `servicecustomervehicle` WRITE;
/*!40000 ALTER TABLE `servicecustomervehicle` DISABLE KEYS */;
INSERT INTO `servicecustomervehicle` VALUES (1,'5TFAW5F15JX712769','TOYOTA','Tundra','2018',1),(2,'2T1BU4EE3BC648790','TOYOTA','Corolla','2011',2),(3,'5TDBRKECXNS113181','TOYOTA','Sienna','2022',3),(4,'1FTEW1CP3MFC28208','Ford','F-150','2021',4),(5,'1FMFU17586LA77837 ','Ford','Expedition','2006',5),(6,'1FAHP3F29CL392395','Ford','Focus','2012',6),(7,'1N6ED1CL9NN647395','Nissan','Frontier','2022',7),(8,'3N1AB7AP3KY227178','Nissan','Sentra','2019',8),(9,'5N1AA08AX5N730485','Nissan','Armada','2005',9),(10,'WDBRF40J55F577499','Mercedes','C 230','2005',10),(11,'4JGFB5KB2LA068987','Mercedes','GLE 450','2020',11),(12,'WDDHF5KB4FB106385','Mercedes','E-Class','2015',12),(13,'5J6RE38399L035943','Honda','CR-V','2009',13),(14,'2HGFC2F65MH555005','Honda','Civic','2021',14),(15,'5FNRL5H43FB125037','Honda','Odessey','2015',15),(16,'1GYS3HKJ1LR220651','Cadillac','Escalade ESV','2020',16),(17,'KL7CJNSM9NB503168','Chevrolet','Trax','2022',17),(18,'1G1BE5SM5H7270246','Chevrolet','Cruze','2017',18),(19,'5TDYRKEC8NS135609','TOYOTA','Sienna','2022',1);
/*!40000 ALTER TABLE `servicecustomervehicle` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `serviceinvoice`
--

DROP TABLE IF EXISTS `serviceinvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceinvoice` (
  `ServiceInvoice_Id` int NOT NULL,
  `TransactionDate` date NOT NULL,
  `Service_Id` int NOT NULL,
  `Parts_PartNumber` varchar(45) NOT NULL,
  `ServiceLabor` decimal(18,2) NOT NULL,
  `ServiceTotal` decimal(18,2) NOT NULL,
  `Employee_Id` int NOT NULL,
  `Dealership_BranchNo` int NOT NULL,
  `ServiceCust_Id` int NOT NULL,
  PRIMARY KEY (`ServiceInvoice_Id`,`Service_Id`,`Parts_PartNumber`,`Employee_Id`,`Dealership_BranchNo`,`ServiceCust_Id`),
  KEY `fk_ServiceInvoice_ServiceRecords1_idx` (`Service_Id`),
  KEY `fk_ServiceInvoice_Dealership1_idx` (`Dealership_BranchNo`),
  KEY `fk_ServiceInvoice_ServiceEmployees1_idx` (`Employee_Id`),
  KEY `fk_ServiceInvoice_ServiceCustomer1_idx` (`ServiceCust_Id`),
  KEY `fk_ServiceInvoice_Parts1_idx` (`Parts_PartNumber`),
  CONSTRAINT `fk_ServiceInvoice_Dealership1` FOREIGN KEY (`Dealership_BranchNo`) REFERENCES `dealership` (`BranchNo`),
  CONSTRAINT `fk_ServiceInvoice_Parts1` FOREIGN KEY (`Parts_PartNumber`) REFERENCES `parts` (`PartNumber`),
  CONSTRAINT `fk_ServiceInvoice_ServiceCustomer1` FOREIGN KEY (`ServiceCust_Id`) REFERENCES `servicecustomer` (`ServiceCust_Id`),
  CONSTRAINT `fk_ServiceInvoice_ServiceEmployees1` FOREIGN KEY (`Employee_Id`) REFERENCES `serviceemployees` (`Employee_Id`),
  CONSTRAINT `fk_ServiceInvoice_ServiceRecords1` FOREIGN KEY (`Service_Id`) REFERENCES `servicerecords` (`Service_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceinvoice`
--

LOCK TABLES `serviceinvoice` WRITE;
/*!40000 ALTER TABLE `serviceinvoice` DISABLE KEYS */;
INSERT INTO `serviceinvoice` VALUES (1,'2022-06-26',1,'811500C211',150.00,571.21,1,126,1),(2,'2021-07-25',2,'8155002460',100.00,257.14,2,126,2),(3,'2021-02-11',3,'90915YZZN1',150.00,219.50,1,126,3),(4,'2022-06-11',4,'14529',150.00,178.33,3,225,4),(5,'2022-08-25',5,'10849',150.00,634.35,4,225,5),(6,'2021-02-16',6,'5804320',1500.00,4295.35,4,225,6),(7,'2021-11-28',7,'T99M6-9BU0A',100.00,180.00,5,255,7),(8,'2020-06-26',8,'999L1-VZ001',150.00,425.00,6,255,8),(9,'2021-03-06',9,'15208-9E01A',50.00,146.40,5,255,9),(10,'2022-01-29',10,'203-680-01-87-8H81',150.00,354.96,20,263,10),(11,'2021-09-04',11,'256-140-99-00',1500.00,4419.30,7,263,11),(12,'2021-05-27',12,'276-180-00-09',300.00,415.00,20,263,12),(13,'2022-02-13',13,'04631-SYE-A00ZZ',150.00,505.79,23,515,13),(14,'2022-11-02',14,'08E16-TBA-100B',100.00,226.75,24,515,14),(15,'2022-06-03',15,'15400-PLM-A02 ',150.00,251.20,24,515,15),(16,'2020-03-14',16,'22832918',50.00,61.69,22,847,16),(17,'2022-09-15',17,'96955193',100.00,174.97,21,847,17),(18,'2020-09-19',18,'12696048',75.00,130.26,21,847,18),(19,'2022-11-12',19,'90915YZZN1',100.00,257.14,2,126,1);
/*!40000 ALTER TABLE `serviceinvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicerecords`
--

DROP TABLE IF EXISTS `servicerecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicerecords` (
  `Service_Id` int NOT NULL,
  `DateRolledIn` date NOT NULL,
  `VehicleMileage` decimal(18,2) NOT NULL,
  `Services` varchar(300) NOT NULL,
  `ServiceVehicle_Id` int NOT NULL,
  PRIMARY KEY (`Service_Id`,`ServiceVehicle_Id`),
  KEY `fk_ServiceRecords_ServiceCustomerVehicle1_idx` (`ServiceVehicle_Id`),
  CONSTRAINT `fk_ServiceRecords_ServiceCustomerVehicle1` FOREIGN KEY (`ServiceVehicle_Id`) REFERENCES `servicecustomervehicle` (`ServiceVehicle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicerecords`
--

LOCK TABLES `servicerecords` WRITE;
/*!40000 ALTER TABLE `servicerecords` DISABLE KEYS */;
INSERT INTO `servicerecords` VALUES (1,'2022-06-26',46375.00,'Needs a new Headlight',1),(2,'2021-07-25',19564.00,'Needs a new Taillight',2),(3,'2021-02-11',10001.00,'Oil Change Maintenance',3),(4,'2022-06-11',21591.00,'Needs a new Door Window Switch',4),(5,'2022-08-25',130482.00,'Needs New Instrument Cluster',5),(6,'2021-02-14',43448.00,'Replace Damaged Dash Panel',6),(7,'2021-11-28',5309.00,'Install Exhaust Finisher Kit',7),(8,'2020-06-26',31520.00,'Replace Damaged Fog Lights',8),(9,'2021-03-06',110539.00,'Oil Change Maintenance',9),(10,'2022-01-29',144264.00,'Reaplace Damaged Instrument Panel',10),(11,'2021-09-02',19148.00,'Install Catalytic Converter',11),(12,'2021-05-27',51236.00,'Tire Rotation & Oil Change Maintenance',12),(13,'2022-02-13',117675.00,'Install Right Side Sill Panel',13),(14,'2022-11-02',16995.00,'Install Illumination Armrest Red',14),(15,'2022-06-03',52414.00,'Tire Rotation & Oil Change Maintenance',15),(16,'2020-03-14',39034.00,'Install Control Module Bracket',16),(17,'2022-09-15',11186.00,'Replace Rear Wiper Motor',17),(18,'2020-09-19',50305.00,'Tire Rotation & Oil Change Maintenance',18),(19,'2022-10-12',5.00,'Tire Rotation & Oil Change Maintenance',19);
/*!40000 ALTER TABLE `servicerecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiclefeaturesinfo`
--

DROP TABLE IF EXISTS `vehiclefeaturesinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiclefeaturesinfo` (
  `Features_Id` int NOT NULL,
  `VehicleType` varchar(45) NOT NULL,
  `VehicleColor` varchar(45) NOT NULL,
  `VehiclePackage` varchar(45) NOT NULL,
  `DealerVehicleId` int NOT NULL,
  PRIMARY KEY (`Features_Id`,`DealerVehicleId`),
  KEY `fk_VehicleFeaturesInfo_DealerVehicles1_idx` (`DealerVehicleId`),
  CONSTRAINT `fk_VehicleFeaturesInfo_DealerVehicles1` FOREIGN KEY (`DealerVehicleId`) REFERENCES `dealervehicles` (`DealerVehicleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiclefeaturesinfo`
--

LOCK TABLES `vehiclefeaturesinfo` WRITE;
/*!40000 ALTER TABLE `vehiclefeaturesinfo` DISABLE KEYS */;
INSERT INTO `vehiclefeaturesinfo` VALUES (1,'Extended cab/Pickup','White','Base',1),(2,'Crew Cab/Pick up','Lunar Rock','TRD Pro',2),(3,'4 Door Sedan','Black Sand Pearl','SE',3),(4,'4 Door Sedan','Celestite','LE',4),(5,'Van','Midnight Black Metallic','XLE',5),(6,'Van','Predawn Gray','Base',6),(7,'SUV','Black Graphite','SR5',7),(8,'SUV','Solar Octane','TRD Pro',8),(9,'SUV','Bluestone Metallic','Base',9),(10,'SUV','White','TRD Pro',10),(11,'Crew Cab/Pick up','Carbonized Gray Metallic','Lariat',11),(12,'Crew Cab/Pick up','Oxford White','XL High',12),(13,'Regular Cab','Agate Black Metallic','XL Chrome',13),(14,'2 Door','Dark Matter Gray Metallic','GT Premium Standard (400a)',14),(15,'Crew Cab/Pick up','Agate Black Metallic','Lariat',15),(16,'4 Door Sedan','Black','Base',16),(17,'4 Door SUV','Area 51','Outer Banks',17),(18,'Van','White','Base',18),(19,'SUV','Agate Black Metallic','SE',19),(20,'SUV','White Metallic','MACH-E',20),(21,'Crew Cab/Pick up','Baja Storm','Pro-4x',21),(22,'Crew Cab/Pick up','Java Metallic','Platinum Reserve',22),(23,'SUV','Brillian Silver','Platinum',23),(24,'SUV','Scarlet Ember Tintcoat','SV',24),(25,'SUV','Super Black','SV',25),(26,'King Cab','Glacier White','SV',26),(27,'4 Door Sedan','Gray','Base',27),(28,'SUV','Scarlet Ember Pearl','SL',28),(29,'Coupe','Jet Black Pearl','Premium',29),(30,'Minivan','White','S',30),(31,'SUV','Polar White','N/A',31),(32,'Coupe','Black','N/A',32),(33,'Coupe','Polar White','N/A',33),(34,'SUV','Obsidian Black Metallic','N/A',34),(35,'4 Door Sedan','Red','N/A',35),(36,'Coupe','Black','GT Black Series',36),(37,'Coupe','White','Performante Convertible',37),(38,'4 Door Sedan','Black','N/A',38),(39,'Crew Cab/Pick up','Red','N/A',39),(40,'Sedan','Iridium Silver Metallic','N/A',40),(41,'Sedan','Still Night Pearl','Sport',41),(42,'SUV','Crystal Black Pearl','EX',42),(43,'Sedan','Sonic Gray Pearl','Sport Touring',43),(44,'SUV','Black','EX-L',44),(45,'Crew Cab/Pick up','Gray Metallic','RTS',45),(46,'Crew Cab/Pick up','Crystal Black Pearl','RTL',46),(47,'Crew Cab/Pick up','Crystal Black Pearl','Black Edition',47),(48,'Sedan','Blue Metallic','EX',48),(49,'Sedan','Smokey Mauve Pearl','Sport Touring',49),(50,'Sedan','Lunar Silver','Sport Touring',50),(51,'Crew Cab/Pick up','Summit White','Customs Special Edition',51),(52,'Regular Cab','Summit White','3500HD',52),(53,'Crew Cab/Pick up','Silver Ice Metallic','1500LTD',53),(54,'SUV','Black','RS FWD',54),(55,'SUV','Sterling Gray Metallic','2WD RST',55),(56,'Coupe','Summit White','Convertible 1SS',56),(57,'Sedan','Summit White','LT',57),(58,'Crew Cab/Pick up','Silver Ice Metallic','3500HD High Country',58),(59,'Coupe','White','Stingray convertible',59),(60,'Coupe','Accelerate Yellow Metallic','Stingray 2LT',60);
/*!40000 ALTER TABLE `vehiclefeaturesinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicleinfo`
--

DROP TABLE IF EXISTS `vehicleinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleinfo` (
  `VehicleInfo_Id` int NOT NULL,
  `VehicleMileage` decimal(18,2) NOT NULL,
  `VehicleCondition` varchar(45) NOT NULL,
  `VehicleStatus` varchar(45) NOT NULL,
  `VehiclePrice` varchar(45) NOT NULL,
  `DealerVehicleId` int NOT NULL,
  PRIMARY KEY (`VehicleInfo_Id`,`DealerVehicleId`),
  KEY `fk_VehicleInfo_DealerVehicles1_idx` (`DealerVehicleId`),
  CONSTRAINT `fk_VehicleInfo_DealerVehicles1` FOREIGN KEY (`DealerVehicleId`) REFERENCES `dealervehicles` (`DealerVehicleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleinfo`
--

LOCK TABLES `vehicleinfo` WRITE;
/*!40000 ALTER TABLE `vehicleinfo` DISABLE KEYS */;
INSERT INTO `vehicleinfo` VALUES (1,100.00,'New','Sold','42285.00',1),(2,15.00,'New','In Stock','86887.00',2),(3,82991.00,'Used','Sold','21993.00',3),(4,20.00,'New','Sold','22573.00',4),(5,5.00,'New','In Stock','54991.00',5),(6,3.00,'New','In Stock','44267.00',6),(7,57975.00,'Used','In Stock','31444.00',7),(8,2.00,'New','In Stock','56621.00',8),(9,198285.00,'Used','Sold','5991.00',9),(10,18325.00,'Pre-Owned','In Stock','78999.00',10),(11,0.00,'New','Sold','52855.00',11),(12,5.00,'New','In Stock','39570.00',12),(13,0.00,'New','Sold','31520.00',13),(14,2.00,'New','In Stock','43065.00',14),(15,12.00,'New','In Stock','72284.00',15),(16,34605.00,'Used','Sold','16990.00',16),(17,2.00,'New','In Stock','49085.00',17),(18,28223.00,'Used','In Stock','25990.00',18),(19,15707.00,'Used','Sold','23998.00',19),(20,3584.00,'Pre-Owned','In Stock','55692.00',20),(21,0.00,'New','Sold','63105.00',21),(22,100983.00,'Used','Sold','33622.00',22),(23,1.00,'New','In Stock','48905.00',23),(24,0.00,'New','In Stock','34295.00',24),(25,0.00,'New','In Stock','39620.00',25),(26,60.00,'New','In Stock','37485.00',26),(27,25892.00,'Used','In Stock','19990.00',27),(28,2.00,'New','Sold','34135.00',28),(29,13488.00,'Pre-Owned','In Stock','138999.00',29),(30,85811.00,'Used','Sold','13998.00',30),(31,1985.00,'Used','In Stock','45500.00',31),(32,13.00,'New','In Stock','54305.00',32),(33,0.00,'New','Sold','57250.00',33),(34,0.00,'New','In Stock','207750.00',34),(35,20748.00,'Used','In Stock','32499.00',35),(36,525.00,'Pre-Owned','Sold','447998.00',36),(37,6865.00,'Pre-Owned','Sold','369998.00',37),(38,35658.00,'Used','In Stock','67995.00',38),(39,18848.00,'Used','In Stock','61990.00',39),(40,57544.00,'Used','In Stock','44981.00',40),(41,10.00,'New','In Stock','30075.00',41),(42,10.00,'New','Sold','30555.00',42),(43,10.00,'New','In Stock','31540.00',43),(44,9721.00,'Pre-Owned','In Stock','40285.00',44),(45,87000.00,'Used','In Stock','23998.00',45),(46,20763.00,'Used','In Stock','35941.00',46),(47,0.00,'New','Sold','50328.00',47),(48,34449.00,'Used','In Stock','22199.00',48),(49,3.00,'New','In Stock','31540.00',49),(50,10.00,'New','In Stock','31755.00',50),(51,9.00,'New','In Stock','31920.00',51),(52,10.00,'New','In Stock','38195.00',52),(53,5.00,'New','In Stock','56305.00',53),(54,1.00,'New','In Stock','48815.00',54),(55,0.00,'New','In Stock','67495.00',55),(56,0.00,'New','In Stock','49285.00',56),(57,15.00,'New','Sold','29281.00',57),(58,12.00,'New','Sold','85251.00',58),(59,12588.00,'Used','In Stock','57990.00',59),(60,4934.00,'Pre-Owned','In Stock','99674.00',60);
/*!40000 ALTER TABLE `vehicleinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 19:12:10
