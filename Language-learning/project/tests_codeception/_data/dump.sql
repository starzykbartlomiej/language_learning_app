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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Ducimus cum sequi repellendus minima.','Saepe quia accusantium id. Molestias id facere dolore sit repudiandae. Atque voluptates vel vel. Odit vero ipsam harum ullam.','2021-01-23 16:29:38','2021-01-23 16:29:38',1,1),(2,'Sed consequuntur aliquam doloremque quidem.','Dolorem quae velit reprehenderit rem eum et consequatur omnis. Et autem et qui. Qui quod voluptatibus aut aspernatur. Dolorem omnis laudantium unde sed rem.','2021-01-23 16:29:38','2021-01-23 16:29:38',1,2),(3,'Quo excepturi eos dignissimos voluptatibus hic.','Enim impedit vero nam id explicabo aut neque. Veritatis saepe voluptatem incidunt omnis earum iure. Facere omnis doloremque consequuntur aliquam non.','2021-01-23 16:29:38','2021-01-23 16:29:38',1,3),(4,'Nam est atque tempora et ut est voluptatem sapiente.','Soluta ut facere ducimus omnis ipsam maiores ut ut. Esse ipsum blanditiis voluptas et cum architecto quam. Distinctio repellendus est earum. Pariatur iure molestias fugiat dolore aspernatur.','2021-01-23 16:29:38','2021-01-23 16:29:38',1,4),(5,'Kuba','madry gosc','2021-01-23 16:29:38','2021-01-23 16:29:38',2,1),(6,'wwwwww','wwwww','2021-01-23 16:43:45','2021-01-23 16:43:45',4,1);
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
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_12_15_145710_create_comments_table',1),(5,'2021_01_12_113821_create_quizzes_table',1),(6,'2021_01_12_135444_create_questions_table',1),(7,'2021_01_12_143411_add_quiz_id_and_user_id_to_comments_table',1),(8,'2021_01_12_172347_create_options_table',1),(9,'2021_01_13_134656_create_languages_table',1),(10,'2021_01_13_135157_add_language_id_to_quizzes_table',1),(11,'2021_01_15_203911_set_language_unique_on_language_table',1),(12,'2021_01_22_142810_create_solutions_table',1),(13,'2021_01_22_161644_add_quiz_field_to_solutions_table',1),(14,'2021_01_22_223425_create_results_table',1),(15,'2021_01_23_165104_create_subcomments_table',2);
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
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/0022ee?text=cats+beatae',1,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(2,'https://via.placeholder.com/640x480.png/002233?text=cats+et',1,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(3,'https://via.placeholder.com/640x480.png/00ffcc?text=cats+aspernatur',1,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(4,'https://via.placeholder.com/640x480.png/0022bb?text=cats+illo',1,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(5,'https://via.placeholder.com/640x480.png/004433?text=cats+vitae',2,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(6,'https://via.placeholder.com/640x480.png/008822?text=cats+eos',2,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(7,'https://via.placeholder.com/640x480.png/007766?text=cats+est',2,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(8,'https://via.placeholder.com/640x480.png/005533?text=cats+iure',2,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(9,'https://via.placeholder.com/640x480.png/005522?text=cats+dolores',3,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(10,'https://via.placeholder.com/640x480.png/007722?text=cats+nesciunt',3,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(11,'https://via.placeholder.com/640x480.png/007777?text=cats+repellendus',3,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(12,'https://via.placeholder.com/640x480.png/009900?text=cats+quis',3,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(13,'https://via.placeholder.com/640x480.png/0077aa?text=cats+harum',4,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(14,'https://via.placeholder.com/640x480.png/00eedd?text=cats+quae',4,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(15,'https://via.placeholder.com/640x480.png/003377?text=cats+aliquid',4,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(16,'https://via.placeholder.com/640x480.png/005599?text=cats+dolor',4,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(17,'https://via.placeholder.com/640x480.png/0033ff?text=cats+id',5,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(18,'https://via.placeholder.com/640x480.png/00ff22?text=cats+omnis',5,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(19,'https://via.placeholder.com/640x480.png/00ff99?text=cats+ipsam',5,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(20,'https://via.placeholder.com/640x480.png/0000bb?text=cats+eos',5,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(21,'https://via.placeholder.com/640x480.png/0066dd?text=cats+illum',6,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(22,'https://via.placeholder.com/640x480.png/00bb11?text=cats+molestiae',6,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(23,'https://via.placeholder.com/640x480.png/0099ff?text=cats+quod',6,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(24,'https://via.placeholder.com/640x480.png/00bbee?text=cats+corporis',6,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(25,'https://via.placeholder.com/640x480.png/00ddbb?text=cats+deleniti',7,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(26,'https://via.placeholder.com/640x480.png/0088aa?text=cats+et',7,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(27,'https://via.placeholder.com/640x480.png/006633?text=cats+libero',7,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(28,'https://via.placeholder.com/640x480.png/004499?text=cats+neque',7,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(29,'https://via.placeholder.com/640x480.png/002244?text=cats+debitis',8,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(30,'https://via.placeholder.com/640x480.png/001144?text=cats+laborum',8,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(31,'https://via.placeholder.com/640x480.png/001177?text=cats+suscipit',8,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(32,'https://via.placeholder.com/640x480.png/00ff88?text=cats+assumenda',8,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(33,'https://via.placeholder.com/640x480.png/0088ee?text=cats+et',9,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(34,'https://via.placeholder.com/640x480.png/00bb66?text=cats+ducimus',9,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(35,'https://via.placeholder.com/640x480.png/00bb66?text=cats+eveniet',9,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(36,'https://via.placeholder.com/640x480.png/0022dd?text=cats+nam',9,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(37,'https://via.placeholder.com/640x480.png/0066ff?text=cats+voluptatem',10,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(38,'https://via.placeholder.com/640x480.png/00dd88?text=cats+ipsa',10,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(39,'https://via.placeholder.com/640x480.png/003355?text=cats+qui',10,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(40,'https://via.placeholder.com/640x480.png/00dd22?text=cats+nihil',10,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(41,'https://via.placeholder.com/640x480.png/00eecc?text=cats+unde',11,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(42,'https://via.placeholder.com/640x480.png/0011aa?text=cats+veniam',11,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(43,'https://via.placeholder.com/640x480.png/0022ee?text=cats+aliquid',11,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(44,'https://via.placeholder.com/640x480.png/0077dd?text=cats+itaque',11,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(45,'https://via.placeholder.com/640x480.png/0000cc?text=cats+eum',12,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(46,'https://via.placeholder.com/640x480.png/0077aa?text=cats+sapiente',12,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(47,'https://via.placeholder.com/640x480.png/001133?text=cats+explicabo',12,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(48,'https://via.placeholder.com/640x480.png/00ffdd?text=cats+et',12,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(49,'https://via.placeholder.com/640x480.png/00bb33?text=cats+eius',13,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(50,'https://via.placeholder.com/640x480.png/00aa66?text=cats+quasi',13,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(51,'https://via.placeholder.com/640x480.png/0022aa?text=cats+labore',13,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(52,'https://via.placeholder.com/640x480.png/00ff44?text=cats+magnam',13,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(53,'https://via.placeholder.com/640x480.png/006666?text=cats+dolore',14,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(54,'https://via.placeholder.com/640x480.png/0099cc?text=cats+molestiae',14,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(55,'https://via.placeholder.com/640x480.png/009988?text=cats+vitae',14,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(56,'https://via.placeholder.com/640x480.png/007766?text=cats+quaerat',14,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(57,'https://via.placeholder.com/640x480.png/00ff99?text=cats+inventore',15,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(58,'https://via.placeholder.com/640x480.png/004455?text=cats+dignissimos',15,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(59,'https://via.placeholder.com/640x480.png/0088bb?text=cats+eos',15,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(60,'https://via.placeholder.com/640x480.png/009944?text=cats+itaque',15,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(61,'https://via.placeholder.com/640x480.png/0099dd?text=cats+aperiam',16,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(62,'https://via.placeholder.com/640x480.png/00ee44?text=cats+iste',16,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(63,'https://via.placeholder.com/640x480.png/004499?text=cats+odit',16,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(64,'https://via.placeholder.com/640x480.png/00bb33?text=cats+doloremque',16,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(65,'https://via.placeholder.com/640x480.png/0011ee?text=cats+libero',17,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(66,'https://via.placeholder.com/640x480.png/001155?text=cats+eos',17,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(67,'https://via.placeholder.com/640x480.png/00ff99?text=cats+consequatur',17,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(68,'https://via.placeholder.com/640x480.png/007722?text=cats+ex',17,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(69,'https://via.placeholder.com/640x480.png/00ff33?text=cats+quia',18,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(70,'https://via.placeholder.com/640x480.png/007777?text=cats+autem',18,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(71,'https://via.placeholder.com/640x480.png/00bb11?text=cats+sed',18,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(72,'https://via.placeholder.com/640x480.png/0000dd?text=cats+expedita',18,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(73,'https://via.placeholder.com/640x480.png/0055cc?text=cats+adipisci',19,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(74,'https://via.placeholder.com/640x480.png/008888?text=cats+quis',19,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(75,'https://via.placeholder.com/640x480.png/00dd99?text=cats+voluptatibus',19,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(76,'https://via.placeholder.com/640x480.png/0088cc?text=cats+quia',19,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(77,'https://via.placeholder.com/640x480.png/00cc99?text=cats+dolor',20,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(78,'https://via.placeholder.com/640x480.png/0033ee?text=cats+fugit',20,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(79,'https://via.placeholder.com/640x480.png/00aa66?text=cats+natus',20,'2021-01-23 16:29:38','2021-01-23 16:29:38'),(80,'https://via.placeholder.com/640x480.png/003300?text=cats+quae',20,'2021-01-23 16:29:38','2021-01-23 16:29:38');
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
INSERT INTO `questions` VALUES (1,'rerum','quae',1,1,1,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(2,'libero','sequi',1,1,4,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(3,'quia','eaque',1,1,1,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(4,'autem','non',1,1,1,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(5,'consectetur','dicta',1,1,3,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(6,'aut','similique',2,1,3,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(7,'porro','error',2,1,4,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(8,'velit','ea',2,1,5,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(9,'veniam','aut',2,1,5,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(10,'voluptates','dolorem',2,1,4,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(11,'possimus','modi',3,1,1,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(12,'qui','eum',3,1,5,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(13,'aut','accusantium',3,1,4,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(14,'voluptatum','distinctio',3,1,5,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(15,'expedita','quaerat',3,1,4,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(16,'quos','id',4,1,2,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(17,'ex','impedit',4,1,5,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(18,'maxime','non',4,1,4,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(19,'nihil','sed',4,1,5,'2021-01-23 16:29:37','2021-01-23 16:29:37'),(20,'animi','sint',4,1,2,'2021-01-23 16:29:37','2021-01-23 16:29:37');
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
INSERT INTO `quizzes` VALUES (1,1,'2021-01-23 16:29:37','2021-01-23 16:29:37',1),(2,1,'2021-01-23 16:29:37','2021-01-23 16:29:37',1),(3,2,'2021-01-23 16:29:37','2021-01-23 16:29:37',2),(4,2,'2021-01-23 16:29:37','2021-01-23 16:29:37',2);
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
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$hSrLKrkspkgosBPMi/EcFeVRTb9h7eztDduOZIqH.V1yqYebEPKce','4imba1F7j8Jc0bNkOxPvBnHQtqonwQEfygz5XiSEOJcs0CO3ZmU7ZPsEY0Le',NULL,NULL),(2,'Alfons','alfons@gmail.com',NULL,'$2y$10$AO46X/Gx8RefSVf0QJmgf.XTXKtI9MOPcjQwLVO8Bc9yzemf/thWS',NULL,NULL,NULL),(3,'Dr. Clinton Spinka','blick.juana@example.com','2021-01-23 16:29:37','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9fxLTmnRTh','2021-01-23 16:29:37','2021-01-23 16:29:37'),(4,'Prof. Merritt White','becker.brent@example.com','2021-01-23 16:29:37','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','wjmTb50K2R','2021-01-23 16:29:37','2021-01-23 16:29:37'),(5,'Prof. Osborne Morissette','geraldine.rosenbaum@example.com','2021-01-23 16:29:37','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','vF9TFUWmUj','2021-01-23 16:29:37','2021-01-23 16:29:37'),(6,'Claude Mraz','bhirthe@example.com','2021-01-23 16:29:37','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','SE3NB63emN','2021-01-23 16:29:37','2021-01-23 16:29:37');
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

-- Dump completed on 2021-01-23 17:08:14
