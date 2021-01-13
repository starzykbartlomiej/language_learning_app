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
INSERT INTO `comments` VALUES (1,'Expedita ut assumenda aut.','Quibusdam in reprehenderit aut laborum velit. Inventore dolorem possimus rem hic sit ullam. Fugit molestias delectus impedit omnis assumenda ut soluta. Eaque ea dolorem tempore voluptatem sequi et ut.','2021-01-13 16:08:09','2021-01-13 16:08:09',1,1),(2,'Facilis hic fugiat voluptas ut.','Enim recusandae cum pariatur esse nostrum. Dolore nam ut illum error. Rem eaque placeat et amet. Recusandae explicabo quia placeat repellat aspernatur consequuntur.','2021-01-13 16:08:09','2021-01-13 16:08:09',1,2),(3,'Distinctio aut nihil illo officiis.','Quos nobis quod molestias dignissimos. Blanditiis aut dignissimos voluptatem doloremque amet perspiciatis consequatur numquam. Dolorum facere voluptates aspernatur. Ipsam enim vel sunt explicabo quos a.','2021-01-13 16:08:09','2021-01-13 16:08:09',1,3),(4,'Occaecati labore quia ut aliquam nam magnam quae.','Odit quos asperiores omnis ut error voluptatem fugit. Et sunt consequatur autem omnis excepturi sed corrupti.','2021-01-13 16:08:09','2021-01-13 16:08:09',1,4);
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
INSERT INTO `options` VALUES (1,'https://via.placeholder.com/640x480.png/004488?text=cats+corrupti',1,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(2,'https://via.placeholder.com/640x480.png/006688?text=cats+dolor',1,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(3,'https://via.placeholder.com/640x480.png/0066dd?text=cats+corrupti',1,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(4,'https://via.placeholder.com/640x480.png/00bb11?text=cats+voluptas',1,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(5,'https://via.placeholder.com/640x480.png/00eeff?text=cats+nihil',2,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(6,'https://via.placeholder.com/640x480.png/0055ff?text=cats+vero',2,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(7,'https://via.placeholder.com/640x480.png/00bbdd?text=cats+est',2,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(8,'https://via.placeholder.com/640x480.png/003399?text=cats+reiciendis',2,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(9,'https://via.placeholder.com/640x480.png/00ee11?text=cats+voluptatem',3,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(10,'https://via.placeholder.com/640x480.png/001155?text=cats+qui',3,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(11,'https://via.placeholder.com/640x480.png/00aa33?text=cats+iusto',3,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(12,'https://via.placeholder.com/640x480.png/00bb66?text=cats+alias',3,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(13,'https://via.placeholder.com/640x480.png/00cccc?text=cats+perferendis',4,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(14,'https://via.placeholder.com/640x480.png/00cc11?text=cats+debitis',4,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(15,'https://via.placeholder.com/640x480.png/00ccee?text=cats+praesentium',4,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(16,'https://via.placeholder.com/640x480.png/009966?text=cats+praesentium',4,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(17,'https://via.placeholder.com/640x480.png/003377?text=cats+et',5,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(18,'https://via.placeholder.com/640x480.png/00ccaa?text=cats+sint',5,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(19,'https://via.placeholder.com/640x480.png/0077ee?text=cats+nesciunt',5,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(20,'https://via.placeholder.com/640x480.png/00bb22?text=cats+dolore',5,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(21,'https://via.placeholder.com/640x480.png/00ffcc?text=cats+facilis',6,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(22,'https://via.placeholder.com/640x480.png/0022bb?text=cats+blanditiis',6,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(23,'https://via.placeholder.com/640x480.png/00ff11?text=cats+sunt',6,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(24,'https://via.placeholder.com/640x480.png/00bbff?text=cats+porro',6,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(25,'https://via.placeholder.com/640x480.png/007722?text=cats+doloremque',7,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(26,'https://via.placeholder.com/640x480.png/00ff11?text=cats+ut',7,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(27,'https://via.placeholder.com/640x480.png/00aa11?text=cats+qui',7,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(28,'https://via.placeholder.com/640x480.png/0011ff?text=cats+ut',7,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(29,'https://via.placeholder.com/640x480.png/009922?text=cats+id',8,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(30,'https://via.placeholder.com/640x480.png/0077ee?text=cats+nihil',8,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(31,'https://via.placeholder.com/640x480.png/0077cc?text=cats+doloremque',8,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(32,'https://via.placeholder.com/640x480.png/00aacc?text=cats+enim',8,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(33,'https://via.placeholder.com/640x480.png/00ee99?text=cats+ullam',9,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(34,'https://via.placeholder.com/640x480.png/000099?text=cats+quis',9,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(35,'https://via.placeholder.com/640x480.png/003333?text=cats+autem',9,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(36,'https://via.placeholder.com/640x480.png/0011cc?text=cats+quis',9,'2021-01-13 16:08:08','2021-01-13 16:08:08'),(37,'https://via.placeholder.com/640x480.png/001144?text=cats+dolorem',10,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(38,'https://via.placeholder.com/640x480.png/00aa66?text=cats+necessitatibus',10,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(39,'https://via.placeholder.com/640x480.png/002222?text=cats+aliquam',10,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(40,'https://via.placeholder.com/640x480.png/008844?text=cats+et',10,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(41,'https://via.placeholder.com/640x480.png/0011cc?text=cats+ex',11,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(42,'https://via.placeholder.com/640x480.png/0055aa?text=cats+iste',11,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(43,'https://via.placeholder.com/640x480.png/0088aa?text=cats+aut',11,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(44,'https://via.placeholder.com/640x480.png/005522?text=cats+ea',11,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(45,'https://via.placeholder.com/640x480.png/00aa99?text=cats+iste',12,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(46,'https://via.placeholder.com/640x480.png/0088ff?text=cats+velit',12,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(47,'https://via.placeholder.com/640x480.png/003322?text=cats+sed',12,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(48,'https://via.placeholder.com/640x480.png/002288?text=cats+impedit',12,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(49,'https://via.placeholder.com/640x480.png/00ee11?text=cats+animi',13,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(50,'https://via.placeholder.com/640x480.png/0088aa?text=cats+commodi',13,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(51,'https://via.placeholder.com/640x480.png/007722?text=cats+quos',13,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(52,'https://via.placeholder.com/640x480.png/000066?text=cats+est',13,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(53,'https://via.placeholder.com/640x480.png/006677?text=cats+fugiat',14,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(54,'https://via.placeholder.com/640x480.png/009966?text=cats+velit',14,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(55,'https://via.placeholder.com/640x480.png/00dd77?text=cats+est',14,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(56,'https://via.placeholder.com/640x480.png/00ee44?text=cats+sint',14,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(57,'https://via.placeholder.com/640x480.png/0000ee?text=cats+recusandae',15,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(58,'https://via.placeholder.com/640x480.png/008811?text=cats+earum',15,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(59,'https://via.placeholder.com/640x480.png/001144?text=cats+tempore',15,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(60,'https://via.placeholder.com/640x480.png/00ccbb?text=cats+fugit',15,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(61,'https://via.placeholder.com/640x480.png/00aa66?text=cats+reprehenderit',16,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(62,'https://via.placeholder.com/640x480.png/0000cc?text=cats+itaque',16,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(63,'https://via.placeholder.com/640x480.png/00ff44?text=cats+deserunt',16,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(64,'https://via.placeholder.com/640x480.png/00dd55?text=cats+expedita',16,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(65,'https://via.placeholder.com/640x480.png/0088ee?text=cats+odio',17,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(66,'https://via.placeholder.com/640x480.png/006600?text=cats+accusantium',17,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(67,'https://via.placeholder.com/640x480.png/0066dd?text=cats+sit',17,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(68,'https://via.placeholder.com/640x480.png/00ee44?text=cats+neque',17,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(69,'https://via.placeholder.com/640x480.png/00dd55?text=cats+et',18,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(70,'https://via.placeholder.com/640x480.png/000000?text=cats+non',18,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(71,'https://via.placeholder.com/640x480.png/002288?text=cats+quia',18,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(72,'https://via.placeholder.com/640x480.png/005511?text=cats+quibusdam',18,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(73,'https://via.placeholder.com/640x480.png/0011dd?text=cats+cum',19,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(74,'https://via.placeholder.com/640x480.png/00cc33?text=cats+eum',19,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(75,'https://via.placeholder.com/640x480.png/009977?text=cats+in',19,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(76,'https://via.placeholder.com/640x480.png/0011aa?text=cats+tempora',19,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(77,'https://via.placeholder.com/640x480.png/00aaff?text=cats+ex',20,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(78,'https://via.placeholder.com/640x480.png/00ddee?text=cats+tenetur',20,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(79,'https://via.placeholder.com/640x480.png/00cc11?text=cats+impedit',20,'2021-01-13 16:08:09','2021-01-13 16:08:09'),(80,'https://via.placeholder.com/640x480.png/00bb55?text=cats+velit',20,'2021-01-13 16:08:09','2021-01-13 16:08:09');
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
INSERT INTO `questions` VALUES (1,'impedit','quaerat',1,1,'words','2021-01-13 16:08:07','2021-01-13 16:08:07'),(2,'enim','perferendis',1,1,'words','2021-01-13 16:08:07','2021-01-13 16:08:07'),(3,'maiores','est',1,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(4,'aut','qui',1,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(5,'reprehenderit','qui',1,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(6,'et','natus',2,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(7,'ad','quo',2,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(8,'est','qui',2,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(9,'fugiat','animi',2,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(10,'repellat','sint',2,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(11,'optio','enim',3,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(12,'numquam','error',3,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(13,'aut','velit',3,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(14,'reprehenderit','magni',3,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(15,'est','provident',3,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(16,'ullam','tempore',4,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(17,'qui','error',4,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(18,'qui','et',4,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(19,'nulla','quo',4,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08'),(20,'asperiores','eum',4,1,'words','2021-01-13 16:08:08','2021-01-13 16:08:08');
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
INSERT INTO `quizzes` VALUES (1,1,'2021-01-13 16:08:07','2021-01-13 16:08:07',1),(2,1,'2021-01-13 16:08:07','2021-01-13 16:08:07',1),(3,1,'2021-01-13 16:08:07','2021-01-13 16:08:07',2),(4,1,'2021-01-13 16:08:07','2021-01-13 16:08:07',2);
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
INSERT INTO `users` VALUES (1,'John Doe','john.doe@gmail.com',NULL,'$2y$10$GpXvLaLZGCYb8wRRplIZ0.0ypIUiUcOLd1K.gESYOTWN9dJb9kL2e',NULL,NULL,NULL),(2,'Vena Hane','hickle.hayley@example.com','2021-01-13 16:08:07','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Dhl6LeKDYn','2021-01-13 16:08:07','2021-01-13 16:08:07'),(3,'Margarete Senger','marcelle51@example.org','2021-01-13 16:08:07','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','4Z8TsxFQ9r','2021-01-13 16:08:07','2021-01-13 16:08:07'),(4,'Monty Welch','landen.beier@example.org','2021-01-13 16:08:07','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','wLqtMUcCPF','2021-01-13 16:08:07','2021-01-13 16:08:07'),(5,'Jeffry Barton','cjones@example.net','2021-01-13 16:08:07','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WPg5tLHEPv','2021-01-13 16:08:07','2021-01-13 16:08:07');
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

-- Dump completed on 2021-01-13 16:08:20
