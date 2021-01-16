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
INSERT INTO `comments` VALUES (1,'Tempore tempore est recusandae numquam.','Repellendus alias vitae ad quidem architecto vero exercitationem. Ipsa ipsum sed et eveniet sed quia sequi. Ullam dolorem et ut nostrum qui nesciunt veniam ut. Veniam distinctio ab laborum et.','2021-01-16 21:53:37','2021-01-16 21:53:37',1,1),(2,'Qui nihil veritatis cumque est excepturi nulla rerum.','A eos iure deleniti ad ducimus hic delectus et. Repellat totam non sunt nobis accusantium eaque officia. Quo iusto et non.','2021-01-16 21:53:37','2021-01-16 21:53:37',1,2),(3,'Atque eaque molestias modi cupiditate optio velit.','Quia aliquam nihil cum. Accusantium cupiditate enim necessitatibus nam. In facere aliquid eum quia.','2021-01-16 21:53:37','2021-01-16 21:53:37',1,3),(4,'Maiores aut repellat suscipit et explicabo.','Et molestias sit est sed. Quod quaerat maiores exercitationem magni. Itaque voluptas unde vel id rem et cumque commodi.','2021-01-16 21:53:37','2021-01-16 21:53:37',1,4);
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
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/00dd77?text=cats+rerum',1,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(2,'https://via.placeholder.com/640x480.png/003311?text=cats+omnis',1,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(3,'https://via.placeholder.com/640x480.png/00ff66?text=cats+dolorem',1,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(4,'https://via.placeholder.com/640x480.png/002200?text=cats+aut',1,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(5,'https://via.placeholder.com/640x480.png/00dd88?text=cats+quis',2,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(6,'https://via.placeholder.com/640x480.png/005544?text=cats+non',2,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(7,'https://via.placeholder.com/640x480.png/00eeff?text=cats+eum',2,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(8,'https://via.placeholder.com/640x480.png/0088ee?text=cats+voluptatibus',2,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(9,'https://via.placeholder.com/640x480.png/00ccaa?text=cats+sit',3,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(10,'https://via.placeholder.com/640x480.png/00bb77?text=cats+animi',3,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(11,'https://via.placeholder.com/640x480.png/00aacc?text=cats+sunt',3,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(12,'https://via.placeholder.com/640x480.png/0077ff?text=cats+officia',3,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(13,'https://via.placeholder.com/640x480.png/003333?text=cats+maxime',4,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(14,'https://via.placeholder.com/640x480.png/0099ee?text=cats+iure',4,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(15,'https://via.placeholder.com/640x480.png/00bb11?text=cats+dicta',4,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(16,'https://via.placeholder.com/640x480.png/00ffee?text=cats+nam',4,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(17,'https://via.placeholder.com/640x480.png/00cc00?text=cats+facilis',5,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(18,'https://via.placeholder.com/640x480.png/007788?text=cats+ea',5,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(19,'https://via.placeholder.com/640x480.png/0022cc?text=cats+dolorem',5,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(20,'https://via.placeholder.com/640x480.png/009955?text=cats+explicabo',5,'2021-01-16 21:53:36','2021-01-16 21:53:36'),(21,'https://via.placeholder.com/640x480.png/0011ff?text=cats+reprehenderit',6,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(22,'https://via.placeholder.com/640x480.png/00dd44?text=cats+omnis',6,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(23,'https://via.placeholder.com/640x480.png/00aabb?text=cats+sit',6,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(24,'https://via.placeholder.com/640x480.png/00bb88?text=cats+ad',6,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(25,'https://via.placeholder.com/640x480.png/00bbbb?text=cats+perspiciatis',7,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(26,'https://via.placeholder.com/640x480.png/00ccdd?text=cats+tenetur',7,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(27,'https://via.placeholder.com/640x480.png/009944?text=cats+reprehenderit',7,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(28,'https://via.placeholder.com/640x480.png/00bbee?text=cats+quas',7,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(29,'https://via.placeholder.com/640x480.png/00ff66?text=cats+cum',8,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(30,'https://via.placeholder.com/640x480.png/00ff88?text=cats+omnis',8,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(31,'https://via.placeholder.com/640x480.png/00dd11?text=cats+ea',8,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(32,'https://via.placeholder.com/640x480.png/0055ff?text=cats+natus',8,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(33,'https://via.placeholder.com/640x480.png/0066ff?text=cats+possimus',9,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(34,'https://via.placeholder.com/640x480.png/0055ff?text=cats+architecto',9,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(35,'https://via.placeholder.com/640x480.png/006622?text=cats+odit',9,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(36,'https://via.placeholder.com/640x480.png/001144?text=cats+modi',9,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(37,'https://via.placeholder.com/640x480.png/0088ff?text=cats+ducimus',10,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(38,'https://via.placeholder.com/640x480.png/0088cc?text=cats+qui',10,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(39,'https://via.placeholder.com/640x480.png/007744?text=cats+amet',10,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(40,'https://via.placeholder.com/640x480.png/00ff22?text=cats+labore',10,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(41,'https://via.placeholder.com/640x480.png/0011dd?text=cats+libero',11,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(42,'https://via.placeholder.com/640x480.png/009933?text=cats+illum',11,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(43,'https://via.placeholder.com/640x480.png/002266?text=cats+nam',11,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(44,'https://via.placeholder.com/640x480.png/006666?text=cats+repellendus',11,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(45,'https://via.placeholder.com/640x480.png/006644?text=cats+et',12,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(46,'https://via.placeholder.com/640x480.png/008822?text=cats+ex',12,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(47,'https://via.placeholder.com/640x480.png/0088ee?text=cats+suscipit',12,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(48,'https://via.placeholder.com/640x480.png/00ccdd?text=cats+velit',12,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(49,'https://via.placeholder.com/640x480.png/0022ee?text=cats+magnam',13,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(50,'https://via.placeholder.com/640x480.png/005588?text=cats+possimus',13,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(51,'https://via.placeholder.com/640x480.png/00cc66?text=cats+rem',13,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(52,'https://via.placeholder.com/640x480.png/008822?text=cats+officiis',13,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(53,'https://via.placeholder.com/640x480.png/00ee88?text=cats+enim',14,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(54,'https://via.placeholder.com/640x480.png/00ee77?text=cats+tempore',14,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(55,'https://via.placeholder.com/640x480.png/000000?text=cats+voluptatibus',14,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(56,'https://via.placeholder.com/640x480.png/00ff77?text=cats+blanditiis',14,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(57,'https://via.placeholder.com/640x480.png/002211?text=cats+consequatur',15,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(58,'https://via.placeholder.com/640x480.png/00ffcc?text=cats+explicabo',15,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(59,'https://via.placeholder.com/640x480.png/006622?text=cats+libero',15,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(60,'https://via.placeholder.com/640x480.png/002233?text=cats+aperiam',15,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(61,'https://via.placeholder.com/640x480.png/009900?text=cats+optio',16,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(62,'https://via.placeholder.com/640x480.png/00ee99?text=cats+commodi',16,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(63,'https://via.placeholder.com/640x480.png/005599?text=cats+quaerat',16,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(64,'https://via.placeholder.com/640x480.png/000000?text=cats+amet',16,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(65,'https://via.placeholder.com/640x480.png/00ee99?text=cats+totam',17,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(66,'https://via.placeholder.com/640x480.png/00ff33?text=cats+asperiores',17,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(67,'https://via.placeholder.com/640x480.png/00dd88?text=cats+corrupti',17,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(68,'https://via.placeholder.com/640x480.png/001122?text=cats+et',17,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(69,'https://via.placeholder.com/640x480.png/008822?text=cats+qui',18,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(70,'https://via.placeholder.com/640x480.png/006644?text=cats+qui',18,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(71,'https://via.placeholder.com/640x480.png/0033cc?text=cats+vero',18,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(72,'https://via.placeholder.com/640x480.png/0055bb?text=cats+eligendi',18,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(73,'https://via.placeholder.com/640x480.png/00ddff?text=cats+ut',19,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(74,'https://via.placeholder.com/640x480.png/008866?text=cats+rerum',19,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(75,'https://via.placeholder.com/640x480.png/009900?text=cats+eos',19,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(76,'https://via.placeholder.com/640x480.png/007777?text=cats+cupiditate',19,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(77,'https://via.placeholder.com/640x480.png/00ffee?text=cats+rem',20,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(78,'https://via.placeholder.com/640x480.png/000033?text=cats+et',20,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(79,'https://via.placeholder.com/640x480.png/00bb55?text=cats+exercitationem',20,'2021-01-16 21:53:37','2021-01-16 21:53:37'),(80,'https://via.placeholder.com/640x480.png/003366?text=cats+repellat',20,'2021-01-16 21:53:37','2021-01-16 21:53:37');
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
INSERT INTO `questions` VALUES (1,'aut','eum',1,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(2,'eveniet','aut',1,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(3,'illo','nesciunt',1,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(4,'molestiae','et',1,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(5,'maiores','ut',1,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(6,'earum','animi',2,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(7,'sit','saepe',2,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(8,'dolor','qui',2,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(9,'sed','rerum',2,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(10,'qui','molestias',2,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(11,'dolorem','minima',3,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(12,'et','aut',3,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(13,'vitae','aperiam',3,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(14,'sint','veritatis',3,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(15,'autem','laboriosam',3,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(16,'quia','ex',4,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(17,'deserunt','fuga',4,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(18,'magni','nostrum',4,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(19,'dolore','asperiores',4,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36'),(20,'officiis','neque',4,1,'words','2021-01-16 21:53:36','2021-01-16 21:53:36');
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
INSERT INTO `quizzes` VALUES (1,1,'2021-01-16 21:53:36','2021-01-16 21:53:36',1),(2,1,'2021-01-16 21:53:36','2021-01-16 21:53:36',1),(3,1,'2021-01-16 21:53:36','2021-01-16 21:53:36',2),(4,1,'2021-01-16 21:53:36','2021-01-16 21:53:36',2);
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
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$ysm8q5r/Yj87qlB/s.8Hnel0oaSihdkElEhC.VK8YH.v2EcEmetXq',NULL,NULL,NULL),(2,'Armand Funk','jessyca91@example.org','2021-01-16 21:53:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','DdftbLoisV','2021-01-16 21:53:36','2021-01-16 21:53:36'),(3,'Art Hintz','jennifer89@example.org','2021-01-16 21:53:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','GQCTNm0WT9','2021-01-16 21:53:36','2021-01-16 21:53:36'),(4,'Doyle Spinka','jeanne.hackett@example.net','2021-01-16 21:53:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','st8diV1g7U','2021-01-16 21:53:36','2021-01-16 21:53:36'),(5,'Elliot Sauer','schmitt.myron@example.net','2021-01-16 21:53:36','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','gTbcz739Zi','2021-01-16 21:53:36','2021-01-16 21:53:36');
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

-- Dump completed on 2021-01-16 21:53:47
