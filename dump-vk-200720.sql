-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `body` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (65,'Abbott, Gottlieb and Hackett'),(61,'Anderson, Effertz and Schuster'),(33,'Barrows-Hauck'),(100,'Barton and Sons'),(28,'Bernier Group'),(12,'Bernier, Cremin and Schmeler'),(54,'Bins, Parker and Willms'),(83,'Blick, Lakin and Ankunding'),(95,'Block, Simonis and Littel'),(77,'Borer Inc'),(49,'Christiansen-Sauer'),(66,'Conroy-Walker'),(82,'Cormier Group'),(72,'Crist LLC'),(30,'Crooks-Herman'),(11,'Cummings, Hauck and Oberbrunner'),(58,'Dare-Langosh'),(29,'Denesik Inc'),(23,'Doyle and Sons'),(74,'Doyle LLC'),(8,'Emmerich Group'),(25,'Emmerich-Ruecker'),(9,'Funk-Daniel'),(42,'Goyette, Carroll and Carter'),(34,'Graham Inc'),(35,'Greenholt-Ullrich'),(7,'Gusikowski-Schulist'),(98,'Haag-Marquardt'),(88,'Hane, Fisher and Nader'),(71,'Heathcote and Sons'),(55,'Herman Group'),(57,'Hermann and Sons'),(73,'Hickle-Schoen'),(60,'Homenick-Wunsch'),(52,'Howe-Kutch'),(75,'Jast-Bailey'),(4,'Kertzmann, Little and Nicolas'),(3,'Kessler, Lueilwitz and O\'Keefe'),(84,'Klein-Osinski'),(81,'Kris-Bartell'),(70,'Kuhic Group'),(47,'Kuhlman and Sons'),(68,'Kuhn, Cole and Metz'),(16,'Kunze-White'),(86,'Kutch Group'),(87,'Kutch, Hickle and Lueilwitz'),(40,'Lebsack-Willms'),(22,'Leffler and Sons'),(90,'Lowe, Beier and Moen'),(93,'Lynch LLC'),(39,'Maggio and Sons'),(36,'Maggio Inc'),(24,'Maggio, Tromp and Koelpin'),(92,'McGlynn Inc'),(96,'Moen-Heathcote'),(76,'Moore and Sons'),(38,'Mosciski, Monahan and Olson'),(97,'Murazik-Bartell'),(26,'Murray, Cronin and Block'),(1,'O\'Hara-Schultz'),(46,'Orn, Lowe and Towne'),(78,'Parker and Sons'),(37,'Predovic Group'),(5,'Price, Thiel and Brekke'),(85,'Quitzon and Sons'),(14,'Reynolds Group'),(45,'Roberts Inc'),(13,'Rohan, Larkin and Boyer'),(21,'Rolfson and Sons'),(18,'Roob Group'),(53,'Ruecker LLC'),(31,'Runolfsson and Sons'),(89,'Sanford Group'),(56,'Satterfield, Walsh and Hahn'),(62,'Sauer LLC'),(94,'Schaefer-Reynolds'),(19,'Schamberger-Turcotte'),(48,'Schmidt, Green and Will'),(79,'Schneider-Rodriguez'),(2,'Schuppe and Sons'),(99,'Schuppe-Reynolds'),(10,'Schuster, Tillman and O\'Connell'),(59,'Schuster-Brown'),(64,'Simonis, Monahan and Mayert'),(91,'Spencer-Fisher'),(80,'Sporer-Zulauf'),(41,'Stark, McClure and Muller'),(17,'Stokes-Wuckert'),(27,'Stracke, Brekke and Langosh'),(63,'Stracke, Kihn and Raynor'),(44,'Terry-Fritsch'),(15,'Thompson-Johns'),(69,'Ullrich-Herman'),(32,'Upton Inc'),(50,'Watsica-Kuphal'),(6,'Wehner Inc'),(51,'Weimann, Turner and Keebler'),(43,'Williamson Inc'),(67,'Wiza, Flatley and Welch'),(20,'Zieme-Ryan');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `satus` enum('requested','approved','unfriended','declined') DEFAULT 'requested',
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `initiator_user_id` (`initiator_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_mediafile`
--

DROP TABLE IF EXISTS `likes_mediafile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes_mediafile` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `mediafile_id` bigint(20) unsigned NOT NULL,
  `liked_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `mediafile_id` (`mediafile_id`),
  CONSTRAINT `likes_mediafile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_mediafile_ibfk_2` FOREIGN KEY (`mediafile_id`) REFERENCES `mediafile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_mediafile`
--

LOCK TABLES `likes_mediafile` WRITE;
/*!40000 ALTER TABLE `likes_mediafile` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes_mediafile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_photo`
--

DROP TABLE IF EXISTS `likes_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes_photo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `photo_id` bigint(20) unsigned NOT NULL,
  `liked_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `likes_photo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_photo_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_photo`
--

LOCK TABLES `likes_photo` WRITE;
/*!40000 ALTER TABLE `likes_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_profile`
--

DROP TABLE IF EXISTS `likes_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes_profile` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_profile_id` bigint(20) unsigned NOT NULL,
  `to_profile_id` bigint(20) unsigned NOT NULL,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `from_profile_id` (`from_profile_id`),
  KEY `to_profile_id` (`to_profile_id`),
  CONSTRAINT `likes_profile_ibfk_1` FOREIGN KEY (`from_profile_id`) REFERENCES `profiles` (`id`),
  CONSTRAINT `likes_profile_ibfk_2` FOREIGN KEY (`to_profile_id`) REFERENCES `profiles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_profile`
--

LOCK TABLES `likes_profile` WRITE;
/*!40000 ALTER TABLE `likes_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediafile`
--

DROP TABLE IF EXISTS `mediafile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mediafile` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `mediafile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediafile`
--

LOCK TABLES `mediafile` WRITE;
/*!40000 ALTER TABLE `mediafile` DISABLE KEYS */;
/*!40000 ALTER TABLE `mediafile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text,
  `attachments` json DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `hometown` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'F','Lora','Muller','1997-08-27',4483663577,'2020-03-22 07:02:29','Santa Cruz del Quiché'),(2,2,'F','Alameda','Bolitho','2006-06-19',3599351503,'2019-08-19 17:17:38','Bon'),(3,3,'F','Deanna','Konmann','1997-01-30',4755654068,'2020-04-27 23:00:15','Hat Yai'),(4,4,'M','Jamil','Poultney','1983-07-26',6675495615,'2019-09-01 02:57:54','Guanba'),(5,5,'M','Beck','Worner','2004-03-21',76853705,'2020-04-19 15:42:32','Trà Vinh'),(6,6,'M','Cosme','Chezelle','1985-05-25',320988279,'2020-02-17 23:12:37','Jiangqiao'),(7,7,'M','Tristan','Tinniswood','2006-10-23',4177188972,'2020-01-18 01:42:59','Union'),(8,8,'F','Rhetta','Doe','1999-10-15',4110227607,'2019-09-19 11:39:36','Sandnes'),(9,9,'F','Genny','Caddick','1980-09-16',9268697513,'2020-01-06 16:44:48','Nikolinci'),(10,10,'F','Goldie','Kesby','1990-11-11',1778362478,'2020-05-18 21:43:11','Shuguang'),(11,11,'F','Katharine','Marrows','1988-01-20',5820409949,'2019-11-12 08:51:14','Stara Kiszewa'),(12,12,'M','Burr','McKinnon','2000-08-27',8913097303,'2020-02-06 14:38:29','Taganskiy'),(13,13,'F','Stephie','Cassell','1981-08-04',1005230013,'2020-01-22 05:42:37','Pajo'),(14,14,'F','Lacy','Dallin','2005-07-10',3303942943,'2020-07-09 09:04:38','Carrazeda de Ansiaes'),(15,15,'M','Gian','Sandom','1988-10-08',5940603432,'2019-09-03 22:05:40','Ganzi'),(16,16,'M','Arie','Killby','2010-06-12',8431674768,'2020-04-09 23:17:26','Stockholm'),(17,17,'F','Janella','Sheers','1982-03-21',1479925403,'2020-06-14 07:22:56','Hebian'),(18,18,'F','Jessa','Vamplew','2003-06-23',5233816938,'2020-06-06 14:03:18','Pavlovka'),(19,19,'F','Madelle','Bastone','2007-01-17',3128342075,'2019-10-21 06:21:43','Bourg-lès-Valence'),(20,20,'F','Bobbette','Kunzel','1990-01-09',1496484150,'2020-05-13 13:49:08','Karanggeneng'),(21,21,'M','Dan','Fontes','1987-11-20',4806166650,'2019-09-19 14:31:03','Tipaz'),(22,22,'F','Corilla','Morrid','1990-12-16',5488838368,'2019-09-15 23:26:02','Novominskaya'),(23,23,'F','Alison','Snasel','2006-04-01',6842895685,'2020-06-11 04:52:02','Jalatrang'),(24,24,'F','Maura','Pritty','1992-12-28',9914518974,'2019-12-21 13:05:58','San Isidro'),(25,25,'F','Anna','Suggey','2003-12-16',5485805329,'2019-07-19 00:30:33','Dýšina'),(26,26,'M','Anderson','Aish','2007-01-11',7892099786,'2020-01-13 03:35:11','Myingyan'),(27,27,'M','Horatius','Ciotti','1995-08-18',4302423641,'2019-08-28 19:33:06','San Miguel'),(28,28,'M','Irv','Ventura','1983-02-09',7873764524,'2019-12-07 14:59:23','Zlonice'),(29,29,'F','Ali','Fildery','1999-04-11',3291417364,'2019-11-13 21:37:17','Ruzayevka'),(30,30,'F','Margret','Burr','2000-01-16',4152009217,'2020-01-03 13:48:50','Cantao-an'),(31,31,'M','Geri','Palleske','2009-12-22',4035913707,'2020-03-29 21:20:37','Huangzhuang'),(32,32,'M','Dame','Mortell','2000-08-31',7662025438,'2020-04-26 02:30:22','San Rafael'),(33,33,'F','Meggi','Songist','1990-06-23',253216079,'2020-01-28 16:31:04','Gan Yavne'),(34,34,'F','Elmira','Rye','1984-12-08',2046254201,'2019-11-24 01:04:42','Trondheim'),(35,35,'M','Irwinn','Pengelley','1993-09-15',7648301350,'2020-03-28 06:58:10','Baizhang'),(36,36,'F','Meggi','Ridhole','2005-01-10',7549228183,'2019-12-20 21:03:29','Ennery'),(37,37,'F','Angil','Ride','2007-05-25',8935592927,'2020-06-03 15:50:22','Huaxijie'),(38,38,'M','Gardie','Hamprecht','1999-02-18',2512637360,'2019-08-05 07:22:39','Pajo'),(39,39,'F','Toinette','Denniss','1983-11-11',5051263550,'2019-09-25 16:26:26','Woling'),(40,40,'F','Corissa','Heavyside','2010-02-19',6425651512,'2020-02-09 04:44:42','Lenghu'),(41,41,'M','Sargent','McKerley','1987-05-20',4627352476,'2020-02-09 19:28:21','Mata Grande'),(42,42,'M','Lindsay','Kliemann','1984-02-08',9859507147,'2020-02-13 09:05:02','Krebet'),(43,43,'F','Zelda','Duxbarry','1985-08-16',2568389605,'2019-09-13 08:17:30','Tvrdonice'),(44,44,'F','Marj','Esposito','1986-12-26',7718744566,'2020-05-04 01:11:51','Ad Dilam'),(45,45,'M','Finley','Loadsman','1992-06-20',1652319298,'2020-02-27 13:59:31','Psygansu'),(46,46,'M','Lorne','Greedy','2005-06-13',2600151923,'2020-04-12 11:01:53','Albrechtice'),(47,47,'F','Rubetta','Pauleit','2005-08-25',9592163928,'2020-05-27 23:29:10','Gawanan'),(48,48,'F','Dulcy','Whittingham','1993-04-13',6235246781,'2020-04-09 07:13:52','Bailizhou'),(49,49,'F','Margalit','Trickey','2006-04-27',2690355027,'2019-11-08 09:55:31','Baroy'),(50,50,'F','Ansley','Caff','1993-07-15',4075636380,'2019-12-31 14:28:23','Tianzishan'),(51,51,'M','Elmer','May','1998-05-02',1532106157,'2019-11-22 20:00:46','Strogino'),(52,52,'F','Trixy','Ancell','2006-12-25',6430112454,'2019-12-06 06:33:14','Baja Mar'),(53,53,'F','Aloise','Jeske','1992-11-18',1767170742,'2020-02-13 20:36:20','Ndeaboh'),(54,54,'F','Roby','Rowan','1989-08-08',4296633309,'2019-12-25 23:47:02','Sagaing'),(55,55,'M','Tobe','Brandts','1998-04-10',699378508,'2019-11-05 00:59:17','El Colorado'),(56,56,'M','Gregoor','Stain','1999-12-03',7802293715,'2019-11-19 01:27:21','Xique Xique'),(57,57,'F','Arlana','Bennetto','2009-08-13',6508574620,'2020-03-21 13:06:33','Shitan'),(58,58,'F','Jennifer','Iskowicz','1997-12-06',8894209113,'2019-10-13 23:34:09','Shuiji'),(59,59,'M','Martie','Morston','1988-07-29',7991915417,'2019-12-19 22:29:08','Huyang'),(60,60,'F','Kiersten','Deeves','2001-02-08',5558671459,'2020-05-16 12:38:42','Suchy Las'),(61,61,'M','Isidore','Toffoloni','1987-01-09',7461296078,'2019-09-18 19:39:38','Lingbei'),(62,62,'M','Alessandro','Pandya','1995-01-25',1868551121,'2019-08-15 16:35:25','Turku'),(63,63,'F','Perl','Allender','1986-03-21',4651312438,'2019-09-25 13:20:59','Sjalevad'),(64,64,'F','Jodi','Hyndson','1999-08-11',5661178247,'2019-11-17 23:09:00','Paratinga'),(65,65,'F','Maribel','Simes','1981-07-07',9712185036,'2020-06-06 06:36:40','Cimaung Kidul'),(66,66,'F','Holli','Fraschini','1994-12-09',93295677,'2019-11-07 23:23:44','Kapyl’'),(67,67,'F','Becki','Birkenhead','1980-07-21',872455696,'2020-02-14 04:17:42','Liwan'),(68,68,'M','Tabb','Chastelain','2006-07-27',8873807003,'2019-12-26 08:22:51','Shijia'),(69,69,'F','Bobbye','Stillman','1999-07-24',6169880740,'2019-08-27 12:21:40','Modot'),(70,70,'F','Kirsti','Larne','1982-05-09',8640221286,'2020-06-25 17:30:03','Saboyá'),(71,71,'F','Zarah','Diegan','1996-11-07',43158587,'2019-11-04 01:25:22','Xujia'),(72,72,'F','Dayna','Hayne','1987-02-04',3673125427,'2019-10-06 05:26:21','Bantuanon'),(73,73,'F','Jobina','Marchelli','2000-03-02',9873254021,'2020-01-23 03:15:13','Pedro Sánchez'),(74,74,'F','Sasha','Buckbee','1991-01-22',6554319867,'2020-03-08 19:24:31','Geteborg'),(75,75,'M','Jud','Spowage','1990-12-04',3222724288,'2020-05-30 01:22:52','Stockton'),(76,76,'F','Vilma','Wale','2005-09-28',3552577165,'2020-06-03 01:31:44','Paris'),(77,77,'M','Haven','Reston','2002-12-21',2299711244,'2019-07-23 06:17:16','Seul'),(78,78,'F','Sharl','Hirsthouse','1987-08-31',7896915685,'2020-07-08 08:04:54','Rodatychi'),(79,79,'M','Bernard','Caddie','1997-04-10',3765672165,'2020-01-17 10:37:44','Weixin'),(80,80,'F','Dorothy','McAvin','1986-06-06',8993536392,'2020-04-28 00:02:39','Miaoli'),(81,81,'F','Pearl','Baison','2001-07-30',5153941345,'2019-09-06 19:50:21','Khlong Sam Wa'),(82,82,'F','Kaycee','Aspey','1995-11-07',9898921218,'2019-09-27 14:52:45','Argivai'),(83,83,'M','Hank','Klementz','1988-07-01',8741380266,'2019-07-20 22:03:22','Xinji'),(84,84,'M','Van','Bowsher','1999-05-02',5925120477,'2020-04-22 09:05:28','Kalininskiy'),(85,85,'M','Tully','Stedall','1985-08-24',736140603,'2019-12-26 23:15:15','Fujiayan'),(86,86,'M','Benson','McArtan','1985-04-02',3575418748,'2019-12-07 02:41:58','Sindon'),(87,87,'M','Arley','Blaschke','2004-02-13',7885130002,'2019-09-09 13:58:23','Sainte-Marthe-sur-le-Lac'),(88,88,'F','Meridith','Verson','1990-01-20',4294428333,'2019-09-11 15:54:08','Veracruz'),(89,89,'F','Bobina','Moller','2005-04-14',5910469371,'2020-06-24 03:42:27','Isesaki'),(90,90,'M','Simon','Cherrington','1983-04-01',2770648772,'2020-04-07 03:13:25','Senj'),(91,91,'F','Lyda','Scrivin','2009-12-12',3189483388,'2020-04-23 13:12:51','Vargas'),(92,92,'F','Alissa','McCorrie','1998-10-29',3931180085,'2020-03-03 15:22:31','Novotroitsk'),(93,93,'M','Toby','Fredson','1994-10-20',5576392078,'2019-07-26 08:51:11','Lima'),(94,94,'M','Peder','Cringle','1982-09-14',5116331903,'2019-12-03 16:20:39','Magadan'),(95,95,'F','Merrili','Hedingham','2008-10-19',3089454300,'2019-11-27 23:03:50','La Gacilly'),(96,96,'M','Burtie','Wilse','2002-06-25',2758333228,'2020-07-15 10:32:35','Shicang'),(97,97,'M','Daron','Caffery','1997-10-17',4124598459,'2019-11-12 07:41:19','La Poma'),(98,98,'F','Franni','Guillond','2003-01-24',5888806730,'2019-09-16 10:45:51','Mercedes'),(99,99,'M','Zane','Foster-Smith','2002-07-29',3932875206,'2019-11-16 17:11:58','Lebane'),(100,100,'F','Traci','Benit','2000-12-29',9951664075,'2019-12-07 05:50:17','Shengci');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repost`
--

DROP TABLE IF EXISTS `repost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repost` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `reposted_to` bigint(20) unsigned NOT NULL,
  `reposted_from` bigint(20) unsigned NOT NULL,
  `reposted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `reposted_to` (`reposted_to`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `repost_ibfk_1` FOREIGN KEY (`reposted_to`) REFERENCES `users` (`id`),
  CONSTRAINT `repost_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repost`
--

LOCK TABLES `repost` WRITE;
/*!40000 ALTER TABLE `repost` DISABLE KEYS */;
/*!40000 ALTER TABLE `repost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'shexham0@craigslist.org','367-449-6988','y8ZKSHmi4'),(2,'tslyne1@i2i.jp','149-304-1336','Ra23yc7vZx'),(3,'nmatyas2@eventbrite.com','476-187-1944','utH0fjTRere'),(4,'nvannoni3@networksolutions.com','845-780-4984','tXYcw1WznC2'),(5,'sisacke4@mtv.com','706-589-1538','1urRvs1wVvxs'),(6,'lprint5@java.com','946-105-1154','Rx0NAVHkF'),(7,'mjillard6@flavors.me','231-980-0038','kIk4SxFWKs'),(8,'acleghorn7@mtv.com','461-777-8833','ijTK6hOy'),(9,'dokell8@businesswire.com','173-918-8001','KwqE3CI7C'),(10,'rpetrik9@walmart.com','162-435-2245','477V8ym9'),(11,'rfoada@yale.edu','537-955-4625','qc1rs3az'),(12,'cslackb@mapquest.com','302-316-6455','OowBsvMB'),(13,'hchristallc@amazon.de','988-809-1409','jARxX0'),(14,'jtroakd@virginia.edu','197-554-9380','MkKsY3R'),(15,'bskowcrafte@csmonitor.com','860-346-1465','Na28Tbbc2p'),(16,'cunderdownf@miitbeian.gov.cn','253-946-6880','WNtZZ5'),(17,'jgehrelsg@weibo.com','865-760-1178','gC18noReGe'),(18,'ndrissellh@sakura.ne.jp','619-487-1844','BMN9PEO'),(19,'kpedwelli@jugem.jp','595-589-1908','2apmKbd'),(20,'espadarij@odnoklassniki.ru','188-574-6876','3VaI97k'),(21,'fopiek@mail.ru','470-821-4182','1v9ih97TRNY'),(22,'weggersl@nps.gov','216-734-7601','FG2AmSzrn'),(23,'xpurrym@goodreads.com','454-427-6134','zGy8Gz1cKzNo'),(24,'mburgoinen@opensource.org','177-573-1831','DfCHQiAA9'),(25,'jlateko@addthis.com','560-107-5736','VdrGNU'),(26,'scottiep@nasa.gov','118-981-8644','yxuoVjO0YzA'),(27,'dbernardelliq@hatena.ne.jp','242-661-5179','hJEqzXPzK2nW'),(28,'wduffillr@fema.gov','179-953-2464','51kuyka'),(29,'bstormonths@gravatar.com','608-172-8647','Cl8nx7PEDXr'),(30,'fhabertt@msn.com','369-300-2088','s7Gw9EduXT4I'),(31,'xguierreu@php.net','618-126-6663','bSDDt8'),(32,'lroccav@google.com.au','337-498-6608','bE3Xa7u'),(33,'relderbrantw@usgs.gov','230-803-7313','4IMAVYvIIsG'),(34,'kharkessx@usnews.com','138-744-0869','buoMXxW4dLK'),(35,'rmcnaby@netvibes.com','574-673-2020','T4q9MEP'),(36,'lbiancoz@spiegel.de','554-641-1522','0ge0olMT0'),(37,'whrihorovich10@mapy.cz','953-873-3857','69eoozK'),(38,'pchaudhry11@cbslocal.com','219-464-3980','ZncraS'),(39,'kyeskov12@trellian.com','548-567-8524','BMftyEM3u5'),(40,'cattlee13@miitbeian.gov.cn','248-439-4197','NycYv3gS'),(41,'pclemitt14@theatlantic.com','128-121-2378','YzUDV8yI'),(42,'bmurton15@umn.edu','239-665-2557','TmUcjikC'),(43,'cgloucester16@epa.gov','563-715-9283','DWLNPbeK'),(44,'ckinton17@cbc.ca','146-829-6550','pTzz8SW74m'),(45,'istoffers18@ehow.com','761-718-3523','5iV2Rk0WOiV'),(46,'tdelia19@vistaprint.com','624-129-6231','o0NaUdc'),(47,'mdelwater1a@google.com.hk','940-186-2599','nh2pa3yLxM4'),(48,'cseeks1b@tripod.com','629-184-2531','GV4BktCchEA'),(49,'gchester1c@netvibes.com','216-728-4782','dtw6UIedPG10'),(50,'bmainz1d@blogger.com','227-692-7184','jLv1HbUk9q'),(51,'esherrin1e@adobe.com','239-926-0314','zPMvTCimV'),(52,'beager1f@lycos.com','630-690-3997','Wephk7S'),(53,'lnestle1g@youku.com','188-659-0756','jzBbGh'),(54,'rpiecha1h@slashdot.org','336-940-5511','Vj9mTw'),(55,'gvolke1i@europa.eu','440-689-6396','sMjxl7'),(56,'adishmon1j@desdev.cn','670-270-8394','IFRoR8wmi'),(57,'gbedinn1k@prweb.com','286-159-4758','rO5XvYC'),(58,'yhuman1l@cbsnews.com','157-980-6877','XNi9xt4Rx'),(59,'jtirkin1m@shinystat.com','494-683-8733','yAh3xquwl'),(60,'oceci1n@earthlink.net','606-630-6187','hpQNC9'),(61,'abracer1o@deliciousdays.com','876-208-5280','B3eyENtl95'),(62,'wdoers1p@sourceforge.net','346-227-9218','3slLviKMHrWO'),(63,'cgerard1q@europa.eu','914-486-7366','GBFWgDDTa5w2'),(64,'ggeroldo1r@buzzfeed.com','650-900-9904','jgVuRla'),(65,'bterrans1s@behance.net','946-801-3152','dhA9AqGhDWeq'),(66,'kskyram1t@posterous.com','838-694-3049','wDAGy1'),(67,'hcolrein1u@prlog.org','549-621-5255','QLgi4anshy'),(68,'ddimitriades1v@booking.com','158-483-1685','TGDpPrhIV'),(69,'headen1w@webeden.co.uk','309-692-6287','Cxj1b4TWB6'),(70,'ndriutti1x@spotify.com','935-264-0912','LNUVsD3cU4'),(71,'rrenwick1y@imageshack.us','301-931-7836','j1ByTbfE'),(72,'tcordet1z@soup.io','194-874-7935','eMS64FEFYAz'),(73,'cdugan20@pen.io','990-370-4431','XocCkqndt'),(74,'feley21@sciencedaily.com','575-553-4189','Fw6M8OrXBMX'),(75,'cawton22@soundcloud.com','217-312-7875','uJ8qHNOXh'),(76,'baxelbee23@globo.com','635-903-0799','ZSgShf'),(77,'dwellbelove24@ft.com','249-318-9379','3qbCRYP3WR'),(78,'wmogey25@pbs.org','970-957-8028','nrkfacz71HF'),(79,'gdawtre26@eventbrite.com','603-471-3308','wEG8bxZ'),(80,'cgregol27@loc.gov','149-469-4413','UGosT3Zcmu4c'),(81,'hsander28@storify.com','547-254-8394','QseNPcAeXr'),(82,'tmacarte29@prweb.com','367-375-4261','n23hc3'),(83,'mwraxall2a@elegantthemes.com','689-754-4483','GjahQuXCS4ZL'),(84,'nellerbeck2b@geocities.jp','592-695-0560','GndAOAIyHopZ'),(85,'ablazeby2c@statcounter.com','289-829-4256','Q9EjAvEsnK'),(86,'ayeude2d@spiegel.de','908-634-0543','NUEvsHDZg7yG'),(87,'pziemens2e@dion.ne.jp','487-609-2706','RTDziwqEm'),(88,'emosedill2f@comsenz.com','967-919-2810','S94t0pwrFd'),(89,'rstathor2g@wikispaces.com','861-493-1399','A5twdqh'),(90,'bwhitfeld2h@slideshare.net','131-335-5841','71iMVOSYGx'),(91,'dcorder2i@constantcontact.com','210-826-3611','SDJdA5kF'),(92,'gvala2j@dion.ne.jp','901-673-3297','cD6ZQso7TDD'),(93,'dswann2k@hhs.gov','380-743-2930','zAwX3NavH'),(94,'llewnden2l@paginegialle.it','636-711-2511','YNPEA3TvP'),(95,'yconing2m@rediff.com','779-428-9396','QPynv4'),(96,'clebretondelavieuville2n@chicagotribune.com','482-778-8629','yWpCIw4D0TJy'),(97,'ftancock2o@about.me','431-720-1715','AuVdMvSrAvNk'),(98,'mranking2p@craigslist.org','749-600-7582','XEyHvZ'),(99,'amacgilfoyle2q@seattletimes.com','299-664-9494','nJI2E3chxZf'),(100,'plocard2r@geocities.jp','612-388-6468','9k2ctL7NQDcD');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communities`
--

DROP TABLE IF EXISTS `users_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communities`
--

LOCK TABLES `users_communities` WRITE;
/*!40000 ALTER TABLE `users_communities` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vk'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-20 14:18:49
