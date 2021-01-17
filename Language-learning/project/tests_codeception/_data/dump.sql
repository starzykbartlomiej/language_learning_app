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
INSERT INTO `comments` VALUES (1,'Dolor laboriosam ad in quia.','Voluptas eos provident quaerat ab. Inventore distinctio molestiae rerum iure molestiae eum et veritatis. Itaque laboriosam maiores est consequatur et et.','2021-01-17 15:26:13','2021-01-17 15:26:13',1,1),(2,'Et ut sit nobis ut quo.','Omnis dicta dolorem ducimus dolorem non. Et delectus quia dicta esse temporibus. Nobis sit iusto aut at et vel. Et odio laboriosam laudantium.','2021-01-17 15:26:13','2021-01-17 15:26:13',1,2),(3,'Dolor rem consequatur exercitationem repellat voluptatem tenetur.','Tempora illum voluptatem illo modi vel omnis. Ea mollitia ut qui quasi. Repellendus autem eos maxime non temporibus quibusdam incidunt. Est laboriosam corrupti modi et.','2021-01-17 15:26:13','2021-01-17 15:26:13',1,3),(4,'Sit corrupti voluptatem aut est.','Aut et molestiae dolores aut explicabo corporis. Voluptas exercitationem laborum iste officia. Deleniti ut perspiciatis repudiandae quisquam.','2021-01-17 15:26:13','2021-01-17 15:26:13',1,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_12_15_145710_create_comments_table',1),(5,'2021_01_12_113821_create_quizzes_table',1),(6,'2021_01_12_135444_create_questions_table',1),(7,'2021_01_12_143411_add_quiz_id_and_user_id_to_comments_table',1),(8,'2021_01_12_172347_create_options_table',1),(9,'2021_01_13_134656_create_languages_table',1),(10,'2021_01_13_135157_add_language_id_to_quizzes_table',1),(11,'2021_01_15_203911_set_language_unique_on_language_table',1);
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
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/0044dd?text=cats+expedita',1,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(2,'https://via.placeholder.com/640x480.png/001188?text=cats+dolorem',1,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(3,'https://via.placeholder.com/640x480.png/0044dd?text=cats+est',1,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(4,'https://via.placeholder.com/640x480.png/003300?text=cats+et',1,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(5,'https://via.placeholder.com/640x480.png/00aa11?text=cats+rerum',2,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(6,'https://via.placeholder.com/640x480.png/0066cc?text=cats+et',2,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(7,'https://via.placeholder.com/640x480.png/003333?text=cats+hic',2,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(8,'https://via.placeholder.com/640x480.png/00aa55?text=cats+ut',2,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(9,'https://via.placeholder.com/640x480.png/00dd88?text=cats+non',3,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(10,'https://via.placeholder.com/640x480.png/00aa11?text=cats+natus',3,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(11,'https://via.placeholder.com/640x480.png/0011bb?text=cats+veritatis',3,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(12,'https://via.placeholder.com/640x480.png/007788?text=cats+autem',3,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(13,'https://via.placeholder.com/640x480.png/007711?text=cats+quo',4,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(14,'https://via.placeholder.com/640x480.png/005555?text=cats+vero',4,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(15,'https://via.placeholder.com/640x480.png/007744?text=cats+fuga',4,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(16,'https://via.placeholder.com/640x480.png/006666?text=cats+qui',4,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(17,'https://via.placeholder.com/640x480.png/00ccbb?text=cats+ipsa',5,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(18,'https://via.placeholder.com/640x480.png/00ff88?text=cats+tempore',5,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(19,'https://via.placeholder.com/640x480.png/00ffaa?text=cats+vel',5,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(20,'https://via.placeholder.com/640x480.png/00dd55?text=cats+et',5,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(21,'https://via.placeholder.com/640x480.png/005577?text=cats+officia',6,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(22,'https://via.placeholder.com/640x480.png/001166?text=cats+consequatur',6,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(23,'https://via.placeholder.com/640x480.png/00bbee?text=cats+eveniet',6,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(24,'https://via.placeholder.com/640x480.png/00ddee?text=cats+possimus',6,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(25,'https://via.placeholder.com/640x480.png/00ff88?text=cats+quis',7,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(26,'https://via.placeholder.com/640x480.png/00ffaa?text=cats+architecto',7,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(27,'https://via.placeholder.com/640x480.png/002211?text=cats+commodi',7,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(28,'https://via.placeholder.com/640x480.png/00bb11?text=cats+quia',7,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(29,'https://via.placeholder.com/640x480.png/0011cc?text=cats+assumenda',8,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(30,'https://via.placeholder.com/640x480.png/0044bb?text=cats+sapiente',8,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(31,'https://via.placeholder.com/640x480.png/006622?text=cats+id',8,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(32,'https://via.placeholder.com/640x480.png/00aa00?text=cats+animi',8,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(33,'https://via.placeholder.com/640x480.png/0099ff?text=cats+sunt',9,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(34,'https://via.placeholder.com/640x480.png/0077aa?text=cats+dolores',9,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(35,'https://via.placeholder.com/640x480.png/009944?text=cats+consequatur',9,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(36,'https://via.placeholder.com/640x480.png/007700?text=cats+ducimus',9,'2021-01-17 15:26:12','2021-01-17 15:26:12'),(37,'https://via.placeholder.com/640x480.png/00ccaa?text=cats+dolore',10,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(38,'https://via.placeholder.com/640x480.png/00bbdd?text=cats+dolorum',10,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(39,'https://via.placeholder.com/640x480.png/006600?text=cats+consequuntur',10,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(40,'https://via.placeholder.com/640x480.png/00ff66?text=cats+veritatis',10,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(41,'https://via.placeholder.com/640x480.png/006622?text=cats+et',11,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(42,'https://via.placeholder.com/640x480.png/00cc22?text=cats+pariatur',11,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(43,'https://via.placeholder.com/640x480.png/007788?text=cats+dicta',11,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(44,'https://via.placeholder.com/640x480.png/0077aa?text=cats+laudantium',11,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(45,'https://via.placeholder.com/640x480.png/001100?text=cats+autem',12,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(46,'https://via.placeholder.com/640x480.png/00ddee?text=cats+qui',12,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(47,'https://via.placeholder.com/640x480.png/007766?text=cats+sit',12,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(48,'https://via.placeholder.com/640x480.png/00dd88?text=cats+et',12,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(49,'https://via.placeholder.com/640x480.png/00bb44?text=cats+sapiente',13,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(50,'https://via.placeholder.com/640x480.png/00aaee?text=cats+aliquam',13,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(51,'https://via.placeholder.com/640x480.png/00ddee?text=cats+corrupti',13,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(52,'https://via.placeholder.com/640x480.png/000088?text=cats+repellat',13,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(53,'https://via.placeholder.com/640x480.png/007799?text=cats+vero',14,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(54,'https://via.placeholder.com/640x480.png/0055bb?text=cats+impedit',14,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(55,'https://via.placeholder.com/640x480.png/005533?text=cats+iste',14,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(56,'https://via.placeholder.com/640x480.png/00ddcc?text=cats+sunt',14,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(57,'https://via.placeholder.com/640x480.png/00aabb?text=cats+natus',15,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(58,'https://via.placeholder.com/640x480.png/000066?text=cats+ut',15,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(59,'https://via.placeholder.com/640x480.png/00dd22?text=cats+enim',15,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(60,'https://via.placeholder.com/640x480.png/00cc55?text=cats+deleniti',15,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(61,'https://via.placeholder.com/640x480.png/001188?text=cats+distinctio',16,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(62,'https://via.placeholder.com/640x480.png/00ff22?text=cats+eum',16,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(63,'https://via.placeholder.com/640x480.png/00bb55?text=cats+mollitia',16,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(64,'https://via.placeholder.com/640x480.png/00aaff?text=cats+sint',16,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(65,'https://via.placeholder.com/640x480.png/00cc88?text=cats+sunt',17,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(66,'https://via.placeholder.com/640x480.png/001122?text=cats+perferendis',17,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(67,'https://via.placeholder.com/640x480.png/0099dd?text=cats+deserunt',17,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(68,'https://via.placeholder.com/640x480.png/0000ee?text=cats+deserunt',17,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(69,'https://via.placeholder.com/640x480.png/00dd55?text=cats+neque',18,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(70,'https://via.placeholder.com/640x480.png/007744?text=cats+deleniti',18,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(71,'https://via.placeholder.com/640x480.png/0066dd?text=cats+consequatur',18,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(72,'https://via.placeholder.com/640x480.png/00aadd?text=cats+quia',18,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(73,'https://via.placeholder.com/640x480.png/002299?text=cats+distinctio',19,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(74,'https://via.placeholder.com/640x480.png/00aa33?text=cats+corrupti',19,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(75,'https://via.placeholder.com/640x480.png/005500?text=cats+sint',19,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(76,'https://via.placeholder.com/640x480.png/005533?text=cats+perspiciatis',19,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(77,'https://via.placeholder.com/640x480.png/003322?text=cats+ipsum',20,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(78,'https://via.placeholder.com/640x480.png/005577?text=cats+vitae',20,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(79,'https://via.placeholder.com/640x480.png/008877?text=cats+iure',20,'2021-01-17 15:26:13','2021-01-17 15:26:13'),(80,'https://via.placeholder.com/640x480.png/00ddee?text=cats+quidem',20,'2021-01-17 15:26:13','2021-01-17 15:26:13');
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
INSERT INTO `questions` VALUES (1,'enim','ea',1,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(2,'occaecati','totam',1,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(3,'pariatur','perspiciatis',1,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(4,'deleniti','nobis',1,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(5,'ab','quos',1,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(6,'asperiores','voluptatem',2,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(7,'sequi','expedita',2,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(8,'et','nemo',2,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(9,'ut','repellendus',2,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(10,'quo','sapiente',2,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(11,'nemo','laudantium',3,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(12,'ut','porro',3,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(13,'voluptate','animi',3,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(14,'quam','est',3,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(15,'officiis','recusandae',3,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(16,'impedit','quia',4,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(17,'totam','est',4,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(18,'facilis','sunt',4,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(19,'velit','perspiciatis',4,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12'),(20,'dolores','delectus',4,1,'words','2021-01-17 15:26:12','2021-01-17 15:26:12');
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
INSERT INTO `quizzes` VALUES (1,1,'2021-01-17 15:26:12','2021-01-17 15:26:12',1),(2,1,'2021-01-17 15:26:12','2021-01-17 15:26:12',1),(3,1,'2021-01-17 15:26:12','2021-01-17 15:26:12',2),(4,1,'2021-01-17 15:26:12','2021-01-17 15:26:12',2);
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
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$b9iC5fC.Ly0Z/u00sPtZQec6QZqXJlFYQHuYs48aS..RR4ayK8ZRC',NULL,NULL,NULL),(2,'Charley Hilpert','kelsi57@example.com','2021-01-17 15:26:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','O5ybHWfpSW','2021-01-17 15:26:12','2021-01-17 15:26:12'),(3,'Ms. Barbara Bartell','akuhic@example.net','2021-01-17 15:26:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','wtO70BQH5y','2021-01-17 15:26:12','2021-01-17 15:26:12'),(4,'Hiram Dach DDS','dora45@example.com','2021-01-17 15:26:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','GfwDko4wNz','2021-01-17 15:26:12','2021-01-17 15:26:12'),(5,'Belle Abshire III','mmoen@example.org','2021-01-17 15:26:12','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','G0H1yqlo2J','2021-01-17 15:26:12','2021-01-17 15:26:12');
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

-- Dump completed on 2021-01-17 15:26:25
