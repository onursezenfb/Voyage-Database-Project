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
INSERT INTO `passengers` VALUES (576419853,'John Nash','Male',32),(224899573,'David Beckham','Male',47),(450927222,'Marie Curie','Female',44),(387441450,'James Franco','Male',44),(232881403,'Amy Winehouse','Female',39),(512448329,'Brad Pitt','Male',59),(729123580,'Sandra Bullock','Female', 58);
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
INSERT INTO `captain` VALUES (12481, 'Jack Sparrow', 20, 10, 'Male'),(29486, 'Ozan Celebi', 2, 7, 'Male'), (29527, 'Onur Sezen', 2, 8, 'Male'),(82178, 'Barbaros Hayreddin', 34, 9, 'Male'), (93127, 'Anna Shchetinina', 12, 7, 'Female');
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
INSERT INTO `crew` VALUES (47382, 4, 8, 29486),(21488, 3, 3, 29527), (10002, 5, 7, 12481), (81221, 5, 8, 82178), (12467, 7, 5, 93127);
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
INSERT INTO `ships` VALUES (93582, 'Gezgin', 6, '2002-05-20'),(58278, 'Yorgun', 7,'2019-03-05'), (10001, 'The Black Pearl', 10, '1650-04-01'), (21455, 'Sea Shark', 9, '2021-07-12'), (12747, 'Bird', 5, '2010-08-08');
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
INSERT INTO `voyages` VALUES (12345, 'Izmir', 'Istanbul', '2022-11-10', 21488, 58278), (10203, 'London', 'New York', '2023-01-20', 47382, 93582), (49182, 'Samsun', 'Istanbul', '2021-05-10', 81221, 12747), (12346, 'Izmir', 'Antalya', '2023-09-03', 12467, 21455), (19182, 'Haiti', 'Caribbean', '1722-02-01', 10002, 10001);
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
INSERT INTO `reservations` VALUES (224899573, 10203, '2023-01-14', 'Check', 'Suite'),(450927222, 49182, '2021-05-03', 'Cash', 'Single'), (387441450, 12345, '2022-10-10', 'Credit Card', 'Double'), (729123580, 12346, '2023-02-25', 'Credit Card', 'Single'), (576419853, 49182, '2021-04-12', 'Cash', 'Single'), (232881403, 49182, '2021-03-23', 'Cash', 'Double'),(512448329, 19182, '1722-02-01', 'Cash', 'Suite');
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
  FOREIGN KEY (`ssn`) REFERENCES passengers(ssn) ON DELETE CASCADE,
  FOREIGN KEY (`voyageId`) REFERENCES voyages(voyageId) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `problems`
--

LOCK TABLES `problems` WRITE;
/*!40000 ALTER TABLE `problems` DISABLE KEYS */;
INSERT INTO `problems` VALUES (224899573, 10203, '2023-02-14', 'noise'),(450927222, 19182, '2022-12-10', 'food quality'), (387441450, 19182, '2022-12-11', 'rude captain');
/*!40000 ALTER TABLE `problems` ENABLE KEYS */;
UNLOCK TABLES;





DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employeeId` int(10) NOT NULL AUTO_INCREMENT,
  `YearsOfExperience` int(10) NOT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (15237, 4), (13532, 6), (12156, 34), (15238, 12), (13533, 8), (12157, 20), (15239, 10), (13534, 18), (12158, 2), (15240, 6), (13535, 1), (12159, 12), (15241, 7), (13536, 12), (12160, 1), (15242, 17), (13537, 13), (12161, 5), (15243, 11), (13538, 3), (12162, 7), (15244, 13), (13539, 23), (12163, 5);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `servant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servant` (
  `servantId` int(10) REFERENCES employee(employeeId) ON DELETE CASCADE,
  `YearsOfExperience` int(10) NOT NULL REFERENCES employee(YearsOfExperience),
  `servantType` char(20) NOT NULL,
  PRIMARY KEY (`servantId`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `servant`
--

insert into servant(servantId,YearsOfExperience,servantType)
values(15237, 4, 'Chef'), (12156, 34, 'Janitor'), (15238, 12, 'Waiter/ress'), (13532, 6, 'Room Service');

DROP TABLE IF EXISTS `technician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technician` (
  `technicianId` int(10) REFERENCES employee(employeeId) ON DELETE CASCADE,
  `YearsOfExperience` int(10) NOT NULL REFERENCES employee(YearsOfExperience),
  `machine` char(20) NOT NULL,
  PRIMARY KEY (`technicianId`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `technician`
--

insert into technician(technicianId,YearsOfExperience,machine)
values (15242, 17, 'Engine'), (13537, 13, 'Vacuum Chamber'), (12161, 5, 'Antenna'), (15243, 11, 'Engine');


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
INSERT INTO `Works_In` VALUES (15237, 47382, '2023-01-20'), (13532, 47382, '2023-01-20'), (12156, 47382, '2023-01-20'), (15238, 47382, '2023-01-20'), (13533, 21488, '2022-11-10'), (12157, 21488, '2022-11-10'), (15239, 21488, '2022-11-10'), (13534, 10002, '1722-02-01'), (12158, 10002, '1722-02-01'), (15240, 10002, '1722-02-01'), (13535, 10002, '1722-02-01'), (12159, 10002, '1722-02-01'), (15241, 81221,'2021-05-10'), (13536, 81221, '2021-05-10'), (12160, 81221, '2021-05-10'), (15242, 81221, '2021-05-10'), (13537, 81221, '2021-05-10'), (12161, 12467, '2023-09-03'), (15243, 12467, '2023-09-03'), (13538, 12467, '2023-09-03'), (12162, 12467, '2023-09-03'), (15244, 12467, '2023-09-03'), (13539, 12467, '2023-09-03'), (12163, 12467, '2023-09-03');
/*!40000 ALTER TABLE `Works_In` ENABLE KEYS */;
UNLOCK TABLES;
