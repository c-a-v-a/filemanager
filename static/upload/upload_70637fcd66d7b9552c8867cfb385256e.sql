-- MariaDB dump 10.19  Distrib 10.5.11-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: elpolab
-- ------------------------------------------------------
-- Server version	10.5.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_userdata`
--

DROP TABLE IF EXISTS `api_userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_userdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `initials` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `changed_date_time` datetime(6) NOT NULL,
  `create_date_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calendar_index` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_userdata_user_id_afd981ee_fk_auth_user_id` (`user_id`),
  CONSTRAINT `api_userdata_user_id_afd981ee_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_userdata`
--

LOCK TABLES `api_userdata` WRITE;
/*!40000 ALTER TABLE `api_userdata` DISABLE KEYS */;
INSERT INTO `api_userdata` VALUES (1,'PP','-','1',1,'2020-01-01 00:00:00.000000','2020-01-01 00:00:00.000000',1,'606',0),(2,'','laborant','1',0,'2021-06-24 12:25:53.537976','2021-06-24 12:25:53.537995',2,'123-123-123',1),(3,'','laborant','1',1,'2021-06-24 12:25:53.643883','2021-06-24 12:25:53.643927',3,'123-123-123',2),(4,'','laborant','1',2,'2021-06-24 12:25:53.752698','2021-06-24 12:25:53.752770',4,'123-123-123',3),(5,'','laborant','1',0,'2021-06-24 12:25:53.854765','2021-06-24 12:25:53.854816',5,'123-123-123',4),(6,'','laborant','1',1,'2021-06-24 12:25:53.956904','2021-06-24 12:25:53.956955',6,'123-123-123',5),(7,'','laborant','1',2,'2021-06-24 12:25:54.056260','2021-06-24 12:25:54.056311',7,'123-123-123',6),(8,'','laborant','1',0,'2021-06-24 12:25:54.162678','2021-06-24 12:25:54.162729',8,'123-123-123',7),(9,'','laborant','1',1,'2021-06-24 12:25:54.331308','2021-06-24 12:25:54.331360',9,'123-123-123',8),(10,'','laborant','1',2,'2021-06-24 12:25:54.428605','2021-06-24 12:25:54.428657',10,'123-123-123',9),(11,'','laborant','1',0,'2021-06-24 12:25:54.523181','2021-06-24 12:25:54.523235',11,'123-123-123',10),(12,'','laborant','1',1,'2021-06-24 12:25:54.621953','2021-06-24 12:25:54.621968',12,'123-123-123',11),(13,'','laborant','1',2,'2021-06-24 12:25:54.717765','2021-06-24 12:25:54.717816',13,'123-123-123',12),(14,'','laborant','1',0,'2021-06-24 12:25:54.817445','2021-06-24 12:25:54.817497',14,'123-123-123',13),(15,'','laborant','1',1,'2021-06-24 12:25:54.953145','2021-06-24 12:25:54.953195',15,'123-123-123',14),(16,'','laborant','1',2,'2021-06-24 12:25:55.054878','2021-06-24 12:25:55.054945',16,'123-123-123',15),(17,'','laborant','1',0,'2021-06-24 12:25:55.151668','2021-06-24 12:25:55.151719',17,'123-123-123',16),(18,'','laborant','1',1,'2021-06-24 12:25:55.246439','2021-06-24 12:25:55.246489',18,'123-123-123',17),(19,'','laborant','1',2,'2021-06-24 12:25:55.365643','2021-06-24 12:25:55.365692',19,'123-123-123',18),(20,'','laborant','1',0,'2021-06-24 12:25:55.471753','2021-06-24 12:25:55.471804',20,'123-123-123',19),(21,'','laborant','1',1,'2021-06-24 12:25:55.576104','2021-06-24 12:25:55.576154',21,'123-123-123',20);
/*!40000 ALTER TABLE `api_userdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-06 17:08:19
