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
INSERT INTO `comments` VALUES (1,'Recusandae natus ut et porro tempore dolore eligendi.','Sapiente harum ullam error eum eum ratione debitis. Aliquid ad iure qui qui vitae rerum porro. Quia rem commodi ut fugiat blanditiis. Cum facilis nostrum sed nihil aut.','2021-01-13 15:00:04','2021-01-13 15:00:04',1,1),(2,'Numquam est iste et temporibus temporibus dolorum.','Nesciunt aliquid et eaque pariatur animi odio. Incidunt nulla et quis dicta non laboriosam debitis qui. Eum deserunt atque laboriosam fugiat iste numquam cumque.','2021-01-13 15:00:04','2021-01-13 15:00:04',1,2),(3,'Aut voluptatem veritatis qui.','Occaecati sequi consectetur vel iusto recusandae aspernatur excepturi. Ratione qui vero maxime iste et facilis eius. Autem quia itaque nulla repellendus tempore natus ea vitae.','2021-01-13 15:00:04','2021-01-13 15:00:04',1,3),(4,'Et reprehenderit cumque reiciendis et ut.','Ex aperiam debitis ut consequatur aut id perspiciatis. Repellat perspiciatis quisquam quos qui eius est id. Id voluptas vel dolorem iure quo dolorem optio. Fuga eos ipsum enim consequatur.','2021-01-13 15:00:04','2021-01-13 15:00:04',1,4);
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
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/002211?text=cats+aut',1,'2021-01-13 15:00:03','2021-01-13 15:00:03'),(2,'https://via.placeholder.com/640x480.png/0000cc?text=cats+labore',1,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(3,'https://via.placeholder.com/640x480.png/00ff55?text=cats+nostrum',1,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(4,'https://via.placeholder.com/640x480.png/003333?text=cats+odit',1,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(5,'https://via.placeholder.com/640x480.png/000000?text=cats+autem',2,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(6,'https://via.placeholder.com/640x480.png/003355?text=cats+et',2,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(7,'https://via.placeholder.com/640x480.png/001144?text=cats+maiores',2,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(8,'https://via.placeholder.com/640x480.png/0077bb?text=cats+necessitatibus',2,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(9,'https://via.placeholder.com/640x480.png/002288?text=cats+ab',3,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(10,'https://via.placeholder.com/640x480.png/003377?text=cats+ipsam',3,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(11,'https://via.placeholder.com/640x480.png/00aa33?text=cats+nihil',3,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(12,'https://via.placeholder.com/640x480.png/004433?text=cats+quo',3,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(13,'https://via.placeholder.com/640x480.png/001144?text=cats+excepturi',4,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(14,'https://via.placeholder.com/640x480.png/009977?text=cats+repudiandae',4,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(15,'https://via.placeholder.com/640x480.png/007755?text=cats+dolore',4,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(16,'https://via.placeholder.com/640x480.png/00ee11?text=cats+dignissimos',4,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(17,'https://via.placeholder.com/640x480.png/000077?text=cats+sed',5,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(18,'https://via.placeholder.com/640x480.png/008899?text=cats+voluptas',5,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(19,'https://via.placeholder.com/640x480.png/0022bb?text=cats+repellat',5,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(20,'https://via.placeholder.com/640x480.png/00ccaa?text=cats+cum',5,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(21,'https://via.placeholder.com/640x480.png/008800?text=cats+sit',6,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(22,'https://via.placeholder.com/640x480.png/00eedd?text=cats+nobis',6,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(23,'https://via.placeholder.com/640x480.png/008866?text=cats+magni',6,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(24,'https://via.placeholder.com/640x480.png/002233?text=cats+excepturi',6,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(25,'https://via.placeholder.com/640x480.png/009999?text=cats+perferendis',7,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(26,'https://via.placeholder.com/640x480.png/00bb88?text=cats+quo',7,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(27,'https://via.placeholder.com/640x480.png/0099dd?text=cats+ut',7,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(28,'https://via.placeholder.com/640x480.png/00cc55?text=cats+dolores',7,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(29,'https://via.placeholder.com/640x480.png/0000bb?text=cats+minima',8,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(30,'https://via.placeholder.com/640x480.png/0066ee?text=cats+est',8,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(31,'https://via.placeholder.com/640x480.png/0000ee?text=cats+cupiditate',8,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(32,'https://via.placeholder.com/640x480.png/004455?text=cats+quam',8,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(33,'https://via.placeholder.com/640x480.png/0099dd?text=cats+laborum',9,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(34,'https://via.placeholder.com/640x480.png/000022?text=cats+neque',9,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(35,'https://via.placeholder.com/640x480.png/006699?text=cats+quis',9,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(36,'https://via.placeholder.com/640x480.png/00ff88?text=cats+saepe',9,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(37,'https://via.placeholder.com/640x480.png/0088aa?text=cats+inventore',10,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(38,'https://via.placeholder.com/640x480.png/0022aa?text=cats+perspiciatis',10,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(39,'https://via.placeholder.com/640x480.png/002200?text=cats+voluptates',10,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(40,'https://via.placeholder.com/640x480.png/009922?text=cats+error',10,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(41,'https://via.placeholder.com/640x480.png/002266?text=cats+omnis',11,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(42,'https://via.placeholder.com/640x480.png/008888?text=cats+fugiat',11,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(43,'https://via.placeholder.com/640x480.png/000099?text=cats+rerum',11,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(44,'https://via.placeholder.com/640x480.png/0033aa?text=cats+rerum',11,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(45,'https://via.placeholder.com/640x480.png/0022dd?text=cats+voluptate',12,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(46,'https://via.placeholder.com/640x480.png/0044cc?text=cats+assumenda',12,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(47,'https://via.placeholder.com/640x480.png/0066ff?text=cats+incidunt',12,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(48,'https://via.placeholder.com/640x480.png/00aacc?text=cats+nesciunt',12,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(49,'https://via.placeholder.com/640x480.png/00aa77?text=cats+quisquam',13,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(50,'https://via.placeholder.com/640x480.png/00dd88?text=cats+quia',13,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(51,'https://via.placeholder.com/640x480.png/002244?text=cats+porro',13,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(52,'https://via.placeholder.com/640x480.png/001144?text=cats+rerum',13,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(53,'https://via.placeholder.com/640x480.png/0011dd?text=cats+quis',14,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(54,'https://via.placeholder.com/640x480.png/001166?text=cats+consequatur',14,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(55,'https://via.placeholder.com/640x480.png/0088cc?text=cats+aut',14,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(56,'https://via.placeholder.com/640x480.png/00aa66?text=cats+eius',14,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(57,'https://via.placeholder.com/640x480.png/0099dd?text=cats+sit',15,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(58,'https://via.placeholder.com/640x480.png/00bb66?text=cats+voluptatum',15,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(59,'https://via.placeholder.com/640x480.png/00ff66?text=cats+rerum',15,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(60,'https://via.placeholder.com/640x480.png/005599?text=cats+blanditiis',15,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(61,'https://via.placeholder.com/640x480.png/00eebb?text=cats+ipsa',16,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(62,'https://via.placeholder.com/640x480.png/006644?text=cats+sit',16,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(63,'https://via.placeholder.com/640x480.png/005500?text=cats+ad',16,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(64,'https://via.placeholder.com/640x480.png/000000?text=cats+quo',16,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(65,'https://via.placeholder.com/640x480.png/00bb22?text=cats+qui',17,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(66,'https://via.placeholder.com/640x480.png/00bb22?text=cats+excepturi',17,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(67,'https://via.placeholder.com/640x480.png/004477?text=cats+libero',17,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(68,'https://via.placeholder.com/640x480.png/0000cc?text=cats+facere',17,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(69,'https://via.placeholder.com/640x480.png/00aa11?text=cats+iste',18,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(70,'https://via.placeholder.com/640x480.png/00ff99?text=cats+sequi',18,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(71,'https://via.placeholder.com/640x480.png/006688?text=cats+temporibus',18,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(72,'https://via.placeholder.com/640x480.png/00cc11?text=cats+ut',18,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(73,'https://via.placeholder.com/640x480.png/00bb11?text=cats+doloribus',19,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(74,'https://via.placeholder.com/640x480.png/009988?text=cats+voluptas',19,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(75,'https://via.placeholder.com/640x480.png/000000?text=cats+quo',19,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(76,'https://via.placeholder.com/640x480.png/005588?text=cats+dolore',19,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(77,'https://via.placeholder.com/640x480.png/008888?text=cats+assumenda',20,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(78,'https://via.placeholder.com/640x480.png/003333?text=cats+consequuntur',20,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(79,'https://via.placeholder.com/640x480.png/0099ee?text=cats+necessitatibus',20,'2021-01-13 15:00:04','2021-01-13 15:00:04'),(80,'https://via.placeholder.com/640x480.png/0099dd?text=cats+enim',20,'2021-01-13 15:00:04','2021-01-13 15:00:04');
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
INSERT INTO `questions` VALUES (1,'consequatur','saepe',1,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(2,'ipsa','accusantium',1,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(3,'illum','officia',1,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(4,'atque','distinctio',1,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(5,'provident','labore',1,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(6,'omnis','occaecati',2,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(7,'pariatur','voluptatibus',2,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(8,'saepe','itaque',2,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(9,'iusto','non',2,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(10,'culpa','veritatis',2,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(11,'ea','autem',3,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(12,'voluptatem','ipsum',3,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(13,'ut','aut',3,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(14,'quaerat','dolorem',3,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(15,'autem','cumque',3,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(16,'fugit','in',4,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(17,'saepe','aut',4,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(18,'voluptas','aperiam',4,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(19,'eum','ut',4,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03'),(20,'sunt','recusandae',4,1,'words','2021-01-13 15:00:03','2021-01-13 15:00:03');
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
INSERT INTO `quizzes` VALUES (1,1,'2021-01-13 15:00:03','2021-01-13 15:00:03',1),(2,1,'2021-01-13 15:00:03','2021-01-13 15:00:03',1),(3,1,'2021-01-13 15:00:03','2021-01-13 15:00:03',2),(4,1,'2021-01-13 15:00:03','2021-01-13 15:00:03',2);
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
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$gGkxpNAtoBQnQimPnLEcW.u4OIZmGYygvMPugx2oIQIvnx5IO4zKq',NULL,NULL,NULL),(2,'Aditya Heathcote','dfay@example.com','2021-01-13 15:00:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','KHT7dzF8nZ','2021-01-13 15:00:03','2021-01-13 15:00:03'),(3,'Terry Feest','terry.jonathan@example.net','2021-01-13 15:00:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3MYpQANRcW','2021-01-13 15:00:03','2021-01-13 15:00:03'),(4,'Clotilde Raynor','wmohr@example.net','2021-01-13 15:00:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','SS4LZmF9uu','2021-01-13 15:00:03','2021-01-13 15:00:03'),(5,'Scotty Sauer V','stokes.rosanna@example.org','2021-01-13 15:00:03','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zK4aAtjd9u','2021-01-13 15:00:03','2021-01-13 15:00:03');
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

-- Dump completed on 2021-01-13 15:00:07
