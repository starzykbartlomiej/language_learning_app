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
INSERT INTO `comments` VALUES (1,'Eaque facilis voluptatem accusamus sint magnam ut.','Et fugit officiis similique officiis. Dolores qui voluptatem quam quisquam. Commodi fuga voluptate ut maxime incidunt voluptates beatae est.','2021-01-23 23:15:33','2021-01-23 23:15:33',1,1),(2,'Reprehenderit sit fugit eaque aut blanditiis saepe qui mollitia.','Dignissimos beatae consequatur qui est animi velit ducimus illum. Maxime esse velit iste facilis ea optio perspiciatis. Excepturi impedit officiis necessitatibus provident magnam aut. Quae eaque et magnam ad ducimus sit minus.','2021-01-23 23:15:33','2021-01-23 23:15:33',1,2),(3,'Consequatur minima ullam perspiciatis provident sed.','Magnam quasi consequatur delectus quasi modi. Rerum molestiae itaque quo vel voluptas repellat aut. Est consequatur cum accusamus consequatur at repudiandae. Hic deserunt qui officiis reiciendis exercitationem corrupti nostrum.','2021-01-23 23:15:33','2021-01-23 23:15:33',1,3),(4,'Et rerum nam est in at.','Voluptate occaecati provident enim laudantium ipsa quisquam autem cumque. Et consectetur dolores cum unde. Unde eius quia quia aut est.','2021-01-23 23:15:33','2021-01-23 23:15:33',1,4),(5,'Kuba','madry gosc','2021-01-23 23:15:33','2021-01-23 23:15:33',2,1);
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
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/00ccaa?text=cats+consequuntur',1,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(2,'https://via.placeholder.com/640x480.png/00ddff?text=cats+ut',1,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(3,'https://via.placeholder.com/640x480.png/00dd00?text=cats+nihil',1,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(4,'https://via.placeholder.com/640x480.png/0055ff?text=cats+voluptates',1,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(5,'https://via.placeholder.com/640x480.png/002244?text=cats+ducimus',2,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(6,'https://via.placeholder.com/640x480.png/002244?text=cats+quasi',2,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(7,'https://via.placeholder.com/640x480.png/000000?text=cats+sed',2,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(8,'https://via.placeholder.com/640x480.png/000033?text=cats+quibusdam',2,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(9,'https://via.placeholder.com/640x480.png/0044ff?text=cats+molestiae',3,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(10,'https://via.placeholder.com/640x480.png/00ffaa?text=cats+nisi',3,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(11,'https://via.placeholder.com/640x480.png/00cccc?text=cats+dolores',3,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(12,'https://via.placeholder.com/640x480.png/002244?text=cats+non',3,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(13,'https://via.placeholder.com/640x480.png/005500?text=cats+dignissimos',4,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(14,'https://via.placeholder.com/640x480.png/00aa55?text=cats+impedit',4,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(15,'https://via.placeholder.com/640x480.png/00ee00?text=cats+quos',4,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(16,'https://via.placeholder.com/640x480.png/00ff11?text=cats+ratione',4,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(17,'https://via.placeholder.com/640x480.png/008899?text=cats+laborum',5,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(18,'https://via.placeholder.com/640x480.png/007700?text=cats+molestiae',5,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(19,'https://via.placeholder.com/640x480.png/003366?text=cats+fugit',5,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(20,'https://via.placeholder.com/640x480.png/0055dd?text=cats+nihil',5,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(21,'https://via.placeholder.com/640x480.png/0099ff?text=cats+sequi',6,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(22,'https://via.placeholder.com/640x480.png/00ffaa?text=cats+aut',6,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(23,'https://via.placeholder.com/640x480.png/00bb77?text=cats+aut',6,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(24,'https://via.placeholder.com/640x480.png/00aaee?text=cats+repudiandae',6,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(25,'https://via.placeholder.com/640x480.png/0077dd?text=cats+sed',7,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(26,'https://via.placeholder.com/640x480.png/001133?text=cats+voluptatum',7,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(27,'https://via.placeholder.com/640x480.png/00ee22?text=cats+neque',7,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(28,'https://via.placeholder.com/640x480.png/0055aa?text=cats+ut',7,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(29,'https://via.placeholder.com/640x480.png/0066ff?text=cats+ut',8,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(30,'https://via.placeholder.com/640x480.png/00bb11?text=cats+ipsa',8,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(31,'https://via.placeholder.com/640x480.png/00bb88?text=cats+voluptates',8,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(32,'https://via.placeholder.com/640x480.png/006611?text=cats+est',8,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(33,'https://via.placeholder.com/640x480.png/008833?text=cats+aut',9,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(34,'https://via.placeholder.com/640x480.png/0033cc?text=cats+error',9,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(35,'https://via.placeholder.com/640x480.png/0044ff?text=cats+incidunt',9,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(36,'https://via.placeholder.com/640x480.png/00ffee?text=cats+omnis',9,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(37,'https://via.placeholder.com/640x480.png/0044cc?text=cats+cupiditate',10,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(38,'https://via.placeholder.com/640x480.png/003355?text=cats+iusto',10,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(39,'https://via.placeholder.com/640x480.png/006677?text=cats+laborum',10,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(40,'https://via.placeholder.com/640x480.png/004499?text=cats+beatae',10,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(41,'https://via.placeholder.com/640x480.png/0022bb?text=cats+totam',11,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(42,'https://via.placeholder.com/640x480.png/005500?text=cats+architecto',11,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(43,'https://via.placeholder.com/640x480.png/006633?text=cats+quod',11,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(44,'https://via.placeholder.com/640x480.png/008877?text=cats+id',11,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(45,'https://via.placeholder.com/640x480.png/005500?text=cats+aspernatur',12,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(46,'https://via.placeholder.com/640x480.png/00ff99?text=cats+sed',12,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(47,'https://via.placeholder.com/640x480.png/00cc22?text=cats+vitae',12,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(48,'https://via.placeholder.com/640x480.png/007799?text=cats+iure',12,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(49,'https://via.placeholder.com/640x480.png/0022ee?text=cats+esse',13,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(50,'https://via.placeholder.com/640x480.png/003311?text=cats+vero',13,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(51,'https://via.placeholder.com/640x480.png/00bbcc?text=cats+voluptas',13,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(52,'https://via.placeholder.com/640x480.png/004477?text=cats+nostrum',13,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(53,'https://via.placeholder.com/640x480.png/00bb11?text=cats+consequatur',14,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(54,'https://via.placeholder.com/640x480.png/00cc00?text=cats+sit',14,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(55,'https://via.placeholder.com/640x480.png/005555?text=cats+in',14,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(56,'https://via.placeholder.com/640x480.png/0099aa?text=cats+hic',14,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(57,'https://via.placeholder.com/640x480.png/0033cc?text=cats+quibusdam',15,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(58,'https://via.placeholder.com/640x480.png/0044dd?text=cats+eum',15,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(59,'https://via.placeholder.com/640x480.png/00aabb?text=cats+aliquam',15,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(60,'https://via.placeholder.com/640x480.png/00ffaa?text=cats+neque',15,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(61,'https://via.placeholder.com/640x480.png/0088aa?text=cats+assumenda',16,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(62,'https://via.placeholder.com/640x480.png/002299?text=cats+et',16,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(63,'https://via.placeholder.com/640x480.png/00eeee?text=cats+quis',16,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(64,'https://via.placeholder.com/640x480.png/002211?text=cats+eius',16,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(65,'https://via.placeholder.com/640x480.png/0055cc?text=cats+qui',17,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(66,'https://via.placeholder.com/640x480.png/00cccc?text=cats+eum',17,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(67,'https://via.placeholder.com/640x480.png/004477?text=cats+nesciunt',17,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(68,'https://via.placeholder.com/640x480.png/009977?text=cats+sed',17,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(69,'https://via.placeholder.com/640x480.png/00bb77?text=cats+provident',18,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(70,'https://via.placeholder.com/640x480.png/00dd66?text=cats+qui',18,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(71,'https://via.placeholder.com/640x480.png/0055cc?text=cats+suscipit',18,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(72,'https://via.placeholder.com/640x480.png/00bbaa?text=cats+dolores',18,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(73,'https://via.placeholder.com/640x480.png/004499?text=cats+quis',19,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(74,'https://via.placeholder.com/640x480.png/00bb66?text=cats+qui',19,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(75,'https://via.placeholder.com/640x480.png/009977?text=cats+corporis',19,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(76,'https://via.placeholder.com/640x480.png/00dd11?text=cats+odit',19,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(77,'https://via.placeholder.com/640x480.png/0033aa?text=cats+sed',20,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(78,'https://via.placeholder.com/640x480.png/004422?text=cats+qui',20,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(79,'https://via.placeholder.com/640x480.png/0066aa?text=cats+voluptas',20,'2021-01-23 23:15:33','2021-01-23 23:15:33'),(80,'https://via.placeholder.com/640x480.png/0077cc?text=cats+voluptatem',20,'2021-01-23 23:15:33','2021-01-23 23:15:33');
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
INSERT INTO `questions` VALUES (1,'quaerat','nemo',1,1,2,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(2,'perspiciatis','vero',1,1,3,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(3,'mollitia','quas',1,1,5,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(4,'debitis','eum',1,1,3,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(5,'labore','est',1,1,2,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(6,'repudiandae','repudiandae',2,1,1,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(7,'facere','neque',2,1,1,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(8,'et','dolor',2,1,4,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(9,'qui','praesentium',2,1,3,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(10,'neque','exercitationem',2,1,5,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(11,'facere','facilis',3,1,3,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(12,'voluptate','aut',3,1,2,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(13,'aliquid','iste',3,1,1,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(14,'facilis','harum',3,1,3,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(15,'in','temporibus',3,1,5,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(16,'repellendus','quidem',4,1,4,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(17,'repellendus','blanditiis',4,1,1,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(18,'a','expedita',4,1,3,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(19,'facere','hic',4,1,3,'2021-01-23 23:15:32','2021-01-23 23:15:32'),(20,'rem','illo',4,1,5,'2021-01-23 23:15:32','2021-01-23 23:15:32');
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
INSERT INTO `quizzes` VALUES (1,1,'2021-01-23 23:15:32','2021-01-23 23:15:32',1),(2,1,'2021-01-23 23:15:32','2021-01-23 23:15:32',1),(3,2,'2021-01-23 23:15:32','2021-01-23 23:15:32',2),(4,2,'2021-01-23 23:15:32','2021-01-23 23:15:32',2);
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
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$aN3kVAdeelfQxt6I0MbTX.qkhNalOLtnf1Xsl1VY93AOWPztRoU.6',NULL,NULL,NULL),(2,'Alfons','alfons@gmail.com',NULL,'$2y$10$EdoOEftNo9iUSfah9zDz.O4O4ixuY/JhqOxEEfk8qxQxwIRE2BHQu',NULL,NULL,NULL),(3,'Aida Grady Jr.','sgrimes@example.com','2021-01-23 23:15:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ab4bSYbd8R','2021-01-23 23:15:32','2021-01-23 23:15:32'),(4,'Zackary Hickle','icrist@example.com','2021-01-23 23:15:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','C4qtD4PACE','2021-01-23 23:15:32','2021-01-23 23:15:32'),(5,'Demetrius Watsica','ssmitham@example.org','2021-01-23 23:15:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cxdK7eJiuM','2021-01-23 23:15:32','2021-01-23 23:15:32'),(6,'Dr. Lowell Krajcik PhD','myron60@example.org','2021-01-23 23:15:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','accgVMJ2jE','2021-01-23 23:15:32','2021-01-23 23:15:32');
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

-- Dump completed on 2021-01-23 23:15:37
