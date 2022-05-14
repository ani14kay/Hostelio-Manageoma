-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: hostelio_manageoma
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `flat`
--

DROP TABLE IF EXISTS `flat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flat` (
  `FLAT_NO` int DEFAULT NULL,
  `BUILD_NAME` varchar(10) DEFAULT NULL,
  `ELECTRIC_CONSUME` int DEFAULT NULL,
  `FINE` int DEFAULT NULL,
  `F_STATUS` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat`
--

LOCK TABLES `flat` WRITE;
/*!40000 ALTER TABLE `flat` DISABLE KEYS */;
INSERT INTO `flat` VALUES (402,'F',NULL,NULL,'1/5 Full'),(203,'A',123,12340,'4/7 FULL');
/*!40000 ALTER TABLE `flat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel` (
  `H_Name` char(10) DEFAULT NULL,
  `No_of_Room` int DEFAULT NULL,
  `No_of_Students` int DEFAULT NULL,
  `F_STATUS` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel`
--

LOCK TABLES `hostel` WRITE;
/*!40000 ALTER TABLE `hostel` DISABLE KEYS */;
INSERT INTO `hostel` VALUES ('Raj Labdhi',102,650,'Not Full');
/*!40000 ALTER TABLE `hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_staff`
--

DROP TABLE IF EXISTS `hostel_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel_staff` (
  `First_name` varchar(25) NOT NULL,
  `Second_name` varchar(25) DEFAULT NULL,
  `Flat_Number` int NOT NULL,
  `Attendence` int DEFAULT NULL,
  `Role` varchar(25) NOT NULL,
  `Contact_Number` bigint DEFAULT NULL,
  `Staff_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_staff`
--

LOCK TABLES `hostel_staff` WRITE;
/*!40000 ALTER TABLE `hostel_staff` DISABLE KEYS */;
INSERT INTO `hostel_staff` VALUES ('Vijay','Singh',101,30,'Manager',9856245686,'AD605'),('Sanjay','Khan',102,29,'Manager',9856226208,'AD705'),('Akshat','Seth',303,30,'F-Block Warden',7392999208,'AD805'),('Abhijit','Patel',103,25,'Manager',9920235686,'AD905'),('Aditya',NULL,102,5,'Ambulance Driver',9856925686,'AD205'),('Jennet',NULL,403,30,'Girls Warden',9856206586,'DD105');
/*!40000 ALTER TABLE `hostel_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `RECORD_NO` int DEFAULT NULL,
  `STUDENT_ID` varchar(15) NOT NULL,
  `FIRST_NAME` varchar(25) NOT NULL,
  `LAST_NAME` varchar(25) DEFAULT NULL,
  `YEAR_OF_STUDY` int DEFAULT NULL,
  `PROGRAM` varchar(50) DEFAULT NULL,
  `FLAT_NO` int DEFAULT NULL,
  `CONTACT_NO` bigint DEFAULT NULL,
  `GUARDIAN_NO` bigint DEFAULT NULL,
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (9,'201851071','Dev','Kumar',4,'CSE',203,8235997171,6752737261),(10,'201952009','Shruti','Gupta',3,'IT',303,8233627381,6780092101),(8,'201952211','Karan','Singh',3,'IT',202,8235262571,6781999101),(5,'202051001','Manan','Shukla',2,'CSE',501,9012123666,8200188201),(2,'202051006','Abhishek','Singh',2,'CSE',704,7899292200,8673299101),(1,'202051027','Anisha','Katiyar',3,'CSE',402,8104199999,9999900000),(17,'202051032','Brijesh','Agal',2,'CSE',702,9994654800,9551158985),(14,'202051055','Ishan','Pandey',2,'CSE',203,8104195569,9213579620),(15,'202051056','Aman','Kothari',2,'CSE',501,9569874983,9945579852),(13,'202051063','Akshat','Khandelwal',2,'CSE',704,9945987090,9578412562),(1,'202051070','Ankur','Shukla',2,'CSE',402,7823992200,8299299101),(18,'202051081','Tirth','Joshi',2,'CSE',601,9991811050,9595959820),(19,'202051082','Ankur','Shukla',2,'CSE',402,7823992200,8299299101),(6,'202051089','Garv','Chauhan',2,'CSE',603,9101012731,7817811101),(16,'202051090','Tejas','Joshi',2,'CSE',604,9959873260,994565239),(4,'202051112','Anisha','Katiyar',2,'CSE',402,7823992200,8299299101),(12,'202051232','Naman','Singh',4,'CSE',204,8233435571,6703929101),(3,'202052303','Jayant','Asudhani',2,'IT',401,39881937811,9910176321),(7,'202151067','Rahul','Shukla',1,'CSE',302,7823765400,8921299101),(11,'202151123','Dhruv','Mishra',3,'CSE',701,8239937820,6389343401);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_in_out`
--

DROP TABLE IF EXISTS `student_in_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_in_out` (
  `Record_No` bigint NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` varchar(15) NOT NULL,
  `STD_DEPARTURE` timestamp NULL DEFAULT NULL,
  `STD_ARRIVAL` timestamp NULL DEFAULT NULL,
  `REASON` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Record_No`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_in_out`
--

LOCK TABLES `student_in_out` WRITE;
/*!40000 ALTER TABLE `student_in_out` DISABLE KEYS */;
INSERT INTO `student_in_out` VALUES (1,'202051027','2022-02-26 18:30:00','2022-03-01 18:30:00',' Going Home '),(2,'202051029','2022-03-01 18:30:00','2022-03-01 18:30:00',' Temple Visit '),(3,'20205020','2022-03-01 18:30:00',NULL,'WLK');
/*!40000 ALTER TABLE `student_in_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transact`
--

DROP TABLE IF EXISTS `transact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transact` (
  `TRANS_ID` int DEFAULT NULL,
  `STUDENT_ID` varchar(15) NOT NULL,
  `HOSTEL_AMT` int DEFAULT NULL,
  `MESS_AMT` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transact`
--

LOCK TABLES `transact` WRITE;
/*!40000 ALTER TABLE `transact` DISABLE KEYS */;
INSERT INTO `transact` VALUES (12345,'202051006',30000,15000),(12346,'202051111',32000,14000),(12347,'202051112',28000,15000),(14416,'202051001',30000,12000),(35622,'202052189',15000,NULL),(25628,'20205111',20000,8000),(18226,'202051091',NULL,12000),(NULL,'202052089',NULL,NULL),(25118,'202052051',20000,8000),(10006,'202051001',10000,6000),(78822,'202052100',32000,NULL),(65662,'202052041',18000,5000),(16616,'202051005',40000,12000);
/*!40000 ALTER TABLE `transact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-28 22:28:50
