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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Vero blanditiis sunt perspiciatis iusto non distinctio.','Dolores eius amet quis deserunt eos. Ut velit modi cum repellat aut. Reiciendis excepturi incidunt voluptas voluptatum non. Quia enim repellat ea.','2021-01-23 21:48:49','2021-01-23 21:48:49',1,1),(2,'Illo occaecati consectetur voluptatem debitis ex dolorum.','Et et minus voluptatem. Vel itaque asperiores et sint et. Voluptatem omnis sit rem quis ab aliquam nemo. Tenetur distinctio ullam temporibus aut.','2021-01-23 21:48:49','2021-01-23 21:48:49',1,2),(3,'Sit aut et accusamus ducimus praesentium voluptatem saepe.','Dolorem labore similique aut illum incidunt maxime. Et beatae tempore ut. Saepe aut rerum dolorem id optio.','2021-01-23 21:48:50','2021-01-23 21:48:50',1,3),(4,'Sapiente eos quo sunt aspernatur officia animi eum expedita.','Nisi quae ad doloremque harum odio molestias beatae ipsum. Ex magni accusamus nisi ad non nulla. Consectetur a inventore repellat hic.','2021-01-23 21:48:50','2021-01-23 21:48:50',1,4),(5,'Kuba','madry gosc','2021-01-23 21:48:50','2021-01-23 21:48:50',2,1);
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_language_unique` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'german',NULL,NULL),(2,'spanish',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_12_15_145710_create_comments_table',1),(5,'2021_01_12_113821_create_quizzes_table',1),(6,'2021_01_12_135444_create_questions_table',1),(7,'2021_01_12_143411_add_quiz_id_and_user_id_to_comments_table',1),(8,'2021_01_12_172347_create_options_table',1),(9,'2021_01_13_134656_create_languages_table',1),(10,'2021_01_13_135157_add_language_id_to_quizzes_table',1),(11,'2021_01_15_203911_set_language_unique_on_language_table',1),(12,'2021_01_22_142810_create_solutions_table',1),(13,'2021_01_22_161644_add_quiz_field_to_solutions_table',1),(14,'2021_01_22_223425_create_results_table',1),(15,'2021_01_23_165104_create_subcomments_table',1);
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
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/00cccc?text=cats+non',1,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(2,'https://via.placeholder.com/640x480.png/003399?text=cats+voluptates',1,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(3,'https://via.placeholder.com/640x480.png/0044dd?text=cats+tempore',1,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(4,'https://via.placeholder.com/640x480.png/00aa22?text=cats+delectus',1,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(5,'https://via.placeholder.com/640x480.png/00eecc?text=cats+voluptate',2,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(6,'https://via.placeholder.com/640x480.png/009966?text=cats+eos',2,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(7,'https://via.placeholder.com/640x480.png/0055aa?text=cats+non',2,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(8,'https://via.placeholder.com/640x480.png/0022ff?text=cats+voluptatem',2,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(9,'https://via.placeholder.com/640x480.png/00ffff?text=cats+in',3,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(10,'https://via.placeholder.com/640x480.png/00ff11?text=cats+alias',3,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(11,'https://via.placeholder.com/640x480.png/00bb00?text=cats+est',3,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(12,'https://via.placeholder.com/640x480.png/00ff77?text=cats+temporibus',3,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(13,'https://via.placeholder.com/640x480.png/002244?text=cats+omnis',4,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(14,'https://via.placeholder.com/640x480.png/00aa99?text=cats+qui',4,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(15,'https://via.placeholder.com/640x480.png/00ffbb?text=cats+vel',4,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(16,'https://via.placeholder.com/640x480.png/00ee88?text=cats+qui',4,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(17,'https://via.placeholder.com/640x480.png/001111?text=cats+perspiciatis',5,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(18,'https://via.placeholder.com/640x480.png/007700?text=cats+vel',5,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(19,'https://via.placeholder.com/640x480.png/000044?text=cats+earum',5,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(20,'https://via.placeholder.com/640x480.png/0011aa?text=cats+accusamus',5,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(21,'https://via.placeholder.com/640x480.png/005555?text=cats+est',6,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(22,'https://via.placeholder.com/640x480.png/00bb00?text=cats+nesciunt',6,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(23,'https://via.placeholder.com/640x480.png/003322?text=cats+veniam',6,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(24,'https://via.placeholder.com/640x480.png/0033cc?text=cats+iure',6,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(25,'https://via.placeholder.com/640x480.png/003344?text=cats+architecto',7,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(26,'https://via.placeholder.com/640x480.png/0022ee?text=cats+necessitatibus',7,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(27,'https://via.placeholder.com/640x480.png/00ff99?text=cats+minus',7,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(28,'https://via.placeholder.com/640x480.png/00ccff?text=cats+possimus',7,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(29,'https://via.placeholder.com/640x480.png/007733?text=cats+provident',8,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(30,'https://via.placeholder.com/640x480.png/00aa55?text=cats+laboriosam',8,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(31,'https://via.placeholder.com/640x480.png/00bb44?text=cats+qui',8,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(32,'https://via.placeholder.com/640x480.png/0077bb?text=cats+itaque',8,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(33,'https://via.placeholder.com/640x480.png/0099cc?text=cats+est',9,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(34,'https://via.placeholder.com/640x480.png/007788?text=cats+ex',9,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(35,'https://via.placeholder.com/640x480.png/000099?text=cats+distinctio',9,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(36,'https://via.placeholder.com/640x480.png/00dd77?text=cats+optio',9,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(37,'https://via.placeholder.com/640x480.png/0066aa?text=cats+voluptas',10,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(38,'https://via.placeholder.com/640x480.png/0088bb?text=cats+et',10,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(39,'https://via.placeholder.com/640x480.png/0055aa?text=cats+autem',10,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(40,'https://via.placeholder.com/640x480.png/00aabb?text=cats+inventore',10,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(41,'https://via.placeholder.com/640x480.png/009900?text=cats+nesciunt',11,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(42,'https://via.placeholder.com/640x480.png/00cccc?text=cats+ipsa',11,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(43,'https://via.placeholder.com/640x480.png/007788?text=cats+nemo',11,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(44,'https://via.placeholder.com/640x480.png/00cc00?text=cats+et',11,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(45,'https://via.placeholder.com/640x480.png/00ee99?text=cats+soluta',12,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(46,'https://via.placeholder.com/640x480.png/0088ee?text=cats+sed',12,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(47,'https://via.placeholder.com/640x480.png/00ee99?text=cats+ut',12,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(48,'https://via.placeholder.com/640x480.png/00aadd?text=cats+officiis',12,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(49,'https://via.placeholder.com/640x480.png/00bb00?text=cats+soluta',13,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(50,'https://via.placeholder.com/640x480.png/00ee22?text=cats+consequatur',13,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(51,'https://via.placeholder.com/640x480.png/006622?text=cats+sint',13,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(52,'https://via.placeholder.com/640x480.png/0099cc?text=cats+corrupti',13,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(53,'https://via.placeholder.com/640x480.png/0088bb?text=cats+aliquid',14,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(54,'https://via.placeholder.com/640x480.png/00ff55?text=cats+fuga',14,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(55,'https://via.placeholder.com/640x480.png/0000cc?text=cats+et',14,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(56,'https://via.placeholder.com/640x480.png/003322?text=cats+rem',14,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(57,'https://via.placeholder.com/640x480.png/00ccdd?text=cats+est',15,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(58,'https://via.placeholder.com/640x480.png/00dd55?text=cats+rerum',15,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(59,'https://via.placeholder.com/640x480.png/007711?text=cats+suscipit',15,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(60,'https://via.placeholder.com/640x480.png/00ee11?text=cats+impedit',15,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(61,'https://via.placeholder.com/640x480.png/0066cc?text=cats+earum',16,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(62,'https://via.placeholder.com/640x480.png/009999?text=cats+voluptatum',16,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(63,'https://via.placeholder.com/640x480.png/00bb77?text=cats+voluptas',16,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(64,'https://via.placeholder.com/640x480.png/006633?text=cats+facilis',16,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(65,'https://via.placeholder.com/640x480.png/0099ee?text=cats+sit',17,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(66,'https://via.placeholder.com/640x480.png/005599?text=cats+est',17,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(67,'https://via.placeholder.com/640x480.png/0077ff?text=cats+nesciunt',17,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(68,'https://via.placeholder.com/640x480.png/003333?text=cats+dolorem',17,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(69,'https://via.placeholder.com/640x480.png/00ff77?text=cats+voluptatum',18,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(70,'https://via.placeholder.com/640x480.png/009955?text=cats+consequuntur',18,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(71,'https://via.placeholder.com/640x480.png/0055bb?text=cats+dolor',18,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(72,'https://via.placeholder.com/640x480.png/006699?text=cats+ipsum',18,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(73,'https://via.placeholder.com/640x480.png/009922?text=cats+doloremque',19,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(74,'https://via.placeholder.com/640x480.png/00ff11?text=cats+ab',19,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(75,'https://via.placeholder.com/640x480.png/00ccaa?text=cats+sunt',19,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(76,'https://via.placeholder.com/640x480.png/00ee33?text=cats+minus',19,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(77,'https://via.placeholder.com/640x480.png/00ee66?text=cats+voluptates',20,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(78,'https://via.placeholder.com/640x480.png/00bb77?text=cats+voluptas',20,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(79,'https://via.placeholder.com/640x480.png/0011aa?text=cats+nisi',20,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(80,'https://via.placeholder.com/640x480.png/00ddcc?text=cats+quibusdam',20,'2021-01-23 21:48:49','2021-01-23 21:48:49');
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
  `in_english` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` bigint unsigned NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `type` int NOT NULL,
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
INSERT INTO `questions` VALUES (1,'quis','consequuntur',1,1,5,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(2,'eius','iste',1,1,5,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(3,'quae','ut',1,1,1,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(4,'dolores','velit',1,1,4,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(5,'fuga','soluta',1,1,3,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(6,'modi','eos',2,1,2,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(7,'ut','commodi',2,1,5,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(8,'nisi','magnam',2,1,3,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(9,'ea','eos',2,1,1,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(10,'non','hic',2,1,1,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(11,'enim','perferendis',3,1,2,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(12,'dolor','qui',3,1,5,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(13,'hic','officia',3,1,2,'2021-01-23 21:48:48','2021-01-23 21:48:48'),(14,'corrupti','amet',3,1,4,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(15,'cumque','laborum',3,1,4,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(16,'quisquam','soluta',4,1,5,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(17,'officiis','dolor',4,1,3,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(18,'nesciunt','deserunt',4,1,1,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(19,'enim','quibusdam',4,1,2,'2021-01-23 21:48:49','2021-01-23 21:48:49'),(20,'fugiat','doloremque',4,1,5,'2021-01-23 21:48:49','2021-01-23 21:48:49');
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
INSERT INTO `quizzes` VALUES (1,1,'2021-01-23 21:48:48','2021-01-23 21:48:48',1),(2,1,'2021-01-23 21:48:48','2021-01-23 21:48:48',1),(3,2,'2021-01-23 21:48:48','2021-01-23 21:48:48',2),(4,2,'2021-01-23 21:48:48','2021-01-23 21:48:48',2);
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `points_gained` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `results_quiz_id_foreign` (`quiz_id`),
  KEY `results_user_id_foreign` (`user_id`),
  CONSTRAINT `results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (1,4,1,2,NULL,NULL);
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solutions`
--

DROP TABLE IF EXISTS `solutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solutions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `question_id` bigint unsigned NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quiz_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `solutions_question_id_foreign` (`question_id`),
  KEY `solutions_user_id_foreign` (`user_id`),
  KEY `solutions_quiz_id_foreign` (`quiz_id`),
  CONSTRAINT `solutions_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `solutions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `solutions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solutions`
--

LOCK TABLES `solutions` WRITE;
/*!40000 ALTER TABLE `solutions` DISABLE KEYS */;
/*!40000 ALTER TABLE `solutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcomments`
--

DROP TABLE IF EXISTS `subcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcomments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `comment_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcomments_user_id_foreign` (`user_id`),
  KEY `subcomments_comment_id_foreign` (`comment_id`),
  CONSTRAINT `subcomments_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subcomments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcomments`
--

LOCK TABLES `subcomments` WRITE;
/*!40000 ALTER TABLE `subcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcomments` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$Fl36JyMkET.4i3VxGhdYheaQjICzAIIuXrRyhbLuLW8yVZZsk8BQ2',NULL,NULL,NULL),(2,'Alfons','alfons@gmail.com',NULL,'$2y$10$D8.SaL5EkIbxeDKinxRtAeJn9hInvpbv8UiK.zHk1mUTXu9hn04Dm',NULL,NULL,NULL),(3,'Hadley Graham','torphy.elinor@example.org','2021-01-23 21:48:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','95UUbrGpb7','2021-01-23 21:48:48','2021-01-23 21:48:48'),(4,'Ms. Delfina Mohr','aniya.christiansen@example.net','2021-01-23 21:48:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ROJJRjRktr','2021-01-23 21:48:48','2021-01-23 21:48:48'),(5,'Prof. Liliane Schroeder','bhauck@example.com','2021-01-23 21:48:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','o5nmrnPNTU','2021-01-23 21:48:48','2021-01-23 21:48:48'),(6,'Mr. David Cruickshank','carmel74@example.org','2021-01-23 21:48:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','GtWQM0PFGX','2021-01-23 21:48:48','2021-01-23 21:48:48');
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

-- Dump completed on 2021-01-23 21:48:54
