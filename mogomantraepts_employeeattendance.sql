-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mogomantraepts
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `employeeattendance`
--

DROP TABLE IF EXISTS `employeeattendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeattendance` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `AttendanceDate` datetime DEFAULT NULL,
  `EmployeeId` int DEFAULT NULL,
  `PunchIn` datetime DEFAULT NULL,
  `PunchInStatus` varchar(10) DEFAULT NULL,
  `PunchOut` datetime DEFAULT NULL,
  `PunchOutStatus` varchar(10) DEFAULT NULL,
  `TotalMinutes` int DEFAULT NULL,
  `LateMinutes` int DEFAULT NULL,
  `EarlyOutMinutes` int DEFAULT NULL,
  `OverTimeMinutes` int DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `IsHalfDay` tinyint DEFAULT '0',
  `IsAbsent` tinyint DEFAULT '0',
  `IsLeave` tinyint DEFAULT '0',
  `StatusText` varchar(255) DEFAULT NULL,
  `ShiftId` int DEFAULT NULL,
  `PresentStatus` varchar(10) DEFAULT NULL,
  `LeaveStatus` varchar(10) DEFAULT NULL,
  `ManualEntryStatus` varchar(10) DEFAULT NULL,
  `ApprovedBy` int DEFAULT NULL,
  `ApprovedOn` datetime DEFAULT NULL,
  `IsApproved` tinyint DEFAULT '0',
  `TotalHours` int DEFAULT NULL,
  `DayOfWeek` int DEFAULT NULL,
  `HolidayFlag` int DEFAULT NULL,
  `WOFlag` int DEFAULT NULL,
  `IsOTApproved` tinyint DEFAULT '0',
  `OTApprovedBy` int DEFAULT NULL,
  `OTApprovedOn` datetime DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `UpdatedOn` datetime DEFAULT NULL,
  `ExtraColumn1` varchar(255) DEFAULT NULL,
  `ExtraColumn2` varchar(255) DEFAULT NULL,
  `ExtraColumn3` varchar(255) DEFAULT NULL,
  `ExtraColumn4` varchar(255) DEFAULT NULL,
  `ExtraColumn5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeattendance`
--

LOCK TABLES `employeeattendance` WRITE;
/*!40000 ALTER TABLE `employeeattendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeeattendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-11  8:24:36
