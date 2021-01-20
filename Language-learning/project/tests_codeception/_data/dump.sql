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
INSERT INTO `comments` VALUES (1,'Aut voluptatem quia nostrum vero magni animi.','Tempore numquam quia suscipit. Ea voluptatibus unde quo fugit vitae quasi.','2021-01-20 17:21:01','2021-01-20 17:21:01',1,1),(2,'Non ex sequi quo nisi rerum voluptatem.','Ad aspernatur laudantium cumque voluptas officia rerum libero. Quia quis ut modi voluptatem eaque dolores sit. Corporis est laborum enim sapiente. Sint quis atque consectetur.','2021-01-20 17:21:01','2021-01-20 17:21:01',1,2),(3,'Rem quisquam expedita non est dolorem.','A consectetur consequatur consequuntur libero ab omnis et. Rerum aperiam molestiae aut sit ducimus quibusdam impedit. Earum est culpa unde ducimus sunt. Ducimus error modi vero minima expedita molestias.','2021-01-20 17:21:01','2021-01-20 17:21:01',1,3),(4,'Minus amet nulla ut dolorem et id sit.','Tempore asperiores voluptatibus nesciunt nisi qui. Qui nemo eos pariatur voluptate quae alias. Quo itaque impedit aperiam blanditiis iste. Sint eum deleniti minus dolorem aliquid explicabo est.','2021-01-20 17:21:01','2021-01-20 17:21:01',1,4);
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
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/008833?text=cats+consequatur',1,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(2,'https://via.placeholder.com/640x480.png/0011ee?text=cats+laborum',1,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(3,'https://via.placeholder.com/640x480.png/00ffbb?text=cats+ratione',1,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(4,'https://via.placeholder.com/640x480.png/001166?text=cats+distinctio',1,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(5,'https://via.placeholder.com/640x480.png/008899?text=cats+id',2,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(6,'https://via.placeholder.com/640x480.png/003322?text=cats+aliquid',2,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(7,'https://via.placeholder.com/640x480.png/006611?text=cats+maiores',2,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(8,'https://via.placeholder.com/640x480.png/000033?text=cats+quod',2,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(9,'https://via.placeholder.com/640x480.png/005544?text=cats+accusamus',3,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(10,'https://via.placeholder.com/640x480.png/00bb00?text=cats+et',3,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(11,'https://via.placeholder.com/640x480.png/007799?text=cats+sapiente',3,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(12,'https://via.placeholder.com/640x480.png/006655?text=cats+autem',3,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(13,'https://via.placeholder.com/640x480.png/008833?text=cats+totam',4,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(14,'https://via.placeholder.com/640x480.png/002200?text=cats+aut',4,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(15,'https://via.placeholder.com/640x480.png/00ffff?text=cats+quis',4,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(16,'https://via.placeholder.com/640x480.png/0055ff?text=cats+dignissimos',4,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(17,'https://via.placeholder.com/640x480.png/00aaee?text=cats+rerum',5,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(18,'https://via.placeholder.com/640x480.png/00cc44?text=cats+et',5,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(19,'https://via.placeholder.com/640x480.png/00ccdd?text=cats+in',5,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(20,'https://via.placeholder.com/640x480.png/00ee11?text=cats+quas',5,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(21,'https://via.placeholder.com/640x480.png/003322?text=cats+ut',6,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(22,'https://via.placeholder.com/640x480.png/003388?text=cats+iure',6,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(23,'https://via.placeholder.com/640x480.png/003300?text=cats+molestiae',6,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(24,'https://via.placeholder.com/640x480.png/0066ff?text=cats+magni',6,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(25,'https://via.placeholder.com/640x480.png/007788?text=cats+voluptatem',7,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(26,'https://via.placeholder.com/640x480.png/00aadd?text=cats+mollitia',7,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(27,'https://via.placeholder.com/640x480.png/004433?text=cats+laborum',7,'2021-01-20 17:20:59','2021-01-20 17:20:59'),(28,'https://via.placeholder.com/640x480.png/001155?text=cats+repellendus',7,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(29,'https://via.placeholder.com/640x480.png/0088aa?text=cats+tempore',8,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(30,'https://via.placeholder.com/640x480.png/008800?text=cats+nulla',8,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(31,'https://via.placeholder.com/640x480.png/00bb88?text=cats+voluptas',8,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(32,'https://via.placeholder.com/640x480.png/00cc33?text=cats+provident',8,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(33,'https://via.placeholder.com/640x480.png/009900?text=cats+veritatis',9,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(34,'https://via.placeholder.com/640x480.png/00bb55?text=cats+aut',9,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(35,'https://via.placeholder.com/640x480.png/0099bb?text=cats+ut',9,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(36,'https://via.placeholder.com/640x480.png/009933?text=cats+odio',9,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(37,'https://via.placeholder.com/640x480.png/00ddee?text=cats+fugit',10,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(38,'https://via.placeholder.com/640x480.png/00ff66?text=cats+molestias',10,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(39,'https://via.placeholder.com/640x480.png/00cc66?text=cats+ut',10,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(40,'https://via.placeholder.com/640x480.png/00ee77?text=cats+quae',10,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(41,'https://via.placeholder.com/640x480.png/0000ff?text=cats+architecto',11,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(42,'https://via.placeholder.com/640x480.png/003344?text=cats+consequatur',11,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(43,'https://via.placeholder.com/640x480.png/0022ff?text=cats+asperiores',11,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(44,'https://via.placeholder.com/640x480.png/00ccdd?text=cats+quis',11,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(45,'https://via.placeholder.com/640x480.png/00ffaa?text=cats+maxime',12,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(46,'https://via.placeholder.com/640x480.png/00ff44?text=cats+sed',12,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(47,'https://via.placeholder.com/640x480.png/00bb44?text=cats+neque',12,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(48,'https://via.placeholder.com/640x480.png/00ffcc?text=cats+nihil',12,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(49,'https://via.placeholder.com/640x480.png/00cc55?text=cats+ipsam',13,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(50,'https://via.placeholder.com/640x480.png/00dd88?text=cats+et',13,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(51,'https://via.placeholder.com/640x480.png/005555?text=cats+debitis',13,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(52,'https://via.placeholder.com/640x480.png/00bbcc?text=cats+culpa',13,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(53,'https://via.placeholder.com/640x480.png/003399?text=cats+aut',14,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(54,'https://via.placeholder.com/640x480.png/0088dd?text=cats+accusantium',14,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(55,'https://via.placeholder.com/640x480.png/00cc77?text=cats+animi',14,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(56,'https://via.placeholder.com/640x480.png/002222?text=cats+vero',14,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(57,'https://via.placeholder.com/640x480.png/0088ff?text=cats+repudiandae',15,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(58,'https://via.placeholder.com/640x480.png/000088?text=cats+ea',15,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(59,'https://via.placeholder.com/640x480.png/00eecc?text=cats+consequatur',15,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(60,'https://via.placeholder.com/640x480.png/000066?text=cats+quod',15,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(61,'https://via.placeholder.com/640x480.png/007722?text=cats+deleniti',16,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(62,'https://via.placeholder.com/640x480.png/0088cc?text=cats+aut',16,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(63,'https://via.placeholder.com/640x480.png/00ffcc?text=cats+sit',16,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(64,'https://via.placeholder.com/640x480.png/007722?text=cats+debitis',16,'2021-01-20 17:21:00','2021-01-20 17:21:00'),(65,'https://via.placeholder.com/640x480.png/005588?text=cats+deleniti',17,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(66,'https://via.placeholder.com/640x480.png/00ddbb?text=cats+voluptatum',17,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(67,'https://via.placeholder.com/640x480.png/005566?text=cats+ut',17,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(68,'https://via.placeholder.com/640x480.png/009955?text=cats+fuga',17,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(69,'https://via.placeholder.com/640x480.png/00ee11?text=cats+aut',18,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(70,'https://via.placeholder.com/640x480.png/002266?text=cats+vero',18,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(71,'https://via.placeholder.com/640x480.png/007755?text=cats+et',18,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(72,'https://via.placeholder.com/640x480.png/0055ee?text=cats+molestiae',18,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(73,'https://via.placeholder.com/640x480.png/00ccaa?text=cats+et',19,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(74,'https://via.placeholder.com/640x480.png/007777?text=cats+id',19,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(75,'https://via.placeholder.com/640x480.png/00ee22?text=cats+aut',19,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(76,'https://via.placeholder.com/640x480.png/002299?text=cats+ullam',19,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(77,'https://via.placeholder.com/640x480.png/00dd99?text=cats+ut',20,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(78,'https://via.placeholder.com/640x480.png/001177?text=cats+dolore',20,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(79,'https://via.placeholder.com/640x480.png/00ee00?text=cats+eum',20,'2021-01-20 17:21:01','2021-01-20 17:21:01'),(80,'https://via.placeholder.com/640x480.png/00ee77?text=cats+commodi',20,'2021-01-20 17:21:01','2021-01-20 17:21:01');
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
INSERT INTO `questions` VALUES (1,'debitis','quia',1,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(2,'tenetur','voluptas',1,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(3,'voluptatibus','nihil',1,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(4,'voluptatem','voluptates',1,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(5,'deserunt','odit',1,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(6,'aut','molestiae',2,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(7,'tempore','autem',2,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(8,'quod','mollitia',2,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(9,'velit','ex',2,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(10,'sed','et',2,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(11,'consequuntur','quas',3,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(12,'voluptatibus','odio',3,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(13,'perspiciatis','perspiciatis',3,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(14,'cupiditate','est',3,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(15,'officia','et',3,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(16,'explicabo','aspernatur',4,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(17,'inventore','ea',4,1,'words','2021-01-20 17:20:58','2021-01-20 17:20:58'),(18,'labore','quam',4,1,'words','2021-01-20 17:20:59','2021-01-20 17:20:59'),(19,'iste','reprehenderit',4,1,'words','2021-01-20 17:20:59','2021-01-20 17:20:59'),(20,'voluptatibus','sapiente',4,1,'words','2021-01-20 17:20:59','2021-01-20 17:20:59');
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
INSERT INTO `quizzes` VALUES (1,1,'2021-01-20 17:20:58','2021-01-20 17:20:58',1),(2,1,'2021-01-20 17:20:58','2021-01-20 17:20:58',1),(3,1,'2021-01-20 17:20:58','2021-01-20 17:20:58',2),(4,1,'2021-01-20 17:20:58','2021-01-20 17:20:58',2);
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
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$itSHzAL4s.xrt7GWSLXSKO27FXe3OaLde8v34lHzkUVebh5PKhAZ6',NULL,NULL,NULL),(2,'Mr. Casimer Sipes PhD','boyle.ella@example.net','2021-01-20 17:20:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','FMvyOALxMH','2021-01-20 17:20:58','2021-01-20 17:20:58'),(3,'Alverta Beer I','tbahringer@example.org','2021-01-20 17:20:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ibcD9lGW1Z','2021-01-20 17:20:58','2021-01-20 17:20:58'),(4,'Angelina Mraz','brock44@example.com','2021-01-20 17:20:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','uNPAaDiXc4','2021-01-20 17:20:58','2021-01-20 17:20:58'),(5,'Ena McDermott','jgusikowski@example.net','2021-01-20 17:20:58','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','RJvshxvBiV','2021-01-20 17:20:58','2021-01-20 17:20:58');
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

-- Dump completed on 2021-01-20 17:21:02
