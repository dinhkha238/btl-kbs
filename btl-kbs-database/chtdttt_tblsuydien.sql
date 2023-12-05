-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: chtdttt
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblsuydien`
--

DROP TABLE IF EXISTS `tblsuydien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblsuydien` (
  `tt` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(10) NOT NULL,
  `idThacMac` varchar(10) NOT NULL,
  `idChiTietLuat` varchar(10) NOT NULL,
  PRIMARY KEY (`tt`),
  KEY `fk_ChiTietLuat_idx` (`idChiTietLuat`),
  KEY `fk_ThacMac_idx` (`idThacMac`),
  CONSTRAINT `fk_ChiTietLuat` FOREIGN KEY (`idChiTietLuat`) REFERENCES `tblchitietluat` (`id`),
  CONSTRAINT `fk_ThacMac` FOREIGN KEY (`idThacMac`) REFERENCES `tblthacmac` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsuydien`
--

LOCK TABLES `tblsuydien` WRITE;
/*!40000 ALTER TABLE `tblsuydien` DISABLE KEYS */;
INSERT INTO `tblsuydien` VALUES (1,'C01','Q03','R01'),(2,'C02','Q04','R02'),(3,'C03','Q05','R03'),(4,'C03','Q05','R04'),(5,'C04','Q06','R11'),(6,'C05','Q08','R05'),(7,'C06','Q09','R06'),(8,'C07','Q10','R07'),(9,'C08','Q11','R08'),(10,'C08','Q11','R09'),(11,'C08','Q11','R10'),(12,'C09','Q13','R13'),(13,'C10','Q14','R14'),(14,'C11','Q15','R12'),(15,'C12','Q16','R15'),(16,'C13','Q18','R16'),(17,'C13','Q18','R17'),(18,'C13','Q18','R18'),(19,'C13','Q18','R19'),(20,'C14','Q20','R20'),(21,'C15','Q21','R19'),(22,'C15','Q21','R23'),(23,'C16','Q23','R22'),(24,'C17','Q24','R25'),(25,'C18','Q25','R31'),(26,'C18','Q25','R32'),(27,'C19','Q27','R21'),(28,'C20','Q28','R24'),(29,'C21','Q29','R34'),(30,'C22','Q30','R35'),(31,'C23','Q31','R36'),(32,'C24','Q32','R37'),(33,'C25','Q33','R38'),(34,'C26','Q35','R26'),(35,'C27','Q36','R27'),(36,'C27','Q36','R16'),(37,'C27','Q36','R17'),(38,'C27','Q36','R18'),(39,'C27','Q36','R19'),(40,'C27','Q36','R28'),(41,'C28','Q37','R29'),(42,'C28','Q37','R30'),(43,'C29','Q38','R33'),(44,'C30','Q39','R39'),(45,'C30','Q39','R40'),(46,'C31','Q40','R45'),(47,'C32','Q41','R41'),(48,'C33','Q42','R42'),(49,'C34','Q43','R43'),(50,'C35','Q44','R44');
/*!40000 ALTER TABLE `tblsuydien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 16:00:36
