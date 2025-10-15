-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: epts_project_db
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
-- Table structure for table `employee_department`
--

DROP TABLE IF EXISTS `employee_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_department`
--

LOCK TABLES `employee_department` WRITE;
/*!40000 ALTER TABLE `employee_department` DISABLE KEYS */;
INSERT INTO `employee_department` VALUES (17,'Human Resources','Handles hiring, payroll, and employee management.',1,'2025-10-15 04:59:08.377326','2025-10-15 04:59:08.377368'),(18,'Product Development','Core product and engineering team.',1,'2025-10-15 04:59:08.671735','2025-10-15 04:59:08.671759'),(19,'Quality Assurance','Responsible for testing and validation.',1,'2025-10-15 04:59:08.941089','2025-10-15 04:59:08.941122'),(20,'Sales','Handles client interactions and deals.',1,'2025-10-15 04:59:09.204956','2025-10-15 04:59:09.204982');
/*!40000 ALTER TABLE `employee_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_employee`
--

DROP TABLE IF EXISTS `employee_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_employee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `designation` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `date_joined` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `department_id` bigint DEFAULT NULL,
  `manager_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `employee_employee_department_id_8fce1a05_fk_employee_` (`department_id`),
  KEY `employee_employee_manager_id_ab5dbb82_fk_employee_employee_id` (`manager_id`),
  CONSTRAINT `employee_employee_department_id_8fce1a05_fk_employee_` FOREIGN KEY (`department_id`) REFERENCES `employee_department` (`id`),
  CONSTRAINT `employee_employee_manager_id_ab5dbb82_fk_employee_employee_id` FOREIGN KEY (`manager_id`) REFERENCES `employee_employee` (`id`),
  CONSTRAINT `employee_employee_user_id_2dd26fdc_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_employee`
--

LOCK TABLES `employee_employee` WRITE;
/*!40000 ALTER TABLE `employee_employee` DISABLE KEYS */;
INSERT INTO `employee_employee` VALUES (30,'Team Lead','Active','2025-10-15','2025-10-15 04:59:25.329104','2025-10-15 04:59:25.329139',17,NULL,37),(31,'Team Lead','Active','2025-10-15','2025-10-15 04:59:25.603363','2025-10-15 04:59:25.603384',20,NULL,38),(32,'Software Engineer','Active','2025-10-15','2025-10-15 04:59:25.932235','2025-10-15 04:59:25.932249',19,30,39),(33,'Software Engineer','Active','2025-10-15','2025-10-15 04:59:26.244466','2025-10-15 04:59:26.244495',20,30,40),(34,'Software Engineer','Active','2025-10-15','2025-10-15 04:59:26.568607','2025-10-15 04:59:26.568627',17,30,41),(35,'Software Engineer','Active','2025-10-15','2025-10-15 04:59:26.904148','2025-10-15 04:59:26.904180',18,31,42),(36,'Software Engineer','Active','2025-10-15','2025-10-15 04:59:27.227029','2025-10-15 04:59:27.227059',20,30,43),(37,'Software Engineer','Active','2025-10-15','2025-10-15 04:59:27.551942','2025-10-15 04:59:27.551957',19,30,44);
/*!40000 ALTER TABLE `employee_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_performanceevaluation`
--

DROP TABLE IF EXISTS `performance_performanceevaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance_performanceevaluation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `review_date` date NOT NULL,
  `evaluation_period` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `week_number` smallint unsigned NOT NULL,
  `year` smallint unsigned NOT NULL,
  `evaluation_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `communication_skills` smallint unsigned NOT NULL,
  `multitasking` smallint unsigned NOT NULL,
  `team_skills` smallint unsigned NOT NULL,
  `technical_skills` smallint unsigned NOT NULL,
  `job_knowledge` smallint unsigned NOT NULL,
  `productivity` smallint unsigned NOT NULL,
  `creativity` smallint unsigned NOT NULL,
  `work_quality` smallint unsigned NOT NULL,
  `professionalism` smallint unsigned NOT NULL,
  `work_consistency` smallint unsigned NOT NULL,
  `attitude` smallint unsigned NOT NULL,
  `cooperation` smallint unsigned NOT NULL,
  `dependability` smallint unsigned NOT NULL,
  `attendance` smallint unsigned NOT NULL,
  `punctuality` smallint unsigned NOT NULL,
  `total_score` double NOT NULL,
  `remarks` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `department_id` bigint DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `evaluator_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `performance_performancee_employee_id_week_number__e4f88ba7_uniq` (`employee_id`,`week_number`,`year`,`evaluation_type`),
  KEY `performance_performa_department_id_346abb34_fk_employee_` (`department_id`),
  KEY `performance_performa_evaluator_id_a4fabcd7_fk_users_use` (`evaluator_id`),
  CONSTRAINT `performance_performa_department_id_346abb34_fk_employee_` FOREIGN KEY (`department_id`) REFERENCES `employee_department` (`id`),
  CONSTRAINT `performance_performa_employee_id_a9240027_fk_employee_` FOREIGN KEY (`employee_id`) REFERENCES `employee_employee` (`id`),
  CONSTRAINT `performance_performa_evaluator_id_a4fabcd7_fk_users_use` FOREIGN KEY (`evaluator_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `performance_performanceevaluation_chk_1` CHECK ((`week_number` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_10` CHECK ((`work_quality` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_11` CHECK ((`professionalism` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_12` CHECK ((`work_consistency` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_13` CHECK ((`attitude` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_14` CHECK ((`cooperation` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_15` CHECK ((`dependability` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_16` CHECK ((`attendance` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_17` CHECK ((`punctuality` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_2` CHECK ((`year` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_3` CHECK ((`communication_skills` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_4` CHECK ((`multitasking` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_5` CHECK ((`team_skills` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_6` CHECK ((`technical_skills` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_7` CHECK ((`job_knowledge` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_8` CHECK ((`productivity` >= 0)),
  CONSTRAINT `performance_performanceevaluation_chk_9` CHECK ((`creativity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_performanceevaluation`
--

LOCK TABLES `performance_performanceevaluation` WRITE;
/*!40000 ALTER TABLE `performance_performanceevaluation` DISABLE KEYS */;
INSERT INTO `performance_performanceevaluation` VALUES (11,'2025-10-15','WK:10/Oct/2025 - 16/Oct/2025',42,2025,'Manager',60,90,92,99,87,97,90,97,69,99,89,67,60,73,65,1234,'Auto-generated sample evaluation for demo.','2025-10-15 04:59:27.831804','2025-10-15 04:59:27.831821',19,32,37),(12,'2025-10-15','WK:10/Oct/2025 - 16/Oct/2025',42,2025,'Manager',80,80,79,96,86,79,77,96,97,84,76,90,76,79,93,1268,'Auto-generated sample evaluation for demo.','2025-10-15 04:59:27.940983','2025-10-15 04:59:27.941012',20,33,37),(13,'2025-10-15','WK:10/Oct/2025 - 16/Oct/2025',42,2025,'Admin',81,88,85,70,97,82,71,98,95,83,63,71,89,66,64,1203,'Auto-generated sample evaluation for demo.','2025-10-15 04:59:28.048622','2025-10-15 04:59:28.048650',17,34,37),(14,'2025-10-15','WK:10/Oct/2025 - 16/Oct/2025',42,2025,'Manager',86,99,65,80,84,90,78,61,78,93,71,74,95,60,81,1195,'Auto-generated sample evaluation for demo.','2025-10-15 04:59:28.159208','2025-10-15 04:59:28.159237',18,35,37),(15,'2025-10-15','WK:10/Oct/2025 - 16/Oct/2025',42,2025,'Manager',92,77,100,77,66,67,73,87,69,79,93,84,79,82,63,1188,'Auto-generated sample evaluation for demo.','2025-10-15 04:59:28.267866','2025-10-15 04:59:28.267895',20,36,37),(16,'2025-10-15','WK:10/Oct/2025 - 16/Oct/2025',42,2025,'Manager',92,99,71,92,96,80,60,70,95,92,89,63,62,64,66,1191,'Auto-generated sample evaluation for demo.','2025-10-15 04:59:28.377119','2025-10-15 04:59:28.377146',19,37,38);
/*!40000 ALTER TABLE `performance_performanceevaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `emp_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `joining_date` date NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `department_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emp_id` (`emp_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `users_user_department_id_626c0154_fk_employee_department_id` (`department_id`),
  CONSTRAINT `users_user_department_id_626c0154_fk_employee_department_id` FOREIGN KEY (`department_id`) REFERENCES `employee_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$1000000$f7xzB4Dxz9Utim3lkVVeu1$JMHmOWRLTF2Uy+Rm/kuyPoChQIefK+mq2OmuWZHMmYA=','2025-10-15 05:11:05.111075',1,'E0001','admin','admin@example.com','','','Admin',NULL,'2025-10-15',0,1,1,'2025-10-14 19:35:22.251426','2025-10-14 19:35:22.251497','2025-10-14 19:35:22.251535',NULL),(35,'pbkdf2_sha256$1000000$Mh93hQvDZaDZR9nHUlu2uD$M+eVk0X50Ba/ci988YFBjOVmUd0PFW2pZljx86qZLf8=',NULL,0,'EMP001','admin1','admin1@epts.com','Admin','One','Admin',NULL,'2025-10-15',0,1,0,'2025-10-15 04:59:09.757843','2025-10-15 04:59:09.757859','2025-10-15 04:59:11.035176',NULL),(36,'pbkdf2_sha256$1000000$JoEEhWns0yPWaR0zhoX5b3$aZbAX4NeQ6tvoa32vOiAmX+qMV+OcXjrJYubqb7KUPs=',NULL,0,'EMP002','admin2','admin2@epts.com','Admin','Two','Admin',NULL,'2025-10-15',0,1,0,'2025-10-15 04:59:11.206552','2025-10-15 04:59:11.206577','2025-10-15 04:59:12.419983',NULL),(37,'pbkdf2_sha256$1000000$GIYEIq6wFhLpT20rF26In3$kDi3yNaGdgsumDUJ92nWkit2psDgBEu/+HsKiEtpYHY=',NULL,0,'EMP003','mgr1','mgr1@epts.com','Manager','One','Manager',NULL,'2025-10-15',0,1,0,'2025-10-15 04:59:12.593462','2025-10-15 04:59:12.593506','2025-10-15 04:59:13.825390',NULL),(38,'pbkdf2_sha256$1000000$tKM1C6eA3TY1Hdu4PrQark$RAM6sXPk50CAPgI+jBbIl8j5zEky5xrJFZeEYqBv3cw=',NULL,0,'EMP004','mgr2','mgr2@epts.com','Manager','Two','Manager',NULL,'2025-10-15',0,1,0,'2025-10-15 04:59:13.987599','2025-10-15 04:59:13.987608','2025-10-15 04:59:15.605412',NULL),(39,'pbkdf2_sha256$1000000$vvhHwT26LzB6HyVjQFBuBx$InNRtCPRAQqB8OfSkurlEsjMM/1MFKCiYdO9unVejTE=',NULL,0,'EMP005','emp1','emp1@epts.com','Employee','One','Employee',NULL,'2025-10-15',0,1,0,'2025-10-15 04:59:15.806054','2025-10-15 04:59:15.806064','2025-10-15 04:59:17.263682',NULL),(40,'pbkdf2_sha256$1000000$dpj9JGQoMYdAMyOtld5iO0$MWMYBtiHr0cmEwAr8Bvr+3KisPqassj8UMbjgi8kgZ8=',NULL,0,'EMP006','emp2','emp2@epts.com','Employee','Two','Employee',NULL,'2025-10-15',0,1,0,'2025-10-15 04:59:17.426816','2025-10-15 04:59:17.426829','2025-10-15 04:59:18.774159',NULL),(41,'pbkdf2_sha256$1000000$cetM8yJ9otXvEGAN1IUioo$MT9tb9kfkVIPJAvnancac6a9eFfzxpsVVG4mLg0Fvi4=',NULL,0,'EMP007','emp3','emp3@epts.com','Employee','Three','Employee',NULL,'2025-10-15',0,1,0,'2025-10-15 04:59:18.938138','2025-10-15 04:59:18.938188','2025-10-15 04:59:20.325069',NULL),(42,'pbkdf2_sha256$1000000$qVj2ZiD9euXjiDuL97CC6r$KQEOC3wPJX4EUboDkGmpzmG5Mwao2tvLpcQ2VtV31Qo=',NULL,0,'EMP008','emp4','emp4@epts.com','Employee','Four','Employee',NULL,'2025-10-15',0,1,0,'2025-10-15 04:59:20.485189','2025-10-15 04:59:20.485198','2025-10-15 04:59:22.040736',NULL),(43,'pbkdf2_sha256$1000000$vqXfVxeUBu7pyFwcr93N8K$noFMv0U1r0hZ1hxFlGykYveorYL7Ili7dxssZyOCYk8=',NULL,0,'EMP009','emp5','emp5@epts.com','Employee','Five','Employee',NULL,'2025-10-15',0,1,0,'2025-10-15 04:59:22.203140','2025-10-15 04:59:22.203165','2025-10-15 04:59:23.624470',NULL),(44,'pbkdf2_sha256$1000000$a68wKJ7yO9DLc7yS3uwP0F$tX7xU+15f+hgu2tJZGLUXade4hqMpjbYQFLfY2Dqtts=',NULL,0,'EMP010','emp6','emp6@epts.com','Employee','Six','Employee',NULL,'2025-10-15',0,1,0,'2025-10-15 04:59:23.786904','2025-10-15 04:59:23.786924','2025-10-15 04:59:25.140294',NULL);
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-15 11:09:11
