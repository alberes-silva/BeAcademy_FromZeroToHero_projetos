-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: db_zero_to_hero
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `use_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `use_name` varchar(50) NOT NULL,
  `use_address` varchar(200) NOT NULL,
  `use_email` varchar(50) NOT NULL,
  `use_bith_date` date NOT NULL,
  PRIMARY KEY (`use_id`),
  UNIQUE KEY `use_id` (`use_id`),
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`use_id`) REFERENCES `tbl_post` (`pos_id`),
  CONSTRAINT `tbl_user_ibfk_2` FOREIGN KEY (`use_id`) REFERENCES `tbl_comment` (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'Jhonatan Silva','Rua do Bom Jesus','jhonatan@gmail.com','1977-01-23'),(2,'Exalate','Rua da Cadeia Velha','exalate@gmail.com','1978-09-02'),(3,'Eridson Igor','Rua da Concórdia','eridson@gmail.com','1988-03-22'),(4,'Renato Mota','Rua do Crespo','renato@gmail.com','1981-06-12'),(5,'Bruno Meireles','Rua das Flores','bruno@gmail.com','1983-06-19'),(6,'Sulamita Dantas','Rua do Fogo','sulamita@gmail.com','1980-07-05'),(7,'André L R Ferreira','Rua da Hora','andre@gmail.com','1981-06-04');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 22:04:06
