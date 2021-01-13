-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quiz_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_quiz_id_foreign` (`quiz_id`),
  KEY `comments_user_id_foreign` (`user_id`),
  CONSTRAINT `comments_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Velit incidunt vel ad modi inventore similique.','Est omnis veniam et quasi rem vel doloremque. Sapiente quibusdam est officiis exercitationem.','2021-01-13 21:28:31','2021-01-13 21:28:31',1,1),(2,'Nihil porro accusamus quos.','Cum tenetur facilis qui dolor aperiam asperiores enim. Ut qui debitis dolores rem id quod explicabo. Et quisquam autem sed.','2021-01-13 21:28:31','2021-01-13 21:28:31',1,2),(3,'Quia ipsa qui aut ipsam enim quia.','Fugit aut voluptate eligendi et. Repudiandae ut atque ducimus eum alias et. Accusamus et at aut quia est. Voluptatem tempora harum quis illum consequatur.','2021-01-13 21:28:31','2021-01-13 21:28:31',1,3),(4,'Fugit ullam voluptatem veritatis facilis autem.','Vitae quisquam aut nostrum quia. Sint quia deleniti ipsam et aut sapiente. Qui et totam veritatis non consequatur autem corporis laudantium. Iusto inventore modi dolorum aut deserunt porro.','2021-01-13 21:28:31','2021-01-13 21:28:31',1,4);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'german',NULL,NULL),(2,'english',NULL,NULL);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_12_15_145710_create_comments_table',1),(5,'2021_01_12_113821_create_quizzes_table',1),(6,'2021_01_12_135444_create_questions_table',1),(7,'2021_01_12_143411_add_quiz_id_and_user_id_to_comments_table',1),(8,'2021_01_12_172347_create_options_table',1),(9,'2021_01_13_134656_create_languages_table',1),(10,'2021_01_13_135157_add_language_id_to_quizzes_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `options_question_id_foreign` (`question_id`),
  CONSTRAINT `options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/0099aa?text=cats+aut',1,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(2,'https://via.placeholder.com/640x480.png/005566?text=cats+molestiae',1,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(3,'https://via.placeholder.com/640x480.png/0011ee?text=cats+qui',1,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(4,'https://via.placeholder.com/640x480.png/0033bb?text=cats+aliquid',1,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(5,'https://via.placeholder.com/640x480.png/004466?text=cats+voluptatibus',2,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(6,'https://via.placeholder.com/640x480.png/00ee88?text=cats+dolorum',2,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(7,'https://via.placeholder.com/640x480.png/0088bb?text=cats+dolores',2,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(8,'https://via.placeholder.com/640x480.png/00ee44?text=cats+veritatis',2,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(9,'https://via.placeholder.com/640x480.png/00ddbb?text=cats+maiores',3,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(10,'https://via.placeholder.com/640x480.png/0066ee?text=cats+molestiae',3,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(11,'https://via.placeholder.com/640x480.png/0044ee?text=cats+fugiat',3,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(12,'https://via.placeholder.com/640x480.png/00ddff?text=cats+quia',3,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(13,'https://via.placeholder.com/640x480.png/0055ff?text=cats+sed',4,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(14,'https://via.placeholder.com/640x480.png/0044cc?text=cats+sit',4,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(15,'https://via.placeholder.com/640x480.png/0088dd?text=cats+iure',4,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(16,'https://via.placeholder.com/640x480.png/0099ee?text=cats+rerum',4,'2021-01-13 21:28:30','2021-01-13 21:28:30'),(17,'https://via.placeholder.com/640x480.png/00ff00?text=cats+minus',5,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(18,'https://via.placeholder.com/640x480.png/0033ee?text=cats+delectus',5,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(19,'https://via.placeholder.com/640x480.png/00dd77?text=cats+ratione',5,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(20,'https://via.placeholder.com/640x480.png/00aaee?text=cats+reprehenderit',5,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(21,'https://via.placeholder.com/640x480.png/00ddbb?text=cats+modi',6,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(22,'https://via.placeholder.com/640x480.png/0022dd?text=cats+perspiciatis',6,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(23,'https://via.placeholder.com/640x480.png/00ccee?text=cats+et',6,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(24,'https://via.placeholder.com/640x480.png/009999?text=cats+aut',6,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(25,'https://via.placeholder.com/640x480.png/0099ee?text=cats+vel',7,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(26,'https://via.placeholder.com/640x480.png/00ee88?text=cats+dolorem',7,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(27,'https://via.placeholder.com/640x480.png/0066dd?text=cats+ratione',7,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(28,'https://via.placeholder.com/640x480.png/001133?text=cats+omnis',7,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(29,'https://via.placeholder.com/640x480.png/009944?text=cats+ut',8,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(30,'https://via.placeholder.com/640x480.png/003311?text=cats+suscipit',8,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(31,'https://via.placeholder.com/640x480.png/008877?text=cats+qui',8,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(32,'https://via.placeholder.com/640x480.png/0088aa?text=cats+perferendis',8,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(33,'https://via.placeholder.com/640x480.png/0055ff?text=cats+esse',9,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(34,'https://via.placeholder.com/640x480.png/0022bb?text=cats+mollitia',9,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(35,'https://via.placeholder.com/640x480.png/008899?text=cats+et',9,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(36,'https://via.placeholder.com/640x480.png/008866?text=cats+perspiciatis',9,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(37,'https://via.placeholder.com/640x480.png/0099aa?text=cats+tempore',10,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(38,'https://via.placeholder.com/640x480.png/002211?text=cats+molestiae',10,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(39,'https://via.placeholder.com/640x480.png/003355?text=cats+ullam',10,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(40,'https://via.placeholder.com/640x480.png/004400?text=cats+a',10,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(41,'https://via.placeholder.com/640x480.png/007700?text=cats+sit',11,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(42,'https://via.placeholder.com/640x480.png/0022bb?text=cats+dolor',11,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(43,'https://via.placeholder.com/640x480.png/00aa22?text=cats+rerum',11,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(44,'https://via.placeholder.com/640x480.png/00aadd?text=cats+sint',11,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(45,'https://via.placeholder.com/640x480.png/002244?text=cats+soluta',12,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(46,'https://via.placeholder.com/640x480.png/00ee33?text=cats+quia',12,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(47,'https://via.placeholder.com/640x480.png/0044dd?text=cats+odit',12,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(48,'https://via.placeholder.com/640x480.png/000000?text=cats+dolore',12,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(49,'https://via.placeholder.com/640x480.png/00cc33?text=cats+maxime',13,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(50,'https://via.placeholder.com/640x480.png/004422?text=cats+eligendi',13,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(51,'https://via.placeholder.com/640x480.png/00ee22?text=cats+laboriosam',13,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(52,'https://via.placeholder.com/640x480.png/00cc00?text=cats+quaerat',13,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(53,'https://via.placeholder.com/640x480.png/001155?text=cats+laboriosam',14,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(54,'https://via.placeholder.com/640x480.png/009944?text=cats+quia',14,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(55,'https://via.placeholder.com/640x480.png/0066aa?text=cats+expedita',14,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(56,'https://via.placeholder.com/640x480.png/006622?text=cats+aut',14,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(57,'https://via.placeholder.com/640x480.png/008899?text=cats+debitis',15,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(58,'https://via.placeholder.com/640x480.png/00dd00?text=cats+molestiae',15,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(59,'https://via.placeholder.com/640x480.png/00aa33?text=cats+similique',15,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(60,'https://via.placeholder.com/640x480.png/003300?text=cats+modi',15,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(61,'https://via.placeholder.com/640x480.png/0066aa?text=cats+nesciunt',16,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(62,'https://via.placeholder.com/640x480.png/00ffcc?text=cats+sit',16,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(63,'https://via.placeholder.com/640x480.png/00ee66?text=cats+consequatur',16,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(64,'https://via.placeholder.com/640x480.png/006644?text=cats+rerum',16,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(65,'https://via.placeholder.com/640x480.png/007788?text=cats+incidunt',17,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(66,'https://via.placeholder.com/640x480.png/00bb00?text=cats+sequi',17,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(67,'https://via.placeholder.com/640x480.png/006644?text=cats+ab',17,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(68,'https://via.placeholder.com/640x480.png/00ffbb?text=cats+quae',17,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(69,'https://via.placeholder.com/640x480.png/008822?text=cats+ipsum',18,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(70,'https://via.placeholder.com/640x480.png/00ee11?text=cats+laboriosam',18,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(71,'https://via.placeholder.com/640x480.png/009955?text=cats+ad',18,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(72,'https://via.placeholder.com/640x480.png/007700?text=cats+eos',18,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(73,'https://via.placeholder.com/640x480.png/0033ee?text=cats+similique',19,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(74,'https://via.placeholder.com/640x480.png/006699?text=cats+dolores',19,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(75,'https://via.placeholder.com/640x480.png/000077?text=cats+consequatur',19,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(76,'https://via.placeholder.com/640x480.png/00aa44?text=cats+esse',19,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(77,'https://via.placeholder.com/640x480.png/00bb33?text=cats+dolorem',20,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(78,'https://via.placeholder.com/640x480.png/0099dd?text=cats+ipsam',20,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(79,'https://via.placeholder.com/640x480.png/00eecc?text=cats+ut',20,'2021-01-13 21:28:31','2021-01-13 21:28:31'),(80,'https://via.placeholder.com/640x480.png/001100?text=cats+quam',20,'2021-01-13 21:28:31','2021-01-13 21:28:31');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_polish` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` bigint unsigned NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_quiz_id_foreign` (`quiz_id`),
  CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'nostrum','praesentium',1,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(2,'maiores','quo',1,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(3,'ea','voluptatem',1,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(4,'quia','ratione',1,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(5,'et','illum',1,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(6,'aliquid','ipsa',2,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(7,'eaque','ea',2,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(8,'aut','aut',2,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(9,'culpa','doloremque',2,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(10,'reiciendis','nisi',2,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(11,'enim','corporis',3,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(12,'aut','saepe',3,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(13,'sed','consectetur',3,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(14,'soluta','non',3,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(15,'sed','commodi',3,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(16,'ut','nam',4,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(17,'quisquam','deleniti',4,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(18,'quam','occaecati',4,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(19,'sint','aut',4,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30'),(20,'sed','maiores',4,1,'words','2021-01-13 21:28:30','2021-01-13 21:28:30');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizzes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quizzes_user_id_foreign` (`user_id`),
  KEY `quizzes_language_id_foreign` (`language_id`),
  CONSTRAINT `quizzes_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `quizzes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (1,1,'2021-01-13 21:28:30','2021-01-13 21:28:30',1),(2,1,'2021-01-13 21:28:30','2021-01-13 21:28:30',1),(3,1,'2021-01-13 21:28:30','2021-01-13 21:28:30',2),(4,1,'2021-01-13 21:28:30','2021-01-13 21:28:30',2);
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$3qoMafPZygPtXsUg5FyXYeBaWca35IS44qei0vnLMDW5EqnhtYP7y',NULL,NULL,NULL),(2,'Lukas Mayer','kylee90@example.com','2021-01-13 21:28:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JldscR4ebc','2021-01-13 21:28:30','2021-01-13 21:28:30'),(3,'Ardith Johnson','corkery.ernesto@example.net','2021-01-13 21:28:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7mOmr271aR','2021-01-13 21:28:30','2021-01-13 21:28:30'),(4,'Prof. Ernie Littel II','buddy.beahan@example.net','2021-01-13 21:28:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','eI01IhTzjV','2021-01-13 21:28:30','2021-01-13 21:28:30'),(5,'Carmelo Dooley','agoodwin@example.org','2021-01-13 21:28:30','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','MTPVyrAHyS','2021-01-13 21:28:30','2021-01-13 21:28:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-13 21:28:39
