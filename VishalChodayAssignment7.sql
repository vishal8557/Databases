CREATE DATABASE  IF NOT EXISTS `dealership` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dealership`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: dealership
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
-- Table structure for table `citystate`
--

DROP TABLE IF EXISTS `citystate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citystate` (
  `city` varchar(90) NOT NULL,
  `state` char(2) NOT NULL,
  `zipCode` char(5) NOT NULL,
  PRIMARY KEY (`zipCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citystate`
--

LOCK TABLES `citystate` WRITE;
/*!40000 ALTER TABLE `citystate` DISABLE KEYS */;
INSERT INTO `citystate` VALUES ('Piscataway','NJ','08854'),('Glenarden','MD','20706'),('Abingdon','VA','24210'),('Clover','SC','29710'),('Duluth','GA','30096'),('Jupiter','FL','33458'),('Nashville','TN','37205'),('Memphis','TN','38117'),('Willoughby','OH','44094'),('Cuyahoga Falls','OH','44223'),('Battle Creek','MI','49016'),('Jefferson','LA','70121'),('Covington','LA','70433'),('Scottsdale','AZ','85260'),('Ontario','CA','91764'),('San Marcos','CA','92078'),('Huntington Beach','CA','92647');
/*!40000 ALTER TABLE `citystate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `color` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `color` (`color`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (19,'Agate Black'),(1,'Alpine White'),(13,'Antimatter Blue'),(22,'Black'),(10,'Black \nSapphire'),(8,'Black Sapphire'),(15,'Carbonized Gray'),(7,'Dravit Grey Metallic'),(23,'Grey'),(12,'Guard'),(17,'Iconic Silver'),(6,'Mediterranean Blue'),(9,'Mineral \nGrey'),(4,'Mineral Grey'),(16,'Oxford White'),(2,'Potamaic Blue'),(18,'Rapid Red'),(20,'Red'),(14,'Space White'),(5,'Sunset Orange'),(3,'Tanzanite Blue'),(11,'Velocity Blue'),(21,'White');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`),
  KEY `zipCode` (`zipCode`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `citystate` (`zipCode`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Yvonne','Goodman','12 Creekside St','37205','2025550109','ygoodman@isp.com'),(2,'Dante','Mackenzie','137 Wall St','37205','2025550112','dmackenzie@isp.com'),(3,'Alysha','Rollins','411 Shirley St','37205','2025550115','arollins@isp.com'),(4,'Avaya','Gonzalez','7771 Border Court','37205','2025550119','agonzalez@isp.com'),(5,'Haniya','Kelly','6 South Sulphur Springs \nStreet','37205','2025550121','hkelly@isp.com'),(6,'Nathalie','Chambers','942 New Saddle \nDrive','29710','2025550122','nchambers@isp.com'),(7,'Dante','Rollins','9 Wrangler Ave','29710','2025550124','drollins@isp.com'),(8,'Beverley','Mckee','7319 S. Greenview \nDrive','29710','2025550125','bmckee@isp.com'),(9,'Paris','Lindsey','763 West Mulberry St','29710','2025550132','plindsey@isp.com'),(10,'Umaiza','Melia','545 Ohio Ave','29710','2025550135','umelia@isp.com'),(11,'Nico','Prince','20 Middle River Street','44094','2025550137','nprince@isp.com'),(12,'Javan','Rennie','8112 North Country St','44094','2025550139','jrennie@isp.com'),(13,'Ali','Waters','83 Rockland Lane','44094','2025550144','awaters@isp.com'),(14,'JohnPaul','Clarke','1 Riverside Lane','44094','2025550153','jpcClarke@isp.com'),(15,'Dane','Kaiser','694 Wall Road','44094','2025550155','kdaiser@isp.com'),(16,'Hammad','Newman','9970 State Court','30096','2025550157','hnewman@isp.com'),(17,'Maha','Guthrie','54 Woodsman Drive','30096','2025550161','mguthrie@isp.com'),(18,'Tulisa','Roberts','7174 Studebaker \nStreet','30096','2025550163','troberts@isp.com'),(19,'Robin','Solis','8474 Wentworth Street','30096','2025550164','rsolis@isp.com'),(20,'Kavita','Heath','796 Hartford St','30096','2025550165','kheath@isp.com'),(21,'Meera','White','484 Bridge St','08854','2025550166','mwhite@isp.com'),(22,'Bradlee','Esparza','7031 Gainsway St','08854','2025550173','besparza@isp.com'),(23,'Leilani','Leonard','37 Monroe Street','08854','2025550175','lleonard@isp.com'),(24,'Stefanie','Brook','7990 West Surrey St','08854','2025550179','sbrook@isp.com'),(25,'Grover','Squires','7618 Madison Court','08854','2025550180','gsquires@isp.com'),(26,'Jonathan','Kumar','25 Annadale Court','33458','2025550182','jkumar@isp.com'),(27,'Angus','Neville','9841 Smith Drive','33458','2025550187','aneville@isp.com'),(28,'Uzair','Sparrow','7999 Hall Street','33458','2025550188','usparrow@isp.com'),(29,'Amari','Currie','8411 Pleasant St','33458','2025550194','acurrie@isp.com'),(30,'Imaani','Wallace','33 Pierce Rd','33458','2025550195','iwallace@isp.com'),(31,'Efe','House','97 High Point Street','20706','2025550196','ehouse@isp.com'),(32,'Atticus','Atkinson','66 Harrison Dr','20706','2025550197','aatkinson@isp.com'),(33,'Michelle','Ramirez','370 Hill Field \nAve','20706','2025550198','mramirez@isp.com'),(34,'Remy','Hassan','249 Devon Lane','20706','2025550199','rhassan@isp.com'),(35,'Jordana','Beck','7911 Carson Lane','20706','2025550200','jbeck@isp.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customerview`
--

DROP TABLE IF EXISTS `customerview`;
/*!50001 DROP VIEW IF EXISTS `customerview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customerview` AS SELECT 
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `address`,
 1 AS `city`,
 1 AS `state`,
 1 AS `zipCode`,
 1 AS `phone`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cylinders`
--

DROP TABLE IF EXISTS `cylinders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cylinders` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `cylinders` varchar(2) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `cylinders` (`cylinders`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cylinders`
--

LOCK TABLES `cylinders` WRITE;
/*!40000 ALTER TABLE `cylinders` DISABLE KEYS */;
INSERT INTO `cylinders` VALUES (1,'I4'),(2,'I6'),(8,'L4'),(3,'V6'),(4,'V8');
/*!40000 ALTER TABLE `cylinders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`),
  KEY `zipCode` (`zipCode`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `citystate` (`zipCode`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Igor','Prince','12 Creekside St','92647','2025550109','iprince@dealership.com'),(2,'Dante','Rennie','137 Wall St','38117','2025550112','drennie@dealership.com'),(3,'Thomas','Waters','411 Shirley \nSt','24210','2025550115','twaters@dealership.com'),(4,'Avaya','Clarke','7771 Border \nCourt','92078','2025550119','aclarke@dealership.com'),(5,'Haniya','Kaiser','6 South Sulphur Springs \nStreet','70121','2025550121','hkaiser@dealership.com'),(6,'Victor','Newman','942 New Saddle \nDrive','70433','2025550122','vnewman@dealership.com'),(7,'Douglas','Guthrie','9 Wrangler \nAve','91764','2025550124','dguthrie@dealership.com'),(8,'Brian','Roberts','7319 S. Greenview \nDrive','44223','2025550125','broberts@dealership.com'),(9,'Paris','Solis','763 West Mulberry \nSt','49016','2025550132','psolis@dealership.com'),(10,'Umaiza','Heath','545 Ohio Ave','85260','2025550135','uheath@dealership.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employeeview`
--

DROP TABLE IF EXISTS `employeeview`;
/*!50001 DROP VIEW IF EXISTS `employeeview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeeview` AS SELECT 
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `address`,
 1 AS `city`,
 1 AS `state`,
 1 AS `zipCode`,
 1 AS `phone`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `engine`
--

DROP TABLE IF EXISTS `engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `engine` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `engine` (`engine`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine`
--

LOCK TABLES `engine` WRITE;
/*!40000 ALTER TABLE `engine` DISABLE KEYS */;
INSERT INTO `engine` VALUES (8,'1.5'),(7,'1.8'),(1,'2.0'),(5,'2.7'),(2,'3.0'),(3,'3.3'),(6,'3.5'),(4,'5.0');
/*!40000 ALTER TABLE `engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `make`
--

DROP TABLE IF EXISTS `make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `make` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `make` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `make` (`make`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make`
--

LOCK TABLES `make` WRITE;
/*!40000 ALTER TABLE `make` DISABLE KEYS */;
INSERT INTO `make` VALUES (13,'Acura'),(1,'BMW'),(4,'Buick'),(5,'Chevrolet'),(6,'Chrysler'),(7,'Dodge'),(2,'Ford'),(14,'Honda'),(8,'Hummer'),(15,'Hyundai'),(9,'Jeep'),(16,'Lexus'),(17,'Mazda'),(18,'Nissan'),(10,'Ram'),(11,'Saturn'),(19,'Subaru'),(12,'Tesla'),(3,'Toyota');
/*!40000 ALTER TABLE `make` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `makemodel`
--

DROP TABLE IF EXISTS `makemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makemodel` (
  `makeId` int NOT NULL,
  `modelId` int NOT NULL,
  PRIMARY KEY (`makeId`,`modelId`),
  KEY `modelId` (`modelId`),
  CONSTRAINT `makemodel_ibfk_1` FOREIGN KEY (`makeId`) REFERENCES `make` (`ID`),
  CONSTRAINT `makemodel_ibfk_2` FOREIGN KEY (`modelId`) REFERENCES `model` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makemodel`
--

LOCK TABLES `makemodel` WRITE;
/*!40000 ALTER TABLE `makemodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `makemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `model` (`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (3,'1 Series'),(2,'2 Series'),(1,'3 Series'),(15,'4Runner'),(4,'5 Series'),(5,'6 Series'),(6,'7 Series'),(7,'8 Series'),(18,'Altima'),(19,'Atenza'),(20,'Axela'),(12,'Camry'),(24,'Compass'),(13,'Corolla'),(22,'CX-3'),(21,'Demio'),(8,'F-150'),(9,'F-250'),(10,'F-350'),(11,'Prius'),(14,'RAV4'),(23,'Renegade'),(16,'Rogue'),(17,'Titan'),(25,'Wrangler');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `employeeID` int NOT NULL,
  `customerId` int NOT NULL,
  `vehicleid` int NOT NULL,
  `salePrice` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`employeeID`,`customerId`,`vehicleid`),
  KEY `customerId` (`customerId`),
  KEY `vehicleid` (`vehicleid`),
  CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`ID`),
  CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`ID`),
  CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`vehicleid`) REFERENCES `vehicle` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `saleview`
--

DROP TABLE IF EXISTS `saleview`;
/*!50001 DROP VIEW IF EXISTS `saleview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `saleview` AS SELECT 
 1 AS `Customer Name`,
 1 AS `Customer Address`,
 1 AS `Customer Phone`,
 1 AS `Customer Email`,
 1 AS `Sales Associate`,
 1 AS `Sales Associate Phone`,
 1 AS `Sales Associate Email`,
 1 AS `Year`,
 1 AS `Make`,
 1 AS `Model`,
 1 AS `Color`,
 1 AS `Type`,
 1 AS `VIN`,
 1 AS `Sale Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transmission`
--

DROP TABLE IF EXISTS `transmission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transmission` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `transmission` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `transmission` (`transmission`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transmission`
--

LOCK TABLES `transmission` WRITE;
/*!40000 ALTER TABLE `transmission` DISABLE KEYS */;
INSERT INTO `transmission` VALUES (3,'10-speed \nshiftable automatic'),(4,'10-speed shiftable\nautomatic'),(5,'6-speed \nshiftable automatic'),(2,'6-speed manual'),(7,'6-speed shiftable\nautomatic'),(6,'6-speed shiftable \nautomatic'),(1,'8-speed shiftable \nautomatic'),(16,'9 Speed Automatic'),(8,'continuously variable-\nspeed automatic'),(9,'continuously variable-speed\nautomatic'),(10,'continuously variable-speed \nautomatic');
/*!40000 ALTER TABLE `transmission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (3,'Convertible'),(2,'Coupe'),(8,'Hatchback'),(1,'Sedan'),(9,'SUV'),(5,'Truck (Regular Cab)'),(7,'Truck (SuperCab)'),(6,'Truck (SuperCrew)'),(4,'Wagon');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `make` int NOT NULL,
  `model` int NOT NULL,
  `color` varchar(25) NOT NULL,
  `engine` int NOT NULL,
  `cylinders` int NOT NULL,
  `transmission` varchar(40) NOT NULL,
  `vin` char(17) NOT NULL,
  `odometer` int NOT NULL DEFAULT '0',
  `retail` decimal(8,2) NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `cylinders` (`cylinders`),
  KEY `engine` (`engine`),
  KEY `model` (`model`),
  KEY `make` (`make`),
  KEY `type` (`type`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`cylinders`) REFERENCES `cylinders` (`ID`),
  CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`engine`) REFERENCES `engine` (`ID`),
  CONSTRAINT `vehicle_ibfk_3` FOREIGN KEY (`model`) REFERENCES `model` (`ID`),
  CONSTRAINT `vehicle_ibfk_4` FOREIGN KEY (`make`) REFERENCES `make` (`ID`),
  CONSTRAINT `vehicle_ibfk_5` FOREIGN KEY (`type`) REFERENCES `type` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,1,1,1,'1',1,1,'8-speed shiftable \nautomatic','WBAAR3346YJB35144',10,41450.00,2022),(2,2,1,1,'2',2,2,'8-speed shiftable \nautomatic','WBAAG1107B7071594',15,56700.00,2022),(3,1,1,2,'3',1,1,'8-speed shiftable \nautomatic','WB10416A01ZC60664',15000,40750.00,2020),(4,3,1,2,'4',2,2,'8-speed shiftable \nautomatic','WBAEP33403PE91635',16000,54000.00,2020),(5,1,1,3,'5',1,1,'8-speed shiftable \nautomatic','WBAVC53597F280348',24000,34900.00,2018),(6,1,1,3,'6',2,2,'8-speed shiftable \nautomatic','WBASP2C58BC337294',25000,48950.00,2018),(7,1,1,4,'7',1,1,'8-speed shiftable \nautomatic','5UXZW0C51BL657600',43000,33150.00,2016),(8,1,1,4,'8',2,2,'8-speed shiftable \nautomatic','WBABB2304KEC18748',44324,45800.00,2016),(9,1,1,5,'5',1,1,'8-speed shiftable \nautomatic','WBAEA8104C8160045',51000,32750.00,2014),(10,1,1,5,'1',2,2,'8-speed shiftable \nautomatic','WBSNB93526CX06186',54000,45400.00,2014),(11,4,1,6,'2',1,1,'8-speed shiftable \nautomatic','WBAVM1C58FVZ94090',56789,41450.00,2014),(12,1,1,6,'Mineral \nGrey',1,1,'2','WBS6C9C50F0010137',45678,34900.00,2012),(13,1,1,7,'6',2,2,'2','WBA1A1101FP627759',56123,42400.00,2012),(14,4,1,7,'Black \nSapphire',2,2,'2','WBA1K5C54FV473864',76543,37500.00,2012),(15,5,2,8,'9',3,3,'10-speed \nshiftable automatic','1FTPX27W8XNC05837',100,30495.00,2022),(16,6,2,8,'10',4,4,'10-speed \nshiftable automatic','1FDTF4GT0FEC04565',150,62070.00,2022),(17,7,2,8,'11',8,3,'10-speed shiftable\nautomatic','1FAPP37U0RK147737',240,52360.00,2022),(18,5,2,9,'12',3,3,'6-speed \nshiftable automatic','NM0GE9F71E1140792',12345,28745.00,2020),(19,7,2,9,'13',3,3,'6-speed shiftable \nautomatic','1FTHS34L5FHB78984',23456,32830.00,2020),(20,6,2,9,'14',3,3,'6-speed shiftable\nautomatic','1ZVLT22B0P0016902',31234,35285.00,2020),(21,5,2,10,'15',6,3,'6-speed \nshiftable automatic','3FA6P0HR4DR275908',76543,26030.00,2015),(22,7,2,10,'16',6,3,'6-speed shiftable \nautomatic','1FMDU32E0XUB16328',81234,30090.00,2015),(23,6,2,10,'17',6,3,'6-speed shiftable\nautomatic','1FT8X3A66FEA17593',34899,32545.00,2015),(24,8,3,11,'18',5,1,'continuously variable-\nspeed automatic','JTECB09J823005642',135,25075.00,2022),(25,1,3,12,'19',5,1,'continuously variable-speed\nautomatic','4T1BG12K7TU071892',178,24325.00,2020),(26,1,3,13,'20',5,1,'continuously variable-\nspeed automatic','JT4RN81A5L5058840',10234,23475.00,2018),(27,9,3,14,'21',7,1,'continuously variable-speed \nautomatic','2T1LR38E13C094100',12098,19995.00,2003),(28,9,3,15,'18',7,1,'continuously variable-speed\nautomatic','JTEBU3FJ3E5048175',54198,19995.00,2002),(29,8,3,11,'20',7,1,'continuously variable-\nspeed automatic','5TFAW5F13FX422831',78103,19995.00,2001);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `customerview`
--

/*!50001 DROP VIEW IF EXISTS `customerview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerview` AS select `c`.`firstName` AS `firstName`,`c`.`lastName` AS `lastName`,`c`.`address` AS `address`,`cs`.`city` AS `city`,`cs`.`state` AS `state`,`c`.`zipCode` AS `zipCode`,`c`.`phone` AS `phone`,`c`.`email` AS `email` from (`customer` `c` join `citystate` `cs`) where (`c`.`zipCode` = `cs`.`zipCode`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeeview`
--

/*!50001 DROP VIEW IF EXISTS `employeeview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeeview` AS select `e`.`firstname` AS `firstName`,`e`.`lastname` AS `lastName`,`e`.`address` AS `address`,`cs`.`city` AS `city`,`cs`.`state` AS `state`,`e`.`zipCode` AS `zipCode`,`e`.`phone` AS `phone`,`e`.`email` AS `email` from (`employee` `e` join `citystate` `cs`) where (`e`.`zipCode` = `cs`.`zipCode`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `saleview`
--

/*!50001 DROP VIEW IF EXISTS `saleview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `saleview` AS select concat(`c`.`firstName`,' ',`c`.`lastName`) AS `Customer Name`,concat(`c`.`address`,' ',`cs`.`city`,' ',`cs`.`state`,' ',`cs`.`zipCode`) AS `Customer Address`,`c`.`phone` AS `Customer Phone`,`c`.`email` AS `Customer Email`,concat(`e`.`firstname`,' ',`e`.`lastname`) AS `Sales Associate`,`e`.`phone` AS `Sales Associate Phone`,`e`.`email` AS `Sales Associate Email`,`v`.`year` AS `Year`,`ma`.`make` AS `Make`,`mo`.`model` AS `Model`,`co`.`color` AS `Color`,`t`.`type` AS `Type`,`v`.`vin` AS `VIN`,`s`.`salePrice` AS `Sale Price` from ((((((((`customer` `c` join `employee` `e`) join `sale` `s`) join `citystate` `cs`) join `vehicle` `v`) join `make` `ma`) join `model` `mo`) join `color` `co`) join `type` `t`) where ((`s`.`customerId` = `c`.`ID`) and (`s`.`employeeID` = `e`.`ID`) and (`s`.`vehicleid` = `v`.`ID`) and (`c`.`zipCode` = `cs`.`zipCode`) and (`v`.`make` = `ma`.`ID`) and (`v`.`model` = `mo`.`ID`) and (`v`.`color` = `co`.`ID`) and (`v`.`type` = `t`.`ID`)) order by `v`.`ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-18 21:29:44
