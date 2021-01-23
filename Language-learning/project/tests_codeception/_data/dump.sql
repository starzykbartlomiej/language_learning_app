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
INSERT INTO `comments` VALUES (1,'Et quis sed nihil quibusdam pariatur ea debitis.','Laboriosam unde facilis quas itaque qui voluptatum tempore et. Eum sunt quod in animi delectus hic. Nisi aut esse ab voluptas nam quaerat.','2021-01-23 20:20:24','2021-01-23 20:20:24',1,1),(2,'Occaecati quisquam eveniet accusantium similique.','Voluptates dolorum mollitia non et. Dicta ea est aperiam autem aut vel. Nobis libero quam qui voluptatem animi quod reprehenderit.','2021-01-23 20:20:24','2021-01-23 20:20:24',1,2),(3,'Consequatur vel voluptates vel eveniet et.','Qui consequatur voluptatem voluptas. Eum dolor saepe voluptatum maiores voluptatem. Et reprehenderit id quod pariatur.','2021-01-23 20:20:24','2021-01-23 20:20:24',1,3),(4,'Officia voluptatem totam doloribus amet autem porro.','Quam dolor est adipisci cumque. Aut natus praesentium quae aperiam voluptatem autem. Sed provident quaerat sapiente. Unde illo natus perferendis eos dolorem nisi id.','2021-01-23 20:20:24','2021-01-23 20:20:24',1,4),(5,'Kuba','madry gosc','2021-01-23 20:20:24','2021-01-23 20:20:24',2,1);
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
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/00bbdd?text=cats+necessitatibus',1,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(2,'https://via.placeholder.com/640x480.png/0077cc?text=cats+sequi',1,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(3,'https://via.placeholder.com/640x480.png/002211?text=cats+temporibus',1,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(4,'https://via.placeholder.com/640x480.png/00ee33?text=cats+nisi',1,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(5,'https://via.placeholder.com/640x480.png/00ddaa?text=cats+excepturi',2,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(6,'https://via.placeholder.com/640x480.png/00cccc?text=cats+suscipit',2,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(7,'https://via.placeholder.com/640x480.png/00bb11?text=cats+commodi',2,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(8,'https://via.placeholder.com/640x480.png/0099bb?text=cats+vitae',2,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(9,'https://via.placeholder.com/640x480.png/0000ee?text=cats+facere',3,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(10,'https://via.placeholder.com/640x480.png/009999?text=cats+similique',3,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(11,'https://via.placeholder.com/640x480.png/004411?text=cats+et',3,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(12,'https://via.placeholder.com/640x480.png/002266?text=cats+eius',3,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(13,'https://via.placeholder.com/640x480.png/003333?text=cats+perspiciatis',4,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(14,'https://via.placeholder.com/640x480.png/0099cc?text=cats+amet',4,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(15,'https://via.placeholder.com/640x480.png/00cc00?text=cats+incidunt',4,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(16,'https://via.placeholder.com/640x480.png/00eeaa?text=cats+qui',4,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(17,'https://via.placeholder.com/640x480.png/0022cc?text=cats+animi',5,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(18,'https://via.placeholder.com/640x480.png/008844?text=cats+aperiam',5,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(19,'https://via.placeholder.com/640x480.png/009955?text=cats+quis',5,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(20,'https://via.placeholder.com/640x480.png/00ffee?text=cats+repudiandae',5,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(21,'https://via.placeholder.com/640x480.png/00ffff?text=cats+amet',6,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(22,'https://via.placeholder.com/640x480.png/0099ee?text=cats+qui',6,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(23,'https://via.placeholder.com/640x480.png/00eebb?text=cats+sit',6,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(24,'https://via.placeholder.com/640x480.png/009955?text=cats+minima',6,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(25,'https://via.placeholder.com/640x480.png/0000aa?text=cats+quos',7,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(26,'https://via.placeholder.com/640x480.png/0044ff?text=cats+dolorum',7,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(27,'https://via.placeholder.com/640x480.png/008800?text=cats+et',7,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(28,'https://via.placeholder.com/640x480.png/0033aa?text=cats+tempore',7,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(29,'https://via.placeholder.com/640x480.png/009988?text=cats+veniam',8,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(30,'https://via.placeholder.com/640x480.png/009988?text=cats+maiores',8,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(31,'https://via.placeholder.com/640x480.png/0022aa?text=cats+quibusdam',8,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(32,'https://via.placeholder.com/640x480.png/00ddff?text=cats+expedita',8,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(33,'https://via.placeholder.com/640x480.png/0022ff?text=cats+provident',9,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(34,'https://via.placeholder.com/640x480.png/007755?text=cats+fuga',9,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(35,'https://via.placeholder.com/640x480.png/00cc11?text=cats+quia',9,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(36,'https://via.placeholder.com/640x480.png/006655?text=cats+reiciendis',9,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(37,'https://via.placeholder.com/640x480.png/004433?text=cats+et',10,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(38,'https://via.placeholder.com/640x480.png/0000ee?text=cats+aut',10,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(39,'https://via.placeholder.com/640x480.png/0022ff?text=cats+a',10,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(40,'https://via.placeholder.com/640x480.png/00dd00?text=cats+maxime',10,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(41,'https://via.placeholder.com/640x480.png/00bb11?text=cats+voluptas',11,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(42,'https://via.placeholder.com/640x480.png/004444?text=cats+temporibus',11,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(43,'https://via.placeholder.com/640x480.png/003333?text=cats+sint',11,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(44,'https://via.placeholder.com/640x480.png/0088ff?text=cats+quia',11,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(45,'https://via.placeholder.com/640x480.png/00aaee?text=cats+dolores',12,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(46,'https://via.placeholder.com/640x480.png/008899?text=cats+sit',12,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(47,'https://via.placeholder.com/640x480.png/0066cc?text=cats+rerum',12,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(48,'https://via.placeholder.com/640x480.png/001100?text=cats+in',12,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(49,'https://via.placeholder.com/640x480.png/008899?text=cats+minus',13,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(50,'https://via.placeholder.com/640x480.png/00ff77?text=cats+temporibus',13,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(51,'https://via.placeholder.com/640x480.png/003333?text=cats+tenetur',13,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(52,'https://via.placeholder.com/640x480.png/00ccaa?text=cats+sunt',13,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(53,'https://via.placeholder.com/640x480.png/004422?text=cats+rem',14,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(54,'https://via.placeholder.com/640x480.png/00ffaa?text=cats+totam',14,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(55,'https://via.placeholder.com/640x480.png/00ee44?text=cats+ullam',14,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(56,'https://via.placeholder.com/640x480.png/004488?text=cats+quod',14,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(57,'https://via.placeholder.com/640x480.png/00aa99?text=cats+sint',15,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(58,'https://via.placeholder.com/640x480.png/000033?text=cats+necessitatibus',15,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(59,'https://via.placeholder.com/640x480.png/0011ee?text=cats+illo',15,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(60,'https://via.placeholder.com/640x480.png/002266?text=cats+dolorem',15,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(61,'https://via.placeholder.com/640x480.png/006611?text=cats+dolore',16,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(62,'https://via.placeholder.com/640x480.png/001100?text=cats+nesciunt',16,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(63,'https://via.placeholder.com/640x480.png/001144?text=cats+debitis',16,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(64,'https://via.placeholder.com/640x480.png/00ff00?text=cats+ducimus',16,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(65,'https://via.placeholder.com/640x480.png/00ddbb?text=cats+distinctio',17,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(66,'https://via.placeholder.com/640x480.png/00cc55?text=cats+et',17,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(67,'https://via.placeholder.com/640x480.png/009988?text=cats+quisquam',17,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(68,'https://via.placeholder.com/640x480.png/006655?text=cats+quia',17,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(69,'https://via.placeholder.com/640x480.png/000033?text=cats+et',18,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(70,'https://via.placeholder.com/640x480.png/0088ff?text=cats+quos',18,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(71,'https://via.placeholder.com/640x480.png/0044dd?text=cats+voluptates',18,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(72,'https://via.placeholder.com/640x480.png/00ff99?text=cats+vitae',18,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(73,'https://via.placeholder.com/640x480.png/00bb33?text=cats+temporibus',19,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(74,'https://via.placeholder.com/640x480.png/002255?text=cats+id',19,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(75,'https://via.placeholder.com/640x480.png/005544?text=cats+repellat',19,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(76,'https://via.placeholder.com/640x480.png/006611?text=cats+quos',19,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(77,'https://via.placeholder.com/640x480.png/00aaee?text=cats+vel',20,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(78,'https://via.placeholder.com/640x480.png/007777?text=cats+commodi',20,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(79,'https://via.placeholder.com/640x480.png/00ff11?text=cats+odit',20,'2021-01-23 20:20:24','2021-01-23 20:20:24'),(80,'https://via.placeholder.com/640x480.png/0000bb?text=cats+veniam',20,'2021-01-23 20:20:24','2021-01-23 20:20:24');
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
INSERT INTO `questions` VALUES (1,'quod','qui',1,1,5,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(2,'laboriosam','ut',1,1,2,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(3,'nemo','incidunt',1,1,2,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(4,'aliquam','velit',1,1,1,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(5,'provident','sed',1,1,2,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(6,'ut','porro',2,1,3,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(7,'quo','rerum',2,1,1,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(8,'quam','libero',2,1,3,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(9,'ad','animi',2,1,4,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(10,'atque','laborum',2,1,3,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(11,'enim','error',3,1,5,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(12,'voluptatum','minus',3,1,1,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(13,'quo','et',3,1,5,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(14,'labore','vero',3,1,5,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(15,'natus','iusto',3,1,3,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(16,'est','error',4,1,5,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(17,'autem','aut',4,1,5,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(18,'id','praesentium',4,1,5,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(19,'sit','dolores',4,1,4,'2021-01-23 20:20:23','2021-01-23 20:20:23'),(20,'provident','corrupti',4,1,1,'2021-01-23 20:20:23','2021-01-23 20:20:23');
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
INSERT INTO `quizzes` VALUES (1,1,'2021-01-23 20:20:23','2021-01-23 20:20:23',1),(2,1,'2021-01-23 20:20:23','2021-01-23 20:20:23',1),(3,2,'2021-01-23 20:20:23','2021-01-23 20:20:23',2),(4,2,'2021-01-23 20:20:23','2021-01-23 20:20:23',2);
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
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$ZUfBFVdpWSoaurmtUiBoW.I2nDrkuzUwVqk7KjSui1UyYhEDGWn66',NULL,NULL,NULL),(2,'Alfons','alfons@gmail.com',NULL,'$2y$10$mh29hiVTMPC6cWRmtInGEu1m2m1c.2SZG2MhvQYMTqxnHCjhdHCre',NULL,NULL,NULL),(3,'Lucy Steuber','frederik.rowe@example.com','2021-01-23 20:20:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CJBtWBQsXl','2021-01-23 20:20:23','2021-01-23 20:20:23'),(4,'Kacie Waters','meagan.abshire@example.org','2021-01-23 20:20:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','c3NbUilp64','2021-01-23 20:20:23','2021-01-23 20:20:23'),(5,'Vallie Hessel','josh.heller@example.net','2021-01-23 20:20:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HiRCnbwRlo','2021-01-23 20:20:23','2021-01-23 20:20:23'),(6,'Ebba Hessel','jacques.rogahn@example.org','2021-01-23 20:20:23','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','AezlGHLH6S','2021-01-23 20:20:23','2021-01-23 20:20:23');
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

-- Dump completed on 2021-01-23 20:20:28
