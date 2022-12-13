CREATE DATABASE  IF NOT EXISTS `Voyage` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `Voyage`;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passengers` (
  `ssn` int(10) NOT NULL AUTO_INCREMENT,
  `pname` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `age` int(10) NOT NULL,
  PRIMARY KEY (`ssn`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers`
--

LOCK TABLES `passengers` WRITE;
/*!40000 ALTER TABLE `passengers` DISABLE KEYS */;
INSERT INTO `passengers` VALUES (576419853,'John Nash','Male',32),(224899573,'David Beckham','Male',47),(450927222,'Marie Curie','Female',44),(387441450,'James Franco','Male',44),(232881403,'Amy Winehouse','Female',39);
/*!40000 ALTER TABLE `passengers` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `captain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captain` (
  `captainId` int(10) NOT NULL AUTO_INCREMENT,
  `name` CHAR(30) NOT NULL,
  `yearsOfExperience` int(10) NOT NULL,
  `captainRating` int(10) NOT NULL,
  `gender` CHAR(10) NOT NULL,
  PRIMARY KEY (`captainId`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `captain`
--

LOCK TABLES `captain` WRITE;
/*!40000 ALTER TABLE `captain` DISABLE KEYS */;
INSERT INTO `captain` VALUES (1248128, 'Jack Sparrow', 20, 10, 'male'),(29486, 'Ozan Celebi', 2, 7, 'male'), (29527, 'Onur Sezen', 2, 8, 'male');
/*!40000 ALTER TABLE `captain` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crew` (
  `crewId` int(10) NOT NULL AUTO_INCREMENT,
  `numberOfEmployees` int(10) NOT NULL,
  `crewRating` int(10) NOT NULL,
  `captainId` int(10) NOT NULL,
  PRIMARY KEY (`crewId`),
  FOREIGN KEY (`captainId`) REFERENCES captain(captainId) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
INSERT INTO `crew` VALUES (473829, 25, 8, 29486),(214885, 12, 3, 29527), (00002, 78, 7, 1248128);
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `ships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ships` (
  `shipId` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipRating` int(10) NOT NULL,
  `constructionDate` date NOT NULL,
  PRIMARY KEY (`shipId`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ships`
--

LOCK TABLES `ships` WRITE;
/*!40000 ALTER TABLE `ships` DISABLE KEYS */;
INSERT INTO `ships` VALUES (9358217, 'Gezgin', 6, '2002-05-20'),(5827879, 'Yorgun', 7,'2019-03-05'), (00001, 'The Black Pearl', 10, '1650-04-01');
/*!40000 ALTER TABLE `ships` ENABLE KEYS */;
UNLOCK TABLES;




DROP TABLE IF EXISTS `voyages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voyages` (
  `voyageId` int(10) NOT NULL AUTO_INCREMENT,
  `departure` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `vDate` date NOT NULL,
  `crewId` int(10) NOT NULL,
  `shipId` int(10) NOT NULL,
  FOREIGN KEY (`crewId`) REFERENCES crew(crewId) ON DELETE CASCADE,
  FOREIGN KEY (`shipId`) REFERENCES ships(shipId) ON DELETE CASCADE,
  PRIMARY KEY (`voyageId`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `voyages`
--


LOCK TABLES `voyages` WRITE;
/*!40000 ALTER TABLE `voyages` DISABLE KEYS */;
INSERT INTO `voyages` VALUES (123456789, 'Izmir', 'Istanbul', '2022-11-10', 214885, 5827879), (1020304050, 'London', 'New York', '2023-01-20', 473829, 9358217), (0918273645, 'Haiti', 'Caribbean', '1722-02-01', 00002, 00001);
/*!40000 ALTER TABLE `voyages` ENABLE KEYS */;
UNLOCK TABLES;






DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `ssn` int(10) NOT NULL,
  `voyageId` int(10) NOT NULL,
  `reservationDate` date NOT NULL,
  `paymentMethod` CHAR(20) NOT NULL,
  `roomType` CHAR(20) NOT NULL,

  PRIMARY KEY (`ssn`, `voyageId`),
  FOREIGN KEY (`ssn`) REFERENCES passengers(ssn) ON DELETE CASCADE,
  FOREIGN KEY (`voyageId`) REFERENCES voyages(voyageId) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (224899573, 1020304050, '2023-01-14', 'check', 'deluxe'),(450927222, 0918273645, '2022-11-03', 'cash', 'standard');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;




DROP TABLE IF EXISTS `problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problems` (
  `ssn` int(10) NOT NULL,
  `voyageId` int(10) NOT NULL,
  `problemDate` date NOT NULL,
  `problemDescription` CHAR(20) NOT NULL,
  PRIMARY KEY (`ssn`, `voyageId`),
  FOREIGN KEY (`ssn`) REFERENCES passengers(ssn),
  FOREIGN KEY (`voyageId`) REFERENCES voyages(voyageId)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `problems`
--

LOCK TABLES `problems` WRITE;
/*!40000 ALTER TABLE `problems` DISABLE KEYS */;
INSERT INTO `problems` VALUES (224899573, 1020304050, '2023-02-14', 'noise'),(450927222, 0918273645, '2022-12-10', 'food quality');
/*!40000 ALTER TABLE `problems` ENABLE KEYS */;
UNLOCK TABLES;





DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employeeId` int(10) NOT NULL AUTO_INCREMENT,
  `yearsOfExperience` int(10) NOT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (152376, 4),(13532, 6), (121562, 34);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `servant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servant` (
  `servantId` int(10) REFERENCES employee(employeeId) ON DELETE CASCADE,
  `YearsOfExperience` int(10) NOT NULL REFERENCES employee(yearsOfExperience),
  `servantType` char(20) NOT NULL,
  PRIMARY KEY (`servantId`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `servant`
--

insert into servant(servantId,YearsOfExperience,servantType)
values(313131, 31, 'chef');

DROP TABLE IF EXISTS `technician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technician` (
  `technicianId` int(10) REFERENCES employee(employeeId) ON DELETE CASCADE,
  `YearsOfExperience` int(10) NOT NULL REFERENCES employee(yearsOfExperience),
  `machine` char(20) NOT NULL,
  PRIMARY KEY (`technicianId`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `technician`
--

insert into technician(technicianId,YearsOfExperience,machine)
values(3000, 15, 'mark II');


DROP TABLE IF EXISTS `Works_In`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Works_In` (
  `employeeId` int(10) NOT NULL,
  `crewId` int(10) NOT NULL,
  `since` date NOT NULL,
  PRIMARY KEY (`employeeId`, `crewId`),
  FOREIGN KEY (`employeeId`) REFERENCES employee(employeeId) ON DELETE CASCADE,
  FOREIGN KEY (`crewId`) REFERENCES crew(crewId) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `Works_In`
--

LOCK TABLES `Works_In` WRITE;
/*!40000 ALTER TABLE `Works_In` DISABLE KEYS */;
INSERT INTO `Works_In` VALUES (152376, 473829, '2022-08-16'),(121562, 214885, '2022-12-11'), (13532, 00002, '1720-05-09');
/*!40000 ALTER TABLE `Works_In` ENABLE KEYS */;
UNLOCK TABLES;

