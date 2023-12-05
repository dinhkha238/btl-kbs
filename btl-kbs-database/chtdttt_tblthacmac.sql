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
-- Table structure for table `tblthacmac`
--

DROP TABLE IF EXISTS `tblthacmac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblthacmac` (
  `id` varchar(10) NOT NULL,
  `moTa` varchar(255) NOT NULL,
  `thacMacCha` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ThacMacCha_idx` (`thacMacCha`),
  CONSTRAINT `fk_ThacMacCha` FOREIGN KEY (`thacMacCha`) REFERENCES `tblthacmac` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblthacmac`
--

LOCK TABLES `tblthacmac` WRITE;
/*!40000 ALTER TABLE `tblthacmac` DISABLE KEYS */;
INSERT INTO `tblthacmac` VALUES ('Q01','Thắc mắc về sân đấu, phụ kiện và trang thiết bị trên sân',NULL),('Q02','Thắc mắc về kích thước sân đấu','Q01'),('Q03','Thắc mắc về kích thước sân đấu đơn','Q02'),('Q04','Thắc mắc về kích thước sân đấu đôi','Q02'),('Q05','Thắc mắc về các phụ kiện trên sân','Q01'),('Q06','Thắc mắc như thế nào mới là trang thiết bị hợp lệ','Q01'),('Q07','Thắc mắc về qui định với quả cầu',NULL),('Q08','Thắc mắc về cầu lông vũ','Q07'),('Q09','Thắc mắc về cầu không có lông vũ','Q07'),('Q10','Thắc mắc về cách thử một quả cầu','Q07'),('Q11','Thắc mắc về quy định với vợt',NULL),('Q12','Thắc mắc về hệ thống thi đấu',NULL),('Q13','Thắc mắc về số ván đấu trong một trận','Q12'),('Q14','Thắc mắc về cách tính điểm','Q12'),('Q15','Thắc mắc về tung đồng xu','Q12'),('Q16','Thắc mắc khi nào thì được đổi sân','Q12'),('Q17','Thắc mắc về giao cầu','Q12'),('Q18','Thắc mắc thế nào mới là pha giao cầu đúng','Q17'),('Q19','Thắc mắc về ô đứng khi giao cầu và nhận cầu','Q17'),('Q20','Thắc mắc về ô đứng khi giao cầu và nhận cầu khi đánh đơn','Q19'),('Q21','Thắc mắc về ô đứng khi giao cầu và nhận cầu khi đánh đôi','Q19'),('Q22','Thắc mắc về người giao cầu khi kết thúc một pha cầu','Q17'),('Q23','Thắc mắc về người giao cầu khi kết thúc một pha cầu trong đánh đơn','Q22'),('Q24','Thắc mắc về người giao cầu khi kết thúc một pha cầu trong đánh đôi','Q22'),('Q25','Thắc mắc về quy định giao cầu lại','Q17'),('Q26','Thắc mắc về thứ tự đánh cầu và vị trí trên sân','Q17'),('Q27','Thắc mắc về thứ tự đánh cầu và vị trí trên sân khi đánh đơn','Q26'),('Q28','Thắc mắc về thứ tự đánh cầu và vị trí trên sân khi đánh đôi','Q26'),('Q29','Thắc mắc về điều kiện dừng trận đấu','Q12'),('Q30','Thắc mắc về quãng nghỉ','Q29'),('Q31','Thắc mắc về ngừng thi đấu','Q29'),('Q32','Thắc mắc về trì hoãn thi đấu','Q29'),('Q33','Thắc mắc về chỉ đạo và rời sân','Q29'),('Q34','Thắc mắc về lỗi trong thi đấu',NULL),('Q35','Thắc mắc về lỗi ô giao cầu','Q34'),('Q36','Thắc mắc về lỗi khi giao cầu hoặc nhận cầu','Q34'),('Q37','Thắc mắc về lỗi khi cầu trong cuộc','Q34'),('Q38','Như thế nào là cầu ngoài cuộc',NULL),('Q39','Thắc mắc về những vi phạm vận động viên phải tránh và xử phạt',NULL),('Q40','Thắc mắc về các nhân viên',NULL),('Q41','Thắc mắc về vai trò của tổng trọng tài','Q40'),('Q42','Thắc mắc về vài trò của trọng tài chính','Q40'),('Q43','Thắc mắc về vài trò của trọng tài biên','Q40'),('Q44','Thắc mắc về vài trò của trọng tài giao cầu','Q40');
/*!40000 ALTER TABLE `tblthacmac` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 16:00:37
