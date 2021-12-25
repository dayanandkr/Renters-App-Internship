-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: roomrenterdb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_login` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES ('admin','admin');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `renter_id` int NOT NULL,
  `month` varchar(45) NOT NULL,
  `amount` int NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (3,7,'May-2021',4000,'2021-09-29'),(4,1,'February-2021',7651,'2021-09-29'),(5,7,'July-2021',56776,'2021-09-29'),(6,3,'March-2021',5500,'2021-09-30'),(7,3,'January-2021',5400,'2021-10-01'),(8,1,'March-2021',5000,'2021-05-02');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renters`
--

DROP TABLE IF EXISTS `renters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `renters` (
  `renter_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `aadhaar` varchar(15) NOT NULL,
  `address` varchar(300) DEFAULT NULL,
  `room_no` varchar(45) NOT NULL,
  `rent` int NOT NULL,
  `security` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`renter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renters`
--

LOCK TABLES `renters` WRITE;
/*!40000 ALTER TABLE `renters` DISABLE KEYS */;
INSERT INTO `renters` VALUES (1,'Dayanand Kumar','9931378403','Ram Pravesh Sah','Male','53788989879','Rajopatti','A101',5500,5000,'2021-09-02',NULL,'Active'),(2,'Daya','9993311455','Ram Pravesh sah','Male','686786789','fhgfhdhhd','A101',3456,2344,'2021-09-09',NULL,'Active'),(3,'Ram Kumar','445566','Ramesh kumar','Male','45566578','Rajopatti','A103',5500,5000,'2021-09-02',NULL,'Active'),(4,'Daya','46556','dfff','Male','5455454','fasfsd','A102',4554,3333,'2021-09-21',NULL,'Active'),(5,'fffrerf','444','fefddff','Male','433','fdfdd','A102',333,232232,'2021-09-21','2021-10-02','deactive'),(6,'fdsfs','4543','fgs','Male','56464','fdsgsr','A103',4545,33444,'2021-09-21',NULL,'Active'),(7,'Raju','975743564635','Ramesh','Male','67567478768','tugalpur','C102',4200,4000,'2021-09-22',NULL,'Active'),(8,'Mohan Kumar','7589970709','Raju Sharma','Male','4586909008','Greater Noida','B101',5300,5000,'2021-10-04',NULL,'Active');
/*!40000 ALTER TABLE `renters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_no` varchar(20) NOT NULL,
  `price` int NOT NULL,
  `ac` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `floor` int NOT NULL,
  `vacant_bed` int NOT NULL,
  PRIMARY KEY (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('A101',5000,'Non-AC','Four Seater',0,4),('A102',600,'Non-AC','Two Seater',0,2),('A103',6000,'Non-AC','Two Seater',0,1),('A104',5000,'Non-AC','Four Seater',0,4),('B101',5500,'Non-AC','Three Seater',1,2),('B102',5000,'Non-AC','Four Seater',1,4),('B103',7000,'AC','Two Seater',1,2),('C101',6000,'AC','Two Seater',2,2),('C102',4500,'Non-AC','Four Seater',2,3),('C105',6000,'Non-AC','Three Seater',2,3);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04 23:13:33
