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
INSERT INTO `comments` VALUES (1,'Ut autem voluptas impedit ut tempora.','Eos quia quia rerum quod ipsam. Perferendis consequatur aliquid odit reiciendis dicta consectetur. Voluptatem qui illo excepturi dolore architecto. Velit voluptatem odit vel vel repudiandae aperiam.','2021-01-23 10:26:29','2021-01-23 10:26:29',1,1),(2,'Dolor et et nostrum.','Ipsa rerum et optio omnis accusantium. Laudantium consequatur velit aliquam illo porro labore magni. Esse nesciunt maiores culpa laudantium optio. Et eveniet fugiat in aut et consequatur.','2021-01-23 10:26:29','2021-01-23 10:26:29',1,2),(3,'Eos voluptatibus ea rem incidunt nostrum.','Sit dolorem eligendi numquam. Deserunt placeat recusandae rem dolore ratione. Et quisquam ipsa aliquam maxime excepturi numquam alias.','2021-01-23 10:26:29','2021-01-23 10:26:29',1,3),(4,'Veritatis reiciendis est et dolor itaque tempora.','Ut est est odio explicabo atque officia architecto. Et sit eaque rem in neque rem harum. Et amet sit optio veritatis unde numquam temporibus. Aliquid alias quisquam vel aperiam porro.','2021-01-23 10:26:29','2021-01-23 10:26:29',1,4),(5,'Kuba','madry gosc','2021-01-23 10:26:29','2021-01-23 10:26:29',2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_12_15_145710_create_comments_table',1),(5,'2021_01_12_113821_create_quizzes_table',1),(6,'2021_01_12_135444_create_questions_table',1),(7,'2021_01_12_143411_add_quiz_id_and_user_id_to_comments_table',1),(8,'2021_01_12_172347_create_options_table',1),(9,'2021_01_13_134656_create_languages_table',1),(10,'2021_01_13_135157_add_language_id_to_quizzes_table',1),(11,'2021_01_15_203911_set_language_unique_on_language_table',1),(12,'2021_01_22_142810_create_solutions_table',1),(13,'2021_01_22_161644_add_quiz_field_to_solutions_table',1),(14,'2021_01_22_223425_create_results_table',1);
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
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/002233?text=cats+repellat',1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(2,'https://via.placeholder.com/640x480.png/008877?text=cats+pariatur',1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(3,'https://via.placeholder.com/640x480.png/002200?text=cats+sunt',1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(4,'https://via.placeholder.com/640x480.png/003366?text=cats+nemo',1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(5,'https://via.placeholder.com/640x480.png/00ff11?text=cats+hic',2,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(6,'https://via.placeholder.com/640x480.png/0055cc?text=cats+repellendus',2,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(7,'https://via.placeholder.com/640x480.png/007744?text=cats+qui',2,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(8,'https://via.placeholder.com/640x480.png/00dd77?text=cats+iure',2,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(9,'https://via.placeholder.com/640x480.png/00dd55?text=cats+delectus',3,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(10,'https://via.placeholder.com/640x480.png/001188?text=cats+voluptates',3,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(11,'https://via.placeholder.com/640x480.png/001155?text=cats+sunt',3,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(12,'https://via.placeholder.com/640x480.png/0044bb?text=cats+mollitia',3,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(13,'https://via.placeholder.com/640x480.png/0033ee?text=cats+velit',4,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(14,'https://via.placeholder.com/640x480.png/0000bb?text=cats+libero',4,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(15,'https://via.placeholder.com/640x480.png/00ee22?text=cats+dicta',4,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(16,'https://via.placeholder.com/640x480.png/00ff88?text=cats+quis',4,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(17,'https://via.placeholder.com/640x480.png/00aa99?text=cats+dolor',5,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(18,'https://via.placeholder.com/640x480.png/004444?text=cats+voluptas',5,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(19,'https://via.placeholder.com/640x480.png/0033ee?text=cats+itaque',5,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(20,'https://via.placeholder.com/640x480.png/009911?text=cats+omnis',5,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(21,'https://via.placeholder.com/640x480.png/00cc55?text=cats+maxime',6,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(22,'https://via.placeholder.com/640x480.png/0066ee?text=cats+delectus',6,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(23,'https://via.placeholder.com/640x480.png/007788?text=cats+alias',6,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(24,'https://via.placeholder.com/640x480.png/0044ee?text=cats+quisquam',6,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(25,'https://via.placeholder.com/640x480.png/00dd22?text=cats+reiciendis',7,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(26,'https://via.placeholder.com/640x480.png/003377?text=cats+pariatur',7,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(27,'https://via.placeholder.com/640x480.png/0055dd?text=cats+qui',7,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(28,'https://via.placeholder.com/640x480.png/00bb66?text=cats+non',7,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(29,'https://via.placeholder.com/640x480.png/002211?text=cats+nihil',8,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(30,'https://via.placeholder.com/640x480.png/00bb33?text=cats+sed',8,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(31,'https://via.placeholder.com/640x480.png/002288?text=cats+dolorem',8,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(32,'https://via.placeholder.com/640x480.png/0033cc?text=cats+animi',8,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(33,'https://via.placeholder.com/640x480.png/0088ff?text=cats+rerum',9,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(34,'https://via.placeholder.com/640x480.png/008866?text=cats+odit',9,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(35,'https://via.placeholder.com/640x480.png/0033aa?text=cats+ut',9,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(36,'https://via.placeholder.com/640x480.png/005511?text=cats+velit',9,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(37,'https://via.placeholder.com/640x480.png/009977?text=cats+ratione',10,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(38,'https://via.placeholder.com/640x480.png/00ff77?text=cats+necessitatibus',10,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(39,'https://via.placeholder.com/640x480.png/0011dd?text=cats+voluptate',10,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(40,'https://via.placeholder.com/640x480.png/00cc66?text=cats+nihil',10,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(41,'https://via.placeholder.com/640x480.png/00cc55?text=cats+blanditiis',11,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(42,'https://via.placeholder.com/640x480.png/0044dd?text=cats+dolorem',11,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(43,'https://via.placeholder.com/640x480.png/003388?text=cats+sit',11,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(44,'https://via.placeholder.com/640x480.png/000055?text=cats+molestiae',11,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(45,'https://via.placeholder.com/640x480.png/0011bb?text=cats+non',12,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(46,'https://via.placeholder.com/640x480.png/00ff33?text=cats+ipsam',12,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(47,'https://via.placeholder.com/640x480.png/0011aa?text=cats+doloribus',12,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(48,'https://via.placeholder.com/640x480.png/007755?text=cats+repellat',12,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(49,'https://via.placeholder.com/640x480.png/0044bb?text=cats+doloremque',13,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(50,'https://via.placeholder.com/640x480.png/00cc77?text=cats+ut',13,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(51,'https://via.placeholder.com/640x480.png/0011dd?text=cats+sed',13,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(52,'https://via.placeholder.com/640x480.png/0066cc?text=cats+ipsa',13,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(53,'https://via.placeholder.com/640x480.png/006622?text=cats+vero',14,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(54,'https://via.placeholder.com/640x480.png/00aacc?text=cats+et',14,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(55,'https://via.placeholder.com/640x480.png/008899?text=cats+est',14,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(56,'https://via.placeholder.com/640x480.png/000077?text=cats+facilis',14,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(57,'https://via.placeholder.com/640x480.png/00ccaa?text=cats+eius',15,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(58,'https://via.placeholder.com/640x480.png/005511?text=cats+quidem',15,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(59,'https://via.placeholder.com/640x480.png/00ff99?text=cats+eveniet',15,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(60,'https://via.placeholder.com/640x480.png/0055bb?text=cats+repudiandae',15,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(61,'https://via.placeholder.com/640x480.png/0099bb?text=cats+aut',16,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(62,'https://via.placeholder.com/640x480.png/001199?text=cats+temporibus',16,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(63,'https://via.placeholder.com/640x480.png/0088cc?text=cats+sunt',16,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(64,'https://via.placeholder.com/640x480.png/00bbbb?text=cats+nostrum',16,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(65,'https://via.placeholder.com/640x480.png/00ff66?text=cats+quibusdam',17,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(66,'https://via.placeholder.com/640x480.png/009900?text=cats+rerum',17,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(67,'https://via.placeholder.com/640x480.png/00bb44?text=cats+excepturi',17,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(68,'https://via.placeholder.com/640x480.png/005555?text=cats+vitae',17,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(69,'https://via.placeholder.com/640x480.png/00aa11?text=cats+velit',18,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(70,'https://via.placeholder.com/640x480.png/008888?text=cats+laudantium',18,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(71,'https://via.placeholder.com/640x480.png/00cc99?text=cats+est',18,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(72,'https://via.placeholder.com/640x480.png/00dd66?text=cats+qui',18,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(73,'https://via.placeholder.com/640x480.png/0033aa?text=cats+expedita',19,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(74,'https://via.placeholder.com/640x480.png/002211?text=cats+reiciendis',19,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(75,'https://via.placeholder.com/640x480.png/000022?text=cats+neque',19,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(76,'https://via.placeholder.com/640x480.png/00ff77?text=cats+ut',19,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(77,'https://via.placeholder.com/640x480.png/00dd44?text=cats+in',20,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(78,'https://via.placeholder.com/640x480.png/005522?text=cats+nemo',20,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(79,'https://via.placeholder.com/640x480.png/00bbff?text=cats+velit',20,'2021-01-23 10:26:29','2021-01-23 10:26:29'),(80,'https://via.placeholder.com/640x480.png/0000dd?text=cats+et',20,'2021-01-23 10:26:29','2021-01-23 10:26:29');
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
INSERT INTO `questions` VALUES (1,'quod','facere',1,1,5,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(2,'doloribus','et',1,1,3,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(3,'veritatis','et',1,1,3,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(4,'est','qui',1,1,4,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(5,'optio','voluptas',1,1,1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(6,'aliquam','enim',2,1,1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(7,'ipsum','voluptatem',2,1,4,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(8,'excepturi','magni',2,1,4,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(9,'nihil','facere',2,1,1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(10,'alias','earum',2,1,1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(11,'aut','sunt',3,1,1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(12,'quo','dolor',3,1,3,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(13,'voluptatem','porro',3,1,5,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(14,'quae','vel',3,1,1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(15,'dicta','vel',3,1,1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(16,'quia','et',4,1,1,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(17,'qui','dolor',4,1,2,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(18,'veritatis','repudiandae',4,1,2,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(19,'necessitatibus','est',4,1,4,'2021-01-23 10:26:28','2021-01-23 10:26:28'),(20,'aut','dolor',4,1,3,'2021-01-23 10:26:28','2021-01-23 10:26:28');
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
INSERT INTO `quizzes` VALUES (1,1,'2021-01-23 10:26:27','2021-01-23 10:26:27',1),(2,1,'2021-01-23 10:26:27','2021-01-23 10:26:27',1),(3,2,'2021-01-23 10:26:28','2021-01-23 10:26:28',2),(4,2,'2021-01-23 10:26:28','2021-01-23 10:26:28',2);
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
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$hUJCxiQ.fCMZj9YOEIrQ8.CG4Y08.2Nw6jJOATr4oBEVnIRPcJiOG',NULL,NULL,NULL),(2,'Alfons','alfons@gmail.com',NULL,'$2y$10$nQrTKlukNmSOflyheXxm8ORkCR49oyGfHPEaLaYcaeWBOiqnhxZdK',NULL,NULL,NULL),(3,'Creola Jaskolski','cdonnelly@example.com','2021-01-23 10:26:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','6Dujy342QM','2021-01-23 10:26:27','2021-01-23 10:26:27'),(4,'Elenor Hirthe','kaitlyn91@example.org','2021-01-23 10:26:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','qhSkWBpWxf','2021-01-23 10:26:27','2021-01-23 10:26:27'),(5,'Lorenza Luettgen','frankie.sipes@example.com','2021-01-23 10:26:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WhoHgw7Zno','2021-01-23 10:26:27','2021-01-23 10:26:27'),(6,'Willis Daniel','kristian61@example.com','2021-01-23 10:26:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','bfbaFDedbC','2021-01-23 10:26:27','2021-01-23 10:26:27');
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

-- Dump completed on 2021-01-23 10:26:33
