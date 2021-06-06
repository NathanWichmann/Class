-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: slimdb
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `body` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `userid` (`userid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'I have not been a fan of electric bikes because they have been these huge aparatuses, that just seemed to big to enjoy and lug around. The new ones look just like a bike.',1,1,'2021-06-03 22:57:05','2021-06-03 22:57:05',NULL),(2,'I Really did not Read this Article',2,2,'2021-06-03 22:57:05','2021-06-03 22:57:05',NULL),(3,'Amazon has been a bully in the industy since day one and should be held accountable',3,3,'2021-06-03 22:57:05','2021-06-03 22:57:05',NULL),(4,'I was under the impression all electronics were recylable, cant you take them to a depot to be recyled once finished?',4,4,'2021-06-03 22:57:05','2021-06-03 22:57:05',NULL),(5,'an assistive feature in the company’s PowerApps software that turns natural language into readymade code. What?',5,5,'2021-06-03 22:57:05','2021-06-03 22:57:05',NULL),(6,'hello comments',4,4,'2021-06-04 21:06:09','2021-06-04 21:06:09',NULL),(7,'bye comment',4,4,'2021-06-04 21:06:42','2021-06-04 21:06:42',NULL),(8,'test come',4,4,'2021-06-04 21:07:06','2021-06-04 21:07:06',NULL),(9,'hello',4,4,'2021-06-04 21:13:10','2021-06-04 21:13:10',NULL),(10,'yoooo',4,4,'2021-06-04 21:16:16','2021-06-04 21:16:16',NULL),(11,'dogs',4,4,'2021-06-04 21:17:19','2021-06-04 21:17:19',NULL),(12,'new comment',4,1,'2021-06-04 21:19:02','2021-06-04 21:19:02',NULL),(13,'this is the comment\n',4,6,'2021-06-04 21:24:13','2021-06-04 21:24:13',NULL),(14,'hellooooooo',3,4,'2021-06-04 21:26:37','2021-06-04 21:26:37',NULL);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'13 Best Electric Bikes for Every Kind of Ride---','FOR YEARS, ELECTRIC bikes have been slightly gimmicky—bulky, inconvenient, expensive machines whose usefulness (and battery life) was limited. But that has changed over the past few years.','2021-06-03 22:57:05',1,'2021-06-03 22:57:05','2021-06-03 22:57:05'),(2,'The 60 Year Old Scientific Screwup that Helped Covid Kill---','EARLY ONE MORNING, Linsey Marr tiptoed to her dining room table, slipped on a headset, and fired up Zoom. On her computer screen, dozens of familiar faces began to appear. She also saw a few people she didn’t know, including.','2021-06-03 22:57:05',2,'2021-06-03 22:57:05','2021-06-03 22:57:05'),(3,'DC attorney general launches antitrust suit against Amazon---','On Tuesday, DC Attorney General Karl Racine sued Amazon on antitrust grounds, accusing the e-commerce giant of suppressing competition by placing strict conditions on what third-party sellers can do outside of the company’s platform.','2021-06-03 22:57:05',3,'2021-06-03 22:57:05','2021-06-03 22:57:05'),(4,'Sonos updates the One SL to make it more power efficient and recyclable---','Sonos is refreshing its One SL speaker, which doesn’t have always-on microphones or integrated voice controls, to make it more power efficient and recyclable, the company confirmed to The Verge.','2021-06-03 22:57:05',4,'2021-06-03 22:57:05','2021-06-03 22:57:05'),(5,'Microsoft has built an AI-powered autocomplete for code using GPT-3---','In September 2020, Microsoft purchased an exclusive license to the underlying technology behind GPT-3, an AI language tool built by OpenAI. Now, the Redmond, Washington-based tech giant has announced its first commercial use case for the program:.','2021-06-03 22:57:05',5,'2021-06-03 22:57:05','2021-06-03 22:57:05'),(6,'this is the title','this is the body','2021-06-03 22:58:46',3,'2021-06-03 22:58:46','2021-06-03 22:58:46'),(7,'hello','why','2021-06-03 23:17:48',3,'2021-06-03 23:17:48','2021-06-03 23:17:48'),(8,'rrrrrrrrrrr','rrrrrrrrrrrrrr','2021-06-03 23:18:38',3,'2021-06-03 23:18:38','2021-06-03 23:18:38'),(9,'hello','hi there','2021-06-04 20:33:39',3,'2021-06-04 20:33:39','2021-06-04 20:33:39');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('-VKNKQiaL7s0qFFPBMXXsRD38LPhi0PL','2021-06-05 21:26:37','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user_id\":3,\"logged_in\":true}','2021-06-03 22:58:05','2021-06-04 21:26:37');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Lernantino','lernantino@gmail.com','$2b$10$MR.kNPTwHigUAVWxHbulUuwcOt.IQVKEuvnUzLLPVPRb4168AYp6m'),(2,'Amiko','amiko2k20@aol.com','$2b$10$4a7ORnV1VupYHaFkx1aZ1u48AGwse27hMnWGUnYcTzbKQOTjiUjvO'),(3,'Sal','sal@hotmail.com','$2b$10$NY8iODVxMEuSBqK7kvXL/OPMR6Ccj/9guJCBqMhGjuzPF0mbRECIu'),(4,'Jordan','jordan99@msn.com','$2b$10$LjnGNW/rhV080PtisZ1y/.xODl5S6vfApRIYEMTygCeovhPFXSxui'),(5,'Blake','the_blake@yahoo.com','$2b$10$c4iinOPrFBL5lVIfZDjBeOeD4KO39/lznLPvyLdWyH4g3oG/U/Grm');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-06 14:14:13
