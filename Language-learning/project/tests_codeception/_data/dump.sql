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
INSERT INTO `comments` VALUES (1,'Sequi aut inventore dolorem sed aut porro expedita.','Impedit et quia ad sunt veritatis. Occaecati modi est consequatur doloremque eum veniam. Totam vel voluptas omnis dolores odio est qui. Quod repellendus accusamus est minima possimus adipisci autem sed.','2021-01-15 20:42:36','2021-01-15 20:42:36',1,1),(2,'Est est aliquam similique eaque sed.','Nostrum vitae veniam dolor debitis et sed. Autem neque ipsa voluptatem non fugiat dolore et vero. Tenetur reiciendis sint nemo. Nesciunt sed ad ipsa consequuntur.','2021-01-15 20:42:36','2021-01-15 20:42:36',1,2),(3,'Ipsum consequatur facere sint.','Molestias accusamus maiores necessitatibus recusandae ducimus iusto velit incidunt. Non iure consequuntur et facere. Explicabo adipisci animi tempora ex velit.','2021-01-15 20:42:36','2021-01-15 20:42:36',1,3),(4,'Laborum aut quidem odio praesentium temporibus.','Velit natus iste deleniti et aut placeat. Aliquam ea temporibus molestiae praesentium. Ut nemo nobis qui rerum quibusdam ducimus.','2021-01-15 20:42:36','2021-01-15 20:42:36',1,4);
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
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/002244?text=cats+est',1,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(2,'https://via.placeholder.com/640x480.png/0066dd?text=cats+omnis',1,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(3,'https://via.placeholder.com/640x480.png/0099cc?text=cats+ut',1,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(4,'https://via.placeholder.com/640x480.png/004400?text=cats+aut',1,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(5,'https://via.placeholder.com/640x480.png/00ee99?text=cats+tempore',2,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(6,'https://via.placeholder.com/640x480.png/007711?text=cats+assumenda',2,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(7,'https://via.placeholder.com/640x480.png/007755?text=cats+eveniet',2,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(8,'https://via.placeholder.com/640x480.png/0088aa?text=cats+nulla',2,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(9,'https://via.placeholder.com/640x480.png/0022dd?text=cats+vel',3,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(10,'https://via.placeholder.com/640x480.png/002255?text=cats+dolorem',3,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(11,'https://via.placeholder.com/640x480.png/008888?text=cats+iste',3,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(12,'https://via.placeholder.com/640x480.png/000099?text=cats+alias',3,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(13,'https://via.placeholder.com/640x480.png/0055aa?text=cats+delectus',4,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(14,'https://via.placeholder.com/640x480.png/005577?text=cats+repellendus',4,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(15,'https://via.placeholder.com/640x480.png/009988?text=cats+suscipit',4,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(16,'https://via.placeholder.com/640x480.png/002288?text=cats+officia',4,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(17,'https://via.placeholder.com/640x480.png/007766?text=cats+numquam',5,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(18,'https://via.placeholder.com/640x480.png/001144?text=cats+voluptatem',5,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(19,'https://via.placeholder.com/640x480.png/0022cc?text=cats+vel',5,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(20,'https://via.placeholder.com/640x480.png/0011cc?text=cats+rem',5,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(21,'https://via.placeholder.com/640x480.png/004499?text=cats+recusandae',6,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(22,'https://via.placeholder.com/640x480.png/0055dd?text=cats+voluptatibus',6,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(23,'https://via.placeholder.com/640x480.png/000022?text=cats+repellat',6,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(24,'https://via.placeholder.com/640x480.png/0011cc?text=cats+aut',6,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(25,'https://via.placeholder.com/640x480.png/00cc88?text=cats+id',7,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(26,'https://via.placeholder.com/640x480.png/0055bb?text=cats+ad',7,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(27,'https://via.placeholder.com/640x480.png/000066?text=cats+officia',7,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(28,'https://via.placeholder.com/640x480.png/001166?text=cats+ullam',7,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(29,'https://via.placeholder.com/640x480.png/0099aa?text=cats+officia',8,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(30,'https://via.placeholder.com/640x480.png/0033aa?text=cats+sit',8,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(31,'https://via.placeholder.com/640x480.png/003355?text=cats+voluptatibus',8,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(32,'https://via.placeholder.com/640x480.png/007766?text=cats+quod',8,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(33,'https://via.placeholder.com/640x480.png/00ee99?text=cats+nesciunt',9,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(34,'https://via.placeholder.com/640x480.png/00ddee?text=cats+ut',9,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(35,'https://via.placeholder.com/640x480.png/007799?text=cats+occaecati',9,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(36,'https://via.placeholder.com/640x480.png/007722?text=cats+voluptas',9,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(37,'https://via.placeholder.com/640x480.png/00ee00?text=cats+error',10,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(38,'https://via.placeholder.com/640x480.png/0088ff?text=cats+dignissimos',10,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(39,'https://via.placeholder.com/640x480.png/00aa22?text=cats+et',10,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(40,'https://via.placeholder.com/640x480.png/001155?text=cats+aperiam',10,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(41,'https://via.placeholder.com/640x480.png/00cc77?text=cats+voluptatem',11,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(42,'https://via.placeholder.com/640x480.png/00ddcc?text=cats+dolorem',11,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(43,'https://via.placeholder.com/640x480.png/007700?text=cats+sequi',11,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(44,'https://via.placeholder.com/640x480.png/00ddbb?text=cats+amet',11,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(45,'https://via.placeholder.com/640x480.png/005577?text=cats+exercitationem',12,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(46,'https://via.placeholder.com/640x480.png/004466?text=cats+et',12,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(47,'https://via.placeholder.com/640x480.png/0022ee?text=cats+quis',12,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(48,'https://via.placeholder.com/640x480.png/000022?text=cats+nesciunt',12,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(49,'https://via.placeholder.com/640x480.png/00ff22?text=cats+debitis',13,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(50,'https://via.placeholder.com/640x480.png/00bb66?text=cats+in',13,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(51,'https://via.placeholder.com/640x480.png/006655?text=cats+praesentium',13,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(52,'https://via.placeholder.com/640x480.png/00ff11?text=cats+labore',13,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(53,'https://via.placeholder.com/640x480.png/004488?text=cats+facilis',14,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(54,'https://via.placeholder.com/640x480.png/000011?text=cats+vero',14,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(55,'https://via.placeholder.com/640x480.png/006688?text=cats+qui',14,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(56,'https://via.placeholder.com/640x480.png/002233?text=cats+perferendis',14,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(57,'https://via.placeholder.com/640x480.png/000033?text=cats+et',15,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(58,'https://via.placeholder.com/640x480.png/002277?text=cats+rerum',15,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(59,'https://via.placeholder.com/640x480.png/00ffcc?text=cats+architecto',15,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(60,'https://via.placeholder.com/640x480.png/00ee44?text=cats+eos',15,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(61,'https://via.placeholder.com/640x480.png/00aa66?text=cats+omnis',16,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(62,'https://via.placeholder.com/640x480.png/00cc66?text=cats+voluptas',16,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(63,'https://via.placeholder.com/640x480.png/0022bb?text=cats+est',16,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(64,'https://via.placeholder.com/640x480.png/007755?text=cats+praesentium',16,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(65,'https://via.placeholder.com/640x480.png/001133?text=cats+quae',17,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(66,'https://via.placeholder.com/640x480.png/007711?text=cats+consequatur',17,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(67,'https://via.placeholder.com/640x480.png/0033ff?text=cats+repudiandae',17,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(68,'https://via.placeholder.com/640x480.png/0077cc?text=cats+molestiae',17,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(69,'https://via.placeholder.com/640x480.png/0000ee?text=cats+tempora',18,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(70,'https://via.placeholder.com/640x480.png/004433?text=cats+tenetur',18,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(71,'https://via.placeholder.com/640x480.png/00aa88?text=cats+aliquid',18,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(72,'https://via.placeholder.com/640x480.png/00dd44?text=cats+at',18,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(73,'https://via.placeholder.com/640x480.png/00eecc?text=cats+nostrum',19,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(74,'https://via.placeholder.com/640x480.png/008811?text=cats+et',19,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(75,'https://via.placeholder.com/640x480.png/009955?text=cats+temporibus',19,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(76,'https://via.placeholder.com/640x480.png/001155?text=cats+ex',19,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(77,'https://via.placeholder.com/640x480.png/001155?text=cats+magnam',20,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(78,'https://via.placeholder.com/640x480.png/001133?text=cats+dolore',20,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(79,'https://via.placeholder.com/640x480.png/00cc22?text=cats+ea',20,'2021-01-15 20:42:36','2021-01-15 20:42:36'),(80,'https://via.placeholder.com/640x480.png/007744?text=cats+laudantium',20,'2021-01-15 20:42:36','2021-01-15 20:42:36');
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
INSERT INTO `questions` VALUES (1,'a','porro',1,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(2,'quasi','nostrum',1,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(3,'aut','sed',1,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(4,'aut','similique',1,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(5,'recusandae','necessitatibus',1,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(6,'ipsum','et',2,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(7,'sapiente','ab',2,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(8,'quia','sit',2,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(9,'illum','soluta',2,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(10,'sint','voluptate',2,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(11,'soluta','commodi',3,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(12,'error','voluptas',3,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(13,'est','et',3,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(14,'vitae','ipsum',3,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(15,'corporis','non',3,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(16,'est','quia',4,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(17,'dolore','autem',4,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(18,'repellendus','distinctio',4,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(19,'dolores','molestiae',4,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36'),(20,'et','omnis',4,1,'words','2021-01-15 20:42:36','2021-01-15 20:42:36');
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
INSERT INTO `quizzes` VALUES (1,1,'2021-01-15 20:42:35','2021-01-15 20:42:35',1),(2,1,'2021-01-15 20:42:35','2021-01-15 20:42:35',1),(3,1,'2021-01-15 20:42:35','2021-01-15 20:42:35',2),(4,1,'2021-01-15 20:42:35','2021-01-15 20:42:35',2);
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
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$JDCpMrXbzcTmT3W11FVJS.Xu6U5MS1mBgmoMcix3MEMe6EAPVD0dm',NULL,NULL,NULL),(2,'Mrs. Patience Stracke','wuckert.meggie@example.com','2021-01-15 20:42:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','M01PhYew7q','2021-01-15 20:42:35','2021-01-15 20:42:35'),(3,'Nickolas Turcotte','hammes.callie@example.org','2021-01-15 20:42:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','QmNoAxkdQ3','2021-01-15 20:42:35','2021-01-15 20:42:35'),(4,'Miss Augustine Rice','walsh.jeff@example.net','2021-01-15 20:42:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','iEy51y00fn','2021-01-15 20:42:35','2021-01-15 20:42:35'),(5,'Rogers Hayes','joaquin75@example.org','2021-01-15 20:42:35','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','YHQ1rbGd83','2021-01-15 20:42:35','2021-01-15 20:42:35');
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

-- Dump completed on 2021-01-15 20:46:20
