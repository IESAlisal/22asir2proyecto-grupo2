-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: nextcloud07
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `oc_accounts`
--

DROP TABLE IF EXISTS `oc_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_accounts` (
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_accounts`
--

LOCK TABLES `oc_accounts` WRITE;
/*!40000 ALTER TABLE `oc_accounts` DISABLE KEYS */;
INSERT INTO `oc_accounts` VALUES ('admin','{\"displayname\":{\"value\":\"admin\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"v2-federated\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"v2-federated\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\"},\"profile_enabled\":{\"value\":\"1\"}}'),('martin','{\"displayname\":{\"value\":\"martin\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"v2-federated\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"v2-federated\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\"},\"profile_enabled\":{\"value\":\"1\"}}'),('melanie','{\"displayname\":{\"value\":\"melanie\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"v2-federated\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"v2-federated\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\"},\"profile_enabled\":{\"value\":\"1\"}}'),('ruben','{\"displayname\":{\"value\":\"ruben\",\"scope\":\"v2-federated\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"v2-federated\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"v2-federated\"},\"phone\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"v2-local\",\"verified\":\"0\"},\"organisation\":{\"value\":\"\",\"scope\":\"v2-local\"},\"role\":{\"value\":\"\",\"scope\":\"v2-local\"},\"headline\":{\"value\":\"\",\"scope\":\"v2-local\"},\"biography\":{\"value\":\"\",\"scope\":\"v2-local\"},\"profile_enabled\":{\"value\":\"1\"}}');
/*!40000 ALTER TABLE `oc_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_accounts_data`
--

DROP TABLE IF EXISTS `oc_accounts_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_accounts_data` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `accounts_data_uid` (`uid`),
  KEY `accounts_data_name` (`name`),
  KEY `accounts_data_value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_accounts_data`
--

LOCK TABLES `oc_accounts_data` WRITE;
/*!40000 ALTER TABLE `oc_accounts_data` DISABLE KEYS */;
INSERT INTO `oc_accounts_data` VALUES (1,'admin','displayname','admin'),(2,'admin','address',''),(3,'admin','website',''),(4,'admin','email',''),(5,'admin','phone',''),(6,'admin','twitter',''),(7,'admin','organisation',''),(8,'admin','role',''),(9,'admin','headline',''),(10,'admin','biography',''),(11,'admin','profile_enabled','1'),(12,'melanie','displayname','melanie'),(13,'melanie','address',''),(14,'melanie','website',''),(15,'melanie','email',''),(16,'melanie','phone',''),(17,'melanie','twitter',''),(18,'melanie','organisation',''),(19,'melanie','role',''),(20,'melanie','headline',''),(21,'melanie','biography',''),(22,'melanie','profile_enabled','1'),(23,'ruben','displayname','ruben'),(24,'ruben','address',''),(25,'ruben','website',''),(26,'ruben','email',''),(27,'ruben','phone',''),(28,'ruben','twitter',''),(29,'ruben','organisation',''),(30,'ruben','role',''),(31,'ruben','headline',''),(32,'ruben','biography',''),(33,'ruben','profile_enabled','1'),(34,'martin','displayname','martin'),(35,'martin','address',''),(36,'martin','website',''),(37,'martin','email',''),(38,'martin','phone',''),(39,'martin','twitter',''),(40,'martin','organisation',''),(41,'martin','role',''),(42,'martin','headline',''),(43,'martin','biography',''),(44,'martin','profile_enabled','1');
/*!40000 ALTER TABLE `oc_accounts_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_activity`
--

DROP TABLE IF EXISTS `oc_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_activity` (
  `activity_id` bigint NOT NULL AUTO_INCREMENT,
  `timestamp` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `user` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `affecteduser` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `app` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `subjectparams` longtext COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `messageparams` longtext COLLATE utf8mb4_bin,
  `file` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `link` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_id` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`),
  KEY `activity_user_time` (`affecteduser`,`timestamp`),
  KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`),
  KEY `activity_filter` (`affecteduser`,`type`,`app`,`timestamp`),
  KEY `activity_object` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_activity`
--

LOCK TABLES `oc_activity` WRITE;
/*!40000 ALTER TABLE `oc_activity` DISABLE KEYS */;
INSERT INTO `oc_activity` VALUES (1,1669041668,30,'file_created','admin','admin','files','created_self','[{\"3\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','http://next07.domi.com/index.php/apps/files/?dir=/','files',3),(2,1669041668,30,'file_created','admin','admin','files','created_self','[{\"4\":\"\\/Templates\"}]','','[]','/Templates','http://next07.domi.com/index.php/apps/files/?dir=/','files',4),(3,1669041668,30,'file_created','admin','admin','files','created_self','[{\"5\":\"\\/Templates\\/Mindmap.odg\"}]','','[]','/Templates/Mindmap.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',5),(4,1669041668,30,'file_created','admin','admin','files','created_self','[{\"6\":\"\\/Templates\\/Impact effort matrix.whiteboard\"}]','','[]','/Templates/Impact effort matrix.whiteboard','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',6),(5,1669041668,30,'file_created','admin','admin','files','created_self','[{\"7\":\"\\/Templates\\/Letter.odt\"}]','','[]','/Templates/Letter.odt','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',7),(6,1669041668,30,'file_created','admin','admin','files','created_self','[{\"8\":\"\\/Templates\\/SWOT analysis.whiteboard\"}]','','[]','/Templates/SWOT analysis.whiteboard','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',8),(7,1669041668,30,'file_created','admin','admin','files','created_self','[{\"9\":\"\\/Templates\\/Readme.md\"}]','','[]','/Templates/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',9),(8,1669041668,30,'file_created','admin','admin','files','created_self','[{\"10\":\"\\/Templates\\/Flowchart.odg\"}]','','[]','/Templates/Flowchart.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',10),(9,1669041668,30,'file_created','admin','admin','files','created_self','[{\"11\":\"\\/Templates\\/Expense report.ods\"}]','','[]','/Templates/Expense report.ods','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',11),(10,1669041668,30,'file_created','admin','admin','files','created_self','[{\"12\":\"\\/Templates\\/Business model canvas.odg\"}]','','[]','/Templates/Business model canvas.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',12),(11,1669041668,30,'file_created','admin','admin','files','created_self','[{\"13\":\"\\/Templates\\/Elegant.odp\"}]','','[]','/Templates/Elegant.odp','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',13),(12,1669041668,30,'file_created','admin','admin','files','created_self','[{\"14\":\"\\/Templates\\/Diagram & table.ods\"}]','','[]','/Templates/Diagram & table.ods','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',14),(13,1669041668,30,'file_created','admin','admin','files','created_self','[{\"15\":\"\\/Templates\\/Product plan.md\"}]','','[]','/Templates/Product plan.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',15),(14,1669041668,30,'file_created','admin','admin','files','created_self','[{\"16\":\"\\/Templates\\/Simple.odp\"}]','','[]','/Templates/Simple.odp','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',16),(15,1669041668,30,'file_created','admin','admin','files','created_self','[{\"17\":\"\\/Templates\\/Invoice.odt\"}]','','[]','/Templates/Invoice.odt','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',17),(16,1669041668,30,'file_created','admin','admin','files','created_self','[{\"18\":\"\\/Templates\\/Meeting notes.md\"}]','','[]','/Templates/Meeting notes.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',18),(17,1669041669,30,'file_created','admin','admin','files','created_self','[{\"19\":\"\\/Templates\\/Org chart.odg\"}]','','[]','/Templates/Org chart.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',19),(18,1669041669,30,'file_created','admin','admin','files','created_self','[{\"20\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','http://next07.domi.com/index.php/apps/files/?dir=/','files',20),(19,1669041669,30,'file_created','admin','admin','files','created_self','[{\"21\":\"\\/Photos\"}]','','[]','/Photos','http://next07.domi.com/index.php/apps/files/?dir=/','files',21),(20,1669041669,30,'file_created','admin','admin','files','created_self','[{\"22\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',22),(21,1669041669,30,'file_created','admin','admin','files','created_self','[{\"23\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',23),(22,1669041669,30,'file_created','admin','admin','files','created_self','[{\"24\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',24),(23,1669041669,30,'file_created','admin','admin','files','created_self','[{\"25\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',25),(24,1669041669,30,'file_created','admin','admin','files','created_self','[{\"26\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',26),(25,1669041669,30,'file_created','admin','admin','files','created_self','[{\"27\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',27),(26,1669041669,30,'file_created','admin','admin','files','created_self','[{\"28\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',28),(27,1669041669,30,'file_created','admin','admin','files','created_self','[{\"29\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',29),(28,1669041669,30,'file_created','admin','admin','files','created_self','[{\"30\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',30),(29,1669041669,30,'file_created','admin','admin','files','created_self','[{\"31\":\"\\/Documents\"}]','','[]','/Documents','http://next07.domi.com/index.php/apps/files/?dir=/','files',31),(30,1669041669,30,'file_created','admin','admin','files','created_self','[{\"32\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',32),(31,1669041669,30,'file_created','admin','admin','files','created_self','[{\"33\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',33),(32,1669041669,30,'file_created','admin','admin','files','created_self','[{\"34\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',34),(33,1669041669,30,'file_created','admin','admin','files','created_self','[{\"35\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',35),(34,1669041669,30,'file_created','admin','admin','files','created_self','[{\"36\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','http://next07.domi.com/index.php/apps/files/?dir=/','files',36),(35,1669041669,30,'file_created','admin','admin','files','created_self','[{\"37\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','http://next07.domi.com/index.php/apps/files/?dir=/','files',37),(36,1669041669,30,'file_changed','admin','admin','files','renamed_self','[{\"4\":\"\\/\\/Plantillas\"},{\"4\":\"\\/\\/Templates\"}]','','[]','//Plantillas','http://next07.domi.com/index.php/apps/files/?dir=/','files',4),(37,1669041669,30,'calendar','admin','admin','dav','calendar_add_self','{\"actor\":\"admin\",\"calendar\":{\"id\":1,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',1),(38,1669041669,30,'contacts','admin','admin','dav','addressbook_add_self','{\"actor\":\"admin\",\"addressbook\":{\"id\":1,\"uri\":\"contacts\",\"name\":\"Contacts\"}}','','[]','','','addressbook',1),(39,1669041737,30,'file_created','admin','admin','files','created_self','[{\"49\":\"\\/Talk\"}]','','[]','/Talk','http://next07.domi.com/index.php/apps/files/?dir=/','files',49),(40,1671558453,30,'calendar','admin','system','dav','calendar_add','{\"actor\":\"admin\",\"calendar\":{\"id\":2,\"uri\":\"contact_birthdays\",\"name\":\"Cumplea\\u00f1os del contacto\"}}','','[]','','','calendar',2),(41,1671558547,30,'file_created','martin','martin','files','created_self','[{\"128\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','http://next07.domi.com/index.php/apps/files/?dir=/','files',128),(42,1671558547,30,'file_created','martin','martin','files','created_self','[{\"129\":\"\\/Templates\"}]','','[]','/Templates','http://next07.domi.com/index.php/apps/files/?dir=/','files',129),(43,1671558547,30,'file_created','martin','martin','files','created_self','[{\"130\":\"\\/Templates\\/Mindmap.odg\"}]','','[]','/Templates/Mindmap.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',130),(44,1671558547,30,'file_created','martin','martin','files','created_self','[{\"131\":\"\\/Templates\\/Impact effort matrix.whiteboard\"}]','','[]','/Templates/Impact effort matrix.whiteboard','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',131),(45,1671558547,30,'file_created','martin','martin','files','created_self','[{\"132\":\"\\/Templates\\/Letter.odt\"}]','','[]','/Templates/Letter.odt','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',132),(46,1671558547,30,'file_created','martin','martin','files','created_self','[{\"133\":\"\\/Templates\\/SWOT analysis.whiteboard\"}]','','[]','/Templates/SWOT analysis.whiteboard','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',133),(47,1671558547,30,'file_created','martin','martin','files','created_self','[{\"134\":\"\\/Templates\\/Readme.md\"}]','','[]','/Templates/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',134),(48,1671558547,30,'file_created','martin','martin','files','created_self','[{\"135\":\"\\/Templates\\/Flowchart.odg\"}]','','[]','/Templates/Flowchart.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',135),(49,1671558547,30,'file_created','martin','martin','files','created_self','[{\"136\":\"\\/Templates\\/Expense report.ods\"}]','','[]','/Templates/Expense report.ods','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',136),(50,1671558547,30,'file_created','martin','martin','files','created_self','[{\"137\":\"\\/Templates\\/Business model canvas.odg\"}]','','[]','/Templates/Business model canvas.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',137),(51,1671558547,30,'file_created','martin','martin','files','created_self','[{\"138\":\"\\/Templates\\/Elegant.odp\"}]','','[]','/Templates/Elegant.odp','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',138),(52,1671558547,30,'file_created','martin','martin','files','created_self','[{\"139\":\"\\/Templates\\/Diagram & table.ods\"}]','','[]','/Templates/Diagram & table.ods','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',139),(53,1671558547,30,'file_created','martin','martin','files','created_self','[{\"140\":\"\\/Templates\\/Product plan.md\"}]','','[]','/Templates/Product plan.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',140),(54,1671558547,30,'file_created','martin','martin','files','created_self','[{\"141\":\"\\/Templates\\/Simple.odp\"}]','','[]','/Templates/Simple.odp','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',141),(55,1671558547,30,'file_created','martin','martin','files','created_self','[{\"142\":\"\\/Templates\\/Invoice.odt\"}]','','[]','/Templates/Invoice.odt','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',142),(56,1671558547,30,'file_created','martin','martin','files','created_self','[{\"143\":\"\\/Templates\\/Meeting notes.md\"}]','','[]','/Templates/Meeting notes.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',143),(57,1671558547,30,'file_created','martin','martin','files','created_self','[{\"144\":\"\\/Templates\\/Org chart.odg\"}]','','[]','/Templates/Org chart.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',144),(58,1671558547,30,'file_created','martin','martin','files','created_self','[{\"145\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','http://next07.domi.com/index.php/apps/files/?dir=/','files',145),(59,1671558547,30,'file_created','martin','martin','files','created_self','[{\"146\":\"\\/Photos\"}]','','[]','/Photos','http://next07.domi.com/index.php/apps/files/?dir=/','files',146),(60,1671558547,30,'file_created','martin','martin','files','created_self','[{\"147\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',147),(61,1671558547,30,'file_created','martin','martin','files','created_self','[{\"148\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',148),(62,1671558547,30,'file_created','martin','martin','files','created_self','[{\"149\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',149),(63,1671558547,30,'file_created','martin','martin','files','created_self','[{\"150\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',150),(64,1671558548,30,'file_created','martin','martin','files','created_self','[{\"151\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',151),(65,1671558548,30,'file_created','martin','martin','files','created_self','[{\"152\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',152),(66,1671558548,30,'file_created','martin','martin','files','created_self','[{\"153\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',153),(67,1671558548,30,'file_created','martin','martin','files','created_self','[{\"154\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',154),(68,1671558548,30,'file_created','martin','martin','files','created_self','[{\"155\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',155),(69,1671558548,30,'file_created','martin','martin','files','created_self','[{\"156\":\"\\/Documents\"}]','','[]','/Documents','http://next07.domi.com/index.php/apps/files/?dir=/','files',156),(70,1671558548,30,'file_created','martin','martin','files','created_self','[{\"157\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',157),(71,1671558548,30,'file_created','martin','martin','files','created_self','[{\"158\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',158),(72,1671558548,30,'file_created','martin','martin','files','created_self','[{\"159\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',159),(73,1671558548,30,'file_created','martin','martin','files','created_self','[{\"160\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',160),(74,1671558548,30,'file_created','martin','martin','files','created_self','[{\"161\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','http://next07.domi.com/index.php/apps/files/?dir=/','files',161),(75,1671558548,30,'file_created','martin','martin','files','created_self','[{\"162\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','http://next07.domi.com/index.php/apps/files/?dir=/','files',162),(76,1671558548,30,'calendar','martin','martin','dav','calendar_add_self','{\"actor\":\"martin\",\"calendar\":{\"id\":3,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',3),(77,1671558548,30,'contacts','martin','martin','dav','addressbook_add_self','{\"actor\":\"martin\",\"addressbook\":{\"id\":3,\"uri\":\"contacts\",\"name\":\"Contacts\"}}','','[]','','','addressbook',3),(78,1671558548,30,'file_created','martin','martin','files','created_self','[{\"163\":\"\\/Talk\"}]','','[]','/Talk','http://next07.domi.com/index.php/apps/files/?dir=/','files',163),(79,1671558655,30,'file_created','martin','martin','files','created_self','[{\"218\":\"\\/s-l500.jpg\"}]','','[]','/s-l500.jpg','http://next07.domi.com/index.php/apps/files/?dir=/','files',218),(80,1671558655,30,'file_created','martin','martin','files','created_self','[{\"217\":\"\\/R.jpg\"}]','','[]','/R.jpg','http://next07.domi.com/index.php/apps/files/?dir=/','files',217),(81,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"240\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','http://next07.domi.com/index.php/apps/files/?dir=/','files',240),(82,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"241\":\"\\/Templates\"}]','','[]','/Templates','http://next07.domi.com/index.php/apps/files/?dir=/','files',241),(83,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"242\":\"\\/Templates\\/Mindmap.odg\"}]','','[]','/Templates/Mindmap.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',242),(84,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"243\":\"\\/Templates\\/Impact effort matrix.whiteboard\"}]','','[]','/Templates/Impact effort matrix.whiteboard','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',243),(85,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"244\":\"\\/Templates\\/Letter.odt\"}]','','[]','/Templates/Letter.odt','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',244),(86,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"245\":\"\\/Templates\\/SWOT analysis.whiteboard\"}]','','[]','/Templates/SWOT analysis.whiteboard','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',245),(87,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"246\":\"\\/Templates\\/Readme.md\"}]','','[]','/Templates/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',246),(88,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"247\":\"\\/Templates\\/Flowchart.odg\"}]','','[]','/Templates/Flowchart.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',247),(89,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"248\":\"\\/Templates\\/Expense report.ods\"}]','','[]','/Templates/Expense report.ods','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',248),(90,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"249\":\"\\/Templates\\/Business model canvas.odg\"}]','','[]','/Templates/Business model canvas.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',249),(91,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"250\":\"\\/Templates\\/Elegant.odp\"}]','','[]','/Templates/Elegant.odp','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',250),(92,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"251\":\"\\/Templates\\/Diagram & table.ods\"}]','','[]','/Templates/Diagram & table.ods','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',251),(93,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"252\":\"\\/Templates\\/Product plan.md\"}]','','[]','/Templates/Product plan.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',252),(94,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"253\":\"\\/Templates\\/Simple.odp\"}]','','[]','/Templates/Simple.odp','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',253),(95,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"254\":\"\\/Templates\\/Invoice.odt\"}]','','[]','/Templates/Invoice.odt','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',254),(96,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"255\":\"\\/Templates\\/Meeting notes.md\"}]','','[]','/Templates/Meeting notes.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',255),(97,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"256\":\"\\/Templates\\/Org chart.odg\"}]','','[]','/Templates/Org chart.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',256),(98,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"257\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','http://next07.domi.com/index.php/apps/files/?dir=/','files',257),(99,1671558677,30,'file_created','melanie','melanie','files','created_self','[{\"258\":\"\\/Photos\"}]','','[]','/Photos','http://next07.domi.com/index.php/apps/files/?dir=/','files',258),(100,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"259\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',259),(101,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"260\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',260),(102,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"261\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',261),(103,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"262\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',262),(104,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"263\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',263),(105,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"264\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',264),(106,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"265\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',265),(107,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"266\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',266),(108,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"267\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',267),(109,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"268\":\"\\/Documents\"}]','','[]','/Documents','http://next07.domi.com/index.php/apps/files/?dir=/','files',268),(110,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"269\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',269),(111,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"270\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',270),(112,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"271\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',271),(113,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"272\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',272),(114,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"273\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','http://next07.domi.com/index.php/apps/files/?dir=/','files',273),(115,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"274\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','http://next07.domi.com/index.php/apps/files/?dir=/','files',274),(116,1671558678,30,'calendar','melanie','melanie','dav','calendar_add_self','{\"actor\":\"melanie\",\"calendar\":{\"id\":4,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',4),(117,1671558678,30,'contacts','melanie','melanie','dav','addressbook_add_self','{\"actor\":\"melanie\",\"addressbook\":{\"id\":4,\"uri\":\"contacts\",\"name\":\"Contacts\"}}','','[]','','','addressbook',4),(118,1671558678,30,'file_created','melanie','melanie','files','created_self','[{\"275\":\"\\/Talk\"}]','','[]','/Talk','http://next07.domi.com/index.php/apps/files/?dir=/','files',275),(119,1671558695,30,'file_created','melanie','melanie','files','created_self','[{\"334\":\"\\/s-l500.jpg\"}]','','[]','/s-l500.jpg','http://next07.domi.com/index.php/apps/files/?dir=/','files',334),(120,1671558695,30,'file_created','melanie','melanie','files','created_self','[{\"335\":\"\\/R.jpg\"}]','','[]','/R.jpg','http://next07.domi.com/index.php/apps/files/?dir=/','files',335),(121,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"357\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','http://next07.domi.com/index.php/apps/files/?dir=/','files',357),(122,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"358\":\"\\/Templates\"}]','','[]','/Templates','http://next07.domi.com/index.php/apps/files/?dir=/','files',358),(123,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"359\":\"\\/Templates\\/Mindmap.odg\"}]','','[]','/Templates/Mindmap.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',359),(124,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"360\":\"\\/Templates\\/Impact effort matrix.whiteboard\"}]','','[]','/Templates/Impact effort matrix.whiteboard','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',360),(125,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"361\":\"\\/Templates\\/Letter.odt\"}]','','[]','/Templates/Letter.odt','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',361),(126,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"362\":\"\\/Templates\\/SWOT analysis.whiteboard\"}]','','[]','/Templates/SWOT analysis.whiteboard','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',362),(127,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"363\":\"\\/Templates\\/Readme.md\"}]','','[]','/Templates/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',363),(128,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"364\":\"\\/Templates\\/Flowchart.odg\"}]','','[]','/Templates/Flowchart.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',364),(129,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"365\":\"\\/Templates\\/Expense report.ods\"}]','','[]','/Templates/Expense report.ods','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',365),(130,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"366\":\"\\/Templates\\/Business model canvas.odg\"}]','','[]','/Templates/Business model canvas.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',366),(131,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"367\":\"\\/Templates\\/Elegant.odp\"}]','','[]','/Templates/Elegant.odp','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',367),(132,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"368\":\"\\/Templates\\/Diagram & table.ods\"}]','','[]','/Templates/Diagram & table.ods','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',368),(133,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"369\":\"\\/Templates\\/Product plan.md\"}]','','[]','/Templates/Product plan.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',369),(134,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"370\":\"\\/Templates\\/Simple.odp\"}]','','[]','/Templates/Simple.odp','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',370),(135,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"371\":\"\\/Templates\\/Invoice.odt\"}]','','[]','/Templates/Invoice.odt','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',371),(136,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"372\":\"\\/Templates\\/Meeting notes.md\"}]','','[]','/Templates/Meeting notes.md','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',372),(137,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"373\":\"\\/Templates\\/Org chart.odg\"}]','','[]','/Templates/Org chart.odg','http://next07.domi.com/index.php/apps/files/?dir=/Templates','files',373),(138,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"374\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','http://next07.domi.com/index.php/apps/files/?dir=/','files',374),(139,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"375\":\"\\/Photos\"}]','','[]','/Photos','http://next07.domi.com/index.php/apps/files/?dir=/','files',375),(140,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"376\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',376),(141,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"377\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',377),(142,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"378\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',378),(143,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"379\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',379),(144,1671558709,30,'file_created','ruben','ruben','files','created_self','[{\"380\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',380),(145,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"381\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',381),(146,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"382\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',382),(147,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"383\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',383),(148,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"384\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','http://next07.domi.com/index.php/apps/files/?dir=/Photos','files',384),(149,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"385\":\"\\/Documents\"}]','','[]','/Documents','http://next07.domi.com/index.php/apps/files/?dir=/','files',385),(150,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"386\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',386),(151,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"387\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',387),(152,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"388\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',388),(153,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"389\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','http://next07.domi.com/index.php/apps/files/?dir=/Documents','files',389),(154,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"390\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','http://next07.domi.com/index.php/apps/files/?dir=/','files',390),(155,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"391\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','http://next07.domi.com/index.php/apps/files/?dir=/','files',391),(156,1671558710,30,'calendar','ruben','ruben','dav','calendar_add_self','{\"actor\":\"ruben\",\"calendar\":{\"id\":5,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',5),(157,1671558710,30,'contacts','ruben','ruben','dav','addressbook_add_self','{\"actor\":\"ruben\",\"addressbook\":{\"id\":5,\"uri\":\"contacts\",\"name\":\"Contacts\"}}','','[]','','','addressbook',5),(158,1671558710,30,'file_created','ruben','ruben','files','created_self','[{\"392\":\"\\/Talk\"}]','','[]','/Talk','http://next07.domi.com/index.php/apps/files/?dir=/','files',392),(159,1671558722,30,'file_created','ruben','ruben','files','created_self','[{\"430\":\"\\/s-l500.jpg\"}]','','[]','/s-l500.jpg','http://next07.domi.com/index.php/apps/files/?dir=/','files',430),(160,1671558722,30,'file_created','ruben','ruben','files','created_self','[{\"431\":\"\\/R.jpg\"}]','','[]','/R.jpg','http://next07.domi.com/index.php/apps/files/?dir=/','files',431);
/*!40000 ALTER TABLE `oc_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_activity_mq`
--

DROP TABLE IF EXISTS `oc_activity_mq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_activity_mq` (
  `mail_id` bigint NOT NULL AUTO_INCREMENT,
  `amq_timestamp` int NOT NULL DEFAULT '0',
  `amq_latest_send` int NOT NULL DEFAULT '0',
  `amq_type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amq_affecteduser` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `amq_appid` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `amq_subject` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amq_subjectparams` longtext COLLATE utf8mb4_bin,
  `object_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_id` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`mail_id`),
  KEY `amp_user` (`amq_affecteduser`),
  KEY `amp_latest_send_time` (`amq_latest_send`),
  KEY `amp_timestamp_time` (`amq_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_activity_mq`
--

LOCK TABLES `oc_activity_mq` WRITE;
/*!40000 ALTER TABLE `oc_activity_mq` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_activity_mq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_addressbookchanges`
--

DROP TABLE IF EXISTS `oc_addressbookchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_addressbookchanges` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int unsigned NOT NULL DEFAULT '1',
  `addressbookid` bigint NOT NULL,
  `operation` smallint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addressbookid_synctoken` (`addressbookid`,`synctoken`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_addressbookchanges`
--

LOCK TABLES `oc_addressbookchanges` WRITE;
/*!40000 ALTER TABLE `oc_addressbookchanges` DISABLE KEYS */;
INSERT INTO `oc_addressbookchanges` VALUES (1,'Database:melanie.vcf',1,2,1),(2,'Database:ruben.vcf',2,2,1),(3,'Database:martin.vcf',3,2,1);
/*!40000 ALTER TABLE `oc_addressbookchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_addressbooks`
--

DROP TABLE IF EXISTS `oc_addressbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_addressbooks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `addressbook_index` (`principaluri`,`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_addressbooks`
--

LOCK TABLES `oc_addressbooks` WRITE;
/*!40000 ALTER TABLE `oc_addressbooks` DISABLE KEYS */;
INSERT INTO `oc_addressbooks` VALUES (1,'principals/users/admin','Contacts','contacts',NULL,1),(2,'principals/system/system','system','system','System addressbook which holds all users of this instance',4),(3,'principals/users/martin','Contacts','contacts',NULL,1),(4,'principals/users/melanie','Contacts','contacts',NULL,1),(5,'principals/users/ruben','Contacts','contacts',NULL,1);
/*!40000 ALTER TABLE `oc_addressbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_appconfig`
--

DROP TABLE IF EXISTS `oc_appconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_appconfig` (
  `appid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`appid`,`configkey`),
  KEY `appconfig_config_key_index` (`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_appconfig`
--

LOCK TABLES `oc_appconfig` WRITE;
/*!40000 ALTER TABLE `oc_appconfig` DISABLE KEYS */;
INSERT INTO `oc_appconfig` VALUES ('activity','enabled','yes'),('activity','installed_version','2.17.0'),('activity','types','filesystem'),('backgroundjob','lastjob','25'),('calendar','enabled','yes'),('calendar','installed_version','4.1.0'),('calendar','types',''),('circles','enabled','yes'),('circles','installed_version','25.0.0'),('circles','loopback_tmp_scheme','http'),('circles','types','filesystem,dav'),('cloud_federation_api','enabled','yes'),('cloud_federation_api','installed_version','1.8.0'),('cloud_federation_api','types','filesystem'),('comments','enabled','yes'),('comments','installed_version','1.15.0'),('comments','types','logging'),('contacts','enabled','yes'),('contacts','installed_version','5.0.1'),('contacts','types','dav'),('contactsinteraction','enabled','yes'),('contactsinteraction','installed_version','1.6.0'),('contactsinteraction','types','dav'),('core','installedat','1669041659.6496'),('core','lastcron','1671559739'),('core','lastupdateResult','{\"version\":\"25.0.2.3\",\"versionstring\":\"Nextcloud 25.0.2\",\"url\":\"https:\\/\\/download.nextcloud.com\\/server\\/releases\\/nextcloud-25.0.2.zip\",\"web\":\"https:\\/\\/docs.nextcloud.com\\/server\\/25\\/admin_manual\\/maintenance\\/upgrade.html\",\"changes\":\"https:\\/\\/updates.nextcloud.com\\/changelog_server\\/?version=25.0.2\",\"autoupdater\":\"1\",\"eol\":\"0\"}'),('core','lastupdatedat','1671559737');
INSERT INTO `oc_appconfig` VALUES ('core','public_files','files_sharing/public.php'),('core','public_webdav','dav/appinfo/v1/publicwebdav.php'),('core','vendor','nextcloud'),('dashboard','enabled','yes'),('dashboard','installed_version','7.5.0'),('dashboard','types',''),('dav','enabled','yes'),('dav','installed_version','1.24.0'),('dav','types','filesystem'),('federatedfilesharing','enabled','yes'),('federatedfilesharing','installed_version','1.15.0'),('federatedfilesharing','types',''),('federation','enabled','yes'),('federation','installed_version','1.15.0'),('federation','types','authentication'),('files','enabled','yes'),('files','installed_version','1.20.1'),('files','types','filesystem'),('files_pdfviewer','enabled','yes'),('files_pdfviewer','installed_version','2.6.0'),('files_pdfviewer','types',''),('files_rightclick','enabled','yes'),('files_rightclick','installed_version','1.4.0'),('files_rightclick','types',''),('files_sharing','enabled','yes'),('files_sharing','installed_version','1.17.0'),('files_sharing','types','filesystem'),('files_trashbin','enabled','yes'),('files_trashbin','installed_version','1.15.0'),('files_trashbin','types','filesystem,dav'),('files_versions','enabled','yes'),('files_versions','installed_version','1.18.0'),('files_versions','types','filesystem,dav'),('firstrunwizard','enabled','yes'),('firstrunwizard','installed_version','2.14.0'),('firstrunwizard','types','logging'),('logreader','enabled','yes'),('logreader','installed_version','2.10.0'),('logreader','types',''),('lookup_server_connector','enabled','yes'),('lookup_server_connector','installed_version','1.13.0'),('lookup_server_connector','types','authentication'),('mail','enabled','yes'),('mail','installed_version','2.1.1'),('mail','types',''),('nextcloud_announcements','enabled','yes'),('nextcloud_announcements','installed_version','1.14.0'),('nextcloud_announcements','pub_date','Thu, 24 Oct 2019 00:00:00 +0200'),('nextcloud_announcements','types','logging'),('notifications','enabled','yes'),('notifications','installed_version','2.13.1'),('notifications','types','logging'),('oauth2','enabled','yes'),('oauth2','installed_version','1.13.0'),('oauth2','types','authentication'),('password_policy','enabled','yes'),('password_policy','installed_version','1.15.0'),('password_policy','types','authentication'),('photos','enabled','yes'),('photos','installed_version','2.0.0'),('photos','types','dav,authentication'),('privacy','enabled','yes'),('privacy','installed_version','1.9.0'),('privacy','types',''),('provisioning_api','enabled','yes'),('provisioning_api','installed_version','1.15.0'),('provisioning_api','types','prevent_group_restriction'),('recommendations','enabled','yes'),('recommendations','installed_version','1.4.0'),('recommendations','types',''),('related_resources','enabled','yes'),('related_resources','installed_version','1.0.3'),('related_resources','types',''),('richdocuments','enabled','yes'),('richdocuments','installed_version','7.0.1'),('richdocuments','types','prevent_group_restriction'),('serverinfo','cached_count_filecache','448'),('serverinfo','cached_count_storages','5'),('serverinfo','enabled','yes'),('serverinfo','installed_version','1.15.0'),('serverinfo','types',''),('settings','enabled','yes'),('settings','installed_version','1.7.0'),('settings','types',''),('sharebymail','enabled','yes'),('sharebymail','installed_version','1.15.0'),('sharebymail','types','filesystem'),('spreed','enabled','yes'),('spreed','installed_version','15.0.1'),('spreed','signaling_token_privkey_es256','-----BEGIN PRIVATE KEY-----\nMIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgZohIPYhUpB0OICfu\ne15C9xIE6XAE0mF5Mm0SSNGKheKhRANCAASysERJ7Hwj7uLaONqgyCMACmWJzuCj\nKHgyDXCqRAAVYvMku+U9M0Paamc7SPF9iCjNQiU1TKAhEzTFILSV6J9F\n-----END PRIVATE KEY-----\n'),('spreed','signaling_token_pubkey_es256','-----BEGIN PUBLIC KEY-----\nMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEsrBESex8I+7i2jjaoMgjAAplic7g\noyh4Mg1wqkQAFWLzJLvlPTND2mpnO0jxfYgozUIlNUygIRM0xSC0leifRQ==\n-----END PUBLIC KEY-----\n'),('spreed','types','dav,prevent_group_restriction'),('support','enabled','yes'),('support','installed_version','1.8.0'),('support','types','session'),('survey_client','enabled','yes'),('survey_client','installed_version','1.13.0'),('survey_client','types',''),('systemtags','enabled','yes'),('systemtags','installed_version','1.15.0'),('systemtags','types','logging'),('text','enabled','yes'),('text','installed_version','3.6.0'),('text','types','dav'),('theming','enabled','yes'),('theming','installed_version','2.0.1'),('theming','types','logging'),('twofactor_backupcodes','enabled','yes'),('twofactor_backupcodes','installed_version','1.14.0'),('twofactor_backupcodes','types',''),('updatenotification','calendar','4.1.1'),('updatenotification','contacts','5.0.2'),('updatenotification','core','25.0.2.3'),('updatenotification','enabled','yes'),('updatenotification','installed_version','1.15.0'),('updatenotification','mail','2.2.1'),('updatenotification','richdocuments','7.0.2'),('updatenotification','spreed','15.0.2'),('updatenotification','types',''),('updatenotification','update_check_errors','0'),('user_status','enabled','yes'),('user_status','installed_version','1.5.0'),('user_status','types',''),('viewer','enabled','yes'),('viewer','installed_version','1.9.0'),('viewer','types',''),('weather_status','enabled','yes'),('weather_status','installed_version','1.5.0'),('weather_status','types',''),('workflowengine','enabled','yes'),('workflowengine','installed_version','2.7.0'),('workflowengine','types','filesystem');
/*!40000 ALTER TABLE `oc_appconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_authorized_groups`
--

DROP TABLE IF EXISTS `oc_authorized_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_authorized_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `class` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admindel_groupid_idx` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_authorized_groups`
--

LOCK TABLES `oc_authorized_groups` WRITE;
/*!40000 ALTER TABLE `oc_authorized_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_authorized_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_authtoken`
--

DROP TABLE IF EXISTS `oc_authtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_authtoken` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `login_name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `password` longtext COLLATE utf8mb4_bin,
  `name` longtext COLLATE utf8mb4_bin NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` smallint unsigned DEFAULT '0',
  `remember` smallint unsigned DEFAULT '0',
  `last_activity` int unsigned DEFAULT '0',
  `last_check` int unsigned DEFAULT '0',
  `scope` longtext COLLATE utf8mb4_bin,
  `expires` int unsigned DEFAULT NULL,
  `private_key` longtext COLLATE utf8mb4_bin,
  `public_key` longtext COLLATE utf8mb4_bin,
  `version` smallint unsigned NOT NULL DEFAULT '1',
  `password_invalid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `authtoken_token_index` (`token`),
  KEY `authtoken_last_activity_idx` (`last_activity`),
  KEY `authtoken_uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_authtoken`
--

LOCK TABLES `oc_authtoken` WRITE;
/*!40000 ALTER TABLE `oc_authtoken` DISABLE KEYS */;
INSERT INTO `oc_authtoken` VALUES (1,'admin','admin','k3JiedNUeT4mTjMZ7Zl4M7PLy75TXH2RmeIrT1mYPymPhUGVi+PtTDwWcZ08vhynCkacKdUXppS+K0kP8/D1dplUsxa9+UTHKDcBUEyr0ZZh3WyGtKW7qT9TNxzhtgLUtFonqWH8AfdLTMnAOp6ofCJUg4aRF5mtq1dC4+871f3SHAwXyPxLmLFZOu2l7pRfng+sJe6TsJSM3NQtImav/IifI1m2I6JAPy1gHFcrWx2+wNkAmLFG6+h4Z2aKwS4rKBSg4hNU55T3lq2KQqWI0NNQylAhb4i/ehR4Z9dt4VVRnb9wjRlveCxXPmq/VXf608/snWkIxtDrg8rkVa25iw==','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0','489dece38c09809247d3845eb2086e273ea9bfa0852d93da8b9b5dc963b8b1c90e0338db0bd7cd1b9704c47eac578761f42a48a126895e97bdcbb4cd5b44dd4c',0,0,1669048142,1669047858,NULL,NULL,'ca0dc8c08f60208951b76c3dab1b4ab49ad8332fd60cb6f95ce33c4a85afd196db3336a3877c45a970a6e41487134ab8d83d31f117f8a7c78aef0afc54733a2d0d7d87eb1a002d7c1f8646c62c87d96cdfbafa2a747f87395545edb5495a14d9febb6cda27cbee73cf9b0a7f0f85ae4170a321dd9493cc40265d240b430163c069bf2dd5bd0d4464ef6dc19cdc1f817feafa3cf83ee733af70687801b5e66999b75b86de4c4061a935495d5a79977ab356096257aea26ba9550faccf217363e5e66e5851ede7ad4d894974bbb8d7eb2fde26b77b69fe0a94ca6905bc8f375cb00e411881a2ade2c01b2ca7495477e9d14d27c93c269c78f00781afa1bd997e374eaa7f5aabd723a624448fded0ca9c56fa94aa7f780ad4688f814c9758fb82d3fe11ee6b51537100691f99d023f93b6721f2ec238cca785f9263a11f70cce91393434d66918439d7d0600801a6af464afbf31de19fa9d27209295619af69ebfb93eb4a6153bf2ab868eadba145eb7765ecbbcafc5c3634876164e699a59794f1bcda2cfd2494704d81d200a97896da87a563623ed4f50224d097a30358f0a6ff403e7bf6e2851c51dc1ba93ea70f8191ac80d87b7f18bce25155ce1d350152a431e5baf10eebe6b43ae1f2d35d7cdc8164dcbe0ad0678dbec7d06de5ec5a90ab1328572a8a9df151b040ed37169698024dee98b4843bd63487be4240afd565199e60c6d24b2696d954476b41d14185be7f13938141774ae536e8f5093f45e2adf6d81aee350bb5372fa191c5156183822708032aff60e3ac22b076d5c283b27ba86e58c1cdaafcb074c2be37497fba1cd41f2efa1f04babcbe58c5445922b9c24ee2645f2da15ae95954ebcb1971817f6253b3faf9e73abd0d8cbb9cb78a82610ef4721d7fb60bb2a42656661e4c6f5fee55b386c6d466dd88aa580e6abde8235c5726215c88fafff426ae6fe5bc1127e9874253d8cdc77eb20461880e232efe32f09425963422a182c7e7705bec8523c5bb523150a992972bd60c4b174a9eb76b5e617020c59cd85923a2f61b63f71f5c61aa37d106971ac1570cebf5c1a4c27b16ea6daed95be6375fda74d25ed0e6d51286ff6c0cb0baa328e2e95f046449c5db334d52d1bbc63fa4c894dd05b0200e65d4b855d5ca36095a7cd78dd205407810d4986e375344dc73f08e26f485f68d9aa0e8ced4b6d561ef3e4edf159001ff935697f72fbfc4923f6f3c716c55cb17ce77fac8e9ba83f77717769894c3b1a0fef2a78bba50e27dca4f72815f994687fb4ecda6550b6e658c25fda128c596e1fd6580c1aa3e86c0bd271e78ffb18862a33c17e0bd07a2243cf80dddd781b3cf1ece5c4c57a05efda36ce4f8605f3e677eae300c2724f1551b7cd93504f2180d76183d121e04283a23f52c069afc7618dd300f916eb1ce57bce28685dfd581297237c1453376653388d140c82f571d52066c8627bcf987f6bb667c0be5f34e393763f1bb666525f53fa2f4b4b114cc5d6ef59b37f4e12f803b662d23018aaf1a8ef1a2ed852e186c79fec3513830fe8898c5e98c862e05d79a5a2ded1c9489a0fcf9d2fa9f4d1327dfd194de8e871da73592893658f3ce8302113fa4ba955566c1bb1fb35d23bd08a7060aa217a3f74595e6bb34c430526412ee18a0f02a009a86c4005e4b31959e3f406b018b3bc2cb90452eb9d1f3622720e71cca403d43e722efc12972fffda392fe68f0560c3df1f69f213c7bef6b7fb228d141a0c78099177d50b65920cb03e22de2a2ba7b471d0d061d61794ddb29f10c5e7139e3d81787bd3841a08d778401b76e760bbf0ac020a3d31e158983bc2e2435edeadd33816b8a071380afcc9e8b2860a4ecfe6fa97e2689cd94841818b4493ce7f32c10a6e231195c2b9c1866678cd73c98609292372b3097c8a92998e3da4b91ec9081e35f7ed19ce8f81dabf3fefb75893c5f22ce86b6dd6d7347c7b59f314f88ef26956c04a9296494c361ce700f8b39bb7bb11e66a89d206da8c25047ceb8a36aa8ba213a84f7c20c2762cd0e7f30d5d9494c9770f9d6b6c9a47b9107c2c06a154beaf06d893533fc62e250cffe034057d4a09715258f990ca6e6d65c880369d942eec4ba4105d886325bd5b9ca1d19da4e4570a95ceecfe59865b788ab74469f75394f6ddab88ad9fd50455d6a60312690aa13d320eaed03e98b33a7229dc316e2fdb5aa27e11fc2674a2362a7070613c415e1a33de381a8c096fcb4fca1eb652a895564669394cf5c9e812c5180d8c42f0f67eaf90d71a4f2a139d2cd8437d4ef1caaf005423f52ea909a3fadb8a0e8bb6c857f183bac03e1beaeb58ae57ed64be6361b2f4cffa7f7d15cb301808669fc01a898e18d0bc66db6a5b7f91e250c7554962ae18cd305e87dbaf41d0ed76c7b|6ed49a604d660eb0e4a2f814bac190ce|9169fb63e2fb59a234a0d89f096b3f9d9c33d288f5f5bfc7b1a093830012d145bf543ca4b8460651bd75354496448c2bd9ec45329fd5160028e7e1c9f0381215|3','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxQD/CuxKQpA7f09r/1LL\nc0MyQ1y1uKyyaoqi7d3J2OG9dmVp5OxBGX2GLDrgUlzSTuJWbYPimckFqONFb/9w\nOQom4lTVZbIuW9TvPaEyeDkgf9jjK5+/mzULBsf2DNEP1SoB2+efoMLFtZWMueRz\nIfD+XLBI/3grfgLwWyJ+cCr70SPJEmDKWliRGNZKm6dcI278bVwXrM4QNy+iQ9Wz\npzDfxieuVCC9ZNpstjxVl/vkt+zgoZWDoam4CZ38OhPb8GLQxbRjzaLzCTaDKYNs\n35BhLM3kDWwDeZKLufn4EjDjQmdwk3AZ797tlniGwhrWlkOENbNB3DunBVU8Gy8D\nmwIDAQAB\n-----END PUBLIC KEY-----\n',2,0),(7,'martin','martin','d6t7ektdYvB9lbqe4oUv5/yaRk9a99HS1YoLiGnsyCmy4S8J+NR2zjnJG9YmlY0U9BHaOeeYAVwuDWYFOioOjJGYNT7/BC+cG5F8qTN/4BRAziZsuOhc91wL+3dNDjtFYiqLrMlUOqKvj90dIenJ7N633LZP9jYyN5xfi3LxQ60Sd7zuxXjBQoTUK0De2qxNDm474cbaNFAD6T9gHjlqmUkiBTZBB8jBzYo1Edq6Erw3Wu8aY2jykU8xABD6ROQLcnFV52nQjpSci49p7OJRGdxkiFGY53dB6D8RIsY6pcQIfHo7NVoZzGysKK6nhp3N7B3UxIra30YYamXQckRRTA==','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.…','2c0180b3ee42d1643256f2591200aa6ff676e8eaecebcc39d9107c9efd27a5f736769e18527d30cd0d3bc87167477383d444a030a7bcac8b1ff0d47533236204',0,1,1671561237,1671561237,NULL,NULL,'8c1ef129c727eccec5c057f585f5378df8d1ce39d83d116061f053cf0fe71c69bce5266a551130aceb80b7a6c2afcb80b2467ce2d6f6a326259cfd1829f9a413dc6ed8b1e20b3a14193d084b728b7b8176d929fbcc6e9d4bc2d00112fd49f0f0da0b63b7c470395e9b6915bfda4bbf93048a846f8d43afecd2fde0076e4caa7f6d76fe90c52129748381974e4ab2a39b85194f2e0a8b1a36386c6fb32cee60802f7933303766c8d8bfa140af88c6523f101996664ced798b84a4bc73f22c5c811bdc7d5d1b83609436145cb4dd8c44e6f08fb3004090f0486f5075bd1dee27ba37bc090efbc67bd72c7f0601cbdace6742020cf54bf0ed6076c79a36efaf568b05070a7d7482c03b98cfe522d9776bd0a3db8c247f77a1db605c4133951574d54a2cbc01453e466a5a693bdb7b736c99f06c5c0ff148e7e90b668816d7447666a869ed3fe6d56c6c7695e3f6de72eb8c2a680691e59b0d1981cca8ec3661b62ffe402edd11e12124b1fad6859f36a9f98aa02f141cec1a5b8b62d8d85fbe464f109f592aafef970f09c4b7364571c9762bbfa9c2e3969426c5c2fbb6bfcc286056333988daab232cb60f2f8c84a771147a53d6186331d90a205b3b8f35f324f05ba48931ca4e9fffe366c1122e95058a87de8972d8f672011d75e3690625cdc496467414568bf2b64b011a413e6218bcf75c960a8f57b7c398ee9ce65d78d8f8ca3ecb97c75cca70f2fbecab6d394bb984f17929c753ce447069c3dec1cbcf0b4d660e8f11f4ce9ad08537405eff03b903dac6112f9c9170544cacfb3473750ce122089dcc484a6ce6f6ccd15c9e270382f4c500503d05cade15ac0b65761176202c2e52e73ac6929b6ffe35635cb2b9a4afb8a895478185b57c430f995f0da6e894b04eaedbd6016a395283f684a4889a5038ef4b17484bef24f97e65f24b6d1a82aad87a32cf55804933178081790c20fab2404861d19110cfff52ab9229b3857907010b86df1cf6f3da27064813d38e62f9a4f05855befb8bbf1dfeba353c5cb0b3d711a3d1b43bb7d639646d13a63ba3630a11281996bb71078158a378f7cedfd400983379a103fd47965d6a297a44cee1993d89086895ed49965fbd667db59dab3ee2331ba33fbda94b2204548c15dcc003522eaa48c18acdd4f53d9e55c8347da753a0ea8e443fc4d1145a0b6cb3a13656360aa3abc68c59e50842a395c81b75986c703947ea5366660d6a45132adb7b3afe326ad1b02ff8302e1ed372a1bd54701faa5f54b9e2fae2a16818775e961694834d1d0458ead006d40f67dfa98d1cecc35a3f376e473f7039f9a656ac7247516f042aa94c27bde8f6190aef9b9a4937b3cbe10409ca398c68b277a5800c43c2b96e989f831c6e45ae97ce15eb5f1164fb0f5bf5cb93e0d544bfe443d17efb750cde52953e1fc07c527e258152325f9e1c10548872b4851f5b8dd5790ce69259904106fd96f47b307952cf5a19b84eb32bb7cac46f0c829b93f7a74dd3e236ea535fab01b1cd89a4873fec468422c3a1f9e85b49ae0faa4003e333796a02ed381a0a6e9a287ce5f576d74d42feedd5ecbbfae86bcae6990bb3c121ce62108dc3951f26a5bd47b7f8c877fd92cb6c738724502bd210bc8144e0677b252e2ed7400ae591ddddebfd6adb90fb399557e2d929696bf6b27a13e5dc68e68f67d23033b80c655b07905ab794d6b7951a13512fa227cdb39a7bc6d25e0c70811b5d9465386731387dccfeeb38226921b8710f25a7f2a9f5c265bae68522318970cd2fdae892fd80eec9656bdee8a829b265630335ac5814cb7533e8dde0b5abdc84ab88933cb3c6dadc72a63dd312058848b1b5857f9e2ad8dd27cf1f4b82d5943734ec3e50cd9e5a9ab2ef286416628b46517cfa72bff03b52486e92f028528be0f4aee439648cf1ea6abe199c936184fe1b32e052e2285bb8cab95d97a1f53e20cd05fbbb9fdfc73cd04ae7caaa565ec56ea762fe04f834732fb9c1ff29d21613aaa51ed62b378491ea85d23083f31d39217880c5ec01b89c6ee48b8973ea773192889d939df40638554639111335ee2f71f61cc2eed53bff141d325f3d9540e7e595ac71e61358b6723bb803704ef76d39a476e3efb40fcf89a8e7bd41295c64ee7b2d6b40d121aea6b365ba31a7ec3e3612f0f9f995e94999a940272332595aa2ed502db3d53f60fa291131eed0b8ceeb76f5f980066b88d42ad14d4337c4bdc30a4b67582ac7a4fc6db2ba84d86718376798985bbb3fa8bee79605f7fc785143c87be0fd65aeac5625397ed4be58c48ffc6304480b8957cde1bde4332507287ebce78e98e4867198c892a46dab9d88534e1a41f9d5e4d4250e19a3e1d4c353152acde8aee47e33e193b1eb6e1aab73ca5b864bdf83f1ddd97308cc0c40|a5ae4daec9c90289a95612f18ef3213b|4613ee813a7b0963f1ce7ceab89824462378409ae0d9d67d03ac444c2deee7a1c44ca42d10af784627d632a48f6d1af3e8d3dbbe434ac2ead5eef782106078d5|3','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsizBVL8WIe/ncg1xgJdo\nllPjUkYUuap7n4ez3rh5AHnom0NN/qeQvhmZzUJVdMR6WoiQycjkIBmqbuYHWYwY\nTLJ+8LVQ+ADi8sCWnpp8Yfyrw/MmsRXBBNHCxwJPvIkKfQnbK6qKqtt04jG+C1JH\n2NFun3SrkALBdZbR11YqW4mthSY3kZ1zYpmFui9jqHQVVyyxWxT+pIfx0IXPFMvL\nAJe3mzk3cq9Cbm/r0pztdfiw2BQ/tjv1dE3Cjua1iyI4dMFg3U408QK2tSg4Axo5\nilKjDUnK3VY3RLc8cz1Zn+DJxxWVvmj4JWGk38eRD4NbWJCpVQZycCyX9gMiZ9OM\nVQIDAQAB\n-----END PUBLIC KEY-----\n',2,0);
/*!40000 ALTER TABLE `oc_authtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_bruteforce_attempts`
--

DROP TABLE IF EXISTS `oc_bruteforce_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_bruteforce_attempts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `occurred` int unsigned NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `subnet` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `metadata` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bruteforce_attempts_ip` (`ip`),
  KEY `bruteforce_attempts_subnet` (`subnet`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_bruteforce_attempts`
--

LOCK TABLES `oc_bruteforce_attempts` WRITE;
/*!40000 ALTER TABLE `oc_bruteforce_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_bruteforce_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_appt_bookings`
--

DROP TABLE IF EXISTS `oc_calendar_appt_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_appt_bookings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `appt_config_id` bigint unsigned NOT NULL,
  `created_at` int NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `description` longtext COLLATE utf8mb4_bin,
  `email` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `start` int NOT NULL,
  `end` int NOT NULL,
  `timezone` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `confirmed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cal_appt_bk_token_uniq_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_appt_bookings`
--

LOCK TABLES `oc_calendar_appt_bookings` WRITE;
/*!40000 ALTER TABLE `oc_calendar_appt_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_appt_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_appt_configs`
--

DROP TABLE IF EXISTS `oc_calendar_appt_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_appt_configs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `description` longtext COLLATE utf8mb4_bin,
  `location` longtext COLLATE utf8mb4_bin,
  `visibility` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `target_calendar_uri` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `calendar_freebusy_uris` longtext COLLATE utf8mb4_bin,
  `availability` longtext COLLATE utf8mb4_bin,
  `start` int DEFAULT NULL,
  `end` int DEFAULT NULL,
  `length` int NOT NULL,
  `increment` int NOT NULL,
  `preparation_duration` int NOT NULL DEFAULT '0',
  `followup_duration` int NOT NULL DEFAULT '0',
  `time_before_next_slot` int DEFAULT NULL,
  `daily_max` int DEFAULT NULL,
  `future_limit` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cal_appt_token_uniq_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_appt_configs`
--

LOCK TABLES `oc_calendar_appt_configs` WRITE;
/*!40000 ALTER TABLE `oc_calendar_appt_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_appt_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_invitations`
--

DROP TABLE IF EXISTS `oc_calendar_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_invitations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `recurrenceid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `attendee` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `organizer` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sequence` bigint unsigned DEFAULT NULL,
  `token` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `expiration` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_invitation_tokens` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_invitations`
--

LOCK TABLES `oc_calendar_invitations` WRITE;
/*!40000 ALTER TABLE `oc_calendar_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_reminders`
--

DROP TABLE IF EXISTS `oc_calendar_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_reminders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `calendar_id` bigint NOT NULL,
  `object_id` bigint NOT NULL,
  `is_recurring` smallint DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `recurrence_id` bigint unsigned DEFAULT NULL,
  `is_recurrence_exception` smallint NOT NULL,
  `event_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `alarm_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `is_relative` smallint NOT NULL,
  `notification_date` bigint unsigned NOT NULL,
  `is_repeat_based` smallint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_reminder_objid` (`object_id`),
  KEY `calendar_reminder_uidrec` (`uid`,`recurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_reminders`
--

LOCK TABLES `oc_calendar_reminders` WRITE;
/*!40000 ALTER TABLE `oc_calendar_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_resources`
--

DROP TABLE IF EXISTS `oc_calendar_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_resources` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_restrictions` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_resources_email` (`email`),
  KEY `calendar_resources_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_resources`
--

LOCK TABLES `oc_calendar_resources` WRITE;
/*!40000 ALTER TABLE `oc_calendar_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_resources_md`
--

DROP TABLE IF EXISTS `oc_calendar_resources_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_resources_md` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_md_idk` (`resource_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_resources_md`
--

LOCK TABLES `oc_calendar_resources_md` WRITE;
/*!40000 ALTER TABLE `oc_calendar_resources_md` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_resources_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_rooms`
--

DROP TABLE IF EXISTS `oc_calendar_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_rooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_restrictions` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_rooms_email` (`email`),
  KEY `calendar_rooms_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_rooms`
--

LOCK TABLES `oc_calendar_rooms` WRITE;
/*!40000 ALTER TABLE `oc_calendar_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_rooms_md`
--

DROP TABLE IF EXISTS `oc_calendar_rooms_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendar_rooms_md` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_md_idk` (`room_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_rooms_md`
--

LOCK TABLES `oc_calendar_rooms_md` WRITE;
/*!40000 ALTER TABLE `oc_calendar_rooms_md` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_rooms_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarchanges`
--

DROP TABLE IF EXISTS `oc_calendarchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarchanges` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int unsigned NOT NULL DEFAULT '1',
  `calendarid` bigint NOT NULL,
  `operation` smallint NOT NULL,
  `calendartype` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `calid_type_synctoken` (`calendarid`,`calendartype`,`synctoken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarchanges`
--

LOCK TABLES `oc_calendarchanges` WRITE;
/*!40000 ALTER TABLE `oc_calendarchanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarobjects`
--

DROP TABLE IF EXISTS `oc_calendarobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarobjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `calendardata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarid` bigint unsigned NOT NULL,
  `lastmodified` int unsigned DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `componenttype` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstoccurence` bigint unsigned DEFAULT NULL,
  `lastoccurence` bigint unsigned DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `classification` int DEFAULT '0',
  `calendartype` int NOT NULL DEFAULT '0',
  `deleted_at` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calobjects_index` (`calendarid`,`calendartype`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarobjects`
--

LOCK TABLES `oc_calendarobjects` WRITE;
/*!40000 ALTER TABLE `oc_calendarobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarobjects_props`
--

DROP TABLE IF EXISTS `oc_calendarobjects_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarobjects_props` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `calendarid` bigint NOT NULL DEFAULT '0',
  `objectid` bigint unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `parameter` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendartype` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `calendarobject_index` (`objectid`,`calendartype`),
  KEY `calendarobject_name_index` (`name`,`calendartype`),
  KEY `calendarobject_value_index` (`value`,`calendartype`),
  KEY `calendarobject_calid_index` (`calendarid`,`calendartype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarobjects_props`
--

LOCK TABLES `oc_calendarobjects_props` WRITE;
/*!40000 ALTER TABLE `oc_calendarobjects_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarobjects_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendars`
--

DROP TABLE IF EXISTS `oc_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendars` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int unsigned NOT NULL DEFAULT '1',
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarorder` int unsigned NOT NULL DEFAULT '0',
  `calendarcolor` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timezone` longtext COLLATE utf8mb4_bin,
  `components` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `transparent` smallint NOT NULL DEFAULT '0',
  `deleted_at` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calendars_index` (`principaluri`,`uri`),
  KEY `cals_princ_del_idx` (`principaluri`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendars`
--

LOCK TABLES `oc_calendars` WRITE;
/*!40000 ALTER TABLE `oc_calendars` DISABLE KEYS */;
INSERT INTO `oc_calendars` VALUES (1,'principals/users/admin','Personal','personal',1,NULL,0,'#0082c9',NULL,'VEVENT',0,NULL),(2,'principals/system/system','Cumpleaños del contacto','contact_birthdays',1,NULL,0,'#E9D859',NULL,'VEVENT',0,NULL),(3,'principals/users/martin','Personal','personal',1,NULL,0,'#0082c9',NULL,'VEVENT',0,NULL),(4,'principals/users/melanie','Personal','personal',1,NULL,0,'#0082c9',NULL,'VEVENT',0,NULL),(5,'principals/users/ruben','Personal','personal',1,NULL,0,'#0082c9',NULL,'VEVENT',0,NULL);
/*!40000 ALTER TABLE `oc_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarsubscriptions`
--

DROP TABLE IF EXISTS `oc_calendarsubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_calendarsubscriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `refreshrate` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarorder` int unsigned NOT NULL DEFAULT '0',
  `calendarcolor` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `striptodos` smallint DEFAULT NULL,
  `stripalarms` smallint DEFAULT NULL,
  `stripattachments` smallint DEFAULT NULL,
  `lastmodified` int unsigned DEFAULT NULL,
  `synctoken` int unsigned NOT NULL DEFAULT '1',
  `source` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calsub_index` (`principaluri`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarsubscriptions`
--

LOCK TABLES `oc_calendarsubscriptions` WRITE;
/*!40000 ALTER TABLE `oc_calendarsubscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarsubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cards`
--

DROP TABLE IF EXISTS `oc_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_cards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint NOT NULL DEFAULT '0',
  `carddata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastmodified` bigint unsigned DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_abid` (`addressbookid`),
  KEY `cards_abiduri` (`addressbookid`,`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cards`
--

LOCK TABLES `oc_cards` WRITE;
/*!40000 ALTER TABLE `oc_cards` DISABLE KEYS */;
INSERT INTO `oc_cards` VALUES (1,2,_binary 'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.4.2//EN\r\nUID:melanie\r\nFN:melanie\r\nN:melanie;;;;\r\nCLOUD:melanie@http://next07.domi.com\r\nEND:VCARD\r\n','Database:melanie.vcf',1671558452,'bb804008bc776d9a0d7c819c62941702',157,'melanie'),(2,2,_binary 'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.4.2//EN\r\nUID:ruben\r\nFN:ruben\r\nN:ruben;;;;\r\nCLOUD:ruben@http://next07.domi.com\r\nEND:VCARD\r\n','Database:ruben.vcf',1671558472,'9993fd887acfef077a1cdb8056239e24',149,'ruben'),(3,2,_binary 'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.4.2//EN\r\nUID:martin\r\nFN:martin\r\nN:martin;;;;\r\nCLOUD:martin@http://next07.domi.com\r\nEND:VCARD\r\n','Database:martin.vcf',1671558493,'8c029cc6e3c52b38a50611f201c0699b',153,'martin');
/*!40000 ALTER TABLE `oc_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cards_properties`
--

DROP TABLE IF EXISTS `oc_cards_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_cards_properties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint NOT NULL DEFAULT '0',
  `cardid` bigint unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `preferred` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `card_contactid_index` (`cardid`),
  KEY `card_name_index` (`name`),
  KEY `card_value_index` (`value`),
  KEY `cards_prop_abid` (`addressbookid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cards_properties`
--

LOCK TABLES `oc_cards_properties` WRITE;
/*!40000 ALTER TABLE `oc_cards_properties` DISABLE KEYS */;
INSERT INTO `oc_cards_properties` VALUES (1,2,1,'UID','melanie',0),(2,2,1,'FN','melanie',0),(3,2,1,'N','melanie;;;;',0),(4,2,1,'CLOUD','melanie@http://next07.domi.com',0),(5,2,2,'UID','ruben',0),(6,2,2,'FN','ruben',0),(7,2,2,'N','ruben;;;;',0),(8,2,2,'CLOUD','ruben@http://next07.domi.com',0),(9,2,3,'UID','martin',0),(10,2,3,'FN','martin',0),(11,2,3,'N','martin;;;;',0),(12,2,3,'CLOUD','martin@http://next07.domi.com',0);
/*!40000 ALTER TABLE `oc_cards_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_circle`
--

DROP TABLE IF EXISTS `oc_circles_circle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_circle` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `sanitized_name` varchar(127) COLLATE utf8mb4_bin DEFAULT '',
  `instance` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `config` int unsigned DEFAULT NULL,
  `source` int unsigned DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_bin,
  `description` longtext COLLATE utf8mb4_bin,
  `creation` datetime DEFAULT NULL,
  `contact_addressbook` int unsigned DEFAULT NULL,
  `contact_groupname` varchar(127) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8195F548E3C68343` (`unique_id`),
  KEY `IDX_8195F548D48A2F7C` (`config`),
  KEY `IDX_8195F5484230B1DE` (`instance`),
  KEY `IDX_8195F5485F8A7F73` (`source`),
  KEY `IDX_8195F548C317B362` (`sanitized_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_circle`
--

LOCK TABLES `oc_circles_circle` WRITE;
/*!40000 ALTER TABLE `oc_circles_circle` DISABLE KEYS */;
INSERT INTO `oc_circles_circle` VALUES (1,'qV7ayoZbFF6su39KSJ794rIsJDjqcaN','user:admin:qV7ayoZbFF6su39KSJ794rIsJDjqcaN','admin','','',1,1,'[]','','2022-11-21 14:41:08',0,''),(2,'yuZpnQHSV7wTWuOqok7jbTIONEP6WvI','app:circles:yuZpnQHSV7wTWuOqok7jbTIONEP6WvI','Circles','','',8193,10001,'[]','','2022-11-21 14:41:08',0,''),(3,'jqx9UpI54qtfDrEwclDeB8eaIvWSeoA','user:melanie:jqx9UpI54qtfDrEwclDeB8eaIvWSeoA','melanie','','',1,1,'[]','','2022-12-20 17:47:33',0,''),(4,'DfMIRHDNHXM2XH6z4fL6ek96Dk2DZbD','user:ruben:DfMIRHDNHXM2XH6z4fL6ek96Dk2DZbD','ruben','','',1,1,'[]','','2022-12-20 17:47:52',0,''),(5,'w2eqgxgGeSnvFPXmSN3aNRG6cVj4Big','user:martin:w2eqgxgGeSnvFPXmSN3aNRG6cVj4Big','martin','','',1,1,'[]','','2022-12-20 17:48:13',0,'');
/*!40000 ALTER TABLE `oc_circles_circle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_event`
--

DROP TABLE IF EXISTS `oc_circles_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_event` (
  `token` varchar(63) COLLATE utf8mb4_bin NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `event` longtext COLLATE utf8mb4_bin,
  `result` longtext COLLATE utf8mb4_bin,
  `interface` int NOT NULL DEFAULT '0',
  `severity` int DEFAULT NULL,
  `retry` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `creation` bigint DEFAULT NULL,
  PRIMARY KEY (`token`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_event`
--

LOCK TABLES `oc_circles_event` WRITE;
/*!40000 ALTER TABLE `oc_circles_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_member`
--

DROP TABLE IF EXISTS `oc_circles_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_member` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `single_id` varchar(31) COLLATE utf8mb4_bin DEFAULT NULL,
  `circle_id` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `member_id` varchar(31) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_id` varchar(127) COLLATE utf8mb4_bin NOT NULL,
  `user_type` smallint NOT NULL DEFAULT '1',
  `instance` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `invited_by` varchar(31) COLLATE utf8mb4_bin DEFAULT NULL,
  `level` smallint NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_bin,
  `cached_name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `cached_update` datetime DEFAULT NULL,
  `contact_id` varchar(127) COLLATE utf8mb4_bin DEFAULT NULL,
  `contact_meta` longtext COLLATE utf8mb4_bin,
  `joined` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_member_cisiuiutil` (`circle_id`,`single_id`,`user_id`,`user_type`,`instance`,`level`),
  KEY `circles_member_cisi` (`circle_id`,`single_id`),
  KEY `IDX_25C66A49E7A1254A` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_member`
--

LOCK TABLES `oc_circles_member` WRITE;
/*!40000 ALTER TABLE `oc_circles_member` DISABLE KEYS */;
INSERT INTO `oc_circles_member` VALUES (1,'yuZpnQHSV7wTWuOqok7jbTIONEP6WvI','yuZpnQHSV7wTWuOqok7jbTIONEP6WvI','yuZpnQHSV7wTWuOqok7jbTIONEP6WvI','circles',10000,'',NULL,9,'Member','[]','Circles','2022-11-21 14:41:08','',NULL,'2022-11-21 14:41:08'),(2,'qV7ayoZbFF6su39KSJ794rIsJDjqcaN','qV7ayoZbFF6su39KSJ794rIsJDjqcaN','qV7ayoZbFF6su39KSJ794rIsJDjqcaN','admin',1,'','yuZpnQHSV7wTWuOqok7jbTIONEP6WvI',9,'Member','[]','admin','2022-11-21 14:41:08','',NULL,'2022-11-21 14:41:08'),(3,'jqx9UpI54qtfDrEwclDeB8eaIvWSeoA','jqx9UpI54qtfDrEwclDeB8eaIvWSeoA','jqx9UpI54qtfDrEwclDeB8eaIvWSeoA','melanie',1,'','yuZpnQHSV7wTWuOqok7jbTIONEP6WvI',9,'Member','[]','melanie','2022-12-20 17:47:33','',NULL,'2022-12-20 17:47:33'),(4,'DfMIRHDNHXM2XH6z4fL6ek96Dk2DZbD','DfMIRHDNHXM2XH6z4fL6ek96Dk2DZbD','DfMIRHDNHXM2XH6z4fL6ek96Dk2DZbD','ruben',1,'','yuZpnQHSV7wTWuOqok7jbTIONEP6WvI',9,'Member','[]','ruben','2022-12-20 17:47:52','',NULL,'2022-12-20 17:47:52'),(5,'w2eqgxgGeSnvFPXmSN3aNRG6cVj4Big','w2eqgxgGeSnvFPXmSN3aNRG6cVj4Big','w2eqgxgGeSnvFPXmSN3aNRG6cVj4Big','martin',1,'','yuZpnQHSV7wTWuOqok7jbTIONEP6WvI',9,'Member','[]','martin','2022-12-20 17:48:13','',NULL,'2022-12-20 17:48:13');
/*!40000 ALTER TABLE `oc_circles_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_membership`
--

DROP TABLE IF EXISTS `oc_circles_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_membership` (
  `circle_id` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `single_id` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `level` int unsigned NOT NULL,
  `inheritance_first` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `inheritance_last` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `inheritance_depth` int unsigned NOT NULL,
  `inheritance_path` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`single_id`,`circle_id`),
  KEY `IDX_8FC816EAE7C1D92B` (`single_id`),
  KEY `circles_membership_ifilci` (`inheritance_first`,`inheritance_last`,`circle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_membership`
--

LOCK TABLES `oc_circles_membership` WRITE;
/*!40000 ALTER TABLE `oc_circles_membership` DISABLE KEYS */;
INSERT INTO `oc_circles_membership` VALUES ('DfMIRHDNHXM2XH6z4fL6ek96Dk2DZbD','DfMIRHDNHXM2XH6z4fL6ek96Dk2DZbD',9,'DfMIRHDNHXM2XH6z4fL6ek96Dk2DZbD','DfMIRHDNHXM2XH6z4fL6ek96Dk2DZbD',1,'[\"DfMIRHDNHXM2XH6z4fL6ek96Dk2DZbD\"]'),('jqx9UpI54qtfDrEwclDeB8eaIvWSeoA','jqx9UpI54qtfDrEwclDeB8eaIvWSeoA',9,'jqx9UpI54qtfDrEwclDeB8eaIvWSeoA','jqx9UpI54qtfDrEwclDeB8eaIvWSeoA',1,'[\"jqx9UpI54qtfDrEwclDeB8eaIvWSeoA\"]'),('qV7ayoZbFF6su39KSJ794rIsJDjqcaN','qV7ayoZbFF6su39KSJ794rIsJDjqcaN',9,'qV7ayoZbFF6su39KSJ794rIsJDjqcaN','qV7ayoZbFF6su39KSJ794rIsJDjqcaN',1,'[\"qV7ayoZbFF6su39KSJ794rIsJDjqcaN\"]'),('w2eqgxgGeSnvFPXmSN3aNRG6cVj4Big','w2eqgxgGeSnvFPXmSN3aNRG6cVj4Big',9,'w2eqgxgGeSnvFPXmSN3aNRG6cVj4Big','w2eqgxgGeSnvFPXmSN3aNRG6cVj4Big',1,'[\"w2eqgxgGeSnvFPXmSN3aNRG6cVj4Big\"]'),('yuZpnQHSV7wTWuOqok7jbTIONEP6WvI','yuZpnQHSV7wTWuOqok7jbTIONEP6WvI',9,'yuZpnQHSV7wTWuOqok7jbTIONEP6WvI','yuZpnQHSV7wTWuOqok7jbTIONEP6WvI',1,'[\"yuZpnQHSV7wTWuOqok7jbTIONEP6WvI\"]');
/*!40000 ALTER TABLE `oc_circles_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_mount`
--

DROP TABLE IF EXISTS `oc_circles_mount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_mount` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mount_id` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `circle_id` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `single_id` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `token` varchar(63) COLLATE utf8mb4_bin DEFAULT NULL,
  `parent` int DEFAULT NULL,
  `mountpoint` longtext COLLATE utf8mb4_bin,
  `mountpoint_hash` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_mount_cimipt` (`circle_id`,`mount_id`,`parent`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_mount`
--

LOCK TABLES `oc_circles_mount` WRITE;
/*!40000 ALTER TABLE `oc_circles_mount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_mount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_mountpoint`
--

DROP TABLE IF EXISTS `oc_circles_mountpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_mountpoint` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mount_id` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `single_id` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `mountpoint` longtext COLLATE utf8mb4_bin,
  `mountpoint_hash` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `circles_mountpoint_ms` (`mount_id`,`single_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_mountpoint`
--

LOCK TABLES `oc_circles_mountpoint` WRITE;
/*!40000 ALTER TABLE `oc_circles_mountpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_mountpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_remote`
--

DROP TABLE IF EXISTS `oc_circles_remote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_remote` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Unknown',
  `interface` int NOT NULL DEFAULT '0',
  `uid` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `instance` varchar(127) COLLATE utf8mb4_bin DEFAULT NULL,
  `href` varchar(254) COLLATE utf8mb4_bin DEFAULT NULL,
  `item` longtext COLLATE utf8mb4_bin,
  `creation` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F94EF834230B1DE` (`instance`),
  KEY `IDX_F94EF83539B0606` (`uid`),
  KEY `IDX_F94EF8334F8E741` (`href`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_remote`
--

LOCK TABLES `oc_circles_remote` WRITE;
/*!40000 ALTER TABLE `oc_circles_remote` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_remote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_share_lock`
--

DROP TABLE IF EXISTS `oc_circles_share_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_share_lock` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `circle_id` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `instance` varchar(127) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_337F52F8126F525E70EE2FF6` (`item_id`,`circle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_share_lock`
--

LOCK TABLES `oc_circles_share_lock` WRITE;
/*!40000 ALTER TABLE `oc_circles_share_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_share_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_circles_token`
--

DROP TABLE IF EXISTS `oc_circles_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_circles_token` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `share_id` int DEFAULT NULL,
  `circle_id` varchar(31) COLLATE utf8mb4_bin DEFAULT NULL,
  `single_id` varchar(31) COLLATE utf8mb4_bin DEFAULT NULL,
  `member_id` varchar(31) COLLATE utf8mb4_bin DEFAULT NULL,
  `token` varchar(31) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(127) COLLATE utf8mb4_bin DEFAULT NULL,
  `accepted` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sicisimit` (`share_id`,`circle_id`,`single_id`,`member_id`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_circles_token`
--

LOCK TABLES `oc_circles_token` WRITE;
/*!40000 ALTER TABLE `oc_circles_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_circles_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_accesscache`
--

DROP TABLE IF EXISTS `oc_collres_accesscache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_collres_accesscache` (
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `collection_id` bigint NOT NULL DEFAULT '0',
  `resource_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `resource_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `access` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_id`,`collection_id`,`resource_type`,`resource_id`),
  KEY `collres_user_res` (`user_id`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_accesscache`
--

LOCK TABLES `oc_collres_accesscache` WRITE;
/*!40000 ALTER TABLE `oc_collres_accesscache` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_accesscache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_collections`
--

DROP TABLE IF EXISTS `oc_collres_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_collres_collections` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_collections`
--

LOCK TABLES `oc_collres_collections` WRITE;
/*!40000 ALTER TABLE `oc_collres_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_resources`
--

DROP TABLE IF EXISTS `oc_collres_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_collres_resources` (
  `collection_id` bigint NOT NULL,
  `resource_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`collection_id`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_resources`
--

LOCK TABLES `oc_collres_resources` WRITE;
/*!40000 ALTER TABLE `oc_collres_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_comments`
--

DROP TABLE IF EXISTS `oc_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `topmost_parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `children_count` int unsigned NOT NULL DEFAULT '0',
  `actor_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `actor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_bin,
  `verb` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `creation_timestamp` datetime DEFAULT NULL,
  `latest_child_timestamp` datetime DEFAULT NULL,
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `reference_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `reactions` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_parent_id_index` (`parent_id`),
  KEY `comments_topmost_parent_id_idx` (`topmost_parent_id`),
  KEY `comments_object_index` (`object_type`,`object_id`,`creation_timestamp`),
  KEY `comments_actor_index` (`actor_type`,`actor_id`),
  KEY `expire_date` (`expire_date`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_comments`
--

LOCK TABLES `oc_comments` WRITE;
/*!40000 ALTER TABLE `oc_comments` DISABLE KEYS */;
INSERT INTO `oc_comments` VALUES (1,0,0,0,'users','admin','{\"message\":\"conversation_created\",\"parameters\":[]}','system','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(2,0,0,0,'guests','changelog','¡Bienvenido a Nextcloud Talk!\nEn esta conversación te informaremos de las nuevas características disponibles en Nextcloud Talk.','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(3,0,0,0,'guests','changelog','Nuevo en Talk 6','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(4,0,0,0,'guests','changelog','Se puede usar Microsoft Edge y Safari para participar en llamadas de audio y de vídeo','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(5,0,0,0,'guests','changelog','* Las conversaciones individuales ahora son persistentes y ya no se pueden convertirse en conversaciones de grupo por accidente. Además, cuando uno de los participantes abandone la conversación, esta ya no se borrará automáticamente. Solo si ambos participantes se van, la conversación se borra del servidor','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(6,0,0,0,'guests','changelog','- Ahora puedes enviar una notificación a todos los participantes escribiendo \"@all\" en el chat','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(7,0,0,0,'guests','changelog','- Con la tecla \"flecha hacia arriba\" puedes volver a enviar el último mensaje','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(8,0,0,0,'guests','changelog','- Ahora, Talk dispone de comandos. Envia \"/help\" como un mensaje de chat para comprobar si tu administrador ha configurado alguno','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(9,0,0,0,'guests','changelog','- Con los proyectos, puedes crear enlaces rápidos entre conversaciones, archivos y otros objetos','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(10,0,0,0,'guests','changelog','Nuevo en Talk 7','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(11,0,0,0,'guests','changelog','- Ahora puedes mencionar a los invitados en la conversación','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(12,0,0,0,'guests','changelog','- Ahora, las conversaciones pueden tener una sala de espera. Esto permite a los moderadores unirse al chat y llamar inmediatamente para preparar la reunión, mientras que los usuarios y los invitados tienen que esperar','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(13,0,0,0,'guests','changelog','Nuevo en Talk 8','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(14,0,0,0,'guests','changelog','- Ahora puedes responder directamente a los mensajes, dando a los usuarios más contexto sobre el tema de tu mensaje','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(15,0,0,0,'guests','changelog','- La búsqueda por conversaciones y participantes también filtrará tus conversaciones existentes, haciendo mucho más fácil encontrar conversaciones previas','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(16,0,0,0,'guests','changelog','- Puedes añadir grupos personalizados de usuarios a las conversaciones cuando la app de Círculos está instalada','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(17,0,0,0,'guests','changelog','Nuevo en Talk 9','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(18,0,0,0,'guests','changelog','- Una nueva cuadrícula y vista de llamadas.','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(19,0,0,0,'guests','changelog','- Ya puedes subir y arrastrar archivos desde tu dispositivo al chat.','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(20,0,0,0,'guests','changelog','- Los archivos compartidos se abrirán ahora dentro del chat con el visor que corresponda.','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(21,0,0,0,'guests','changelog','Nuevo en Talk 10','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(22,0,0,0,'guests','changelog','- Ahora puedes buscar chats y mensajes en la búsqueda unificada de la barra superior.','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(23,0,0,0,'guests','changelog','- Dales sabor a tus mensajes con emojis desde el selector.','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(24,0,0,0,'guests','changelog','- Ahora puedes cambiar la cámara y el micrófono mientras estás en una llamada.','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(25,0,0,0,'guests','changelog','Nuevo en Talk 11','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(26,0,0,0,'guests','changelog','- De un cierto contexto a la conversación con una descripción y ábrela para que los usuarios registrados puedan encontrarla y unirse ellos mismos','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(27,0,0,0,'guests','changelog','- Ver un estado de lectura y enviar nuevamente los mensajes fallidos ','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(28,0,0,0,'guests','changelog','- Levante la mano en una llamada con la tecla R','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(29,0,0,0,'guests','changelog','Nuevo en Talk 12','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(30,0,0,0,'guests','changelog','- Únase a la misma conversación y llamada desde varios dispositivos','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(31,0,0,0,'guests','changelog','- Envíe mensajes de voz, comparta su ubicación o sus datos de contacto','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(32,0,0,0,'guests','changelog','- Añada grupos a una conversación y los nuevos miembros del grupo se añadirán automáticamente como participantes','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(33,0,0,0,'guests','changelog','Nuevo en Talk 13','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(34,0,0,0,'guests','changelog','- Una previsualización de tu audio y vídeo se mostrará antes de unirte a la llamada','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(35,0,0,0,'guests','changelog','- Ahora puedes difuminar tu fondo en la vista de llamada rediseñada','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(36,0,0,0,'guests','changelog','- Ahora los moderadores pueden asignar permisos generales e individuales a los participantes','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(37,0,0,0,'guests','changelog','Nuevo en Talk 14','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(38,0,0,0,'guests','changelog','- Ahora puedes reaccionar al mensaje de chat','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(39,0,0,0,'guests','changelog','- En la barra lateral ahora puedes encontrar un resumen de los últimos artículos compartidos','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(40,0,0,0,'guests','changelog','Nuevo en Talk 15','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(41,0,0,0,'guests','changelog','- Use a poll to collect the opinions of others or settle on a date','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(42,0,0,0,'guests','changelog','- Configure an expiration time for chat messages','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(43,0,0,0,'guests','changelog','- Start calls without notifying others in big conversations. You can send individual call notifications once the call has started.','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(44,0,0,0,'guests','changelog','- Send chat messages without notifying the recipients in case it is not urgent','comment','2022-11-21 14:42:23',NULL,'chat','1',NULL,NULL,NULL),(45,0,0,0,'users','martin','{\"message\":\"conversation_created\",\"parameters\":[]}','system','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(46,0,0,0,'guests','changelog','Welcome to Nextcloud Talk!\nIn this conversation you will be informed about new features available in Nextcloud Talk.','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(47,0,0,0,'guests','changelog','New in Talk 6','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(48,0,0,0,'guests','changelog','- Microsoft Edge and Safari can now be used to participate in audio and video calls','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(49,0,0,0,'guests','changelog','- One-to-one conversations are now persistent and cannot be turned into group conversations by accident anymore. Also when one of the participants leaves the conversation, the conversation is not automatically deleted anymore. Only if both participants leave, the conversation is deleted from the server','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(50,0,0,0,'guests','changelog','- You can now notify all participants by posting \"@all\" into the chat','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(51,0,0,0,'guests','changelog','- With the \"arrow-up\" key you can repost your last message','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(52,0,0,0,'guests','changelog','- Talk can now have commands, send \"/help\" as a chat message to see if your administrator configured some','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(53,0,0,0,'guests','changelog','- With projects you can create quick links between conversations, files and other items','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(54,0,0,0,'guests','changelog','New in Talk 7','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(55,0,0,0,'guests','changelog','- You can now mention guests in the chat','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(56,0,0,0,'guests','changelog','- Conversations can now have a lobby. This will allow moderators to join the chat and call already to prepare the meeting, while users and guests have to wait','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(57,0,0,0,'guests','changelog','New in Talk 8','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(58,0,0,0,'guests','changelog','- You can now directly reply to messages giving the other users more context what your message is about','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(59,0,0,0,'guests','changelog','- Searching for conversations and participants will now also filter your existing conversations, making it much easier to find previous conversations','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(60,0,0,0,'guests','changelog','- You can now add custom user groups to conversations when the circles app is installed','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(61,0,0,0,'guests','changelog','New in Talk 9','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(62,0,0,0,'guests','changelog','- Check out the new grid and call view','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(63,0,0,0,'guests','changelog','- You can now upload and drag\'n\'drop files directly from your device into the chat','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(64,0,0,0,'guests','changelog','- Shared files are now opened directly inside the chat view with the viewer apps','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(65,0,0,0,'guests','changelog','New in Talk 10','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(66,0,0,0,'guests','changelog','- You can now search for chats and messages in the unified search in the top bar','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(67,0,0,0,'guests','changelog','- Spice up your messages with emojis from the emoji picker','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(68,0,0,0,'guests','changelog','- You can now change your camera and microphone while being in a call','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(69,0,0,0,'guests','changelog','New in Talk 11','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(70,0,0,0,'guests','changelog','- Give your conversations some context with a description and open it up so logged in users can find it and join themselves','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(71,0,0,0,'guests','changelog','- See a read status and send failed messages again','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(72,0,0,0,'guests','changelog','- Raise your hand in a call with the R key','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(73,0,0,0,'guests','changelog','New in Talk 12','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(74,0,0,0,'guests','changelog','- Join the same conversation and call from multiple devices','comment','2022-12-20 17:49:13',NULL,'chat','2',NULL,NULL,NULL),(75,0,0,0,'guests','changelog','- Send voice messages, share your location or contact details','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(76,0,0,0,'guests','changelog','- Add groups to a conversation and new group members will automatically be added as participants','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(77,0,0,0,'guests','changelog','New in Talk 13','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(78,0,0,0,'guests','changelog','- A preview of your audio and video is shown before joining a call','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(79,0,0,0,'guests','changelog','- You can now blur your background in the newly designed call view','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(80,0,0,0,'guests','changelog','- Moderators can now assign general and individual permissions to participants','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(81,0,0,0,'guests','changelog','New in Talk 14','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(82,0,0,0,'guests','changelog','- You can now react to chat message','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(83,0,0,0,'guests','changelog','- In the sidebar you can now find an overview of the latest shared items','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(84,0,0,0,'guests','changelog','New in Talk 15','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(85,0,0,0,'guests','changelog','- Use a poll to collect the opinions of others or settle on a date','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(86,0,0,0,'guests','changelog','- Configure an expiration time for chat messages','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(87,0,0,0,'guests','changelog','- Start calls without notifying others in big conversations. You can send individual call notifications once the call has started.','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(88,0,0,0,'guests','changelog','- Send chat messages without notifying the recipients in case it is not urgent','comment','2022-12-20 17:49:14',NULL,'chat','2',NULL,NULL,NULL),(89,0,0,0,'users','melanie','{\"message\":\"conversation_created\",\"parameters\":[]}','system','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(90,0,0,0,'guests','changelog','Welcome to Nextcloud Talk!\nIn this conversation you will be informed about new features available in Nextcloud Talk.','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(91,0,0,0,'guests','changelog','New in Talk 6','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(92,0,0,0,'guests','changelog','- Microsoft Edge and Safari can now be used to participate in audio and video calls','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(93,0,0,0,'guests','changelog','- One-to-one conversations are now persistent and cannot be turned into group conversations by accident anymore. Also when one of the participants leaves the conversation, the conversation is not automatically deleted anymore. Only if both participants leave, the conversation is deleted from the server','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(94,0,0,0,'guests','changelog','- You can now notify all participants by posting \"@all\" into the chat','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(95,0,0,0,'guests','changelog','- With the \"arrow-up\" key you can repost your last message','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(96,0,0,0,'guests','changelog','- Talk can now have commands, send \"/help\" as a chat message to see if your administrator configured some','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(97,0,0,0,'guests','changelog','- With projects you can create quick links between conversations, files and other items','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(98,0,0,0,'guests','changelog','New in Talk 7','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(99,0,0,0,'guests','changelog','- You can now mention guests in the chat','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(100,0,0,0,'guests','changelog','- Conversations can now have a lobby. This will allow moderators to join the chat and call already to prepare the meeting, while users and guests have to wait','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(101,0,0,0,'guests','changelog','New in Talk 8','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(102,0,0,0,'guests','changelog','- You can now directly reply to messages giving the other users more context what your message is about','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(103,0,0,0,'guests','changelog','- Searching for conversations and participants will now also filter your existing conversations, making it much easier to find previous conversations','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(104,0,0,0,'guests','changelog','- You can now add custom user groups to conversations when the circles app is installed','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(105,0,0,0,'guests','changelog','New in Talk 9','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(106,0,0,0,'guests','changelog','- Check out the new grid and call view','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(107,0,0,0,'guests','changelog','- You can now upload and drag\'n\'drop files directly from your device into the chat','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(108,0,0,0,'guests','changelog','- Shared files are now opened directly inside the chat view with the viewer apps','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(109,0,0,0,'guests','changelog','New in Talk 10','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(110,0,0,0,'guests','changelog','- You can now search for chats and messages in the unified search in the top bar','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(111,0,0,0,'guests','changelog','- Spice up your messages with emojis from the emoji picker','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(112,0,0,0,'guests','changelog','- You can now change your camera and microphone while being in a call','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(113,0,0,0,'guests','changelog','New in Talk 11','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(114,0,0,0,'guests','changelog','- Give your conversations some context with a description and open it up so logged in users can find it and join themselves','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(115,0,0,0,'guests','changelog','- See a read status and send failed messages again','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(116,0,0,0,'guests','changelog','- Raise your hand in a call with the R key','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(117,0,0,0,'guests','changelog','New in Talk 12','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(118,0,0,0,'guests','changelog','- Join the same conversation and call from multiple devices','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(119,0,0,0,'guests','changelog','- Send voice messages, share your location or contact details','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(120,0,0,0,'guests','changelog','- Add groups to a conversation and new group members will automatically be added as participants','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(121,0,0,0,'guests','changelog','New in Talk 13','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(122,0,0,0,'guests','changelog','- A preview of your audio and video is shown before joining a call','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(123,0,0,0,'guests','changelog','- You can now blur your background in the newly designed call view','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(124,0,0,0,'guests','changelog','- Moderators can now assign general and individual permissions to participants','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(125,0,0,0,'guests','changelog','New in Talk 14','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(126,0,0,0,'guests','changelog','- You can now react to chat message','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(127,0,0,0,'guests','changelog','- In the sidebar you can now find an overview of the latest shared items','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(128,0,0,0,'guests','changelog','New in Talk 15','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(129,0,0,0,'guests','changelog','- Use a poll to collect the opinions of others or settle on a date','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(130,0,0,0,'guests','changelog','- Configure an expiration time for chat messages','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(131,0,0,0,'guests','changelog','- Start calls without notifying others in big conversations. You can send individual call notifications once the call has started.','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(132,0,0,0,'guests','changelog','- Send chat messages without notifying the recipients in case it is not urgent','comment','2022-12-20 17:51:21',NULL,'chat','3',NULL,NULL,NULL),(133,0,0,0,'users','ruben','{\"message\":\"conversation_created\",\"parameters\":[]}','system','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(134,0,0,0,'guests','changelog','Welcome to Nextcloud Talk!\nIn this conversation you will be informed about new features available in Nextcloud Talk.','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(135,0,0,0,'guests','changelog','New in Talk 6','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(136,0,0,0,'guests','changelog','- Microsoft Edge and Safari can now be used to participate in audio and video calls','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(137,0,0,0,'guests','changelog','- One-to-one conversations are now persistent and cannot be turned into group conversations by accident anymore. Also when one of the participants leaves the conversation, the conversation is not automatically deleted anymore. Only if both participants leave, the conversation is deleted from the server','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(138,0,0,0,'guests','changelog','- You can now notify all participants by posting \"@all\" into the chat','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(139,0,0,0,'guests','changelog','- With the \"arrow-up\" key you can repost your last message','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(140,0,0,0,'guests','changelog','- Talk can now have commands, send \"/help\" as a chat message to see if your administrator configured some','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(141,0,0,0,'guests','changelog','- With projects you can create quick links between conversations, files and other items','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(142,0,0,0,'guests','changelog','New in Talk 7','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(143,0,0,0,'guests','changelog','- You can now mention guests in the chat','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(144,0,0,0,'guests','changelog','- Conversations can now have a lobby. This will allow moderators to join the chat and call already to prepare the meeting, while users and guests have to wait','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(145,0,0,0,'guests','changelog','New in Talk 8','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(146,0,0,0,'guests','changelog','- You can now directly reply to messages giving the other users more context what your message is about','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(147,0,0,0,'guests','changelog','- Searching for conversations and participants will now also filter your existing conversations, making it much easier to find previous conversations','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(148,0,0,0,'guests','changelog','- You can now add custom user groups to conversations when the circles app is installed','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(149,0,0,0,'guests','changelog','New in Talk 9','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(150,0,0,0,'guests','changelog','- Check out the new grid and call view','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(151,0,0,0,'guests','changelog','- You can now upload and drag\'n\'drop files directly from your device into the chat','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(152,0,0,0,'guests','changelog','- Shared files are now opened directly inside the chat view with the viewer apps','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(153,0,0,0,'guests','changelog','New in Talk 10','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(154,0,0,0,'guests','changelog','- You can now search for chats and messages in the unified search in the top bar','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(155,0,0,0,'guests','changelog','- Spice up your messages with emojis from the emoji picker','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(156,0,0,0,'guests','changelog','- You can now change your camera and microphone while being in a call','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(157,0,0,0,'guests','changelog','New in Talk 11','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(158,0,0,0,'guests','changelog','- Give your conversations some context with a description and open it up so logged in users can find it and join themselves','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(159,0,0,0,'guests','changelog','- See a read status and send failed messages again','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(160,0,0,0,'guests','changelog','- Raise your hand in a call with the R key','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(161,0,0,0,'guests','changelog','New in Talk 12','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(162,0,0,0,'guests','changelog','- Join the same conversation and call from multiple devices','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(163,0,0,0,'guests','changelog','- Send voice messages, share your location or contact details','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(164,0,0,0,'guests','changelog','- Add groups to a conversation and new group members will automatically be added as participants','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(165,0,0,0,'guests','changelog','New in Talk 13','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(166,0,0,0,'guests','changelog','- A preview of your audio and video is shown before joining a call','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(167,0,0,0,'guests','changelog','- You can now blur your background in the newly designed call view','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(168,0,0,0,'guests','changelog','- Moderators can now assign general and individual permissions to participants','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(169,0,0,0,'guests','changelog','New in Talk 14','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(170,0,0,0,'guests','changelog','- You can now react to chat message','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(171,0,0,0,'guests','changelog','- In the sidebar you can now find an overview of the latest shared items','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(172,0,0,0,'guests','changelog','New in Talk 15','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(173,0,0,0,'guests','changelog','- Use a poll to collect the opinions of others or settle on a date','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(174,0,0,0,'guests','changelog','- Configure an expiration time for chat messages','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(175,0,0,0,'guests','changelog','- Start calls without notifying others in big conversations. You can send individual call notifications once the call has started.','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL),(176,0,0,0,'guests','changelog','- Send chat messages without notifying the recipients in case it is not urgent','comment','2022-12-20 17:51:52',NULL,'chat','4',NULL,NULL,NULL);
/*!40000 ALTER TABLE `oc_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_comments_read_markers`
--

DROP TABLE IF EXISTS `oc_comments_read_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_comments_read_markers` (
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `marker_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`object_type`,`object_id`),
  KEY `comments_marker_object_index` (`object_type`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_comments_read_markers`
--

LOCK TABLES `oc_comments_read_markers` WRITE;
/*!40000 ALTER TABLE `oc_comments_read_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_comments_read_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_dav_cal_proxy`
--

DROP TABLE IF EXISTS `oc_dav_cal_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_dav_cal_proxy` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `proxy_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `permissions` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_cal_proxy_uidx` (`owner_id`,`proxy_id`,`permissions`),
  KEY `dav_cal_proxy_ipid` (`proxy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_dav_cal_proxy`
--

LOCK TABLES `oc_dav_cal_proxy` WRITE;
/*!40000 ALTER TABLE `oc_dav_cal_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_dav_cal_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_dav_shares`
--

DROP TABLE IF EXISTS `oc_dav_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_dav_shares` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `access` smallint DEFAULT NULL,
  `resourceid` bigint unsigned NOT NULL,
  `publicuri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_shares_index` (`principaluri`,`resourceid`,`type`,`publicuri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_dav_shares`
--

LOCK TABLES `oc_dav_shares` WRITE;
/*!40000 ALTER TABLE `oc_dav_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_dav_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_direct_edit`
--

DROP TABLE IF EXISTS `oc_direct_edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_direct_edit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `editor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `file_id` bigint NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `share_id` bigint DEFAULT NULL,
  `timestamp` bigint unsigned NOT NULL,
  `accessed` tinyint(1) DEFAULT '0',
  `file_path` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4D5AFECA5F37A13B` (`token`),
  KEY `direct_edit_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_direct_edit`
--

LOCK TABLES `oc_direct_edit` WRITE;
/*!40000 ALTER TABLE `oc_direct_edit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_direct_edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_directlink`
--

DROP TABLE IF EXISTS `oc_directlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_directlink` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `file_id` bigint unsigned NOT NULL,
  `token` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `expiration` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `directlink_token_idx` (`token`),
  KEY `directlink_expiration_idx` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_directlink`
--

LOCK TABLES `oc_directlink` WRITE;
/*!40000 ALTER TABLE `oc_directlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_directlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_federated_reshares`
--

DROP TABLE IF EXISTS `oc_federated_reshares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_federated_reshares` (
  `share_id` bigint NOT NULL,
  `remote_id` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_federated_reshares`
--

LOCK TABLES `oc_federated_reshares` WRITE;
/*!40000 ALTER TABLE `oc_federated_reshares` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_federated_reshares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_file_locks`
--

DROP TABLE IF EXISTS `oc_file_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_file_locks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lock` int NOT NULL DEFAULT '0',
  `key` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `ttl` int NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lock_key_index` (`key`),
  KEY `lock_ttl_index` (`ttl`)
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_file_locks`
--

LOCK TABLES `oc_file_locks` WRITE;
/*!40000 ALTER TABLE `oc_file_locks` DISABLE KEYS */;
INSERT INTO `oc_file_locks` VALUES (1,0,'files/51d3e0cca6afa3179b17ca758dc5c286',1671562322),(53,0,'files/4e96b37d60fcca3d14d83503c13a2062',1671562052),(54,0,'files/1d9c23bb17e1411de1111dc004201fb1',1671562052),(55,0,'files/54d81ea259207b96f2b7dfe1ad457c78',1671562278),(56,0,'files/03a12a8efe9046ecadb10fb66c482cb5',1671562295),(57,0,'files/f89bb323d29642c214f731b09bb3058c',1671562072),(58,0,'files/b372aefa28268dcbf94518aa4416722c',1671562072),(59,0,'files/1e454fbb5343a53f3ffb196b6eba373a',1671562310),(60,0,'files/4d12788c1f5b066d1fc7e3c7ad483cb6',1671562322),(61,0,'files/b4bd02aa5c1e25ff943cf19c58590e68',1671562093),(62,0,'files/f2958b94f91063f1d7cec5c63df21692',1671562093),(63,0,'files/d9e872b2553bf379da6f0e794732f2e7',1671562148),(64,0,'files/8899a4d822155a2ac032c960200e2ca6',1671562255),(65,0,'files/08a7dd9f96ca7c6dccdbe8c53b9157e7',1671562148),(68,0,'files/9ddc589578e7c07f729009adf3d9b015',1671562147),(69,0,'files/85b1ce7bec23e7f8458683e31dd20eee',1671562148),(70,0,'files/36590694b87fe9489229dced1a20c24b',1671562148),(71,0,'files/ee731e6c864ff6131b678ff49bf64008',1671562148),(72,0,'files/f2ea25ef630fb37d6fe7515121a2a561',1671562148),(73,0,'files/0edb1c3c00e1c79c3a455036ea8d639e',1671562148),(74,0,'files/95a929ce89fb8b0b0298aedaad3f90a9',1671562148),(75,0,'files/cc10ffb3a519ed179e0258f4955c9249',1671562148),(76,0,'files/ae32053fe25a40f93f537b6226044797',1671562148),(77,0,'files/53ae4bf535bfa13c434728388b1b7afc',1671562148),(78,0,'files/be61234afc795fb3bad2d674a4c676d3',1671562148),(79,0,'files/c063c7e9137a9f1f2648cd8c2bc79aa2',1671562148),(80,0,'files/a7d9ad7d3676a5c883e5300c98ff7985',1671562148),(81,0,'files/91e03f73d70d6299d9e0fd86ad1cb096',1671562148),(82,0,'files/ff6c6e2d8b71f75d54b0451a4a80d972',1671562148),(83,0,'files/6e8f2d8d5d349f516a679d9cf866dbfe',1671562148),(84,0,'files/27b16600244d26f03e4cd1853c9fda51',1671562148),(85,0,'files/19ea3c16f17309b0a1dfabbe0b406562',1671562147),(86,0,'files/1dac8a3acd44480e1c877dbc0f047601',1671562148),(87,0,'files/10d745e5daa7d6c10ae6d919973d8613',1671562148),(88,0,'files/6b9b5225839920420a504c975e2dd988',1671562148),(89,0,'files/1315244a452a38434bf703ac7f4966ce',1671562148),(90,0,'files/f1c2800491b54268a6cd5a0aeb1dd260',1671562148),(91,0,'files/6eb630ea44570d7396032a53b7b9b219',1671562148),(92,0,'files/ce410f4f5306100f21aaa53e2224a8ec',1671562148),(93,0,'files/dbbded5f488cc38eec88b00664dfc94a',1671562148),(94,0,'files/072d420e6090167f666a272716f4044d',1671562148),(95,0,'files/03da74ace497bec83b3479f4c47bbee6',1671562154),(96,0,'files/572387e5bff5e92c9ec2197cc8a9c11f',1671562148),(97,0,'files/c9322009290e810afb1e913c4a2c690c',1671562154),(98,0,'files/f6a9ab3bec4895672a2e1e638ff76c2b',1671562148),(99,0,'files/d5cb6ebe153b51e4c288ddfba149ee5b',1671562148),(100,0,'files/550498a3622c2b38ba6ae4f38b512e02',1671562148),(101,0,'files/b7aa4460ef0837f4aa8b8d5b4396f6bc',1671562148),(103,0,'files/cebb32e73ff9b3010b4a4defe6e7768b',1671562148),(104,0,'files/e5ac5814fa30d626679417b838d38b24',1671562148),(137,0,'files/54ded13e511a2b2ba53243e859338b44',1671562148),(140,0,'files/4012bdef754c413ad7ed108b177c6d45',1671562154),(141,0,'files/2804dc5d500dbed94bda18dd5dec02d3',1671562154),(142,0,'files/2213f7dc231fccc949d74d64eb4672ee',1671562154),(143,0,'files/04a7e38a774f99c56be31040006af943',1671562154),(144,0,'files/d4e5c23d6d4d9e72ac486a54b428b703',1671562154),(145,0,'files/7c0ff3ae478a7fe61ed62ec6a382504f',1671562154),(146,0,'files/aa99aa0c920cd62ff50181ce312150a2',1671562154),(147,0,'files/31438c665ad5d0d5ffc14fcc8e07bd83',1671562154),(148,0,'files/71188346afcd6d9c89228c1abd03217d',1671562154),(149,0,'files/790aa73a59b28f306f97aa9087d7ed08',1671562154),(150,0,'files/ab9e463e10f64a1139ade7bbeb71a260',1671562154),(151,0,'files/eadec2d8672861d571b6bff0d954982d',1671562154),(152,0,'files/1797d0686a31469b38da9b6cec8fcf5e',1671562154),(153,0,'files/41a97b3681f1386fe192ed09a55b62e0',1671562154),(154,0,'files/107c16fe313431a66bc0f460c6309dfd',1671563276),(155,0,'files/cfc2fb882b803878f876589fe6694542',1671562154),(156,0,'files/b151b8a7bfc4c0c414e00b65e8682f92',1671562154),(157,0,'files/09521ef470c07220410e7f08bb19cbe4',1671563276),(158,0,'files/c99aff0258422510bd8a15809dea6e69',1671562154),(159,0,'files/ff972a32175db4b7be72ca4869d8d4b2',1671562154),(160,0,'files/c509d1d4856568a99ac34466811fa89f',1671562154),(164,0,'files/de19795dbbcf07b930fc4c5981bf4c89',1671562154),(166,0,'files/cec0284ddaeacce9701fc010b88ca01e',1671562154),(167,0,'files/c6a936a1b6668c71b89420b5588f990b',1671562154),(168,0,'files/4a0bbee22d194b9955827933f726e565',1671562154),(169,0,'files/80cdb57d3963c558694f6698c71a4a61',1671562154),(170,0,'files/19b8335164106de2631bc2f5ada32bc4',1671562169),(171,0,'files/8280ff79b62ea495cd3de32f3a3f2e98',1671562169),(172,0,'files/cffb7ef9bcf6906da1c69bcf5b515266',1671562169),(173,0,'files/d663ecff416182229aaa5160abcb04ac',1671562169),(174,0,'files/d26d2029151950db5c7cffd6f503aabe',1671562169),(175,0,'files/07932a1ecde8d90927b06616f216be20',1671562169),(176,0,'files/14097876163953f3e1f90be9cb4f1778',1671562169),(177,0,'files/5d67d7b4d0bf89132f55ce349c07a71d',1671562255),(178,0,'files/b105021539e63385c76a380eaf3c19ea',1671562255),(179,0,'files/1809ebb4c5be24a904c7aaf32916593f',1671562255),(180,0,'files/273f3c23204c73fa987a9b95f370e79a',1671562255),(181,0,'files/8f22dbdf7aba81b735907e6e23e695cb',1671562255),(183,0,'files/ce5e849211dd23cd5fd3e0f189667a70',1671562255),(189,0,'files/164391e9d1109d986afeff95b5262b3f',1671562255),(190,0,'files/e89672e7551677e60736bbc19068cf83',1671562255),(191,0,'files/e43e31cf3b5722aad101f6800d668b32',1671562255),(192,0,'files/cc55e98c898196d6ed359d9d1db25bf5',1671562255),(193,0,'files/ee4ec1efc0d7b5d17256ed4c6b0ccb7a',1671562255),(194,0,'files/a9eb92808830dcd8ab97781dace0f823',1671562255),(195,0,'files/38a55664f6c37b7087360c239ba0a8be',1671562255),(196,0,'files/9659bc79eb2cc3933558bb29e3d105d9',1671562255),(197,0,'files/56c93dc418a8cf7677013445462c91eb',1671562255),(198,0,'files/77ed42faad4ccea8069db71bc3ceee84',1671562255),(199,0,'files/64af4509aa88ef637cadc50f07327e79',1671562255),(200,0,'files/eb8f684e9ace27dadd4b2df73ca6286c',1671562255),(201,0,'files/ec2bbfeed1328e76d9b97ef79a227a1c',1671562255),(202,0,'files/261b910358252762c0f2fca4dbabf597',1671562278),(205,0,'files/79a97fa2f60a598d55127e19661a62e4',1671562277),(206,0,'files/fae0b1f93cfe3ff5e19fe80de7f89587',1671562278),(207,0,'files/4260988a2b9aefe174ff0a39e21efa61',1671562278),(208,0,'files/50e070e1ba19dd82839a05aa958ac0d8',1671562278),(209,0,'files/b13cd9cff51cbb46d8902d0b33922b48',1671562278),(210,0,'files/39e379fabd69fefa398d6f1a7835b724',1671562278),(211,0,'files/2441a32237cb35ca6a8bc508ef209175',1671562278),(212,0,'files/fc46eb58e3a66edf40f835eb6a69c8ba',1671562278),(213,0,'files/10c603fc0d58ce0a51916930cd004825',1671562278),(214,0,'files/e07d28ff43aa51d52c1c90f8308eb5c0',1671562278),(215,0,'files/3b0d6a0bf640702e731741c02203ac21',1671562278),(216,0,'files/f0fc5bdc11efc91cd5c6b2b8e31917bf',1671562278),(217,0,'files/3bfc002d29c9735d12165bffbf4f3dec',1671562278),(218,0,'files/799e6b848569701759d764c82eecc4d9',1671562278),(219,0,'files/356e02ea40b8453675bd373902cd738d',1671562278),(220,0,'files/1efd74c9f717b28fa8eee61a3260b67f',1671562278),(221,0,'files/466b81af89c76b2a0b71e7770d276a99',1671562278),(222,0,'files/90c5540c6d67ae9dffb0281275735f05',1671562281),(223,0,'files/0d89df87b572b064284d5ad9af6d9679',1671562278),(224,0,'files/e612f9e8a81ce1d33dd4d00c793dda75',1671562278),(225,0,'files/21729ae6936c1a58c099574454d693ce',1671562281),(226,0,'files/e3b21ea2448e3068b4d4d54ce17e9b5d',1671562278),(227,0,'files/7bae97199e1b14850e90ba31aeb16bbf',1671562278),(228,0,'files/e0e0710fd5ec9e7dc366c0b36dae95c4',1671562278),(229,0,'files/83ee336d458df5999ffd7b06adf0a2b2',1671562278),(230,0,'files/5c11e082f648ccf9534c727901643156',1671562278),(231,0,'files/70d4424bd0403023c268e0f11ae98fda',1671562278),(232,0,'files/845ba373e2d2ad8bfe3061b091aa66e6',1671562281),(233,0,'files/33af02607518863192379ec709ba6749',1671562278),(234,0,'files/eda176b8e61c2cda4298a18e1915a997',1671562281),(235,0,'files/73ade0eb48f6895a53e9394daafead71',1671562278),(236,0,'files/26145fb8db8649f14aa82fe242d43fff',1671562278),(237,0,'files/4068979a691f77565ec661cfe58824e0',1671562278),(238,0,'files/56bd0cc448fb7727cfa91ca2d3198d00',1671562278),(240,0,'files/7685dbf99b595403700609bfd37418d8',1671562278),(241,0,'files/368018ff78ea2e81a8608766035f7daa',1671562278),(274,0,'files/a2eca5105958171117df181f4b11960b',1671562278),(277,0,'files/2afa061a1a7e25723aaab8fa15eed821',1671562281),(278,0,'files/61c04895c68abc56bd2639e160d7adb7',1671562281),(279,0,'files/ae982206b0e367553fc2777ad899cc08',1671562281),(280,0,'files/2da54af12a1f92937d890e29af80eebd',1671562281),(281,0,'files/0d334fc2dd224d847d6edf5151521980',1671562281),(282,0,'files/db9df2da6c545c4fa014ad5ff2fd3489',1671563276),(287,0,'files/4e05b94aff6c4b235ae50c2a1b1ddc34',1671562281),(288,0,'files/7f26d46562c12284803d8d2d7120514d',1671562281),(289,0,'files/5b16c3019a5789aca1e0846dc5afb96b',1671562281),(290,0,'files/86784b9ea774fccd79b3af533e6f8c9a',1671562281),(291,0,'files/4dde8486b1ccd6c45375be0da410960a',1671562281),(292,0,'files/807909acb13a7db376873ea31ec1a191',1671562281),(293,0,'files/b1a8e7630718d74310af667f24a4df9a',1671562281),(294,0,'files/676421aa29354db3775d0b3aa66fce9e',1671562281),(295,0,'files/f998b841bcf27d88146e8069058267ef',1671562281),(296,0,'files/409240e92fd344c19d8f79a395eea26c',1671562281),(297,0,'files/8a240a917f44137cf285c93a857430c1',1671562281),(298,0,'files/8f343c0ddc704b5192a03bbffd7f6aa8',1671562281),(299,0,'files/4e12a6e5a9cb51fb8d0eb44a9b5b14ac',1671562281),(300,0,'files/4f3d50b19f1b5799fdd97a9f49525ca8',1671562281),(301,0,'files/ecea33d6690fe6fc688c3df01e5de4ab',1671562281),(302,0,'files/99204724a1cdb7b4a47288e925389fe4',1671562281),(303,0,'files/2ab7943dc5fc1ad667a9687ab8601a04',1671562281),(304,0,'files/e5e5c483f179532e95183a54c85b9222',1671562281),(305,0,'files/447a201342f9e4855704d7240513841b',1671562281),(306,0,'files/dda92d59e165d6e7025f7ec4ee2ba91d',1671562281),(307,0,'files/7e156dc3878568862d08ea8539e2238a',1671562281),(308,0,'files/b4e607a846db480f52ed6f69dcb1ad45',1671562281),(309,0,'files/2cdd2b0aed4a82bc454bf9263ebf5aa9',1671562281),(310,0,'files/4026c7b47f222fb1dfc0f3355a358a70',1671562281),(311,0,'files/d9194b255c9349a8370ac83e43f653d6',1671562281),(313,0,'files/c259a0462d1778ca73d035c501df6fb7',1671562281),(314,0,'files/b51f7eefae97fd6909a9537ea3ee65eb',1671562281),(316,0,'files/afa246e93aa97c01dd6e730f644478bf',1671562281),(319,0,'files/4e3ae90e743099e329b924b1ebb10a12',1671562287),(320,0,'files/562ea75e0a948fd92a43df17f3fe0cee',1671562287),(321,0,'files/d2acf4a424caed225131abce7b97b543',1671562287),(322,0,'files/cf33c8c97de39599a4b500bd76a64fe2',1671562287),(323,0,'files/3b51b1ee5c255b916a2f841509d3c87d',1671562287),(324,0,'files/60b96a6ea0a954d61040944efdb0a4f2',1671563276),(325,0,'files/18ffec9107ef7d6ab1e5c4485851ab9d',1671562295),(326,0,'files/7aca592b6f8959c39b78d814f5b5fc6d',1671562295),(327,0,'files/85e6475668cc7fac633fbaf0146f02b1',1671562295),(328,0,'files/dc0f88d21a37414c09702ec6c65f4e23',1671562295),(329,0,'files/7e3d6ae1c7780c75f0fe906ed7729a1a',1671562295),(331,0,'files/842383a68fb1d50fc91aea5482083077',1671562295),(337,0,'files/3efd9b966fa0fa1ce1b8f1de0d806437',1671562295),(338,0,'files/9f97a1703870c11bc7d2cf23aea9e4bf',1671562295),(339,0,'files/438e2baef45e2479ad80ba9349346dd0',1671562295),(340,0,'files/0d8e639d3e8196ebaf1d3b12f764e745',1671562295),(341,0,'files/40eee839ddec344d2dd909704537a822',1671562295),(342,0,'files/44397304559a7cbc341436f44cdc5fb1',1671562295),(343,0,'files/d8717ac660700af88552cb101cc79dcd',1671562295),(344,0,'files/a2297f99fc28159f726d1eebb639fda8',1671562295),(345,0,'files/19c6eb355e289a5f0de1e153128b6837',1671562295),(346,0,'files/9836e8cedcdde5865a7842704e820c47',1671562295),(347,0,'files/fc03158db5f5cfdb7d21e7ee429c32a6',1671562295),(348,0,'files/3eb14476295efd58f3f8c1340720460b',1671562295),(349,0,'files/39f51dd8343aa5a2216e5be3393bf433',1671562295),(350,0,'files/3950af72a888137ce4cf97cbcfc30584',1671562310),(353,0,'files/d7dea95015657df15f71495066093293',1671562309),(354,0,'files/9c93b7752677bb1d6f7d026534e2a0cd',1671562310),(355,0,'files/f4a3e1da1eecb9c4be7db34fe367922a',1671562310),(356,0,'files/c281f6ceac3fe949586c59f3d4729fe1',1671562310),(357,0,'files/af26ab3289cadc553987e569b557bc6f',1671562310),(358,0,'files/4a8a96d4df6c6886388f1b9169da0c3d',1671562310),(359,0,'files/9e669b2e2fe103dc8305b895a7d7e0ca',1671562310),(360,0,'files/77b11dd879204f6943a2a619c91763ff',1671562310),(361,0,'files/432a65aeeffdd16fd63c422c7d4c4d8a',1671562310),(362,0,'files/85dcd262b9cf85b7b4cf0bf00f7cc70c',1671562310),(363,0,'files/1aa4908b1ba06e14b0a3a5cd9c72b272',1671562310),(364,0,'files/5d7e5560187e9b8d9cb82ec36024d739',1671562310),(365,0,'files/d5ccd9284f4facf00f91c7d076f2171c',1671562310),(366,0,'files/20d93bbff05339cb402cef1876bfeab8',1671562310),(367,0,'files/277edcaa90bd32e48b2cfa729c04db22',1671562310),(368,0,'files/b77e61f9d8c3a09cc99567818f07cd4a',1671562310),(369,0,'files/eb751a8e8ee5d89892e7757686bff912',1671562310),(370,0,'files/7278b1cd5e2a72941a301fcf6cda5fb5',1671562309),(371,0,'files/3bda5f4920cb55eab010f225e6970a6e',1671562310),(372,0,'files/3dee8238391653a2fa584cb354995ffb',1671562310),(373,0,'files/cce5d136dbbbdff955419905a7d57ebf',1671562310),(374,0,'files/24ad80dcba76726f06c2a2fa66c0f197',1671562310),(375,0,'files/98ae5f7a0e3c2481987bc0828d91eabf',1671562310),(376,0,'files/e3d5ee598e8e44fadafe2ccf99e185c3',1671562310),(377,0,'files/ff95dc61f3265c36cd3f367253c090cb',1671562310),(378,0,'files/b29b7ea97174c3788651cb78a39b7d40',1671562310),(379,0,'files/748627ae98eeeb2336d3b320edbf17fa',1671562310),(380,0,'files/3722082917b7c48d88c8f15b3f6b3e1c',1671562313),(381,0,'files/421caa440f3f3f95ff34358d7143eba9',1671562310),(382,0,'files/ddec97431778f3c77bfe2a36bda0ca7c',1671562313),(383,0,'files/e00befe8519f2358b5449daeabfa38e9',1671562310),(384,0,'files/d00545f4a2e16c22c21b28ee88ddac2d',1671562310),(385,0,'files/12d3fe572d2d0efd98ed2bcd6b54be1c',1671562310),(386,0,'files/98a91320540cd88d6a7891e609a9fcd9',1671562310),(388,0,'files/f99ce7aae6e72b5f8dfdc4d5f8af71cb',1671562310),(389,0,'files/724377908566146f0bc4da31faccdba9',1671562310),(422,0,'files/c7e90485720f2c12365142ce1aa668a4',1671562310),(425,0,'files/b7042a07af4d00a3eaca93298f0f0300',1671562313),(426,0,'files/979cfafcdfff018a72fcc3f126c13144',1671562313),(427,0,'files/20589cf4b21fa39264e3cac2eb4dd5ac',1671562313),(428,0,'files/80fcfb1317b33257dce2859211f0b644',1671562313),(429,0,'files/e47c2e585df0b4b7eb01dd69f61132dc',1671562313),(430,0,'files/e614160ffc81d4dc31a2a649dd98e074',1671562313),(431,0,'files/1a1d47b91a77b46ef059d39ee6497ad7',1671562313),(432,0,'files/fc61a3e4ce5680b5c859556200c2dcae',1671562313),(433,0,'files/3e9e505b82a491efca95648fa934ff5e',1671562313),(434,0,'files/368d3fa571ee4a78b1b6b4f3f4aa6a2d',1671562313),(435,0,'files/9ed0bff78c2718ac2d3703fa1fb06936',1671562313),(436,0,'files/89a1fc20a1ef08d66f20b2809cff3326',1671562313),(437,0,'files/2632f718964b454b8dfcd5a847198d0e',1671562313),(438,0,'files/d07fc845c1876cf3667d7293a91d3ded',1671562313),(439,0,'files/3a5cfe4b3b5a620398e4b9ac13e1408e',1671562313),(440,0,'files/af12a541a59f1b1ec082cef1b19a4144',1671562313),(441,0,'files/f42a8480d4662c415f275902d0ac55d3',1671562313),(442,0,'files/0aa495c95a3fbbee3a7439db27ac421a',1671562313),(443,0,'files/4689465002d5392f19e5387c7273c830',1671562313),(448,0,'files/8a94d9bfda8707cdce8fbfaf164016e0',1671562318),(449,0,'files/df4719caa8fe4bf6e13e8c3e1324cd4e',1671562318),(450,0,'files/19d1f4c0b375b8cccba394b2fd47b66c',1671562318),(451,0,'files/4b69bc1b857e746e90bb1d73f2db6f6e',1671562318),(452,0,'files/74791c8de4c2d4e599485eea8e2ad02e',1671562318),(453,0,'files/dddd97462c89f5f157d278ed4360b986',1671562318),(454,0,'files/dfc4788973c08f3d91e54cff2dd8d4cd',1671562322),(455,0,'files/a33ce8dcd138bbc1bb90e5542f3fe615',1671562322),(456,0,'files/3c81aef1597513425c747dc1ad77097e',1671562322),(457,0,'files/48278a30396b039e13022e56200899ed',1671562322),(458,0,'files/b9121afcf9650b19cf1513e0a17ebe7c',1671562322),(460,0,'files/98d44668339cfd0b863c69a5eefc057e',1671562322),(466,0,'files/f54b59b2412b5f6536358ce4b8c4f479',1671562323),(467,0,'files/81e8ca0345cb3c4b01bcda0ec1c2e15d',1671562323),(468,0,'files/25e895df76a4abde4ff452ddcb2d00fd',1671562323),(469,0,'files/01fcd0a3cc41d2b30a77fe4a2794a0a4',1671562323),(470,0,'files/a3f548daba1825c30bb8933f5210d9af',1671562323),(471,0,'files/1c320198823a7d42bf08a5447a8c31cf',1671562323),(472,0,'files/4eec27383e94ade87db30d3f374a39e5',1671562323),(473,0,'files/e906b81a7862217c97bc7017b4893c7c',1671562323),(474,0,'files/0362fbf0c6da5a50f071b71b7c59373b',1671562323),(475,0,'files/571d3b2c76381a1487b7674784568fe5',1671562323),(476,0,'files/6b55702a20eb10de378bb6beaa340aac',1671562323),(477,0,'files/22cf26f28596b19f9a4d31d54d03a679',1671563276);
/*!40000 ALTER TABLE `oc_file_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_file_metadata`
--

DROP TABLE IF EXISTS `oc_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_file_metadata` (
  `id` bigint NOT NULL,
  `group_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `metadata` json NOT NULL,
  PRIMARY KEY (`id`,`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_file_metadata`
--

LOCK TABLES `oc_file_metadata` WRITE;
/*!40000 ALTER TABLE `oc_file_metadata` DISABLE KEYS */;
INSERT INTO `oc_file_metadata` VALUES (217,'size','{\"width\": 1728, \"height\": 1080}'),(218,'size','{\"width\": 458, \"height\": 500}'),(334,'size','{\"width\": 458, \"height\": 500}'),(335,'size','{\"width\": 1728, \"height\": 1080}'),(430,'size','{\"width\": 458, \"height\": 500}'),(431,'size','{\"width\": 1728, \"height\": 1080}');
/*!40000 ALTER TABLE `oc_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filecache`
--

DROP TABLE IF EXISTS `oc_filecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_filecache` (
  `fileid` bigint NOT NULL AUTO_INCREMENT,
  `storage` bigint NOT NULL DEFAULT '0',
  `path` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `path_hash` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `parent` bigint NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `mimetype` bigint NOT NULL DEFAULT '0',
  `mimepart` bigint NOT NULL DEFAULT '0',
  `size` bigint NOT NULL DEFAULT '0',
  `mtime` bigint NOT NULL DEFAULT '0',
  `storage_mtime` bigint NOT NULL DEFAULT '0',
  `encrypted` int NOT NULL DEFAULT '0',
  `unencrypted_size` bigint NOT NULL DEFAULT '0',
  `etag` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `permissions` int DEFAULT '0',
  `checksum` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`fileid`),
  UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  KEY `fs_parent_name_hash` (`parent`,`name`),
  KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  KEY `fs_storage_mimepart` (`storage`,`mimepart`),
  KEY `fs_storage_size` (`storage`,`size`,`fileid`),
  KEY `fs_id_storage_size` (`fileid`,`storage`,`size`),
  KEY `fs_mtime` (`mtime`),
  KEY `fs_size` (`size`),
  KEY `fs_storage_path_prefix` (`storage`,`path`(64))
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filecache`
--

LOCK TABLES `oc_filecache` WRITE;
/*!40000 ALTER TABLE `oc_filecache` DISABLE KEYS */;
INSERT INTO `oc_filecache` VALUES (1,1,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,24758582,1671558198,1671558198,0,0,'63a1f43610ee8',23,''),(2,1,'files','45b963397aa40d4a0063e0d85e4fe7a1',1,'files',2,1,24758582,1669041737,1669041737,0,0,'637b8e49d0cbb',31,''),(3,1,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',2,'Nextcloud.png',4,3,50598,1669041668,1669041668,0,0,'3a99f1c5fbc0b8fda65619585aa70e70',27,''),(4,1,'files/Plantillas','2b9304b95ddfb740f80ba568c427cfd5',2,'Plantillas',2,1,238269,1669041669,1669041668,0,0,'637b8e0500907',31,''),(5,1,'files/Plantillas/Mindmap.odg','6565d2a227cf02267cd9c62b04c1052b',4,'Mindmap.odg',6,5,13653,1669041668,1669041668,0,0,'7007ace746ea5e2aaaf549362461ff63',27,''),(6,1,'files/Plantillas/Impact effort matrix.whiteboard','eb9acc5f8cbc9ec87d540e33d4d5796d',4,'Impact effort matrix.whiteboard',7,5,52674,1669041668,1669041668,0,0,'3d541c9cdf28ff4b4ed7a6bf5eb21d3d',27,''),(7,1,'files/Plantillas/Letter.odt','660481295c81cd9e4a60955892f264f4',4,'Letter.odt',8,5,15961,1669041668,1669041668,0,0,'52cd498aabd708d2504737362462af74',27,''),(8,1,'files/Plantillas/SWOT analysis.whiteboard','8710dff12b9053cf20c7da04d099c33c',4,'SWOT analysis.whiteboard',7,5,38605,1669041668,1669041668,0,0,'d00ac7d4b5e00e4f090a5bbafc176b5a',27,''),(9,1,'files/Plantillas/Readme.md','9f63494c6ef59d87559af47a179610c5',4,'Readme.md',10,9,554,1669041668,1669041668,0,0,'2c5eaf1634a7cc678179488cf7b7ccc0',27,''),(10,1,'files/Plantillas/Flowchart.odg','94cbe2e223d3b256f7d9d0dfec9d51dd',4,'Flowchart.odg',6,5,11836,1669041668,1669041668,0,0,'aa2c50d918f9929812af81645a452ff5',27,''),(11,1,'files/Plantillas/Expense report.ods','d179bb7b81ee778f38873fe6ee0d66fd',4,'Expense report.ods',11,5,13441,1669041668,1669041668,0,0,'4b75dab63b06a0fb1e8b7f1eedf3d496',27,''),(12,1,'files/Plantillas/Business model canvas.odg','f7803037153e447aa76a3808039afa99',4,'Business model canvas.odg',6,5,16988,1669041668,1669041668,0,0,'4046cc4a664d83638ce32abe1272ae46',27,''),(13,1,'files/Plantillas/Elegant.odp','c7c20bd2eb0d4238107200a292ad9d03',4,'Elegant.odp',12,5,14316,1669041668,1669041668,0,0,'a4d7b7c42adad77407ec09039b12e7da',27,''),(14,1,'files/Plantillas/Diagram & table.ods','3092d76156afda82d6f06e4b38789ecb',4,'Diagram & table.ods',11,5,13378,1669041668,1669041668,0,0,'113a1a2f83850e52f0092ef2449210a8',27,''),(15,1,'files/Plantillas/Product plan.md','9539d6e0195264d2ff2954e8965c9b98',4,'Product plan.md',10,9,573,1669041668,1669041668,0,0,'0c0be434f08cf6ec719c8bddc988c06e',27,''),(16,1,'files/Plantillas/Simple.odp','70fc92247c27cba05dd786d934303cb8',4,'Simple.odp',12,5,14810,1669041668,1669041668,0,0,'9ab3285eb5a6e0e8e9542407f7b0c162',27,''),(17,1,'files/Plantillas/Invoice.odt','5de4159bedff5f00b7d8fef2f606b0f4',4,'Invoice.odt',8,5,17276,1669041668,1669041668,0,0,'5c6cde1b6df98e6c1855547974f3f12a',27,''),(18,1,'files/Plantillas/Meeting notes.md','c372ec28a1de451d4cdd6cfb9bba0f6a',4,'Meeting notes.md',10,9,326,1669041668,1669041668,0,0,'6434be68612353970a05ac588c179684',27,''),(19,1,'files/Plantillas/Org chart.odg','36245e627598f905681c914461478cc0',4,'Org chart.odg',6,5,13878,1669041669,1669041669,0,0,'89039b5cb5fed566d0413ea90e903eb8',27,''),(20,1,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',2,'Nextcloud intro.mp4',14,13,3963036,1669041669,1669041669,0,0,'593084e1a76b4ed2fc5dc6a12f338fc3',27,''),(21,1,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',2,'Photos',2,1,5656463,1669041669,1669041669,0,0,'637b8e0523d5e',31,''),(22,1,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',21,'Toucan.jpg',15,3,167989,1669041669,1669041669,0,0,'5ebea3ea95c3c4bdf9cdb0739439c9f5',27,''),(23,1,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',21,'Steps.jpg',15,3,567689,1669041669,1669041669,0,0,'da4783888433696555c26e33875887a3',27,''),(24,1,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',21,'Readme.md',10,9,150,1669041669,1669041669,0,0,'0e2d7f8f353bb9f963e91bf7ed2c3869',27,''),(25,1,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',21,'Birdie.jpg',15,3,593508,1669041669,1669041669,0,0,'caaf95c3560ddd58a7fa2915af4dccee',27,''),(26,1,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',21,'Gorilla.jpg',15,3,474653,1669041669,1669041669,0,0,'b4be4fae3e0bf5b995f7314ce2355c20',27,''),(27,1,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',21,'Vineyard.jpg',15,3,427030,1669041669,1669041669,0,0,'42114ad1cd02b0a22b0b97b661da059b',27,''),(28,1,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',21,'Nextcloud community.jpg',15,3,797325,1669041669,1669041669,0,0,'206f153d44f2462bf8c40cfb17323ef3',27,''),(29,1,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',21,'Library.jpg',15,3,2170375,1669041669,1669041669,0,0,'b66e94f071038a82e994180d70671eb5',27,''),(30,1,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',21,'Frog.jpg',15,3,457744,1669041669,1669041669,0,0,'c7fba05b15c62558b23476dc89d5a37b',27,''),(31,1,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',2,'Documents',2,1,1108865,1669041669,1669041669,0,0,'637b8e05328b4',31,''),(32,1,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',31,'Example.md',10,9,1095,1669041669,1669041669,0,0,'f0740cf743cd6a6b8fcc09208663e696',27,''),(33,1,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',31,'Readme.md',10,9,136,1669041669,1669041669,0,0,'b223d112e695231ab024c38bd88e7599',27,''),(34,1,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',31,'Nextcloud flyer.pdf',16,5,1083339,1669041669,1669041669,0,0,'8be7a609a2e7a0af8e92fc970257280d',27,''),(35,1,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',31,'Welcome to Nextcloud Hub.docx',17,5,24295,1669041669,1669041669,0,0,'58ca29a9acc16704d33d6b74a5340b04',27,''),(36,1,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',2,'Nextcloud Manual.pdf',16,5,12764726,1669041669,1669041669,0,0,'c48180b3b28bd59db8521484217a9ced',27,''),(37,1,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',2,'Reasons to use Nextcloud.pdf',16,5,976625,1669041669,1669041669,0,0,'a23745cdcd1b256d2a935631dccc5d3a',27,''),(38,2,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,0,1669041685,1669041685,0,0,'637b8e150b956',23,''),(39,2,'appdata_oclj2b3yd40u','cc820f3d27ea1130bbe13b6e6f2907d8',38,'appdata_oclj2b3yd40u',2,1,0,1669041744,1669041744,0,0,'637b8e13ebdb9',31,''),(40,2,'appdata_oclj2b3yd40u/js','7e51356298b1650e4dca1e37c3c7ee35',39,'js',2,1,0,1671558565,1671558565,0,0,'637b8e13ed868',31,''),(41,2,'appdata_oclj2b3yd40u/js/core','381d452d77366777600a0a349e4f5bd2',40,'core',2,1,0,1669041683,1669041683,0,0,'637b8e13ee77c',31,''),(42,2,'appdata_oclj2b3yd40u/js/core/merged-template-prepend.js','8203539a45e8e9754fbac5652f540d4f',41,'merged-template-prepend.js',18,5,12238,1669041683,1669041683,0,0,'5554480d841b1fa420964ed0ed26fdf5',27,''),(43,2,'appdata_oclj2b3yd40u/js/core/merged-template-prepend.js.deps','af01bfd042fa98394891055dff797682',41,'merged-template-prepend.js.deps',7,5,358,1669041683,1669041683,0,0,'78c78663998f3d7c0f5dc09bb6a55239',27,''),(44,2,'appdata_oclj2b3yd40u/js/core/merged-template-prepend.js.gzip','38a9a2076562024996a34b55e5a35795',41,'merged-template-prepend.js.gzip',19,5,3098,1669041683,1669041683,0,0,'32720eb90b73c44c47877dbba990838c',27,''),(45,2,'appdata_oclj2b3yd40u/theming','750e85fec29ef40ab6456ee12bd22fbd',39,'theming',2,1,0,1669041684,1669041684,0,0,'637b8e14017eb',31,''),(46,2,'appdata_oclj2b3yd40u/theming/global','9fdf10d9f35a53d249e0f7c2eb48cd88',45,'global',2,1,0,1669041744,1669041744,0,0,'637b8e1402732',31,''),(47,2,'appdata_oclj2b3yd40u/appstore','5f22440c8efd41a88c2e07b75eb6793f',39,'appstore',2,1,0,1669041685,1669041685,0,0,'637b8e1506c1c',31,''),(48,2,'appdata_oclj2b3yd40u/appstore/apps.json','1dd6119e4f74d33a3add30683c3a2666',47,'apps.json',20,5,2197511,1671559739,1671559739,0,0,'988e3adf5f427eb3ccb93d75c403e098',27,''),(49,1,'files/Talk','a12e821edb92901676dee9cfe1487de3',2,'Talk',2,1,0,1669041737,1669041737,0,0,'637b8e49cfb8b',31,''),(50,2,'appdata_oclj2b3yd40u/avatar','09407684c6dad902a0def1316b7e9fe8',39,'avatar',2,1,0,1671558493,1671558493,0,0,'637b8e4a8e0c8',31,''),(51,2,'appdata_oclj2b3yd40u/avatar/admin','0febab3e41fa74f17c81b15481afbd25',50,'admin',2,1,0,1669041743,1669041743,0,0,'637b8e4a8f87e',31,''),(52,2,'appdata_oclj2b3yd40u/avatar/admin/avatar.png','e883593ad8b525ddb0fe9664838e90c6',51,'avatar.png',4,3,15643,1669041738,1669041738,0,0,'dfe009b469f033d83a0b659b3166d125',27,''),(53,2,'appdata_oclj2b3yd40u/avatar/admin/generated','d65db386f2614782c46a74e87b9ddc4f',51,'generated',7,5,0,1669041738,1669041738,0,0,'b1a4e106fd63d3ba6eebd723cd6512b2',27,''),(54,2,'appdata_oclj2b3yd40u/avatar/admin/avatar.64.png','5782aa5308d197eeb68bae0fc8a8656a',51,'avatar.64.png',4,3,792,1669041738,1669041738,0,0,'03c596b723a7bf47ac7e27a399de4e8c',27,''),(55,2,'appdata_oclj2b3yd40u/avatar/admin/avatar-dark.64.png','bfd83170ad1e6ddf3aa527cb9895dee8',51,'avatar-dark.64.png',4,3,827,1669041743,1669041743,0,0,'cbd3274e9a71f0854444914473f7299b',27,''),(56,2,'appdata_oclj2b3yd40u/preview','9f7c02a1c26964dd1500e9ba6ee9324a',39,'preview',2,1,0,1669041744,1669041744,0,0,'637b8e508b922',31,''),(57,2,'appdata_oclj2b3yd40u/preview/0','99f90f8e63d69ba258ed765bbe399802',56,'0',2,1,-1,1669041744,1669041744,0,0,'637b8e508f9b0',31,''),(58,2,'appdata_oclj2b3yd40u/preview/1','27b99fbe5b6ee0d440d196ba24686a6a',56,'1',2,1,-1,1669041744,1669041744,0,0,'637b8e50906cc',31,''),(59,2,'appdata_oclj2b3yd40u/preview/0/2','0a21c867753f5666b5ecb49accd71a98',57,'2',2,1,-1,1669041744,1669041744,0,0,'637b8e508f32b',31,''),(60,2,'appdata_oclj2b3yd40u/preview/1/f','e5e0ee2f24cb32928e1ab8e2df957c7e',58,'f',2,1,-1,1669041744,1669041744,0,0,'637b8e508ff85',31,''),(61,2,'appdata_oclj2b3yd40u/preview/0/2/e','6e65492ce590690dfaaa7bea0045396c',59,'e',2,1,-1,1669041744,1669041744,0,0,'637b8e508ed53',31,''),(62,2,'appdata_oclj2b3yd40u/preview/1/f/0','578152cdf21cc580693f15d35cd7a514',60,'0',2,1,-1,1669041744,1669041744,0,0,'637b8e508facd',31,''),(63,2,'appdata_oclj2b3yd40u/preview/0/2/e/7','d81c423f0e51318fbca6eeadb6d2233d',61,'7',2,1,-1,1669041744,1669041744,0,0,'637b8e508e913',31,''),(64,2,'appdata_oclj2b3yd40u/preview/1/f/0/e','e54bfb90fdc0246d9de96938c061aa15',62,'e',2,1,-1,1669041744,1669041744,0,0,'637b8e508f4ed',31,''),(65,2,'appdata_oclj2b3yd40u/preview/0/2/e/7/4','62e16369a956540238e66f9c11f32fea',63,'4',2,1,-1,1669041744,1669041744,0,0,'637b8e508e53f',31,''),(66,2,'appdata_oclj2b3yd40u/preview/1/f/0/e/3','2baa0797f879f483e7b36961cded4d31',64,'3',2,1,-1,1669041744,1669041744,0,0,'637b8e508eed6',31,''),(67,2,'appdata_oclj2b3yd40u/preview/0/2/e/7/4/f','9fc83f723de5607f4cc5666f509c3f30',65,'f',2,1,-1,1669041744,1669041744,0,0,'637b8e508e0ea',31,''),(68,2,'appdata_oclj2b3yd40u/preview/1/f/0/e/3/d','d1ffeab0187ebebc7e687cd27f454615',66,'d',2,1,-1,1669041744,1669041744,0,0,'637b8e508e8ec',31,''),(69,2,'appdata_oclj2b3yd40u/preview/0/2/e/7/4/f/1','bdebf1e161a169ab20349dd2a7b41646',67,'1',2,1,-1,1669041744,1669041744,0,0,'637b8e508d993',31,''),(70,2,'appdata_oclj2b3yd40u/preview/1/f/0/e/3/d/a','f1d794bbf4e9ee91d67de9135a38cb39',68,'a',2,1,-1,1669041744,1669041744,0,0,'637b8e508e323',31,''),(71,2,'appdata_oclj2b3yd40u/preview/0/2/e/7/4/f/1/27','a47117f823ec358be8b0cd43df5701f5',69,'27',2,1,0,1669041745,1669041745,0,0,'637b8e508d24c',31,''),(72,2,'appdata_oclj2b3yd40u/preview/1/f/0/e/3/d/a/19','cf3187e18eae276b93b6950d1b4a4968',70,'19',2,1,0,1669041744,1669041744,0,0,'637b8e508d517',31,''),(73,2,'appdata_oclj2b3yd40u/preview/1/8','de3abcd782f3272c1fd3bbbd593423ba',58,'8',2,1,-1,1669041744,1669041744,0,0,'637b8e5095265',31,''),(74,2,'appdata_oclj2b3yd40u/preview/1/8/2','4040e6491fd532e67d852245290ea6c5',73,'2',2,1,-1,1669041744,1669041744,0,0,'637b8e5094d67',31,''),(75,2,'appdata_oclj2b3yd40u/preview/1/8/2/b','e8c9f4b24b348b77ed8d1aac25f574c4',74,'b',2,1,-1,1669041744,1669041744,0,0,'637b8e509489f',31,''),(76,2,'appdata_oclj2b3yd40u/preview/6','e555698d3008be097283249ac65b3f4d',56,'6',2,1,-1,1669041744,1669041744,0,0,'637b8e50967fc',31,''),(77,2,'appdata_oclj2b3yd40u/preview/1/8/2/b/e','dcc324c4d1aa51ba6ab910f4d11e989b',75,'e',2,1,-1,1669041744,1669041744,0,0,'637b8e50942e2',31,''),(78,2,'appdata_oclj2b3yd40u/preview/6/e','77c0040f579e3c72b4bcb3748e36acd2',76,'e',2,1,-1,1669041744,1669041744,0,0,'637b8e5095c7a',31,''),(79,2,'appdata_oclj2b3yd40u/preview/1/8/2/b/e/0','19af21430ef21672415521e9be092c92',77,'0',2,1,-1,1669041744,1669041744,0,0,'637b8e50937cb',31,''),(80,2,'appdata_oclj2b3yd40u/preview/6/e/a','bd77a827471947086462990d331d0a47',78,'a',2,1,-1,1669041744,1669041744,0,0,'637b8e50956ea',31,''),(81,2,'appdata_oclj2b3yd40u/preview/1/8/2/b/e/0/c','cba3e28167d66f5b5ddb169244824fe2',79,'c',2,1,-1,1669041744,1669041744,0,0,'637b8e5093178',31,''),(82,2,'appdata_oclj2b3yd40u/preview/6/e/a/9','76875d235b68fef6b169722cfb42195b',80,'9',2,1,-1,1669041744,1669041744,0,0,'637b8e5094e35',31,''),(83,2,'appdata_oclj2b3yd40u/preview/1/8/2/b/e/0/c/33','bfc582b01b27559015f50f323db41984',81,'33',2,1,0,1669041745,1669041745,0,0,'637b8e509280c',31,''),(84,2,'appdata_oclj2b3yd40u/preview/6/e/a/9/a','649e2e2b3dc478e499b9f0170524a1b3',82,'a',2,1,-1,1669041744,1669041744,0,0,'637b8e5094821',31,''),(85,2,'appdata_oclj2b3yd40u/preview/6/e/a/9/a/b','18197b4c475aeb51094406478f9215b2',84,'b',2,1,-1,1669041744,1669041744,0,0,'637b8e5093fdf',31,''),(86,2,'appdata_oclj2b3yd40u/preview/6/e/a/9/a/b/1','f55921b548ca0ca32392bf0dd56a5f8e',85,'1',2,1,-1,1669041744,1669041744,0,0,'637b8e5093906',31,''),(87,2,'appdata_oclj2b3yd40u/preview/6/e/a/9/a/b/1/29','cf2645e966b350a597ea952f9f0f04b2',86,'29',2,1,0,1669041744,1669041744,0,0,'637b8e5092b7d',31,''),(88,2,'appdata_oclj2b3yd40u/preview/1/f/f','ad26205782bbfc2e5e02037e4386e4e9',60,'f',2,1,-1,1669041744,1669041744,0,0,'637b8e509c504',31,''),(89,2,'appdata_oclj2b3yd40u/preview/1/f/f/1','174d1bb34f4fa450ffb487b4bc4cf7d3',88,'1',2,1,-1,1669041744,1669041744,0,0,'637b8e509bda0',31,''),(90,2,'appdata_oclj2b3yd40u/preview/1/f/f/1/d','d99ce100b8ae9f62866833fc86cfbe35',89,'d',2,1,-1,1669041744,1669041744,0,0,'637b8e509b7c6',31,''),(91,2,'appdata_oclj2b3yd40u/preview/1/f/f/1/d/e','ab3f1b267a5797bc0bf0532b257b09fd',90,'e',2,1,-1,1669041744,1669041744,0,0,'637b8e509b044',31,''),(92,2,'appdata_oclj2b3yd40u/preview/1/f/0/e/3/d/a/19/256-181-max.png','eb121e0841f85d83989cc85446d0a09a',72,'256-181-max.png',4,3,2321,1669041744,1669041744,0,0,'e550441eb3b18f11dd28eaca0f90a658',27,''),(93,2,'appdata_oclj2b3yd40u/preview/1/f/f/1/d/e/7','f51405025df4e22fc56bc1ff807f9d7a',91,'7',2,1,-1,1669041744,1669041744,0,0,'637b8e509a9fe',31,''),(94,2,'appdata_oclj2b3yd40u/preview/1/f/f/1/d/e/7/24','22b8f8495df33e362d1515040bbac455',93,'24',2,1,0,1669041745,1669041745,0,0,'637b8e5099fd6',31,''),(95,2,'appdata_oclj2b3yd40u/preview/1/f/0/e/3/d/a/19/181-181-crop.png','b02e2603cf9c482e732fcfacd596f5f4',72,'181-181-crop.png',4,3,4849,1669041744,1669041744,0,0,'1411bcba755fc8f7bdc2b93e576d4ffb',27,''),(96,2,'appdata_oclj2b3yd40u/theming/global/0','23a97fd89724421c25d95b5d9c6eabfc',46,'0',2,1,0,1671558569,1671558569,0,0,'637b8e50ba79a',31,''),(97,2,'appdata_oclj2b3yd40u/theming/global/0/icon-core-filetypes_folder.svg','7795a836d5c4f481a0dc94e764fa46f3',96,'icon-core-filetypes_folder.svg',21,3,255,1669041744,1669041744,0,0,'40699a30de1f12dc4346fb71393d879d',27,''),(98,2,'appdata_oclj2b3yd40u/preview/1/f/f/1/d/e/7/24/4096-4096-max.png','4d828253933f9c7194c7d8d51d5e58c5',94,'4096-4096-max.png',4,3,37129,1669041744,1669041744,0,0,'48efe16e847746d6686b10f01d555f85',27,''),(99,2,'appdata_oclj2b3yd40u/theming/global/0/icon-core-filetypes_image.svg','4d3f630a29248451ba8e605f5ae4222e',96,'icon-core-filetypes_image.svg',21,3,352,1669041744,1669041744,0,0,'bd77ee2eaf7d2c8e4b0fdd7beb186cee',27,''),(100,2,'appdata_oclj2b3yd40u/preview/0/2/e/7/4/f/1/27/1920-1281-max.jpg','a740a89ce41b55c4e15c86c3dfdbfc5b',71,'1920-1281-max.jpg',15,3,565056,1669041744,1669041744,0,0,'6bfed56bd335f1cddb5ef536c2ff3c4e',27,''),(101,2,'appdata_oclj2b3yd40u/preview/6/e/a/9/a/b/1/29/1600-1066-max.jpg','ddc24aff4651da57ad58cae03d8731e3',87,'1600-1066-max.jpg',15,3,613485,1669041744,1669041744,0,0,'a1a5dabebbe8a8f3c732ed79c023202d',27,''),(102,2,'appdata_oclj2b3yd40u/theming/global/0/icon-core-filetypes_text.svg','ad4ad4b21628ed5f2fe681c044ee6732',96,'icon-core-filetypes_text.svg',21,3,295,1669041744,1669041744,0,0,'c3e0747d23c2daf024cd41fa94e6a434',27,''),(103,2,'appdata_oclj2b3yd40u/preview/1/8/2/b/e/0/c/33/4096-4096-max.png','68415778b36a9945bb08a0aa5ca4f747',83,'4096-4096-max.png',4,3,37890,1669041744,1669041744,0,0,'c881558891e5c4c471193844f5060c06',27,''),(104,2,'appdata_oclj2b3yd40u/theming/global/0/icon-core-filetypes_application-pdf.svg','3747172435e0c27ff8d1e06dec3b5393',96,'icon-core-filetypes_application-pdf.svg',21,3,1054,1669041744,1669041744,0,0,'15c520ac8de229df2a44123260ee0010',27,''),(105,2,'appdata_oclj2b3yd40u/preview/6/e/a/9/a/b/1/29/256-256-crop.jpg','e7bac7f777504703d5363687a9f42969',87,'256-256-crop.jpg',15,3,30348,1669041744,1669041744,0,0,'5369fa22c29c338f617ea54058b4ef83',27,''),(106,2,'appdata_oclj2b3yd40u/theming/global/0/icon-core-filetypes_x-office-drawing.svg','79f90d51c6dd0a1eb93930db995c7d19',96,'icon-core-filetypes_x-office-drawing.svg',21,3,291,1669041745,1669041745,0,0,'77104e711906a6917873558265d8be08',27,''),(107,2,'appdata_oclj2b3yd40u/preview/0/2/e/7/4/f/1/27/256-256-crop.jpg','f4df1df00fc808ec1a1ed9f5fd0b5319',71,'256-256-crop.jpg',15,3,34301,1669041745,1669041745,0,0,'bf0d44530e536e8aeb2b4d167e1f1f57',27,''),(108,2,'appdata_oclj2b3yd40u/preview/1/f/f/1/d/e/7/24/256-256-crop.png','8377958ac9428e18944a62c22be7d969',94,'256-256-crop.png',4,3,6750,1669041745,1669041745,0,0,'3a377b15274c917a450298b86d22ffec',27,''),(109,2,'appdata_oclj2b3yd40u/preview/1/8/2/b/e/0/c/33/256-256-crop.png','f805e342be3c4431ab3c142837270f58',83,'256-256-crop.png',4,3,6736,1669041745,1669041745,0,0,'879a75924adbccc169f41b84f44dafdb',27,''),(110,1,'cache','0fea6a13c52b4d4725368f24b045ca84',1,'cache',2,1,0,1671558198,1671558198,0,0,'63a1f4360efe3',31,''),(111,2,'appdata_oclj2b3yd40u/avatar/melanie','15b82ffa248334abdd40772fab230541',50,'melanie',2,1,0,1671558454,1671558454,0,0,'63a1f534330fc',31,''),(112,2,'appdata_oclj2b3yd40u/avatar/melanie/avatar.png','500c8a6fa9b21cedc918e0a8d61b7d31',111,'avatar.png',4,3,15365,1671558452,1671558452,0,0,'51ca0eeee5c30553b9c84f06ff939a99',27,''),(113,2,'appdata_oclj2b3yd40u/avatar/melanie/generated','73e4864d8d681629ab01dc21eec0a711',111,'generated',7,5,0,1671558452,1671558452,0,0,'b5737c6551db1fbc2563c9a401e8ff33',27,''),(114,3,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,25006435,1671558695,1671558677,0,0,'63a1f6270de73',23,''),(115,2,'appdata_oclj2b3yd40u/avatar/melanie/avatar.64.png','43f3a9f9658109ecbdd2b6519f5a343a',111,'avatar.64.png',4,3,817,1671558454,1671558454,0,0,'85b0d0032ca6dc5720faa3f77dc128d7',27,''),(116,2,'appdata_oclj2b3yd40u/avatar/ruben','58e7fb8b6511dc1563d086757b4e76f0',50,'ruben',2,1,0,1671558472,1671558472,0,0,'63a1f5484fac1',31,''),(117,2,'appdata_oclj2b3yd40u/avatar/ruben/avatar.png','8fb14e7950b9124fac4813d5faf0740c',116,'avatar.png',4,3,13299,1671558472,1671558472,0,0,'92e156417e09692be9f133805e318b40',27,''),(118,2,'appdata_oclj2b3yd40u/avatar/ruben/generated','222e02fdb31928cab1015d6d237160fa',116,'generated',7,5,0,1671558472,1671558472,0,0,'04b5d09d8932962c82558b5c240f5e6c',27,''),(119,4,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,25006435,1671558722,1671558709,0,0,'63a1f642dcc4d',23,''),(120,2,'appdata_oclj2b3yd40u/avatar/ruben/avatar.64.png','68aae39078075b1ce58db772d457767d',116,'avatar.64.png',4,3,714,1671558472,1671558472,0,0,'5358fd2b91e711d461628f3d0883aed5',27,''),(121,2,'appdata_oclj2b3yd40u/avatar/martin','f22685036396a2b50cc0a9e9c51badd9',50,'martin',2,1,0,1671558493,1671558493,0,0,'63a1f55d14e6f',31,''),(122,2,'appdata_oclj2b3yd40u/avatar/martin/avatar.png','072d930a4102614bacd90f5a036ee9b2',121,'avatar.png',4,3,15136,1671558493,1671558493,0,0,'4fa6a85d464fb6be0bb4cc86def109b1',27,''),(123,2,'appdata_oclj2b3yd40u/avatar/martin/generated','06321ae744fcff23801b9bd1bed90503',121,'generated',7,5,0,1671558493,1671558493,0,0,'2ac8342bf9c66a19e8d82b44b1ebd28c',27,''),(124,5,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,25006435,1671558655,1671558547,0,0,'63a1f5ff51011',23,''),(125,2,'appdata_oclj2b3yd40u/avatar/martin/avatar.64.png','5d577034b5dc4a62c7ad78bd48854b05',121,'avatar.64.png',4,3,772,1671558493,1671558493,0,0,'e17be828ac7872c998befc3b237ab6a3',27,''),(126,5,'cache','0fea6a13c52b4d4725368f24b045ca84',124,'cache',2,1,0,1671558547,1671558547,0,0,'63a1f5934b1d5',31,''),(127,5,'files','45b963397aa40d4a0063e0d85e4fe7a1',124,'files',2,1,25006435,1671558655,1671558655,0,0,'63a1f5ff51011',31,''),(128,5,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',127,'Nextcloud.png',4,3,50598,1671558547,1671558547,0,0,'30285fe77532bdae531902dbea2c0df0',27,''),(129,5,'files/Templates','530b342d0b8164ff3b4754c2273a453e',127,'Templates',2,1,238269,1671558547,1671558547,0,0,'63a1f593ce46c',31,''),(130,5,'files/Templates/Mindmap.odg','74cff798fc1b9634ee45380599b2a6da',129,'Mindmap.odg',6,5,13653,1671558547,1671558547,0,0,'9226caebbc4e3fc9d3234889765d62d1',27,''),(131,5,'files/Templates/Impact effort matrix.whiteboard','c5e3b589ec8f9dd6afdebe0ac6feeac8',129,'Impact effort matrix.whiteboard',7,5,52674,1671558547,1671558547,0,0,'6286d14c471530d5e7e63d35b113e283',27,''),(132,5,'files/Templates/Letter.odt','15545ade0e9863c98f3a5cc0fbf2836a',129,'Letter.odt',8,5,15961,1671558547,1671558547,0,0,'a863aeeea91cc70bf5315e9c37d2aad9',27,''),(133,5,'files/Templates/SWOT analysis.whiteboard','3fd0e44b3e6f0e7144442ef6fc71a663',129,'SWOT analysis.whiteboard',7,5,38605,1671558547,1671558547,0,0,'d587f4344ed2cc3271f033eccc1e63f5',27,''),(134,5,'files/Templates/Readme.md','71fa2e74ab30f39eed525572ccc3bbec',129,'Readme.md',10,9,554,1671558547,1671558547,0,0,'dddd0981d80425e74ef816aa50c4d883',27,''),(135,5,'files/Templates/Flowchart.odg','832942849155883ceddc6f3cede21867',129,'Flowchart.odg',6,5,11836,1671558547,1671558547,0,0,'9d997418b8429e7a043787b34587849c',27,''),(136,5,'files/Templates/Expense report.ods','d0a4025621279b95d2f94ff4ec09eab3',129,'Expense report.ods',11,5,13441,1671558547,1671558547,0,0,'346af2d10bf9abe501be5f78447ba8d0',27,''),(137,5,'files/Templates/Business model canvas.odg','6a8f3e02bdf45c8b0671967969393bcb',129,'Business model canvas.odg',6,5,16988,1671558547,1671558547,0,0,'de4f2b23ec7cd4f0c3a7ac34564ae296',27,''),(138,5,'files/Templates/Elegant.odp','f3ec70ed694c0ca215f094b98eb046a7',129,'Elegant.odp',12,5,14316,1671558547,1671558547,0,0,'f01defd3e1df1986ed3d7d6c0a5bb0bf',27,''),(139,5,'files/Templates/Diagram & table.ods','0a89f154655f6d4a0098bc4e6ca87367',129,'Diagram & table.ods',11,5,13378,1671558547,1671558547,0,0,'959fbe200b2abc637f36023f30a17cad',27,''),(140,5,'files/Templates/Product plan.md','a9fbf58bf31cebb8143f7ad3a5205633',129,'Product plan.md',10,9,573,1671558547,1671558547,0,0,'169224a6fba8bb15e92363b7774d8d72',27,''),(141,5,'files/Templates/Simple.odp','a2c90ff606d31419d699b0b437969c61',129,'Simple.odp',12,5,14810,1671558547,1671558547,0,0,'595872c6a8424bee13c679d14976afca',27,''),(142,5,'files/Templates/Invoice.odt','40fdccb51b6c3e3cf20532e06ed5016e',129,'Invoice.odt',8,5,17276,1671558547,1671558547,0,0,'f0e0dafb3e14468942810e369f5e303f',27,''),(143,5,'files/Templates/Meeting notes.md','c0279758bb570afdcdbc2471b2f16285',129,'Meeting notes.md',10,9,326,1671558547,1671558547,0,0,'c4c44d511b82bbabb65e249a049ddd92',27,''),(144,5,'files/Templates/Org chart.odg','fd846bc062b158abb99a75a5b33b53e7',129,'Org chart.odg',6,5,13878,1671558547,1671558547,0,0,'5a49dfb1bc8b5774c1c13a22ab0c9d58',27,''),(145,5,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',127,'Nextcloud intro.mp4',14,13,3963036,1671558547,1671558547,0,0,'eaa5e54402ae37260c9012af92a43eb1',27,''),(146,5,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',127,'Photos',2,1,5656463,1671558548,1671558548,0,0,'63a1f5941f68b',31,''),(147,5,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',146,'Toucan.jpg',15,3,167989,1671558547,1671558547,0,0,'61b18a89023de8285731792e89399365',27,''),(148,5,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',146,'Steps.jpg',15,3,567689,1671558547,1671558547,0,0,'62aad0d8f2efbe99655ae289acb8cf7e',27,''),(149,5,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',146,'Readme.md',10,9,150,1671558547,1671558547,0,0,'912557b3e95eaec570021fe5f9dfa695',27,''),(150,5,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',146,'Birdie.jpg',15,3,593508,1671558548,1671558548,0,0,'9a7c63ca8c64ad9c299c15c6e00e6373',27,''),(151,5,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',146,'Gorilla.jpg',15,3,474653,1671558548,1671558548,0,0,'bf3cedb63efd257926c7e5ba9e6cae1f',27,''),(152,5,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',146,'Vineyard.jpg',15,3,427030,1671558548,1671558548,0,0,'5346cac8443fca1c1c7f8fc4fe9fdd83',27,''),(153,5,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',146,'Nextcloud community.jpg',15,3,797325,1671558548,1671558548,0,0,'547a244118e76d6c3d0f0c106a4ffc4e',27,''),(154,5,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',146,'Library.jpg',15,3,2170375,1671558548,1671558548,0,0,'a85d3f178d7babe8a1edb7be7593c84f',27,''),(155,5,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',146,'Frog.jpg',15,3,457744,1671558548,1671558548,0,0,'cb10dcd289526969084aee1534e7c2d8',27,''),(156,5,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',127,'Documents',2,1,1108865,1671558548,1671558548,0,0,'63a1f59439167',31,''),(157,5,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',156,'Example.md',10,9,1095,1671558548,1671558548,0,0,'46ae6ffdc86b153f4551326347c12307',27,''),(158,5,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',156,'Readme.md',10,9,136,1671558548,1671558548,0,0,'86b35ad12f70213894edd7b5a79f5a55',27,''),(159,5,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',156,'Nextcloud flyer.pdf',16,5,1083339,1671558548,1671558548,0,0,'e94cb9b9070cbb5fb08270f4e7a497bd',27,''),(160,5,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',156,'Welcome to Nextcloud Hub.docx',17,5,24295,1671558548,1671558548,0,0,'3c82b6d60be1f941bbe99ce683341345',27,''),(161,5,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',127,'Nextcloud Manual.pdf',16,5,12764726,1671558548,1671558548,0,0,'3e8a73db231c94b2dd99181a7c60a5fc',27,''),(162,5,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',127,'Reasons to use Nextcloud.pdf',16,5,976625,1671558548,1671558548,0,0,'98ee2e0b3dffd654bfab707f4d998e26',27,''),(163,5,'files/Talk','a12e821edb92901676dee9cfe1487de3',127,'Talk',2,1,0,1671558548,1671558548,0,0,'63a1f59489927',31,''),(164,2,'appdata_oclj2b3yd40u/preview/0/6','92b30db16f9599e864bd54e9d7f52806',57,'6',2,1,-1,1671558554,1671558554,0,0,'63a1f59a7327b',31,''),(165,2,'appdata_oclj2b3yd40u/preview/3','5788190e81995efc2d5155d41a7d840a',56,'3',2,1,-1,1671559676,1671559676,0,0,'63a1f9fcd5ef7',31,''),(166,2,'appdata_oclj2b3yd40u/preview/0/6/4','89ee03e47f544be1b90e8fdacdf84204',164,'4',2,1,-1,1671558554,1671558554,0,0,'63a1f59a72cbc',31,''),(167,2,'appdata_oclj2b3yd40u/preview/3/7','d54336a999231381becd1a6baa00dbda',165,'7',2,1,-1,1671558554,1671558554,0,0,'63a1f59a7308e',31,''),(168,2,'appdata_oclj2b3yd40u/preview/0/6/4/0','b92c62c3babf7bf1b99fd440f70eb7ad',166,'0',2,1,-1,1671558554,1671558554,0,0,'63a1f59a72811',31,''),(169,2,'appdata_oclj2b3yd40u/preview/3/7/a','9cde1f735cd4ba8172350f0558138a57',167,'a',2,1,-1,1671558554,1671558554,0,0,'63a1f59a72b12',31,''),(170,2,'appdata_oclj2b3yd40u/preview/0/6/4/0/9','759343ddef043914341562ac6d15822a',168,'9',2,1,-1,1671558554,1671558554,0,0,'63a1f59a7247d',31,''),(171,2,'appdata_oclj2b3yd40u/preview/3/7/a/7','73f3115835441197030f387af207441f',169,'7',2,1,-1,1671558554,1671558554,0,0,'63a1f59a7266e',31,''),(172,2,'appdata_oclj2b3yd40u/preview/0/6/4/0/9/6','ab3d2a94cf3e9dfe2992a3ffb105bd81',170,'6',2,1,-1,1671558554,1671558554,0,0,'63a1f59a72028',31,''),(173,2,'appdata_oclj2b3yd40u/preview/a','a985bc2be6982557ed34aa0c50d9b0e8',56,'a',2,1,-1,1671558554,1671558554,0,0,'63a1f59a7462c',31,''),(174,2,'appdata_oclj2b3yd40u/preview/3/7/a/7/4','f579a352092315c0b1eb73f22586c862',171,'4',2,1,-1,1671558554,1671558554,0,0,'63a1f59a72162',31,''),(175,2,'appdata_oclj2b3yd40u/preview/0/6/4/0/9/6/6','43e07b1b91899ee271d1c8835d5de199',172,'6',2,1,-1,1671558554,1671558554,0,0,'63a1f59a71b7a',31,''),(176,2,'appdata_oclj2b3yd40u/preview/a/8','69762175abed5c75397dd99b3b66f368',173,'8',2,1,-1,1671558554,1671558554,0,0,'63a1f59a73f7c',31,''),(177,2,'appdata_oclj2b3yd40u/preview/3/7/a/7/4/9','54f10aa7591547c11b27f81ecbe8e2fc',174,'9',2,1,-1,1671558554,1671558554,0,0,'63a1f59a71c8d',31,''),(178,2,'appdata_oclj2b3yd40u/preview/0/6/4/0/9/6/6/158','344097c356c6ce1a7b9299e6f16d30b2',175,'158',2,1,0,1671558554,1671558554,0,0,'63a1f59a710fc',31,''),(179,2,'appdata_oclj2b3yd40u/preview/3/7/a/7/4/9/d','fefe34f834d78e08dcb62a08787148f2',177,'d',2,1,-1,1671558554,1671558554,0,0,'63a1f59a717a7',31,''),(180,2,'appdata_oclj2b3yd40u/preview/a/8/f','01c7d1b073da7a03b40cf4caed067b99',176,'f',2,1,-1,1671558554,1671558554,0,0,'63a1f59a735ec',31,''),(181,2,'appdata_oclj2b3yd40u/preview/3/7/a/7/4/9/d/152','fa4fa918d12e9d07d05282305ab834e6',179,'152',2,1,0,1671558554,1671558554,0,0,'63a1f59a71106',31,''),(182,2,'appdata_oclj2b3yd40u/preview/a/8/f/1','d98af330cae6ea04d0a7273a63fffee9',180,'1',2,1,-1,1671558554,1671558554,0,0,'63a1f59a72f3f',31,''),(183,2,'appdata_oclj2b3yd40u/preview/a/8/f/1/5','595a8f319829601a95c994a0111ea75d',182,'5',2,1,-1,1671558554,1671558554,0,0,'63a1f59a72a03',31,''),(184,2,'appdata_oclj2b3yd40u/preview/a/8/f/1/5/e','d90f41f5c98691ab131f66851206431c',183,'e',2,1,-1,1671558554,1671558554,0,0,'63a1f59a722d0',31,''),(185,2,'appdata_oclj2b3yd40u/preview/a/8/f/1/5/e/d','03f01c8efa785e42292db4fa018186d6',184,'d',2,1,-1,1671558554,1671558554,0,0,'63a1f59a71d6d',31,''),(186,2,'appdata_oclj2b3yd40u/preview/a/8/f/1/5/e/d/151','7590a9d1e101dbc6c17723f916ab6bf1',185,'151',2,1,0,1671558554,1671558554,0,0,'63a1f59a71415',31,''),(187,2,'appdata_oclj2b3yd40u/preview/1/d','f9f349ab9211de163f055d0fb49cb4c1',58,'d',2,1,-1,1671558554,1671558554,0,0,'63a1f59a787fd',31,''),(188,2,'appdata_oclj2b3yd40u/preview/1/d/7','a603559d9c982020ad5eb25afb7db97c',187,'7',2,1,-1,1671558554,1671558554,0,0,'63a1f59a7836c',31,''),(189,2,'appdata_oclj2b3yd40u/preview/1/d/7/f','0ae988a322e6796e188dd5db34650eac',188,'f',2,1,-1,1671558554,1671558554,0,0,'63a1f59a77fd9',31,''),(190,2,'appdata_oclj2b3yd40u/preview/1/d/7/f/7','f0bbea5aa6d08e8a0adf4b5ce142d7e3',189,'7',2,1,-1,1671558554,1671558554,0,0,'63a1f59a77c61',31,''),(191,2,'appdata_oclj2b3yd40u/preview/1/d/7/f/7/a','c79ab08b9ccddabf179897cf16d41be8',190,'a',2,1,-1,1671558554,1671558554,0,0,'63a1f59a77519',31,''),(192,2,'appdata_oclj2b3yd40u/preview/1/d/7/f/7/a/b','1e115f413a9b44fc1fd7f60022e6185c',191,'b',2,1,-1,1671558554,1671558554,0,0,'63a1f59a7600e',31,''),(193,2,'appdata_oclj2b3yd40u/preview/1/d/7/f/7/a/b/154','de37870ab30d0b18252b934b2395f326',192,'154',2,1,0,1671558554,1671558554,0,0,'63a1f59a71ba7',31,''),(194,2,'appdata_oclj2b3yd40u/preview/a/8/f/1/5/e/d/151/1600-1067-max.jpg','57a20e7c0df97f1ed911afa2d8010aba',186,'1600-1067-max.jpg',15,3,463069,1671558554,1671558554,0,0,'61ffe9632bbfc332f813c6f3a7ad8178',27,''),(195,2,'appdata_oclj2b3yd40u/preview/3/7/a/7/4/9/d/152/1920-1281-max.jpg','054797686ece3eb1b91f56dc4cad54c9',181,'1920-1281-max.jpg',15,3,565056,1671558554,1671558554,0,0,'064246612e03b5a82e02bcfed6aa2327',27,''),(196,2,'appdata_oclj2b3yd40u/preview/a/8/f/1/5/e/d/151/256-256-crop.jpg','fc640c37f23551cd97d2e9e7538950d9',186,'256-256-crop.jpg',15,3,24430,1671558554,1671558554,0,0,'9b9f72d30048dca8b4e99e64c188933a',27,''),(197,2,'appdata_oclj2b3yd40u/preview/0/6/4/0/9/6/6/158/4096-4096-max.png','ed61816eaeba4096b07b91fe0de0fc16',178,'4096-4096-max.png',4,3,37890,1671558554,1671558554,0,0,'17773a81e88d84d02381968e40759993',27,''),(198,2,'appdata_oclj2b3yd40u/preview/1/d/7/f/7/a/b/154/1600-1066-max.jpg','62a54143cf9fc6a21b1c2964f3145954',193,'1600-1066-max.jpg',15,3,613485,1671558554,1671558554,0,0,'2b6d37e29867519b9acd8e496eb37edf',27,''),(199,2,'appdata_oclj2b3yd40u/preview/3/7/a/7/4/9/d/152/256-256-crop.jpg','602a55c508ee5330717b0883cd59c2fb',181,'256-256-crop.jpg',15,3,34301,1671558554,1671558554,0,0,'76723e0e90875d401a262777b64acf7b',27,''),(200,2,'appdata_oclj2b3yd40u/preview/1/d/7/f/7/a/b/154/256-256-crop.jpg','f5a4aa36af9053d84f5d8dd26e611d39',193,'256-256-crop.jpg',15,3,30348,1671558554,1671558554,0,0,'ff17444a087d992750a6649f58515354',27,''),(201,2,'appdata_oclj2b3yd40u/preview/0/6/4/0/9/6/6/158/256-256-crop.png','05688d6b36c40185ac2ad63a50994637',178,'256-256-crop.png',4,3,6736,1671558554,1671558554,0,0,'0453c2290a63ebe7bcc98314b9188ef4',27,''),(202,2,'appdata_oclj2b3yd40u/js/files','8c65880d7c8cd160c24a0699aec16fe1',40,'files',2,1,0,1671558565,1671558565,0,0,'63a1f5a5c00da',31,''),(203,2,'appdata_oclj2b3yd40u/js/files/merged-index.js','02f44509473cf825ee5efa90c707bc3c',202,'merged-index.js',18,5,425241,1671558565,1671558565,0,0,'7ec7620ce5713119eba86afde6df5c01',27,''),(204,2,'appdata_oclj2b3yd40u/js/files/merged-index.js.deps','586edbce10ad20f3c7a6050b4c03019a',202,'merged-index.js.deps',7,5,2892,1671558565,1671558565,0,0,'05fbb0bc1fc694fea1ca26b394b06afd',27,''),(205,2,'appdata_oclj2b3yd40u/js/files/merged-index.js.gzip','a435856823bccc710d27c5d9680d1e48',202,'merged-index.js.gzip',19,5,96345,1671558565,1671558565,0,0,'f84dff9bb6583518a2d80e5c3bde2e40',27,''),(206,2,'appdata_oclj2b3yd40u/theming/global/0/icon-core-filetypes_video.svg','ebdf03a6ad699e05f40cfa6d75e294d9',96,'icon-core-filetypes_video.svg',21,3,277,1671558569,1671558569,0,0,'ad8d1e3d2ded672da58b2ccdc50a68c3',27,''),(207,2,'appdata_oclj2b3yd40u/preview/7','4c2bca275f7508c30e10733844b9c46d',56,'7',2,1,-1,1671558569,1671558569,0,0,'63a1f5a9df598',31,''),(208,2,'appdata_oclj2b3yd40u/preview/7/6','88621dd88547dfe212e13acfcd6bc98c',207,'6',2,1,-1,1671558569,1671558569,0,0,'63a1f5a9df24f',31,''),(209,2,'appdata_oclj2b3yd40u/preview/7/6/d','0e12546e0b7d89aaa56dcc59d017c331',208,'d',2,1,-1,1671558569,1671558569,0,0,'63a1f5a9def79',31,''),(210,2,'appdata_oclj2b3yd40u/preview/7/6/d/c','f8f7e05153340e84f96b8496d16f9893',209,'c',2,1,-1,1671558569,1671558569,0,0,'63a1f5a9dec68',31,''),(211,2,'appdata_oclj2b3yd40u/preview/7/6/d/c/6','bb83d1955fac8590c65a377b97ed9783',210,'6',2,1,-1,1671558569,1671558569,0,0,'63a1f5a9de995',31,''),(212,2,'appdata_oclj2b3yd40u/preview/7/6/d/c/6/1','74fded9e675de2f2751c16a157c79cb1',211,'1',2,1,-1,1671558569,1671558569,0,0,'63a1f5a9de6bd',31,''),(213,2,'appdata_oclj2b3yd40u/preview/7/6/d/c/6/1/1','76f0b4d6dfad8aa7b5bda65a2ec16d57',212,'1',2,1,-1,1671558569,1671558569,0,0,'63a1f5a9de20a',31,''),(214,2,'appdata_oclj2b3yd40u/preview/7/6/d/c/6/1/1/128','c588b436d316a3986b97a69e26f02eff',213,'128',2,1,0,1671558569,1671558569,0,0,'63a1f5a9ddcbc',31,''),(215,2,'appdata_oclj2b3yd40u/preview/7/6/d/c/6/1/1/128/500-500-max.png','09526e683f1158df6ba4f6114d00503a',214,'500-500-max.png',4,3,50545,1671558569,1671558569,0,0,'0ecfdaf4b9524de5bb0980731a8859de',27,''),(216,2,'appdata_oclj2b3yd40u/preview/7/6/d/c/6/1/1/128/256-256-crop.png','ccab8693093892bc3a6be46639ac44d8',214,'256-256-crop.png',4,3,46474,1671558569,1671558569,0,0,'d22932c7810f0e503a10a74a30910e71',27,''),(217,5,'files/R.jpg','5f41556229d4d11537fe33f50b12d809',127,'R.jpg',15,3,183158,1671558622,1671558622,0,0,'7a698baeefeaeb7343b9aeed62d3cd9c',27,''),(218,5,'files/s-l500.jpg','11c2243602835cfecea0b6a33fda088f',127,'s-l500.jpg',15,3,64695,1671558645,1671558645,0,0,'8c88e51ea817269630d50ebb778cebb8',27,''),(219,2,'appdata_oclj2b3yd40u/preview/6/3','4324a1ee947fabb08fc1b0738397b4b2',76,'3',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff7d0dc',31,''),(220,2,'appdata_oclj2b3yd40u/preview/6/3/d','94c264273a978340d88be832207a31a1',219,'d',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff7c883',31,''),(221,2,'appdata_oclj2b3yd40u/preview/6/3/d/c','d1e9c22e01cc9c23910fdbc04aaeee9e',220,'c',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff7bd84',31,''),(222,2,'appdata_oclj2b3yd40u/preview/6/3/d/c/7','64f7dab8290c1544b1c42000ba3fd2f8',221,'7',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff7b85b',31,''),(223,2,'appdata_oclj2b3yd40u/preview/6/3/d/c/7/e','6d9e1fd3790efdb0df2a28087aeca2ba',222,'e',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff7b342',31,''),(224,2,'appdata_oclj2b3yd40u/preview/6/3/d/c/7/e/d','d8c0bc86aac09ee0580dca21a88fe355',223,'d',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff7ae96',31,''),(225,2,'appdata_oclj2b3yd40u/preview/6/3/d/c/7/e/d/217','96bbd7efae6c618d9e5beacdb5b7dd79',224,'217',2,1,0,1671558655,1671558655,0,0,'63a1f5ff7a7ab',31,''),(226,2,'appdata_oclj2b3yd40u/preview/e','4f269f8eacee14545918bc0d0b994822',56,'e',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff86304',31,''),(227,2,'appdata_oclj2b3yd40u/preview/e/9','c47773afb10055b1a7266f35ef587d9c',226,'9',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff86035',31,''),(228,2,'appdata_oclj2b3yd40u/preview/e/9/6','35f6f15657ff5df97b4a75faf29e7d7a',227,'6',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff85d2a',31,''),(229,2,'appdata_oclj2b3yd40u/preview/6/3/d/c/7/e/d/217/1728-1080-max.jpg','8ee007e023b48fdc670a84412f28e5de',225,'1728-1080-max.jpg',15,3,244779,1671558655,1671558655,0,0,'c3e9a4bd54ad8e6c2b9b67b1cf2a823e',27,''),(230,2,'appdata_oclj2b3yd40u/preview/e/9/6/e','3cdb2118045674ec72d16cf5b411fe14',228,'e',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff85a1d',31,''),(231,2,'appdata_oclj2b3yd40u/preview/e/9/6/e/d','94d3daa8e029c4d38d7fb192172c527b',230,'d',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff856df',31,''),(232,2,'appdata_oclj2b3yd40u/preview/e/9/6/e/d/4','f952f4ceac211330d43236c96cc6c146',231,'4',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff8532d',31,''),(233,2,'appdata_oclj2b3yd40u/preview/e/9/6/e/d/4/7','66101a693c18ab9d60212f0ab98c46c8',232,'7',2,1,-1,1671558655,1671558655,0,0,'63a1f5ff84fc9',31,''),(234,2,'appdata_oclj2b3yd40u/preview/e/9/6/e/d/4/7/218','98233c3642c91a3931a352f51156d2ca',233,'218',2,1,0,1671558655,1671558655,0,0,'63a1f5ff849c5',31,''),(235,2,'appdata_oclj2b3yd40u/preview/e/9/6/e/d/4/7/218/458-500-max.jpg','f7510f609fa59681a9782cfc716f6786',234,'458-500-max.jpg',15,3,112262,1671558655,1671558655,0,0,'cfae52acc04391c4c1800cbcc6c75bb3',27,''),(236,2,'appdata_oclj2b3yd40u/preview/e/9/6/e/d/4/7/218/256-256-crop.jpg','5683cb9777c3849924a054fe79ae0b89',234,'256-256-crop.jpg',15,3,43067,1671558655,1671558655,0,0,'d9be49a1418990b6008c720ac958a96c',27,''),(237,2,'appdata_oclj2b3yd40u/preview/6/3/d/c/7/e/d/217/256-256-crop.jpg','7999df5f6fee135605cc64dcbeb19f0e',225,'256-256-crop.jpg',15,3,25798,1671558655,1671558655,0,0,'2a6a9671eb6a0780326da9dc81036062',27,''),(238,3,'cache','0fea6a13c52b4d4725368f24b045ca84',114,'cache',2,1,0,1671558677,1671558677,0,0,'63a1f615a991e',31,''),(239,3,'files','45b963397aa40d4a0063e0d85e4fe7a1',114,'files',2,1,25006435,1671558695,1671558695,0,0,'63a1f6270de73',31,''),(240,3,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',239,'Nextcloud.png',4,3,50598,1671558677,1671558677,0,0,'4d97df1901f206ac89f0ccd3e80ddd70',27,''),(241,3,'files/Templates','530b342d0b8164ff3b4754c2273a453e',239,'Templates',2,1,238269,1671558677,1671558677,0,0,'63a1f615e7a40',31,''),(242,3,'files/Templates/Mindmap.odg','74cff798fc1b9634ee45380599b2a6da',241,'Mindmap.odg',6,5,13653,1671558677,1671558677,0,0,'68343bf42fff98e77bd7c6a81c54e0f1',27,''),(243,3,'files/Templates/Impact effort matrix.whiteboard','c5e3b589ec8f9dd6afdebe0ac6feeac8',241,'Impact effort matrix.whiteboard',7,5,52674,1671558677,1671558677,0,0,'c31add9ccb70da6ee096ee013fa7bdb4',27,''),(244,3,'files/Templates/Letter.odt','15545ade0e9863c98f3a5cc0fbf2836a',241,'Letter.odt',8,5,15961,1671558677,1671558677,0,0,'c049e17931a2c2383ffbcad0039d6fb9',27,''),(245,3,'files/Templates/SWOT analysis.whiteboard','3fd0e44b3e6f0e7144442ef6fc71a663',241,'SWOT analysis.whiteboard',7,5,38605,1671558677,1671558677,0,0,'22477cc8e7bf45878446b737ee17ca95',27,''),(246,3,'files/Templates/Readme.md','71fa2e74ab30f39eed525572ccc3bbec',241,'Readme.md',10,9,554,1671558677,1671558677,0,0,'6a41af417c23ab30a449dbdfb466eca5',27,''),(247,3,'files/Templates/Flowchart.odg','832942849155883ceddc6f3cede21867',241,'Flowchart.odg',6,5,11836,1671558677,1671558677,0,0,'1c07d84b7e424ad696c516cf6ba87f67',27,''),(248,3,'files/Templates/Expense report.ods','d0a4025621279b95d2f94ff4ec09eab3',241,'Expense report.ods',11,5,13441,1671558677,1671558677,0,0,'6b36fa4e84e1e422d513050e771de232',27,''),(249,3,'files/Templates/Business model canvas.odg','6a8f3e02bdf45c8b0671967969393bcb',241,'Business model canvas.odg',6,5,16988,1671558677,1671558677,0,0,'e072686f03462d952acd78250b0cd932',27,''),(250,3,'files/Templates/Elegant.odp','f3ec70ed694c0ca215f094b98eb046a7',241,'Elegant.odp',12,5,14316,1671558677,1671558677,0,0,'a1a7c6759e5e682d742562d78799094a',27,''),(251,3,'files/Templates/Diagram & table.ods','0a89f154655f6d4a0098bc4e6ca87367',241,'Diagram & table.ods',11,5,13378,1671558677,1671558677,0,0,'3bc88395fd801da259004c398d57d5db',27,''),(252,3,'files/Templates/Product plan.md','a9fbf58bf31cebb8143f7ad3a5205633',241,'Product plan.md',10,9,573,1671558677,1671558677,0,0,'6751ba1dee16b0f54517f7a7bb6b661d',27,''),(253,3,'files/Templates/Simple.odp','a2c90ff606d31419d699b0b437969c61',241,'Simple.odp',12,5,14810,1671558677,1671558677,0,0,'0d26104155200bf29432383e5f5aec74',27,''),(254,3,'files/Templates/Invoice.odt','40fdccb51b6c3e3cf20532e06ed5016e',241,'Invoice.odt',8,5,17276,1671558677,1671558677,0,0,'680f8efb1a64b9aedaa5849ee4ad567f',27,''),(255,3,'files/Templates/Meeting notes.md','c0279758bb570afdcdbc2471b2f16285',241,'Meeting notes.md',10,9,326,1671558677,1671558677,0,0,'82b1d25035944ba7cbf8a0cbafbffdfb',27,''),(256,3,'files/Templates/Org chart.odg','fd846bc062b158abb99a75a5b33b53e7',241,'Org chart.odg',6,5,13878,1671558677,1671558677,0,0,'3b7c50fd03c40d7dc37b785658f8f2e2',27,''),(257,3,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',239,'Nextcloud intro.mp4',14,13,3963036,1671558677,1671558677,0,0,'f102b18131dcf1442a15be835351baa9',27,''),(258,3,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',239,'Photos',2,1,5656463,1671558678,1671558678,0,0,'63a1f616201dd',31,''),(259,3,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',258,'Toucan.jpg',15,3,167989,1671558678,1671558678,0,0,'cf083d5d138f624c014f9acd0262f675',27,''),(260,3,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',258,'Steps.jpg',15,3,567689,1671558678,1671558678,0,0,'e0030fa0e776a92940018a6cce3cb01e',27,''),(261,3,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',258,'Readme.md',10,9,150,1671558678,1671558678,0,0,'7191b6c9628c6a60c0831cedcaa48e74',27,''),(262,3,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',258,'Birdie.jpg',15,3,593508,1671558678,1671558678,0,0,'371507c504542058cb31acc7e6d2dee8',27,''),(263,3,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',258,'Gorilla.jpg',15,3,474653,1671558678,1671558678,0,0,'d266a39be14420c74d6716cf649348ef',27,''),(264,3,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',258,'Vineyard.jpg',15,3,427030,1671558678,1671558678,0,0,'75b0e5eb08c7e7123f739978414cc438',27,''),(265,3,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',258,'Nextcloud community.jpg',15,3,797325,1671558678,1671558678,0,0,'cf0d7a1feb24e2de0a1febce81063397',27,''),(266,3,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',258,'Library.jpg',15,3,2170375,1671558678,1671558678,0,0,'574e6f7224cd511f505f09e85ee22f6e',27,''),(267,3,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',258,'Frog.jpg',15,3,457744,1671558678,1671558678,0,0,'94d85d4cb3daf073fd84f114775ea45a',27,''),(268,3,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',239,'Documents',2,1,1108865,1671558678,1671558678,0,0,'63a1f616332cf',31,''),(269,3,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',268,'Example.md',10,9,1095,1671558678,1671558678,0,0,'cfac7f420301ed9eaafe5895969773dc',27,''),(270,3,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',268,'Readme.md',10,9,136,1671558678,1671558678,0,0,'bc306a226a873728af35ab6b7d89bfcb',27,''),(271,3,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',268,'Nextcloud flyer.pdf',16,5,1083339,1671558678,1671558678,0,0,'a6083bbc7085140536a8eee18645f094',27,''),(272,3,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',268,'Welcome to Nextcloud Hub.docx',17,5,24295,1671558678,1671558678,0,0,'e88aa99ad0dc0fa64e52443d0a0b9406',27,''),(273,3,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',239,'Nextcloud Manual.pdf',16,5,12764726,1671558678,1671558678,0,0,'1d074bb9085a5775a5c9824bebbb04b6',27,''),(274,3,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',239,'Reasons to use Nextcloud.pdf',16,5,976625,1671558678,1671558678,0,0,'545bae2736e1470fa18ce06b55e4e8b3',27,''),(275,3,'files/Talk','a12e821edb92901676dee9cfe1487de3',239,'Talk',2,1,0,1671558678,1671558678,0,0,'63a1f6169dc27',31,''),(276,2,'appdata_oclj2b3yd40u/preview/3/9','ce0738b7cd2cf349be3931532a356640',165,'9',2,1,-1,1671558681,1671558681,0,0,'63a1f61986076',31,''),(277,2,'appdata_oclj2b3yd40u/preview/3/9/0','3f7b7693ded172a580ed687718a09c66',276,'0',2,1,-1,1671558681,1671558681,0,0,'63a1f61985db5',31,''),(278,2,'appdata_oclj2b3yd40u/preview/3/9/0/5','d31291a5d763915a945702b7e2024df4',277,'5',2,1,-1,1671558681,1671558681,0,0,'63a1f61985a3d',31,''),(279,2,'appdata_oclj2b3yd40u/preview/3/9/0/5/9','39c135a7dd1cd981611e47f630113be0',278,'9',2,1,-1,1671558681,1671558681,0,0,'63a1f61985666',31,''),(280,2,'appdata_oclj2b3yd40u/preview/3/9/0/5/9/7','8ab628bf07f3e5d8f01458e71ab37b70',279,'7',2,1,-1,1671558681,1671558681,0,0,'63a1f61985313',31,''),(281,2,'appdata_oclj2b3yd40u/preview/3/9/0/5/9/7/2','0def40a10d94fd144996d21c5bdac1df',280,'2',2,1,-1,1671558681,1671558681,0,0,'63a1f61984f3e',31,''),(282,2,'appdata_oclj2b3yd40u/preview/3/9/0/5/9/7/2/270','f3712f689a3c06ddb2e7ee2f25c4f9b5',281,'270',2,1,0,1671558682,1671558682,0,0,'63a1f6198483e',31,''),(283,2,'appdata_oclj2b3yd40u/preview/d','6a13834ef55926fe2f89bcd8bea80ebf',56,'d',2,1,-1,1671558681,1671558681,0,0,'63a1f61990c83',31,''),(284,2,'appdata_oclj2b3yd40u/preview/d/6','c2e5a7c28f79bf18422baf4387aa763d',283,'6',2,1,-1,1671558681,1671558681,0,0,'63a1f61990951',31,''),(285,2,'appdata_oclj2b3yd40u/preview/d/6/b','5383e4d59b19b7e7484df7c289a390f1',284,'b',2,1,-1,1671558681,1671558681,0,0,'63a1f61990626',31,''),(286,2,'appdata_oclj2b3yd40u/preview/f','8d51e53474952f55816f2ce4e9364401',56,'f',2,1,-1,1671558681,1671558681,0,0,'63a1f61990fc5',31,''),(287,2,'appdata_oclj2b3yd40u/preview/d/6/b/a','e3c603a6d88b9ce0f895b7ac87538bca',285,'a',2,1,-1,1671558681,1671558681,0,0,'63a1f619901f3',31,''),(288,2,'appdata_oclj2b3yd40u/preview/d/6/b/a/f','312bf88353fb90146d1f635b36bc689e',287,'f',2,1,-1,1671558681,1671558681,0,0,'63a1f6198fec7',31,''),(289,2,'appdata_oclj2b3yd40u/preview/f/7','9c80daabd70c5514e5c15ec5a33f8a04',286,'7',2,1,-1,1671558681,1671558681,0,0,'63a1f61990629',31,''),(290,2,'appdata_oclj2b3yd40u/preview/d/6/b/a/f/6','6f8719e5f0bc639856dafc8ef34d2ba4',288,'6',2,1,-1,1671558681,1671558681,0,0,'63a1f6198fbd9',31,''),(291,2,'appdata_oclj2b3yd40u/preview/d/6/b/a/f/6/5','5ffb3f336e792cfaebb414061cf63b5f',290,'5',2,1,-1,1671558681,1671558681,0,0,'63a1f6198f7b3',31,''),(292,2,'appdata_oclj2b3yd40u/preview/d/6/b/a/f/6/5/264','3eb54193081f9104b8d5bb275a0c08e4',291,'264',2,1,0,1671558681,1671558681,0,0,'63a1f6198f424',31,''),(293,2,'appdata_oclj2b3yd40u/preview/f/7/6','fc69c2883b6bb1af4a2be3e667aff9fb',289,'6',2,1,-1,1671558681,1671558681,0,0,'63a1f6198fbdd',31,''),(294,2,'appdata_oclj2b3yd40u/preview/f/7/6/6','c3693a4ac02e84db2879a40dbffaf91a',293,'6',2,1,-1,1671558681,1671558681,0,0,'63a1f6198f3f2',31,''),(295,2,'appdata_oclj2b3yd40u/preview/f/7/6/6/4','934901888a049feace775c5d59b7c5c8',294,'4',2,1,-1,1671558681,1671558681,0,0,'63a1f6198ec2a',31,''),(296,2,'appdata_oclj2b3yd40u/preview/f/7/6/6/4/0','f9fb9704fbb1e9133e393dfee628a169',295,'0',2,1,-1,1671558681,1671558681,0,0,'63a1f6198e590',31,''),(297,2,'appdata_oclj2b3yd40u/preview/f/7/6/6/4/0/6','e9c76972d0cc349285072cf77704ea29',296,'6',2,1,-1,1671558681,1671558681,0,0,'63a1f6198e0de',31,''),(298,2,'appdata_oclj2b3yd40u/preview/f/7/6/6/4/0/6/266','2cde4af8d961f81e105a484f01f80d1c',297,'266',2,1,0,1671558681,1671558681,0,0,'63a1f6198d68e',31,''),(299,2,'appdata_oclj2b3yd40u/preview/b','8c88cdfda349a17fd89c0d3a8c81df14',56,'b',2,1,-1,1671558681,1671558681,0,0,'63a1f619a1209',31,''),(300,2,'appdata_oclj2b3yd40u/preview/b/1','a15584b43a437f25fb3763516db68b87',299,'1',2,1,-1,1671558681,1671558681,0,0,'63a1f619a0bd1',31,''),(301,2,'appdata_oclj2b3yd40u/preview/b/1/a','58a009cd00db60a1a5ab1b559a258130',300,'a',2,1,-1,1671558681,1671558681,0,0,'63a1f619a077c',31,''),(302,2,'appdata_oclj2b3yd40u/preview/b/1/a/5','2a605783b798cc2d52a10575289ca635',301,'5',2,1,-1,1671558681,1671558681,0,0,'63a1f619a042e',31,''),(303,2,'appdata_oclj2b3yd40u/preview/b/1/a/5/9','6f83b0b98189d7ec359db0f632053813',302,'9',2,1,-1,1671558681,1671558681,0,0,'63a1f619a0139',31,''),(304,2,'appdata_oclj2b3yd40u/preview/b/1/a/5/9/b','370be32fffaf566039b0e8a9605b7af4',303,'b',2,1,-1,1671558681,1671558681,0,0,'63a1f6199fb92',31,''),(305,2,'appdata_oclj2b3yd40u/preview/b/1/a/5/9/b/3','2121115e493c2cb86a206c5528aef08c',304,'3',2,1,-1,1671558681,1671558681,0,0,'63a1f6199f6df',31,''),(306,2,'appdata_oclj2b3yd40u/preview/b/1/a/5/9/b/3/261','82ad7d66acba9c1b7380fc62ac86463c',305,'261',2,1,0,1671558682,1671558682,0,0,'63a1f6199eb2a',31,''),(307,2,'appdata_oclj2b3yd40u/preview/c','b0af06379e105b88947a29c7fcbf28f4',56,'c',2,1,-1,1671558681,1671558681,0,0,'63a1f619a7e2c',31,''),(308,2,'appdata_oclj2b3yd40u/preview/c/f','dc00f14a2341dddf295b86a082a3f920',307,'f',2,1,-1,1671558681,1671558681,0,0,'63a1f619a7973',31,''),(309,2,'appdata_oclj2b3yd40u/preview/c/f/a','3e6d5a5a27f250edb057b285a0b11f5a',308,'a',2,1,-1,1671558681,1671558681,0,0,'63a1f619a73a5',31,''),(310,2,'appdata_oclj2b3yd40u/preview/c/f/a/0','d7b4d5f0f96ef5054c1c3201385591c8',309,'0',2,1,-1,1671558681,1671558681,0,0,'63a1f619a6e05',31,''),(311,2,'appdata_oclj2b3yd40u/preview/c/f/a/0/8','aa0be27c0ece94026ec0c992ee5b1a2d',310,'8',2,1,-1,1671558681,1671558681,0,0,'63a1f619a6872',31,''),(312,2,'appdata_oclj2b3yd40u/preview/c/f/a/0/8/6','2b917cd6c33b6c41b50f07f3b62aa807',311,'6',2,1,-1,1671558681,1671558681,0,0,'63a1f619a63c8',31,''),(313,2,'appdata_oclj2b3yd40u/preview/c/f/a/0/8/6/0','b312ad0918d3978ed6e67443597c9087',312,'0',2,1,-1,1671558681,1671558681,0,0,'63a1f619a5381',31,''),(314,2,'appdata_oclj2b3yd40u/preview/c/f/a/0/8/6/0/259','adab98dd6e4351e6bd06c2f9b902061a',313,'259',2,1,0,1671558681,1671558681,0,0,'63a1f619a4415',31,''),(315,2,'appdata_oclj2b3yd40u/preview/c/f/a/0/8/6/0/259/1600-1067-max.jpg','64e7e3c7d15fa2a25ae61249ba66a429',314,'1600-1067-max.jpg',15,3,303256,1671558681,1671558681,0,0,'fdda6c837e1941bdb7bb88aa3870e726',27,''),(316,2,'appdata_oclj2b3yd40u/preview/d/6/b/a/f/6/5/264/1920-1281-max.jpg','2b7dacafa9fc04f6d36058d45c8f6aca',292,'1920-1281-max.jpg',15,3,565056,1671558681,1671558681,0,0,'15c9b29cf796c4f8f492e85d3ef27c87',27,''),(317,2,'appdata_oclj2b3yd40u/preview/f/7/6/6/4/0/6/266/1600-1066-max.jpg','2d61ddcf6ad398b948612f9d333d5740',298,'1600-1066-max.jpg',15,3,613485,1671558681,1671558681,0,0,'84b970ce0c4758f76a80aba0dcdb9521',27,''),(318,2,'appdata_oclj2b3yd40u/preview/b/1/a/5/9/b/3/261/4096-4096-max.png','164ed985aa9013343236c9cfa208a722',306,'4096-4096-max.png',4,3,37129,1671558681,1671558681,0,0,'765a980af1e80bc02be61aa9d8d3cb78',27,''),(319,2,'appdata_oclj2b3yd40u/preview/3/9/0/5/9/7/2/270/4096-4096-max.png','4adad18706a69d34710a34e1a3ad87e4',282,'4096-4096-max.png',4,3,37890,1671558681,1671558681,0,0,'9a602b766dad564d9a572f284a391c06',27,''),(320,2,'appdata_oclj2b3yd40u/preview/f/7/6/6/4/0/6/266/256-256-crop.jpg','40b0f961ac1de2153a528184dd20e84a',298,'256-256-crop.jpg',15,3,30348,1671558681,1671558681,0,0,'556e3fc7d0155146775b9b9f24148023',27,''),(321,2,'appdata_oclj2b3yd40u/preview/c/f/a/0/8/6/0/259/256-256-crop.jpg','3bacde7f8217a72dce2422be5962b0ce',314,'256-256-crop.jpg',15,3,28210,1671558681,1671558681,0,0,'368db8bfab28f9de8af19d697d38cb0f',27,''),(322,2,'appdata_oclj2b3yd40u/preview/d/6/b/a/f/6/5/264/256-256-crop.jpg','b9a057f2344ccca9905b6422cdd9045b',292,'256-256-crop.jpg',15,3,34301,1671558681,1671558681,0,0,'746c56644d2543e9adb840db138c13af',27,''),(323,2,'appdata_oclj2b3yd40u/preview/b/1/a/5/9/b/3/261/256-256-crop.png','bad8afded0c07949724577594869ef42',306,'256-256-crop.png',4,3,6750,1671558682,1671558682,0,0,'983e4d0bcea3a10a539111eba8b8b590',27,''),(324,2,'appdata_oclj2b3yd40u/preview/3/9/0/5/9/7/2/270/256-256-crop.png','7df2140f691ea4cd9e606fa87bb475a5',282,'256-256-crop.png',4,3,6736,1671558682,1671558682,0,0,'c59248de8153b554c8d9f2a5dc0ce7ec',27,''),(325,2,'appdata_oclj2b3yd40u/preview/3/3','f7d3fa0623e9f8bb797ea0ae7b5d3191',165,'3',2,1,-1,1671558687,1671558687,0,0,'63a1f61ff10ba',31,''),(326,2,'appdata_oclj2b3yd40u/preview/3/3/5','e0721ad1dbfc39325a9c58abb868e91a',325,'5',2,1,-1,1671558687,1671558687,0,0,'63a1f61ff0ba1',31,''),(327,2,'appdata_oclj2b3yd40u/preview/3/3/5/f','c0f3339ab6b1671ae956f9cfab002acd',326,'f',2,1,-1,1671558687,1671558687,0,0,'63a1f61ff060e',31,''),(328,2,'appdata_oclj2b3yd40u/preview/3/3/5/f/5','6d16c459d1193f1965539607cd4783bb',327,'5',2,1,-1,1671558687,1671558687,0,0,'63a1f61feff54',31,''),(329,2,'appdata_oclj2b3yd40u/preview/3/3/5/f/5/3','1a05f9d1b05225a78fe863301626a893',328,'3',2,1,-1,1671558687,1671558687,0,0,'63a1f61fefa92',31,''),(330,2,'appdata_oclj2b3yd40u/preview/3/3/5/f/5/3/5','a11ea465b3a0d2e2cf8d54b7dfad8e3b',329,'5',2,1,-1,1671558687,1671558687,0,0,'63a1f61fef681',31,''),(331,2,'appdata_oclj2b3yd40u/preview/3/3/5/f/5/3/5/240','a075362e2af175e861dfe9bb0ce582db',330,'240',2,1,0,1671558688,1671558688,0,0,'63a1f61fef0ad',31,''),(332,2,'appdata_oclj2b3yd40u/preview/3/3/5/f/5/3/5/240/500-500-max.png','3b5a15417347bdbf7cadf9b58606ba90',331,'500-500-max.png',4,3,50545,1671558688,1671558688,0,0,'5b4dd8c9bb0a0d213beeafada7253fc9',27,''),(333,2,'appdata_oclj2b3yd40u/preview/3/3/5/f/5/3/5/240/256-256-crop.png','a5bb7e870e196e385a95e1532cb85e98',331,'256-256-crop.png',4,3,46474,1671558688,1671558688,0,0,'36ec393ccc74d3467486c72df1a08b30',27,''),(334,3,'files/s-l500.jpg','11c2243602835cfecea0b6a33fda088f',239,'s-l500.jpg',15,3,64695,1671558645,1671558645,0,0,'f6c1d4e6cea95c0d797783158802a253',27,''),(335,3,'files/R.jpg','5f41556229d4d11537fe33f50b12d809',239,'R.jpg',15,3,183158,1671558622,1671558622,0,0,'e4effd8e054680c7e99ffeb579ed0647',27,''),(336,2,'appdata_oclj2b3yd40u/preview/f/9','3c96a954fcccd5c92963e2023ecf0bdb',286,'9',2,1,-1,1671558695,1671558695,0,0,'63a1f627318ae',31,''),(337,2,'appdata_oclj2b3yd40u/preview/f/9/b','103e8e621c72413c6dfe1aaaf5e79a19',336,'b',2,1,-1,1671558695,1671558695,0,0,'63a1f62730d9f',31,''),(338,2,'appdata_oclj2b3yd40u/preview/f/9/b/9','0e7a8d876507a6cf2e124f72a24d7f17',337,'9',2,1,-1,1671558695,1671558695,0,0,'63a1f6273013d',31,''),(339,2,'appdata_oclj2b3yd40u/preview/f/9/b/9/0','9228069c21f73be4ff512162fdd855d3',338,'0',2,1,-1,1671558695,1671558695,0,0,'63a1f6272fde8',31,''),(340,2,'appdata_oclj2b3yd40u/preview/f/9/b/9/0/2','4118b15811d0779aa3f187071da32d0c',339,'2',2,1,-1,1671558695,1671558695,0,0,'63a1f6272f9fc',31,''),(341,2,'appdata_oclj2b3yd40u/preview/f/9/b/9/0/2/f','7042cd363aa94259161783bee1308ebc',340,'f',2,1,-1,1671558695,1671558695,0,0,'63a1f6272f504',31,''),(342,2,'appdata_oclj2b3yd40u/preview/f/9/b/9/0/2/f/335','5c0e27d676cb36f67a7b530b38e768f6',341,'335',2,1,0,1671558695,1671558695,0,0,'63a1f6272effb',31,''),(343,2,'appdata_oclj2b3yd40u/preview/f/9/b/9/0/2/f/335/1728-1080-max.jpg','554d798bf6bd12f6c9198b42e669dcaa',342,'1728-1080-max.jpg',15,3,244779,1671558695,1671558695,0,0,'cc6d6f2e6739a453a3fe4a5c17eea513',27,''),(344,2,'appdata_oclj2b3yd40u/preview/2','bcc5ba7f79e83612c1c46237dfdea869',56,'2',2,1,-1,1671558695,1671558695,0,0,'63a1f6273c95a',31,''),(345,2,'appdata_oclj2b3yd40u/preview/2/f','46b9d09dbe82b29b6254e9e9ed472117',344,'f',2,1,-1,1671558695,1671558695,0,0,'63a1f6273c4a4',31,''),(346,2,'appdata_oclj2b3yd40u/preview/2/f/2','09ebb5fa5f7d62edeffb580363ce0c60',345,'2',2,1,-1,1671558695,1671558695,0,0,'63a1f6273bf27',31,''),(347,2,'appdata_oclj2b3yd40u/preview/2/f/2/b','7eb451b8df29bb110e19c107cd7ec918',346,'b',2,1,-1,1671558695,1671558695,0,0,'63a1f6273baa7',31,''),(348,2,'appdata_oclj2b3yd40u/preview/2/f/2/b/2','534c0e25e0af5ce4ba9284dbc71eb676',347,'2',2,1,-1,1671558695,1671558695,0,0,'63a1f6273b5c9',31,''),(349,2,'appdata_oclj2b3yd40u/preview/2/f/2/b/2/6','08ef63ac789b91d6b792490a7a2f082b',348,'6',2,1,-1,1671558695,1671558695,0,0,'63a1f6273b10a',31,''),(350,2,'appdata_oclj2b3yd40u/preview/2/f/2/b/2/6/5','18f22cf20d5d81a168d4c45377331d5e',349,'5',2,1,-1,1671558695,1671558695,0,0,'63a1f6273a9a3',31,''),(351,2,'appdata_oclj2b3yd40u/preview/2/f/2/b/2/6/5/334','7d4a16525edc4d894e4c4ec15b55dff8',350,'334',2,1,0,1671558695,1671558695,0,0,'63a1f6273a3dc',31,''),(352,2,'appdata_oclj2b3yd40u/preview/2/f/2/b/2/6/5/334/458-500-max.jpg','22840e00e18546129a71c2e02d8a304e',351,'458-500-max.jpg',15,3,112262,1671558695,1671558695,0,0,'1105ca0edd6293887ae4922f41128938',27,''),(353,2,'appdata_oclj2b3yd40u/preview/2/f/2/b/2/6/5/334/256-256-crop.jpg','69bf88ab3c1db9ff3f9e689e2c0051cd',351,'256-256-crop.jpg',15,3,43067,1671558695,1671558695,0,0,'98002ac080e2405e7b64afc3d542e0e8',27,''),(354,2,'appdata_oclj2b3yd40u/preview/f/9/b/9/0/2/f/335/256-256-crop.jpg','46fe8a028ab644caea568e60d8fde0b8',342,'256-256-crop.jpg',15,3,25798,1671558695,1671558695,0,0,'1e604906510984c29dc7655caf03b761',27,''),(355,4,'cache','0fea6a13c52b4d4725368f24b045ca84',119,'cache',2,1,0,1671558709,1671558709,0,0,'63a1f63591457',31,''),(356,4,'files','45b963397aa40d4a0063e0d85e4fe7a1',119,'files',2,1,25006435,1671558722,1671558722,0,0,'63a1f642dcc4d',31,''),(357,4,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',356,'Nextcloud.png',4,3,50598,1671558709,1671558709,0,0,'734bf8143b40fba20e7dc3a9c29231c3',27,''),(358,4,'files/Templates','530b342d0b8164ff3b4754c2273a453e',356,'Templates',2,1,238269,1671558709,1671558709,0,0,'63a1f635d2f99',31,''),(359,4,'files/Templates/Mindmap.odg','74cff798fc1b9634ee45380599b2a6da',358,'Mindmap.odg',6,5,13653,1671558709,1671558709,0,0,'1ef147ab7a67256122f57cd554f04cc4',27,''),(360,4,'files/Templates/Impact effort matrix.whiteboard','c5e3b589ec8f9dd6afdebe0ac6feeac8',358,'Impact effort matrix.whiteboard',7,5,52674,1671558709,1671558709,0,0,'d56a40ba1bc9deb8890bd256c4f57e23',27,''),(361,4,'files/Templates/Letter.odt','15545ade0e9863c98f3a5cc0fbf2836a',358,'Letter.odt',8,5,15961,1671558709,1671558709,0,0,'d7746eeab34602f35e4ac6c16e31738a',27,''),(362,4,'files/Templates/SWOT analysis.whiteboard','3fd0e44b3e6f0e7144442ef6fc71a663',358,'SWOT analysis.whiteboard',7,5,38605,1671558709,1671558709,0,0,'443be0ee147b425188db4841d11b08bb',27,''),(363,4,'files/Templates/Readme.md','71fa2e74ab30f39eed525572ccc3bbec',358,'Readme.md',10,9,554,1671558709,1671558709,0,0,'ad973584a927b78c49b918304d827fcd',27,''),(364,4,'files/Templates/Flowchart.odg','832942849155883ceddc6f3cede21867',358,'Flowchart.odg',6,5,11836,1671558709,1671558709,0,0,'a376d23efa858d55cb48ce60b2779c52',27,''),(365,4,'files/Templates/Expense report.ods','d0a4025621279b95d2f94ff4ec09eab3',358,'Expense report.ods',11,5,13441,1671558709,1671558709,0,0,'7166f0f9a9aad36e29b0ee83fe8f1b50',27,''),(366,4,'files/Templates/Business model canvas.odg','6a8f3e02bdf45c8b0671967969393bcb',358,'Business model canvas.odg',6,5,16988,1671558709,1671558709,0,0,'8a76945157fcd8a44ad6e43c36fc6e50',27,''),(367,4,'files/Templates/Elegant.odp','f3ec70ed694c0ca215f094b98eb046a7',358,'Elegant.odp',12,5,14316,1671558709,1671558709,0,0,'a32fefaf82e710e621b81ba23499ca39',27,''),(368,4,'files/Templates/Diagram & table.ods','0a89f154655f6d4a0098bc4e6ca87367',358,'Diagram & table.ods',11,5,13378,1671558709,1671558709,0,0,'f1efec2e23101753e05d10bcb20f5825',27,''),(369,4,'files/Templates/Product plan.md','a9fbf58bf31cebb8143f7ad3a5205633',358,'Product plan.md',10,9,573,1671558709,1671558709,0,0,'9be0659540921cc42a7c33574c7a60ea',27,''),(370,4,'files/Templates/Simple.odp','a2c90ff606d31419d699b0b437969c61',358,'Simple.odp',12,5,14810,1671558709,1671558709,0,0,'3c16e3cdae629bd513cd0836964cd0a7',27,''),(371,4,'files/Templates/Invoice.odt','40fdccb51b6c3e3cf20532e06ed5016e',358,'Invoice.odt',8,5,17276,1671558709,1671558709,0,0,'865689f450a1391ec51689dedd1f3c33',27,''),(372,4,'files/Templates/Meeting notes.md','c0279758bb570afdcdbc2471b2f16285',358,'Meeting notes.md',10,9,326,1671558709,1671558709,0,0,'6e75a8a84cfe7a2294e134c5e3aa1081',27,''),(373,4,'files/Templates/Org chart.odg','fd846bc062b158abb99a75a5b33b53e7',358,'Org chart.odg',6,5,13878,1671558709,1671558709,0,0,'ab76b973f9c3945c164032a268e964b4',27,''),(374,4,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',356,'Nextcloud intro.mp4',14,13,3963036,1671558709,1671558709,0,0,'9744dd507e9dc5f772655b01f5f766ad',27,''),(375,4,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',356,'Photos',2,1,5656463,1671558710,1671558710,0,0,'63a1f6360e983',31,''),(376,4,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',375,'Toucan.jpg',15,3,167989,1671558709,1671558709,0,0,'f2cafe186c8dc30894bffe87ae7aced8',27,''),(377,4,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',375,'Steps.jpg',15,3,567689,1671558709,1671558709,0,0,'9f3ffa13eb98ac774e817733c9f89d18',27,''),(378,4,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',375,'Readme.md',10,9,150,1671558709,1671558709,0,0,'2efc612b95f73eff2c1b323fc17a6af6',27,''),(379,4,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',375,'Birdie.jpg',15,3,593508,1671558709,1671558709,0,0,'c9508a477b91affdfeaf0df47946859d',27,''),(380,4,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',375,'Gorilla.jpg',15,3,474653,1671558709,1671558709,0,0,'7ff3a62c7095496823413232600528ef',27,''),(381,4,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',375,'Vineyard.jpg',15,3,427030,1671558710,1671558710,0,0,'c404bc91e429b50cc95684834153427f',27,''),(382,4,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',375,'Nextcloud community.jpg',15,3,797325,1671558710,1671558710,0,0,'4ec98e4c6e83daed2f5b8edff9eda67b',27,''),(383,4,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',375,'Library.jpg',15,3,2170375,1671558710,1671558710,0,0,'471b9167409fe0c1603765e6fbc8eb8a',27,''),(384,4,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',375,'Frog.jpg',15,3,457744,1671558710,1671558710,0,0,'e716c9cfae791145052d004c19571b41',27,''),(385,4,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',356,'Documents',2,1,1108865,1671558710,1671558710,0,0,'63a1f636225e4',31,''),(386,4,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',385,'Example.md',10,9,1095,1671558710,1671558710,0,0,'59dc80a9cd036d446b72a5b74b66e89c',27,''),(387,4,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',385,'Readme.md',10,9,136,1671558710,1671558710,0,0,'5f50ddb2e3336b0d22afd0ef86884d4f',27,''),(388,4,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',385,'Nextcloud flyer.pdf',16,5,1083339,1671558710,1671558710,0,0,'01757c1f381a705805dd090d9cbdb674',27,''),(389,4,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',385,'Welcome to Nextcloud Hub.docx',17,5,24295,1671558710,1671558710,0,0,'efba20d65100c6d3bf2cf910e302c53b',27,''),(390,4,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',356,'Nextcloud Manual.pdf',16,5,12764726,1671558710,1671558710,0,0,'8023a99ac088400ae3b5f723080ea71a',27,''),(391,4,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',356,'Reasons to use Nextcloud.pdf',16,5,976625,1671558710,1671558710,0,0,'b470100c7b3a01c97c43100e444748b1',27,''),(392,4,'files/Talk','a12e821edb92901676dee9cfe1487de3',356,'Talk',2,1,0,1671558710,1671558710,0,0,'63a1f6368be18',31,''),(393,2,'appdata_oclj2b3yd40u/preview/0/0','a1d33a3c80fdb810cbb1d20998ad01f7',57,'0',2,1,-1,1671558713,1671558713,0,0,'63a1f6391553c',31,''),(394,2,'appdata_oclj2b3yd40u/preview/0/0/e','407bd762fb71f7b997d01c7d9bccadc7',393,'e',2,1,-1,1671558713,1671558713,0,0,'63a1f63915006',31,''),(395,2,'appdata_oclj2b3yd40u/preview/0/0/e/c','eafad03f339f0fac6884d441bea1c372',394,'c',2,1,-1,1671558713,1671558713,0,0,'63a1f63914c4c',31,''),(396,2,'appdata_oclj2b3yd40u/preview/0/0/e/c/5','0db3f36d3172fb6a8c15e7879e2a4061',395,'5',2,1,-1,1671558713,1671558713,0,0,'63a1f63914884',31,''),(397,2,'appdata_oclj2b3yd40u/preview/b/e','46b802bca661b275656a35626da4b8ea',299,'e',2,1,-1,1671558713,1671558713,0,0,'63a1f6391a922',31,''),(398,2,'appdata_oclj2b3yd40u/preview/b/e/e','3be1ce2fb5336cbec487881aee4e6c0d',397,'e',2,1,-1,1671558713,1671558713,0,0,'63a1f6391a504',31,''),(399,2,'appdata_oclj2b3yd40u/preview/0/0/e/c/5/3','42ca44b73ad2ce1a2fcbfa3b587fec8f',396,'3',2,1,-1,1671558713,1671558713,0,0,'63a1f639143fa',31,''),(400,2,'appdata_oclj2b3yd40u/preview/b/e/e/d','3ff0c4520fa065acef215671aa8a70da',398,'d',2,1,-1,1671558713,1671558713,0,0,'63a1f6391a158',31,''),(401,2,'appdata_oclj2b3yd40u/preview/b/e/e/d/1','61517a8e95fc44619f5d661cc7d2d87b',400,'1',2,1,-1,1671558713,1671558713,0,0,'63a1f63919d53',31,''),(402,2,'appdata_oclj2b3yd40u/preview/b/e/e/d/1/3','f04ef7a6585989b2e4638c261b8426d2',401,'3',2,1,-1,1671558713,1671558713,0,0,'63a1f63919a66',31,''),(403,2,'appdata_oclj2b3yd40u/preview/b/e/e/d/1/3/6','3a0b1faaa429b01c88168fc029bb3893',402,'6',2,1,-1,1671558713,1671558713,0,0,'63a1f63919730',31,''),(404,2,'appdata_oclj2b3yd40u/preview/0/0/e/c/5/3/c','b08c0c5b48c3895abacd5acf14359d75',399,'c',2,1,-1,1671558713,1671558713,0,0,'63a1f63913e36',31,''),(405,2,'appdata_oclj2b3yd40u/preview/b/e/e/d/1/3/6/383','c0b95e0fbd7dd924537ffe478d9a31c0',403,'383',2,1,0,1671558713,1671558713,0,0,'63a1f63919294',31,''),(406,2,'appdata_oclj2b3yd40u/preview/0/0/e/c/5/3/c/381','eee878507b33056879ee51f1d4b395d3',404,'381',2,1,0,1671558713,1671558713,0,0,'63a1f63913931',31,''),(407,2,'appdata_oclj2b3yd40u/preview/8','f9e83e3389a3006cc2cb10acc14b9710',56,'8',2,1,-1,1671558713,1671558713,0,0,'63a1f63931c22',31,''),(408,2,'appdata_oclj2b3yd40u/preview/8/e','954e5c58df4a445d5e3da7ce246bf878',407,'e',2,1,-1,1671558713,1671558713,0,0,'63a1f63931880',31,''),(409,2,'appdata_oclj2b3yd40u/preview/8/e/f','1313a43e129985a683fbfd515c1b2a49',408,'f',2,1,-1,1671558713,1671558713,0,0,'63a1f639313b0',31,''),(410,2,'appdata_oclj2b3yd40u/preview/8/e/f/b','7c35bba38025b06a18cec09b7ce58737',409,'b',2,1,-1,1671558713,1671558713,0,0,'63a1f63931077',31,''),(411,2,'appdata_oclj2b3yd40u/preview/8/e/f/b/1','0a3a0d0b6d94b34624d743e1de7f0ccb',410,'1',2,1,-1,1671558713,1671558713,0,0,'63a1f63930d31',31,''),(412,2,'appdata_oclj2b3yd40u/preview/8/e/f/b/1/0','c921ba0e4cf55c0c993434f33122c039',411,'0',2,1,-1,1671558713,1671558713,0,0,'63a1f63930982',31,''),(413,2,'appdata_oclj2b3yd40u/preview/8/e/f/b/1/0/0','acde68296e7d603345ba08535b1cbd56',412,'0',2,1,-1,1671558713,1671558713,0,0,'63a1f6393059c',31,''),(414,2,'appdata_oclj2b3yd40u/preview/8/e/f/b/1/0/0/387','a648da19f56faf3ae253d2049f17910d',413,'387',2,1,0,1671558713,1671558713,0,0,'63a1f639300e9',31,''),(415,2,'appdata_oclj2b3yd40u/preview/0/0/e/c/5/3/c/381/1920-1281-max.jpg','7d61cf5ca0dfb1ad62b79b7fcc5af71b',406,'1920-1281-max.jpg',15,3,565056,1671558713,1671558713,0,0,'4851443cfe86f8d74295aac2069c3549',27,''),(416,2,'appdata_oclj2b3yd40u/preview/b/e/e/d/1/3/6/383/1600-1066-max.jpg','4079514fd73300228e94e63f349012c0',405,'1600-1066-max.jpg',15,3,613485,1671558713,1671558713,0,0,'1ca17a1987fcab4db310d4737ef95ec3',27,''),(417,2,'appdata_oclj2b3yd40u/preview/0/0/e/c/5/3/c/381/256-256-crop.jpg','edbfeec13dc3461cc7478491011461d4',406,'256-256-crop.jpg',15,3,34301,1671558713,1671558713,0,0,'1545b7e69ebbab66b328e203c95dfe14',27,''),(418,2,'appdata_oclj2b3yd40u/preview/8/e/f/b/1/0/0/387/4096-4096-max.png','9d8f977ab0a4c6eee9033f7e6c296972',414,'4096-4096-max.png',4,3,37890,1671558713,1671558713,0,0,'37692f23158be0f6ddca4a5f8c17def5',27,''),(419,2,'appdata_oclj2b3yd40u/preview/b/e/e/d/1/3/6/383/256-256-crop.jpg','fde6b3bc49a6b84b8d7683a702214f1e',405,'256-256-crop.jpg',15,3,30348,1671558713,1671558713,0,0,'6bf4b007f72d8ec6ac8141d8e5f2aad4',27,''),(420,2,'appdata_oclj2b3yd40u/preview/8/e/f/b/1/0/0/387/256-256-crop.png','8751585b0722becc605c2fdeb6ca81a2',414,'256-256-crop.png',4,3,6736,1671558713,1671558713,0,0,'9e0630641e05c23e2b8b4dfd818b0dcd',27,''),(421,2,'appdata_oclj2b3yd40u/preview/f/b','4a1e4bfd62eca178969e41e45f316abc',286,'b',2,1,-1,1671558718,1671558718,0,0,'63a1f63e09fd6',31,''),(422,2,'appdata_oclj2b3yd40u/preview/f/b/7','aab38d05a40988c0ae98e888bdb2f7e5',421,'7',2,1,-1,1671558718,1671558718,0,0,'63a1f63e09be3',31,''),(423,2,'appdata_oclj2b3yd40u/preview/f/b/7/b','cf8fd3996bde42c7aacbac92d3d157d6',422,'b',2,1,-1,1671558718,1671558718,0,0,'63a1f63e098a4',31,''),(424,2,'appdata_oclj2b3yd40u/preview/f/b/7/b/9','62628056fe24cbb19243f42695e18d9f',423,'9',2,1,-1,1671558718,1671558718,0,0,'63a1f63e09571',31,''),(425,2,'appdata_oclj2b3yd40u/preview/f/b/7/b/9/f','277ebca9dc1975ce9f1b18ef6cdc5e23',424,'f',2,1,-1,1671558718,1671558718,0,0,'63a1f63e091ca',31,''),(426,2,'appdata_oclj2b3yd40u/preview/f/b/7/b/9/f/f','fd950f21b84f033cc791a679226ccd02',425,'f',2,1,-1,1671558718,1671558718,0,0,'63a1f63e08d0f',31,''),(427,2,'appdata_oclj2b3yd40u/preview/f/b/7/b/9/f/f/357','af06d60d0c77270b6f7749972ec051fa',426,'357',2,1,0,1671558718,1671558718,0,0,'63a1f63e08536',31,''),(428,2,'appdata_oclj2b3yd40u/preview/f/b/7/b/9/f/f/357/500-500-max.png','b28790e21e257e20e5a41551719c809c',427,'500-500-max.png',4,3,50545,1671558718,1671558718,0,0,'a385e75794c48dcdd7878540d3f5a5b2',27,''),(429,2,'appdata_oclj2b3yd40u/preview/f/b/7/b/9/f/f/357/256-256-crop.png','9eb852ddca826bd99f3fea4c81691835',427,'256-256-crop.png',4,3,46474,1671558718,1671558718,0,0,'815e2cfe01b5ca7f70a365596679f95d',27,''),(430,4,'files/s-l500.jpg','11c2243602835cfecea0b6a33fda088f',356,'s-l500.jpg',15,3,64695,1671558645,1671558645,0,0,'5f02abdfe41db41ca6e9eae324e09cc1',27,''),(431,4,'files/R.jpg','5f41556229d4d11537fe33f50b12d809',356,'R.jpg',15,3,183158,1671558622,1671558622,0,0,'a84b97f15bf64e8ccebda79f7e4d30fa',27,''),(432,2,'appdata_oclj2b3yd40u/preview/6/6','8c75c683bc3d13adad518f39311b4f72',76,'6',2,1,-1,1671558723,1671558723,0,0,'63a1f6431301a',31,''),(433,2,'appdata_oclj2b3yd40u/preview/f/7/4','3a83c1f1920315d3cdf7e77e9d2764fa',289,'4',2,1,-1,1671558723,1671558723,0,0,'63a1f6431302e',31,''),(434,2,'appdata_oclj2b3yd40u/preview/6/6/3','dfebb9f3c49a8c37a60cf7013894a3b9',432,'3',2,1,-1,1671558723,1671558723,0,0,'63a1f64312b8c',31,''),(435,2,'appdata_oclj2b3yd40u/preview/f/7/4/9','ea17d68c6a365d2a8e65a81e5b3be0fd',433,'9',2,1,-1,1671558723,1671558723,0,0,'63a1f64312b8c',31,''),(436,2,'appdata_oclj2b3yd40u/preview/6/6/3/6','7d95aeb86bdb07c51cee0329eac5741a',434,'6',2,1,-1,1671558723,1671558723,0,0,'63a1f64312737',31,''),(437,2,'appdata_oclj2b3yd40u/preview/f/7/4/9/0','c8990d94090b476d9e111ca06d7596ab',435,'0',2,1,-1,1671558723,1671558723,0,0,'63a1f64312739',31,''),(438,2,'appdata_oclj2b3yd40u/preview/6/6/3/6/8','13bbb9ff88b7dbf3eff7f6f0cc95a6bd',436,'8',2,1,-1,1671558723,1671558723,0,0,'63a1f6431217f',31,''),(439,2,'appdata_oclj2b3yd40u/preview/f/7/4/9/0/9','993a36e2be2d4afb35a369b2ce155b45',437,'9',2,1,-1,1671558723,1671558723,0,0,'63a1f643121ba',31,''),(440,2,'appdata_oclj2b3yd40u/preview/6/6/3/6/8/2','8a4e7f9eabc044a8c2d1ceeb1b2910ae',438,'2',2,1,-1,1671558723,1671558723,0,0,'63a1f64311b90',31,''),(441,2,'appdata_oclj2b3yd40u/preview/f/7/4/9/0/9/a','1b3cf5c0b4d20902f7e006b297eb7d2f',439,'a',2,1,-1,1671558723,1671558723,0,0,'63a1f64311bc3',31,''),(442,2,'appdata_oclj2b3yd40u/preview/6/6/3/6/8/2/7','4e9d65503b7d957e44470e3097f92a26',440,'7',2,1,-1,1671558723,1671558723,0,0,'63a1f64311423',31,''),(443,2,'appdata_oclj2b3yd40u/preview/f/7/4/9/0/9/a/430','6327bee3e18e7b0d7083105a08e3dd3e',441,'430',2,1,0,1671558723,1671558723,0,0,'63a1f64311769',31,''),(444,2,'appdata_oclj2b3yd40u/preview/6/6/3/6/8/2/7/431','7a680ec5f32c8300b2a106f9ed61a51b',442,'431',2,1,0,1671558723,1671558723,0,0,'63a1f64310d20',31,''),(445,2,'appdata_oclj2b3yd40u/preview/f/7/4/9/0/9/a/430/458-500-max.jpg','df0b93da1b7557e9deb2ad74cf7fb797',443,'458-500-max.jpg',15,3,112262,1671558723,1671558723,0,0,'f8ca9570775a1ba00d8caaa8d619f70b',27,''),(446,2,'appdata_oclj2b3yd40u/preview/f/7/4/9/0/9/a/430/256-256-crop.jpg','de5fb1e29eff0ad7beb9d1fa079ceea8',443,'256-256-crop.jpg',15,3,43067,1671558723,1671558723,0,0,'a3599fff6d62f741c5d958ff37a6d3cf',27,''),(447,2,'appdata_oclj2b3yd40u/preview/6/6/3/6/8/2/7/431/1728-1080-max.jpg','12bf0c4caee1a043d10239482a64ff60',444,'1728-1080-max.jpg',15,3,244779,1671558723,1671558723,0,0,'06952579e8e87ec18c79444b0ebed6d8',27,''),(448,2,'appdata_oclj2b3yd40u/preview/6/6/3/6/8/2/7/431/256-256-crop.jpg','275898676c125f9cdc43cd619d2c30ac',444,'256-256-crop.jpg',15,3,25798,1671558723,1671558723,0,0,'b3bed453c6ebad6ec83726fc45d5097e',27,''),(449,2,'appdata_oclj2b3yd40u/preview/3/500-500-max.png','c33aeebb3f26b02b6f6afb3d125088b1',165,'500-500-max.png',4,3,50545,1671559676,1671559676,0,0,'af4b299c2dd03fd614258a9225b1cd6b',27,''),(450,2,'appdata_oclj2b3yd40u/preview/3/256-256-crop.png','85eb663e21190d9e16b8b6d35c2354c5',165,'256-256-crop.png',4,3,46474,1671559676,1671559676,0,0,'2890f500c271fcc9e6289e756c4a6cee',27,'');
/*!40000 ALTER TABLE `oc_filecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filecache_extended`
--

DROP TABLE IF EXISTS `oc_filecache_extended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_filecache_extended` (
  `fileid` bigint unsigned NOT NULL,
  `metadata_etag` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `creation_time` bigint NOT NULL DEFAULT '0',
  `upload_time` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `fce_ctime_idx` (`creation_time`),
  KEY `fce_utime_idx` (`upload_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filecache_extended`
--

LOCK TABLES `oc_filecache_extended` WRITE;
/*!40000 ALTER TABLE `oc_filecache_extended` DISABLE KEYS */;
INSERT INTO `oc_filecache_extended` VALUES (217,NULL,0,1671558655),(218,NULL,0,1671558655),(334,NULL,0,1671558695),(335,NULL,0,1671558695),(430,NULL,0,1671558722),(431,NULL,0,1671558722);
/*!40000 ALTER TABLE `oc_filecache_extended` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_files_trash`
--

DROP TABLE IF EXISTS `oc_files_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_files_trash` (
  `auto_id` bigint NOT NULL AUTO_INCREMENT,
  `id` varchar(250) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timestamp` varchar(12) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `location` varchar(512) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`auto_id`),
  KEY `id_index` (`id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `user_index` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_files_trash`
--

LOCK TABLES `oc_files_trash` WRITE;
/*!40000 ALTER TABLE `oc_files_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_files_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_checks`
--

DROP TABLE IF EXISTS `oc_flow_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_flow_checks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class` varchar(256) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `operator` varchar(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin,
  `hash` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_checks`
--

LOCK TABLES `oc_flow_checks` WRITE;
/*!40000 ALTER TABLE `oc_flow_checks` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_operations`
--

DROP TABLE IF EXISTS `oc_flow_operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_flow_operations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class` varchar(256) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(256) COLLATE utf8mb4_bin DEFAULT '',
  `checks` longtext COLLATE utf8mb4_bin,
  `operation` longtext COLLATE utf8mb4_bin,
  `entity` varchar(256) COLLATE utf8mb4_bin NOT NULL DEFAULT 'OCA\\WorkflowEngine\\Entity\\File',
  `events` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_operations`
--

LOCK TABLES `oc_flow_operations` WRITE;
/*!40000 ALTER TABLE `oc_flow_operations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_operations_scope`
--

DROP TABLE IF EXISTS `oc_flow_operations_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_flow_operations_scope` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `operation_id` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `value` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_scope` (`operation_id`,`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_operations_scope`
--

LOCK TABLES `oc_flow_operations_scope` WRITE;
/*!40000 ALTER TABLE `oc_flow_operations_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_operations_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_group_admin`
--

DROP TABLE IF EXISTS `oc_group_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_group_admin` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `group_admin_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_group_admin`
--

LOCK TABLES `oc_group_admin` WRITE;
/*!40000 ALTER TABLE `oc_group_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_group_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_group_user`
--

DROP TABLE IF EXISTS `oc_group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_group_user` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `gu_uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_group_user`
--

LOCK TABLES `oc_group_user` WRITE;
/*!40000 ALTER TABLE `oc_group_user` DISABLE KEYS */;
INSERT INTO `oc_group_user` VALUES ('admin','admin');
/*!40000 ALTER TABLE `oc_group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_groups`
--

DROP TABLE IF EXISTS `oc_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_groups` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `displayname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'name',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_groups`
--

LOCK TABLES `oc_groups` WRITE;
/*!40000 ALTER TABLE `oc_groups` DISABLE KEYS */;
INSERT INTO `oc_groups` VALUES ('admin','admin');
/*!40000 ALTER TABLE `oc_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_jobs`
--

DROP TABLE IF EXISTS `oc_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `argument` varchar(4000) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `last_run` int DEFAULT '0',
  `last_checked` int DEFAULT '0',
  `reserved_at` int DEFAULT '0',
  `execution_duration` int DEFAULT '0',
  `argument_hash` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `time_sensitive` smallint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `job_class_index` (`class`),
  KEY `job_lastcheck_reserved` (`last_checked`,`reserved_at`),
  KEY `job_argument_hash` (`class`,`argument_hash`),
  KEY `jobs_time_sensitive` (`time_sensitive`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_jobs`
--

LOCK TABLES `oc_jobs` WRITE;
/*!40000 ALTER TABLE `oc_jobs` DISABLE KEYS */;
INSERT INTO `oc_jobs` VALUES (1,'OCA\\Activity\\BackgroundJob\\EmailNotification','null',1669041685,1669041685,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(2,'OCA\\Activity\\BackgroundJob\\ExpireActivities','null',1669041744,1669041744,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(3,'OCA\\Activity\\BackgroundJob\\DigestMail','null',1669042457,1669042457,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(4,'OCA\\Notifications\\BackgroundJob\\GenerateUserSettings','null',1671558183,1671558183,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(5,'OCA\\Notifications\\BackgroundJob\\SendNotificationMails','null',1671558204,1671558204,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(6,'OCA\\NextcloudAnnouncements\\Cron\\Crawler','null',1671558405,1671558405,0,1,'37a6259cc0c1dae299a7866489dff0bd',1),(7,'OCA\\Text\\Cron\\Cleanup','null',1671558454,1671558454,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(8,'OCA\\Support\\BackgroundJobs\\CheckSubscription','null',1671558522,1671558522,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(9,'OCA\\Files\\BackgroundJob\\ScanFiles','null',1671558539,1671558539,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(10,'OCA\\Files\\BackgroundJob\\DeleteOrphanedItems','null',1671558553,1671558553,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(11,'OCA\\Files\\BackgroundJob\\CleanupFileLocks','null',1671558568,1671558568,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(12,'OCA\\Files\\BackgroundJob\\CleanupDirectEditingTokens','null',1671558665,1671558665,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(13,'OCA\\Files\\BackgroundJob\\DeleteExpiredOpenLocalEditor','null',1671558672,1671558672,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(14,'OCA\\Files_Trashbin\\BackgroundJob\\ExpireTrash','null',1671558681,1671558681,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(15,'OCA\\DAV\\BackgroundJob\\CleanupDirectLinksJob','null',1671558688,1671558687,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(16,'OCA\\DAV\\BackgroundJob\\UpdateCalendarResourcesRoomsBackgroundJob','null',1671558698,1671558698,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(17,'OCA\\DAV\\BackgroundJob\\CleanupInvitationTokenJob','null',1671558712,1671558712,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(18,'OCA\\DAV\\BackgroundJob\\EventReminderJob','null',1671558717,1671558717,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(19,'OCA\\DAV\\BackgroundJob\\CalendarRetentionJob','null',1671558727,1671558727,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(20,'OCA\\ContactsInteraction\\BackgroundJob\\CleanupJob','null',1671558731,1671558731,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(21,'OCA\\ServerInfo\\Jobs\\UpdateStorageStats','null',1671559676,1671559676,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(22,'OCA\\Files_Sharing\\DeleteOrphanedSharesJob','null',1671559681,1671559681,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(23,'OCA\\Files_Sharing\\ExpireSharesJob','null',1671559721,1671559721,0,0,'37a6259cc0c1dae299a7866489dff0bd',0),(24,'OCA\\Files_Sharing\\BackgroundJob\\FederatedSharesDiscoverJob','null',1671559732,1671559732,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(25,'OCA\\UpdateNotification\\Notification\\BackgroundJob','null',1671559737,1671559737,0,2,'37a6259cc0c1dae299a7866489dff0bd',1),(26,'OCA\\Circles\\Cron\\Maintenance','null',0,1669041666,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(27,'OCA\\UserStatus\\BackgroundJob\\ClearOldStatusesBackgroundJob','null',0,1669041666,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(28,'OCA\\WorkflowEngine\\BackgroundJobs\\Rotate','null',0,1669041667,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(29,'OCA\\Federation\\SyncJob','null',0,1669041668,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(30,'OCA\\Files_Versions\\BackgroundJob\\ExpireVersions','null',0,1669041668,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(31,'OC\\Authentication\\Token\\TokenCleanupJob','null',0,1669041668,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(32,'OC\\Log\\Rotate','null',0,1669041668,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(33,'OC\\Preview\\BackgroundCleanupJob','null',0,1669041668,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(34,'OCA\\Calendar\\BackgroundJob\\CleanUpOutdatedBookingsJob','null',0,1669041706,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(35,'OCA\\Contacts\\Cron\\SocialUpdateRegistration','null',0,1669041728,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(36,'OCA\\Mail\\BackgroundJob\\CleanupJob','null',0,1669041732,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(37,'OCA\\Mail\\BackgroundJob\\OutboxWorkerJob','null',0,1669041732,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(38,'OCA\\Mail\\BackgroundJob\\IMipMessageJob','null',0,1669041732,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(39,'OCA\\Richdocuments\\Backgroundjobs\\ObtainCapabilities','null',0,1669041734,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(40,'OCA\\Richdocuments\\Backgroundjobs\\Cleanup','null',0,1669041734,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(41,'OCA\\Talk\\BackgroundJob\\ExpireSignalingMessage','null',0,1669041737,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(42,'OCA\\Talk\\BackgroundJob\\RemoveEmptyRooms','null',0,1669041737,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(43,'OCA\\Talk\\BackgroundJob\\ResetAssignedSignalingServer','null',0,1669041737,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(44,'OCA\\Talk\\BackgroundJob\\CheckReferenceIdColumn','null',0,1669041737,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(45,'OCA\\Talk\\BackgroundJob\\CheckHostedSignalingServer','null',0,1669041737,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(46,'OCA\\Talk\\BackgroundJob\\CheckMatterbridges','null',0,1669041737,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(47,'OCA\\Talk\\BackgroundJob\\ExpireChatMessages','null',0,1669041737,0,0,'37a6259cc0c1dae299a7866489dff0bd',1),(48,'OCA\\FirstRunWizard\\Notification\\BackgroundJob','{\"uid\":\"admin\"}',0,1669041737,0,0,'b974bbc90ef800c3b1539ac4f2aeddb7',1),(49,'OCA\\FirstRunWizard\\Notification\\BackgroundJob','{\"uid\":\"martin\"}',0,1671558548,0,0,'4665caead1c8992534210118f92868d1',1),(50,'OCA\\FirstRunWizard\\Notification\\BackgroundJob','{\"uid\":\"melanie\"}',0,1671558678,0,0,'90403c26883fd29e73ef7a7a8eeca925',1),(51,'OCA\\FirstRunWizard\\Notification\\BackgroundJob','{\"uid\":\"ruben\"}',0,1671558710,0,0,'679c85900dea4e8defbe8cd4574ad5d5',1);
/*!40000 ALTER TABLE `oc_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_known_users`
--

DROP TABLE IF EXISTS `oc_known_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_known_users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `known_to` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `known_user` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ku_known_to` (`known_to`),
  KEY `ku_known_user` (`known_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_known_users`
--

LOCK TABLES `oc_known_users` WRITE;
/*!40000 ALTER TABLE `oc_known_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_known_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_login_flow_v2`
--

DROP TABLE IF EXISTS `oc_login_flow_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_login_flow_v2` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` bigint unsigned NOT NULL,
  `started` smallint unsigned NOT NULL DEFAULT '0',
  `poll_token` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `login_token` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `public_key` text COLLATE utf8mb4_bin NOT NULL,
  `private_key` text COLLATE utf8mb4_bin NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `login_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `server` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `app_password` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `poll_token` (`poll_token`),
  UNIQUE KEY `login_token` (`login_token`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_login_flow_v2`
--

LOCK TABLES `oc_login_flow_v2` WRITE;
/*!40000 ALTER TABLE `oc_login_flow_v2` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_login_flow_v2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_accounts`
--

DROP TABLE IF EXISTS `oc_mail_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_host` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_port` varchar(6) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_ssl_mode` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_user` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_password` varchar(2048) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_host` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_port` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_ssl_mode` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_user` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_password` varchar(2048) COLLATE utf8mb4_bin DEFAULT NULL,
  `signature` text COLLATE utf8mb4_bin,
  `last_mailbox_sync` int NOT NULL DEFAULT '0',
  `editor_mode` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT 'plaintext',
  `order` int NOT NULL DEFAULT '1',
  `show_subscribed_only` tinyint(1) DEFAULT '0',
  `personal_namespace` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `drafts_mailbox_id` int DEFAULT NULL,
  `sent_mailbox_id` int DEFAULT NULL,
  `trash_mailbox_id` int DEFAULT NULL,
  `sieve_enabled` tinyint(1) DEFAULT '0',
  `sieve_host` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_port` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_ssl_mode` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_user` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_password` varchar(2048) COLLATE utf8mb4_bin DEFAULT NULL,
  `provisioning_id` int DEFAULT NULL,
  `signature_above_quote` tinyint(1) DEFAULT '0',
  `signature_mode` smallint NOT NULL DEFAULT '0',
  `auth_method` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'password',
  `archive_mailbox_id` int DEFAULT NULL,
  `oauth_refresh_token` varchar(1023) COLLATE utf8mb4_bin DEFAULT NULL,
  `oauth_token_ttl` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_userid_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_accounts`
--

LOCK TABLES `oc_mail_accounts` WRITE;
/*!40000 ALTER TABLE `oc_mail_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_aliases`
--

DROP TABLE IF EXISTS `oc_mail_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_aliases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `signature` text COLLATE utf8mb4_bin,
  `signature_mode` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_aliases`
--

LOCK TABLES `oc_mail_aliases` WRITE;
/*!40000 ALTER TABLE `oc_mail_aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_attachments`
--

DROP TABLE IF EXISTS `oc_mail_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_attachments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `local_message_id` int DEFAULT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `file_name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `created_at` int NOT NULL DEFAULT '0',
  `mime_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_attach_userid_index` (`user_id`),
  KEY `IDX_6C63D3AD31594979` (`local_message_id`),
  CONSTRAINT `attachment_local_message` FOREIGN KEY (`local_message_id`) REFERENCES `oc_mail_local_messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_attachments`
--

LOCK TABLES `oc_mail_attachments` WRITE;
/*!40000 ALTER TABLE `oc_mail_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_classifiers`
--

DROP TABLE IF EXISTS `oc_mail_classifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_classifiers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `estimator` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `app_version` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `training_set_size` int NOT NULL,
  `validation_set_size` int NOT NULL,
  `recall_important` decimal(10,5) NOT NULL,
  `precision_important` decimal(10,5) NOT NULL,
  `f1_score_important` decimal(10,5) NOT NULL,
  `duration` int NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  `created_at` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_clssfr_accnt_id_type` (`account_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_classifiers`
--

LOCK TABLES `oc_mail_classifiers` WRITE;
/*!40000 ALTER TABLE `oc_mail_classifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_classifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_coll_addresses`
--

DROP TABLE IF EXISTS `oc_mail_coll_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_coll_addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_coll_addr_userid_index` (`user_id`),
  KEY `mail_coll_addr_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_coll_addresses`
--

LOCK TABLES `oc_mail_coll_addresses` WRITE;
/*!40000 ALTER TABLE `oc_mail_coll_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_coll_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_local_messages`
--

DROP TABLE IF EXISTS `oc_mail_local_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_local_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int unsigned NOT NULL,
  `account_id` int NOT NULL,
  `alias_id` int DEFAULT NULL,
  `send_at` int DEFAULT NULL,
  `subject` tinytext COLLATE utf8mb4_bin NOT NULL,
  `body` longtext COLLATE utf8mb4_bin NOT NULL,
  `html` tinyint(1) DEFAULT '0',
  `in_reply_to_message_id` text COLLATE utf8mb4_bin,
  `failed` tinyint(1) DEFAULT '0',
  `editor_body` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_local_messages`
--

LOCK TABLES `oc_mail_local_messages` WRITE;
/*!40000 ALTER TABLE `oc_mail_local_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_local_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_mailboxes`
--

DROP TABLE IF EXISTS `oc_mail_mailboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_mailboxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `account_id` int NOT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '[]',
  `delimiter` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `messages` int NOT NULL,
  `unseen` int NOT NULL,
  `selectable` tinyint(1) DEFAULT '0',
  `special_use` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '[]',
  `sync_new_lock` int DEFAULT NULL,
  `sync_changed_lock` int DEFAULT NULL,
  `sync_vanished_lock` int DEFAULT NULL,
  `sync_new_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sync_changed_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sync_vanished_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sync_in_background` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_22DEBD839B6B5FBA5E237E06` (`account_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_mailboxes`
--

LOCK TABLES `oc_mail_mailboxes` WRITE;
/*!40000 ALTER TABLE `oc_mail_mailboxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_mailboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_message_tags`
--

DROP TABLE IF EXISTS `oc_mail_message_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_message_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imap_message_id` varchar(1023) COLLATE utf8mb4_bin NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_msg_imap_id_idx` (`imap_message_id`(128))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_message_tags`
--

LOCK TABLES `oc_mail_message_tags` WRITE;
/*!40000 ALTER TABLE `oc_mail_message_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_message_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_messages`
--

DROP TABLE IF EXISTS `oc_mail_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `message_id` varchar(1023) COLLATE utf8mb4_bin DEFAULT NULL,
  `mailbox_id` int NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sent_at` int NOT NULL,
  `flag_answered` tinyint(1) DEFAULT '0',
  `flag_deleted` tinyint(1) DEFAULT '0',
  `flag_draft` tinyint(1) DEFAULT '0',
  `flag_flagged` tinyint(1) DEFAULT '0',
  `flag_seen` tinyint(1) DEFAULT '0',
  `flag_forwarded` tinyint(1) DEFAULT '0',
  `flag_junk` tinyint(1) DEFAULT '0',
  `flag_notjunk` tinyint(1) DEFAULT '0',
  `flag_attachments` tinyint(1) DEFAULT '0',
  `flag_important` tinyint(1) DEFAULT '0',
  `structure_analyzed` tinyint(1) DEFAULT '0',
  `preview_text` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `references` longtext COLLATE utf8mb4_bin,
  `in_reply_to` varchar(1023) COLLATE utf8mb4_bin DEFAULT NULL,
  `thread_root_id` varchar(1023) COLLATE utf8mb4_bin DEFAULT NULL,
  `flag_mdnsent` tinyint(1) DEFAULT '0',
  `imip_message` tinyint(1) DEFAULT '0',
  `imip_processed` tinyint(1) DEFAULT '0',
  `imip_error` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mail_messages_id_flags` (`mailbox_id`,`flag_important`,`flag_deleted`,`flag_seen`),
  KEY `mail_messages_id_flags2` (`mailbox_id`,`flag_deleted`,`flag_flagged`),
  KEY `mail_messages_mailbox_id` (`mailbox_id`),
  KEY `mail_msg_thrd_root_snt_idx` (`mailbox_id`,`thread_root_id`(64),`sent_at`),
  KEY `mail_messages_mb_id_uid` (`mailbox_id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_messages`
--

LOCK TABLES `oc_mail_messages` WRITE;
/*!40000 ALTER TABLE `oc_mail_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_provisionings`
--

DROP TABLE IF EXISTS `oc_mail_provisionings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_provisionings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provisioning_domain` varchar(63) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `email_template` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imap_user` varchar(128) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imap_host` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imap_port` smallint unsigned NOT NULL,
  `imap_ssl_mode` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `smtp_user` varchar(128) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `smtp_host` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `smtp_port` smallint unsigned NOT NULL,
  `smtp_ssl_mode` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sieve_enabled` tinyint(1) DEFAULT '0',
  `sieve_user` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_host` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `sieve_port` smallint unsigned DEFAULT NULL,
  `sieve_ssl_mode` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `ldap_aliases_provisioning` tinyint(1) DEFAULT '0',
  `ldap_aliases_attribute` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_provsng_dm_idx` (`provisioning_domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_provisionings`
--

LOCK TABLES `oc_mail_provisionings` WRITE;
/*!40000 ALTER TABLE `oc_mail_provisionings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_provisionings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_recipients`
--

DROP TABLE IF EXISTS `oc_mail_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_recipients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `local_message_id` int DEFAULT NULL,
  `message_id` int DEFAULT NULL,
  `type` int NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_recipient_msg_id_idx` (`message_id`),
  KEY `mail_recipient_email_idx` (`email`),
  KEY `IDX_715DB7E31594979` (`local_message_id`),
  CONSTRAINT `recipient_local_message` FOREIGN KEY (`local_message_id`) REFERENCES `oc_mail_local_messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_recipients`
--

LOCK TABLES `oc_mail_recipients` WRITE;
/*!40000 ALTER TABLE `oc_mail_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_tags`
--

DROP TABLE IF EXISTS `oc_mail_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `imap_label` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `color` varchar(9) COLLATE utf8mb4_bin DEFAULT '#fff',
  `is_default_tag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_msg_tags_usr_lbl_idx` (`user_id`,`imap_label`),
  KEY `mail_msg_tags_usr_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_tags`
--

LOCK TABLES `oc_mail_tags` WRITE;
/*!40000 ALTER TABLE `oc_mail_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_trusted_senders`
--

DROP TABLE IF EXISTS `oc_mail_trusted_senders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mail_trusted_senders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'individual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_trusted_sender_uniq` (`email`,`user_id`),
  KEY `mail_trusted_senders_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_trusted_senders`
--

LOCK TABLES `oc_mail_trusted_senders` WRITE;
/*!40000 ALTER TABLE `oc_mail_trusted_senders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_trusted_senders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_migrations`
--

DROP TABLE IF EXISTS `oc_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_migrations` (
  `app` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`app`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_migrations`
--

LOCK TABLES `oc_migrations` WRITE;
/*!40000 ALTER TABLE `oc_migrations` DISABLE KEYS */;
INSERT INTO `oc_migrations` VALUES ('activity','2006Date20170808154933'),('activity','2006Date20170808155040'),('activity','2006Date20170919095939'),('activity','2007Date20181107114613'),('activity','2008Date20181011095117'),('activity','2010Date20190416112817'),('activity','2011Date20201006132544'),('activity','2011Date20201006132545'),('activity','2011Date20201006132546'),('activity','2011Date20201006132547'),('activity','2011Date20201207091915'),('calendar','2040Date20210908101001'),('calendar','3000Date20211109132439'),('calendar','3010Date20220111090252'),('circles','0022Date20220526111723'),('circles','0022Date20220526113601'),('circles','0022Date20220703115023'),('circles','0023Date20211216113101'),('circles','0024Date20220203123901'),('circles','0024Date20220203123902'),('circles','0024Date20220317190331'),('contactsinteraction','010000Date20200304152605'),('core','13000Date20170705121758'),('core','13000Date20170718121200'),('core','13000Date20170814074715'),('core','13000Date20170919121250'),('core','13000Date20170926101637'),('core','14000Date20180129121024'),('core','14000Date20180404140050'),('core','14000Date20180516101403'),('core','14000Date20180518120534'),('core','14000Date20180522074438'),('core','14000Date20180626223656'),('core','14000Date20180710092004'),('core','14000Date20180712153140'),('core','15000Date20180926101451'),('core','15000Date20181015062942'),('core','15000Date20181029084625'),('core','16000Date20190207141427'),('core','16000Date20190212081545'),('core','16000Date20190427105638'),('core','16000Date20190428150708'),('core','17000Date20190514105811'),('core','18000Date20190920085628'),('core','18000Date20191014105105'),('core','18000Date20191204114856'),('core','19000Date20200211083441'),('core','20000Date20201109081915'),('core','20000Date20201109081918'),('core','20000Date20201109081919'),('core','20000Date20201111081915'),('core','21000Date20201120141228'),('core','21000Date20201202095923'),('core','21000Date20210119195004'),('core','21000Date20210309185126'),('core','21000Date20210309185127'),('core','22000Date20210216080825'),('core','23000Date20210721100600'),('core','23000Date20210906132259'),('core','23000Date20210930122352'),('core','23000Date20211203110726'),('core','23000Date20211213203940'),('core','24000Date20211210141942'),('core','24000Date20211213081506'),('core','24000Date20211213081604'),('core','24000Date20211222112246'),('core','24000Date20211230140012'),('core','24000Date20220131153041'),('core','24000Date20220202150027'),('core','24000Date20220404230027'),('core','24000Date20220425072957'),('core','25000Date20220515204012'),('core','25000Date20220602190540'),('core','25000Date20221007010957'),('dav','1004Date20170825134824'),('dav','1004Date20170919104507'),('dav','1004Date20170924124212'),('dav','1004Date20170926103422'),('dav','1005Date20180413093149'),('dav','1005Date20180530124431'),('dav','1006Date20180619154313'),('dav','1006Date20180628111625'),('dav','1008Date20181030113700'),('dav','1008Date20181105104826'),('dav','1008Date20181105104833'),('dav','1008Date20181105110300'),('dav','1008Date20181105112049'),('dav','1008Date20181114084440'),('dav','1011Date20190725113607'),('dav','1011Date20190806104428'),('dav','1012Date20190808122342'),('dav','1016Date20201109085907'),('dav','1017Date20210216083742'),('dav','1018Date20210312100735'),('dav','1024Date20211221144219'),('federatedfilesharing','1010Date20200630191755'),('federatedfilesharing','1011Date20201120125158'),('federation','1010Date20200630191302'),('files','11301Date20191205150729'),('files','12101Date20221011153334'),('files_sharing','11300Date20201120141438'),('files_sharing','21000Date20201223143245'),('files_sharing','22000Date20210216084241'),('files_sharing','24000Date20220208195521'),('files_sharing','24000Date20220404142216'),('files_trashbin','1010Date20200630192639'),('mail','0100Date20180825194217'),('mail','0110Date20180825195812'),('mail','0110Date20180825201241'),('mail','0130Date20190408134101'),('mail','0156Date20190828140357'),('mail','0161Date20190902103559'),('mail','0161Date20190902103701'),('mail','0161Date20190902114635'),('mail','0180Date20190927124207'),('mail','0190Date20191118160843'),('mail','0210Date20191212144925'),('mail','1020Date20191002091034'),('mail','1020Date20191002091035'),('mail','1020Date20200206134751'),('mail','1030Date20200228105714'),('mail','1040Date20200422130220'),('mail','1040Date20200422142920'),('mail','1040Date20200506111214'),('mail','1040Date20200515080614'),('mail','1040Date20200529124657'),('mail','1050Date20200624101359'),('mail','1050Date20200831124954'),('mail','1050Date20200921141700'),('mail','1050Date20200923180030'),('mail','1060Date20201015084952'),('mail','1080Date20201119084820'),('mail','1080Date20210108093802'),('mail','1090Date20210127160127'),('mail','1090Date20210216154409'),('mail','1096Date20210407150016'),('mail','1100Date20210304143008'),('mail','1100Date20210317164707'),('mail','1100Date20210326103929'),('mail','1100Date20210409091311'),('mail','1100Date20210419080523'),('mail','1100Date20210419121734'),('mail','1100Date20210421113423'),('mail','1100Date20210512142306'),('mail','1101Date20210616141806'),('mail','1105Date20210922104324'),('mail','1110Date20210908114229'),('mail','1115Date20211216144446'),('mail','1120Date20220223094709'),('mail','1124Date20220531094751'),('mail','1124Date20220601084530'),('mail','1130Date20220412111833'),('mail','1130Date20220520062301'),('mail','1140Date20220628174152'),('mail','1140Date20220701103556'),('mail','1140Date20220808203258'),('mail','1140Date20221027171138'),('mail','1140Date20221113205737'),('mail','2000Date20220908130842'),('mail','2010Date20221002201527'),('mail','2100Date20221013143851'),('notifications','2004Date20190107135757'),('notifications','2010Date20210218082811'),('notifications','2010Date20210218082855'),('notifications','2011Date20210930134607'),('notifications','2011Date20220826074907'),('oauth2','010401Date20181207190718'),('oauth2','010402Date20190107124745'),('photos','20000Date20220727125801'),('photos','20001Date20220830131446'),('privacy','100Date20190217131943'),('richdocuments','2060Date20200302131958'),('richdocuments','2060Date20200302132145'),('richdocuments','30704Date20200626072306'),('richdocuments','30709Date20201111104147'),('richdocuments','30717Date20210310164901'),('richdocuments','50200Date20211220212457'),('spreed','10000Date20200819121721'),('spreed','10000Date20201012144235'),('spreed','10000Date20201015134000'),('spreed','10000Date20201015143852'),('spreed','10000Date20201015150000'),('spreed','11000Date20200922161218'),('spreed','11000Date20201011082810'),('spreed','11000Date20201201102528'),('spreed','11000Date20201204110210'),('spreed','11000Date20201209142525'),('spreed','11000Date20201209142526'),('spreed','11001Date20210211111527'),('spreed','11001Date20210212105406'),('spreed','12000Date20210217134030'),('spreed','12000Date20210401124139'),('spreed','12000Date20210528100404'),('spreed','13000Date20210625232111'),('spreed','13000Date20210901164235'),('spreed','13000Date20210921142733'),('spreed','13000Date20211007192733'),('spreed','14000Date20211203132513'),('spreed','14000Date20220217115327'),('spreed','14000Date20220328153054'),('spreed','14000Date20220330141647'),('spreed','15000Date20220427183026'),('spreed','15000Date20220503121308'),('spreed','15000Date20220506005058'),('spreed','2000Date20170707093535'),('spreed','2000Date20171026140256'),('spreed','2000Date20171026140257'),('spreed','2001Date20170707115443'),('spreed','2001Date20170913104501'),('spreed','2001Date20170921145301'),('spreed','2001Date20170929092606'),('spreed','2001Date20171009132424'),('spreed','2001Date20171026134605'),('spreed','2001Date20171026141336'),('spreed','2001Date20171031102049'),('spreed','2001Date20180103144447'),('spreed','2001Date20180103150836'),('spreed','3002Date20180319104030'),('spreed','3003Date20180707222130'),('spreed','3003Date20180718112436'),('spreed','3003Date20180718133519'),('spreed','3003Date20180720162342'),('spreed','3003Date20180722152733'),('spreed','3003Date20180722152849'),('spreed','3003Date20180730080327'),('spreed','4099Date20181001123058'),('spreed','5099Date20190121102337'),('spreed','5099Date20190319134820'),('spreed','6099Date20190627172429'),('spreed','7000Date20190717141457'),('spreed','7000Date20190724121136'),('spreed','7000Date20190724121137'),('spreed','8000Date20200331144101'),('spreed','8000Date20200402124456'),('spreed','8000Date20200407073807'),('spreed','8000Date20200407115318'),('text','010000Date20190617184535'),('text','030001Date20200402075029'),('text','030201Date20201116110353'),('text','030201Date20201116123153'),('text','030501Date20220202101853'),('twofactor_backupcodes','1002Date20170607104347'),('twofactor_backupcodes','1002Date20170607113030'),('twofactor_backupcodes','1002Date20170919123342'),('twofactor_backupcodes','1002Date20170926101419'),('twofactor_backupcodes','1002Date20180821043638'),('user_status','0001Date20200602134824'),('user_status','0002Date20200902144824'),('user_status','1000Date20201111130204'),('user_status','2301Date20210809144824'),('workflowengine','2000Date20190808074233'),('workflowengine','2200Date20210805101925');
/*!40000 ALTER TABLE `oc_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mimetypes`
--

DROP TABLE IF EXISTS `oc_mimetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mimetypes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mimetype` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mimetype_id_index` (`mimetype`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mimetypes`
--

LOCK TABLES `oc_mimetypes` WRITE;
/*!40000 ALTER TABLE `oc_mimetypes` DISABLE KEYS */;
INSERT INTO `oc_mimetypes` VALUES (5,'application'),(18,'application/javascript'),(20,'application/json'),(7,'application/octet-stream'),(16,'application/pdf'),(6,'application/vnd.oasis.opendocument.graphics'),(12,'application/vnd.oasis.opendocument.presentation'),(11,'application/vnd.oasis.opendocument.spreadsheet'),(8,'application/vnd.oasis.opendocument.text'),(17,'application/vnd.openxmlformats-officedocument.wordprocessingml.document'),(19,'application/x-gzip'),(1,'httpd'),(2,'httpd/unix-directory'),(3,'image'),(15,'image/jpeg'),(4,'image/png'),(21,'image/svg+xml'),(9,'text'),(10,'text/markdown'),(13,'video'),(14,'video/mp4');
/*!40000 ALTER TABLE `oc_mimetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mounts`
--

DROP TABLE IF EXISTS `oc_mounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_mounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `storage_id` bigint NOT NULL,
  `root_id` bigint NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `mount_point` varchar(4000) COLLATE utf8mb4_bin NOT NULL,
  `mount_id` bigint DEFAULT NULL,
  `mount_provider_class` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mounts_user_root_index` (`user_id`,`root_id`),
  KEY `mounts_storage_index` (`storage_id`),
  KEY `mounts_root_index` (`root_id`),
  KEY `mounts_mount_id_index` (`mount_id`),
  KEY `mounts_class_index` (`mount_provider_class`),
  KEY `mount_user_storage` (`storage_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mounts`
--

LOCK TABLES `oc_mounts` WRITE;
/*!40000 ALTER TABLE `oc_mounts` DISABLE KEYS */;
INSERT INTO `oc_mounts` VALUES (1,1,1,'admin','/admin/',NULL,'OC\\Files\\Mount\\LocalHomeMountProvider'),(2,3,114,'melanie','/melanie/',NULL,'OC\\Files\\Mount\\LocalHomeMountProvider'),(3,4,119,'ruben','/ruben/',NULL,'OC\\Files\\Mount\\LocalHomeMountProvider'),(4,5,124,'martin','/martin/',NULL,'OC\\Files\\Mount\\LocalHomeMountProvider');
/*!40000 ALTER TABLE `oc_mounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications`
--

DROP TABLE IF EXISTS `oc_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `timestamp` int NOT NULL DEFAULT '0',
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `subject` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `subject_parameters` longtext COLLATE utf8mb4_bin,
  `message` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `message_parameters` longtext COLLATE utf8mb4_bin,
  `link` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `icon` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `actions` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`notification_id`),
  KEY `oc_notifications_app` (`app`),
  KEY `oc_notifications_user` (`user`),
  KEY `oc_notifications_timestamp` (`timestamp`),
  KEY `oc_notifications_object` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications`
--

LOCK TABLES `oc_notifications` WRITE;
/*!40000 ALTER TABLE `oc_notifications` DISABLE KEYS */;
INSERT INTO `oc_notifications` VALUES (1,'firstrunwizard','admin',1669041737,'app','recognize','apphint-recognize','[]','','[]','','','[]'),(2,'firstrunwizard','admin',1669041737,'app','groupfolders','apphint-groupfolders','[]','','[]','','','[]'),(3,'firstrunwizard','admin',1669041737,'app','forms','apphint-forms','[]','','[]','','','[]'),(4,'firstrunwizard','admin',1669041737,'app','deck','apphint-deck','[]','','[]','','','[]'),(5,'firstrunwizard','admin',1669041737,'app','tasks','apphint-tasks','[]','','[]','','','[]'),(6,'updatenotification','admin',1671559737,'core','25.0.2.3','update_available','{\"version\":\"Nextcloud 25.0.2\"}','','[]','','','[]'),(7,'updatenotification','admin',1671559739,'calendar','4.1.1','update_available','[]','','[]','','','[]'),(8,'updatenotification','admin',1671559739,'contacts','5.0.2','update_available','[]','','[]','','','[]'),(9,'updatenotification','admin',1671559739,'mail','2.2.1','update_available','[]','','[]','','','[]'),(10,'updatenotification','admin',1671559739,'richdocuments','7.0.2','update_available','[]','','[]','','','[]'),(11,'updatenotification','admin',1671559739,'spreed','15.0.2','update_available','[]','','[]','','','[]');
/*!40000 ALTER TABLE `oc_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications_pushhash`
--

DROP TABLE IF EXISTS `oc_notifications_pushhash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_notifications_pushhash` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `token` int NOT NULL DEFAULT '0',
  `deviceidentifier` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `devicepublickey` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `devicepublickeyhash` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `pushtokenhash` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `proxyserver` varchar(256) COLLATE utf8mb4_bin NOT NULL,
  `apptype` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT 'unknown',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oc_npushhash_uid` (`uid`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications_pushhash`
--

LOCK TABLES `oc_notifications_pushhash` WRITE;
/*!40000 ALTER TABLE `oc_notifications_pushhash` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_notifications_pushhash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications_settings`
--

DROP TABLE IF EXISTS `oc_notifications_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_notifications_settings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `batch_time` int NOT NULL DEFAULT '0',
  `last_send_id` bigint NOT NULL DEFAULT '0',
  `next_send_time` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `notset_user` (`user_id`),
  KEY `notset_nextsend` (`next_send_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications_settings`
--

LOCK TABLES `oc_notifications_settings` WRITE;
/*!40000 ALTER TABLE `oc_notifications_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_notifications_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_oauth2_access_tokens`
--

DROP TABLE IF EXISTS `oc_oauth2_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_oauth2_access_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `token_id` int NOT NULL,
  `client_id` int NOT NULL,
  `hashed_code` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `encrypted_token` varchar(786) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_access_hash_idx` (`hashed_code`),
  KEY `oauth2_access_client_id_idx` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_oauth2_access_tokens`
--

LOCK TABLES `oc_oauth2_access_tokens` WRITE;
/*!40000 ALTER TABLE `oc_oauth2_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oauth2_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_oauth2_clients`
--

DROP TABLE IF EXISTS `oc_oauth2_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_oauth2_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8mb4_bin NOT NULL,
  `client_identifier` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `secret` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_client_id_idx` (`client_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_oauth2_clients`
--

LOCK TABLES `oc_oauth2_clients` WRITE;
/*!40000 ALTER TABLE `oc_oauth2_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oauth2_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_open_local_editor`
--

DROP TABLE IF EXISTS `oc_open_local_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_open_local_editor` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `path_hash` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `expiration_time` bigint unsigned NOT NULL,
  `token` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openlocal_user_path_token` (`user_id`,`path_hash`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_open_local_editor`
--

LOCK TABLES `oc_open_local_editor` WRITE;
/*!40000 ALTER TABLE `oc_open_local_editor` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_open_local_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_photos_albums`
--

DROP TABLE IF EXISTS `oc_photos_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_photos_albums` (
  `album_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `created` bigint NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `last_added_photo` bigint NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `pa_user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_photos_albums`
--

LOCK TABLES `oc_photos_albums` WRITE;
/*!40000 ALTER TABLE `oc_photos_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_photos_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_photos_albums_files`
--

DROP TABLE IF EXISTS `oc_photos_albums_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_photos_albums_files` (
  `album_file_id` bigint NOT NULL AUTO_INCREMENT,
  `album_id` bigint NOT NULL,
  `file_id` bigint NOT NULL,
  `added` bigint NOT NULL,
  `owner` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`album_file_id`),
  UNIQUE KEY `paf_album_file` (`album_id`,`file_id`),
  KEY `paf_folder` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_photos_albums_files`
--

LOCK TABLES `oc_photos_albums_files` WRITE;
/*!40000 ALTER TABLE `oc_photos_albums_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_photos_albums_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_photos_collaborators`
--

DROP TABLE IF EXISTS `oc_photos_collaborators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_photos_collaborators` (
  `album_id` bigint NOT NULL,
  `collaborator_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `collaborator_type` int NOT NULL,
  UNIQUE KEY `collaborators_unique_idx` (`album_id`,`collaborator_id`,`collaborator_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_photos_collaborators`
--

LOCK TABLES `oc_photos_collaborators` WRITE;
/*!40000 ALTER TABLE `oc_photos_collaborators` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_photos_collaborators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_preferences`
--

DROP TABLE IF EXISTS `oc_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_preferences` (
  `userid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `appid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`userid`,`appid`,`configkey`),
  KEY `preferences_app_key` (`appid`,`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_preferences`
--

LOCK TABLES `oc_preferences` WRITE;
/*!40000 ALTER TABLE `oc_preferences` DISABLE KEYS */;
INSERT INTO `oc_preferences` VALUES ('admin','activity','configured','yes'),('admin','avatar','generated','true'),('admin','core','lang','es'),('admin','core','templateDirectory','Plantillas/'),('admin','core','timezone','Europe/Madrid'),('admin','dashboard','firstRun','0'),('admin','firstrunwizard','apphint','18'),('admin','firstrunwizard','show','0'),('admin','login','lastLogin','1671558729'),('admin','password_policy','failedLoginAttempts','0'),('admin','spreed','changelog','43'),('martin','activity','configured','yes'),('martin','avatar','generated','true'),('martin','core','lang','en'),('martin','core','templateDirectory','Templates/'),('martin','core','timezone','Europe/Madrid'),('martin','dashboard','firstRun','0'),('martin','files','quota','none'),('martin','firstrunwizard','show','0'),('martin','login','lastLogin','1671559729'),('martin','login_token','6fpPdjBpYIISxuoL9ZZU3dAJx+tNuNmS','1671559729'),('martin','password_policy','failedLoginAttempts','0'),('martin','spreed','changelog','43'),('melanie','activity','configured','yes'),('melanie','avatar','generated','true'),('melanie','core','lang','en'),('melanie','core','templateDirectory','Templates/'),('melanie','core','timezone','Europe/Madrid'),('melanie','dashboard','firstRun','0'),('melanie','files','quota','none'),('melanie','firstrunwizard','show','0'),('melanie','login','lastLogin','1671558677'),('melanie','password_policy','failedLoginAttempts','0'),('melanie','spreed','changelog','43'),('ruben','activity','configured','yes'),('ruben','avatar','generated','true'),('ruben','core','lang','en'),('ruben','core','templateDirectory','Templates/'),('ruben','core','timezone','Europe/Madrid'),('ruben','dashboard','firstRun','0'),('ruben','files','quota','none'),('ruben','firstrunwizard','show','0'),('ruben','login','lastLogin','1671558709'),('ruben','password_policy','failedLoginAttempts','0'),('ruben','spreed','changelog','43');
/*!40000 ALTER TABLE `oc_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_privacy_admins`
--

DROP TABLE IF EXISTS `oc_privacy_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_privacy_admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `displayname` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_privacy_admins`
--

LOCK TABLES `oc_privacy_admins` WRITE;
/*!40000 ALTER TABLE `oc_privacy_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_privacy_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_profile_config`
--

DROP TABLE IF EXISTS `oc_profile_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_profile_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `config` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_config_user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_profile_config`
--

LOCK TABLES `oc_profile_config` WRITE;
/*!40000 ALTER TABLE `oc_profile_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_profile_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_properties`
--

DROP TABLE IF EXISTS `oc_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_properties` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertypath` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertyname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertyvalue` longtext COLLATE utf8mb4_bin NOT NULL,
  `valuetype` smallint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `property_index` (`userid`),
  KEY `properties_path_index` (`userid`,`propertypath`),
  KEY `properties_pathonly_index` (`propertypath`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_properties`
--

LOCK TABLES `oc_properties` WRITE;
/*!40000 ALTER TABLE `oc_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ratelimit_entries`
--

DROP TABLE IF EXISTS `oc_ratelimit_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_ratelimit_entries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `hash` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `delete_after` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ratelimit_hash` (`hash`),
  KEY `ratelimit_delete_after` (`delete_after`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ratelimit_entries`
--

LOCK TABLES `oc_ratelimit_entries` WRITE;
/*!40000 ALTER TABLE `oc_ratelimit_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_ratelimit_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_reactions`
--

DROP TABLE IF EXISTS `oc_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_reactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned NOT NULL,
  `message_id` bigint unsigned NOT NULL,
  `actor_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `actor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `reaction` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comment_reaction_unique` (`parent_id`,`actor_type`,`actor_id`,`reaction`),
  KEY `comment_reaction` (`reaction`),
  KEY `comment_reaction_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_reactions`
--

LOCK TABLES `oc_reactions` WRITE;
/*!40000 ALTER TABLE `oc_reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recent_contact`
--

DROP TABLE IF EXISTS `oc_recent_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_recent_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `actor_uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `federated_cloud_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `card` longblob NOT NULL,
  `last_contact` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recent_contact_actor_uid` (`actor_uid`),
  KEY `recent_contact_id_uid` (`id`,`actor_uid`),
  KEY `recent_contact_uid` (`uid`),
  KEY `recent_contact_email` (`email`),
  KEY `recent_contact_fed_id` (`federated_cloud_id`),
  KEY `recent_contact_last_contact` (`last_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recent_contact`
--

LOCK TABLES `oc_recent_contact` WRITE;
/*!40000 ALTER TABLE `oc_recent_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recent_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_richdocuments_assets`
--

DROP TABLE IF EXISTS `oc_richdocuments_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_richdocuments_assets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `fileid` bigint NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `timestamp` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rd_assets_token_idx` (`token`),
  UNIQUE KEY `rd_assets_timestamp_idx` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_richdocuments_assets`
--

LOCK TABLES `oc_richdocuments_assets` WRITE;
/*!40000 ALTER TABLE `oc_richdocuments_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_richdocuments_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_richdocuments_direct`
--

DROP TABLE IF EXISTS `oc_richdocuments_direct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_richdocuments_direct` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `fileid` bigint NOT NULL,
  `timestamp` bigint unsigned DEFAULT '0',
  `template_destination` bigint DEFAULT NULL,
  `template_id` bigint DEFAULT NULL,
  `share` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `initiator_host` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `initiator_token` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rd_direct_token_idx` (`token`),
  KEY `rd_direct_timestamp_idx` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_richdocuments_direct`
--

LOCK TABLES `oc_richdocuments_direct` WRITE;
/*!40000 ALTER TABLE `oc_richdocuments_direct` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_richdocuments_direct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_richdocuments_template`
--

DROP TABLE IF EXISTS `oc_richdocuments_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_richdocuments_template` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `fileid` bigint NOT NULL,
  `templateid` bigint NOT NULL,
  `timestamp` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rd_t_user_file` (`userid`,`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_richdocuments_template`
--

LOCK TABLES `oc_richdocuments_template` WRITE;
/*!40000 ALTER TABLE `oc_richdocuments_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_richdocuments_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_richdocuments_wopi`
--

DROP TABLE IF EXISTS `oc_richdocuments_wopi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_richdocuments_wopi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `editor_uid` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `guest_displayname` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `fileid` bigint NOT NULL,
  `version` bigint DEFAULT '0',
  `canwrite` tinyint(1) DEFAULT '0',
  `server_host` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'localhost',
  `token` varchar(32) COLLATE utf8mb4_bin DEFAULT '',
  `expiry` bigint unsigned DEFAULT NULL,
  `template_destination` bigint DEFAULT NULL,
  `template_id` bigint DEFAULT NULL,
  `hide_download` tinyint(1) DEFAULT '0',
  `direct` tinyint(1) DEFAULT '0',
  `remote_server` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `remote_server_token` varchar(32) COLLATE utf8mb4_bin DEFAULT '',
  `share` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `token_type` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rd_wopi_token_idx` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_richdocuments_wopi`
--

LOCK TABLES `oc_richdocuments_wopi` WRITE;
/*!40000 ALTER TABLE `oc_richdocuments_wopi` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_richdocuments_wopi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_schedulingobjects`
--

DROP TABLE IF EXISTS `oc_schedulingobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_schedulingobjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendardata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastmodified` int unsigned DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedulobj_principuri_index` (`principaluri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_schedulingobjects`
--

LOCK TABLES `oc_schedulingobjects` WRITE;
/*!40000 ALTER TABLE `oc_schedulingobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_schedulingobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_share`
--

DROP TABLE IF EXISTS `oc_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_share` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `share_type` smallint NOT NULL DEFAULT '0',
  `share_with` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uid_owner` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid_initiator` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `parent` bigint DEFAULT NULL,
  `item_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `item_source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `item_target` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `file_source` bigint DEFAULT NULL,
  `file_target` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `permissions` smallint NOT NULL DEFAULT '0',
  `stime` bigint NOT NULL DEFAULT '0',
  `accepted` smallint NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `mail_send` smallint NOT NULL DEFAULT '0',
  `share_name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `password_by_talk` tinyint(1) DEFAULT '0',
  `note` longtext COLLATE utf8mb4_bin,
  `hide_download` smallint DEFAULT '0',
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `attributes` json DEFAULT NULL,
  `password_expiration_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_share_type_index` (`item_type`,`share_type`),
  KEY `file_source_index` (`file_source`),
  KEY `token_index` (`token`),
  KEY `share_with_index` (`share_with`),
  KEY `parent_index` (`parent`),
  KEY `owner_index` (`uid_owner`),
  KEY `initiator_index` (`uid_initiator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_share`
--

LOCK TABLES `oc_share` WRITE;
/*!40000 ALTER TABLE `oc_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_share_external`
--

DROP TABLE IF EXISTS `oc_share_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_share_external` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parent` bigint DEFAULT '-1',
  `share_type` int DEFAULT NULL,
  `remote` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `remote_id` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `share_token` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(4000) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `mountpoint` varchar(4000) COLLATE utf8mb4_bin NOT NULL,
  `mountpoint_hash` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `accepted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_share_external`
--

LOCK TABLES `oc_share_external` WRITE;
/*!40000 ALTER TABLE `oc_share_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_share_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_storages`
--

DROP TABLE IF EXISTS `oc_storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_storages` (
  `numeric_id` bigint NOT NULL AUTO_INCREMENT,
  `id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `available` int NOT NULL DEFAULT '1',
  `last_checked` int DEFAULT NULL,
  PRIMARY KEY (`numeric_id`),
  UNIQUE KEY `storages_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_storages`
--

LOCK TABLES `oc_storages` WRITE;
/*!40000 ALTER TABLE `oc_storages` DISABLE KEYS */;
INSERT INTO `oc_storages` VALUES (1,'home::admin',1,NULL),(2,'local::/var/www/next07.domi.com/next07.domi.com/data/',1,NULL),(3,'home::melanie',1,NULL),(4,'home::ruben',1,NULL),(5,'home::martin',1,NULL);
/*!40000 ALTER TABLE `oc_storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_storages_credentials`
--

DROP TABLE IF EXISTS `oc_storages_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_storages_credentials` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `credentials` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stocred_ui` (`user`,`identifier`),
  KEY `stocred_user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_storages_credentials`
--

LOCK TABLES `oc_storages_credentials` WRITE;
/*!40000 ALTER TABLE `oc_storages_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_storages_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag`
--

DROP TABLE IF EXISTS `oc_systemtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_systemtag` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `visibility` smallint NOT NULL DEFAULT '1',
  `editable` smallint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_ident` (`name`,`visibility`,`editable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag`
--

LOCK TABLES `oc_systemtag` WRITE;
/*!40000 ALTER TABLE `oc_systemtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag_group`
--

DROP TABLE IF EXISTS `oc_systemtag_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_systemtag_group` (
  `systemtagid` bigint unsigned NOT NULL DEFAULT '0',
  `gid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`gid`,`systemtagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag_group`
--

LOCK TABLES `oc_systemtag_group` WRITE;
/*!40000 ALTER TABLE `oc_systemtag_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag_object_mapping`
--

DROP TABLE IF EXISTS `oc_systemtag_object_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_systemtag_object_mapping` (
  `objectid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `objecttype` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `systemtagid` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`objecttype`,`objectid`,`systemtagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag_object_mapping`
--

LOCK TABLES `oc_systemtag_object_mapping` WRITE;
/*!40000 ALTER TABLE `oc_systemtag_object_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag_object_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_attachments`
--

DROP TABLE IF EXISTS `oc_talk_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_talk_attachments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint unsigned NOT NULL,
  `message_id` bigint unsigned NOT NULL,
  `message_time` bigint unsigned NOT NULL,
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `actor_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `actor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `objects_in_room` (`room_id`,`object_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_attachments`
--

LOCK TABLES `oc_talk_attachments` WRITE;
/*!40000 ALTER TABLE `oc_talk_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_attendees`
--

DROP TABLE IF EXISTS `oc_talk_attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_talk_attendees` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint unsigned NOT NULL,
  `actor_type` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `actor_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `pin` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `participant_type` smallint unsigned NOT NULL DEFAULT '0',
  `favorite` tinyint(1) DEFAULT '0',
  `notification_level` int DEFAULT '0',
  `last_joined_call` int unsigned NOT NULL DEFAULT '0',
  `last_read_message` bigint DEFAULT '0',
  `last_mention_message` bigint DEFAULT '0',
  `read_privacy` smallint unsigned DEFAULT '0',
  `access_token` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `remote_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_mention_direct` bigint NOT NULL DEFAULT '0',
  `permissions` int NOT NULL DEFAULT '0',
  `notification_calls` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ta_ident` (`room_id`,`actor_type`,`actor_id`),
  KEY `ta_roompin` (`room_id`,`pin`),
  KEY `ta_room` (`room_id`),
  KEY `ta_actor` (`actor_type`,`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_attendees`
--

LOCK TABLES `oc_talk_attendees` WRITE;
/*!40000 ALTER TABLE `oc_talk_attendees` DISABLE KEYS */;
INSERT INTO `oc_talk_attendees` VALUES (1,1,'users','admin','admin',NULL,3,0,0,0,1,0,0,NULL,NULL,0,0,1),(2,2,'users','martin','martin',NULL,3,0,0,0,45,0,0,NULL,NULL,0,0,1),(3,3,'users','melanie','melanie',NULL,3,0,0,0,89,0,0,NULL,NULL,0,0,1),(4,4,'users','ruben','ruben',NULL,3,0,0,0,133,0,0,NULL,NULL,0,0,1);
/*!40000 ALTER TABLE `oc_talk_attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_bridges`
--

DROP TABLE IF EXISTS `oc_talk_bridges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_talk_bridges` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint unsigned NOT NULL,
  `json_values` longtext COLLATE utf8mb4_bin NOT NULL,
  `enabled` smallint unsigned NOT NULL DEFAULT '0',
  `pid` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbr_room_id` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_bridges`
--

LOCK TABLES `oc_talk_bridges` WRITE;
/*!40000 ALTER TABLE `oc_talk_bridges` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_bridges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_commands`
--

DROP TABLE IF EXISTS `oc_talk_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_talk_commands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `command` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `script` longtext COLLATE utf8mb4_bin NOT NULL,
  `response` int NOT NULL DEFAULT '1',
  `enabled` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_commands`
--

LOCK TABLES `oc_talk_commands` WRITE;
/*!40000 ALTER TABLE `oc_talk_commands` DISABLE KEYS */;
INSERT INTO `oc_talk_commands` VALUES (1,'','talk','help','help',1,3);
/*!40000 ALTER TABLE `oc_talk_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_internalsignaling`
--

DROP TABLE IF EXISTS `oc_talk_internalsignaling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_talk_internalsignaling` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `recipient` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `message` longtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tis_recipient_time` (`recipient`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_internalsignaling`
--

LOCK TABLES `oc_talk_internalsignaling` WRITE;
/*!40000 ALTER TABLE `oc_talk_internalsignaling` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_internalsignaling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_invitations`
--

DROP TABLE IF EXISTS `oc_talk_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_talk_invitations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint unsigned NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `access_token` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `remote_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CA0C61A054177093` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_invitations`
--

LOCK TABLES `oc_talk_invitations` WRITE;
/*!40000 ALTER TABLE `oc_talk_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_poll_votes`
--

DROP TABLE IF EXISTS `oc_talk_poll_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_talk_poll_votes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `poll_id` bigint NOT NULL,
  `room_id` bigint NOT NULL,
  `actor_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `actor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `option_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `talk_poll_vote` (`poll_id`,`actor_type`,`actor_id`),
  KEY `talk_vote_room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_poll_votes`
--

LOCK TABLES `oc_talk_poll_votes` WRITE;
/*!40000 ALTER TABLE `oc_talk_poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_poll_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_polls`
--

DROP TABLE IF EXISTS `oc_talk_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_talk_polls` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint NOT NULL,
  `question` longtext COLLATE utf8mb4_bin,
  `options` longtext COLLATE utf8mb4_bin,
  `votes` longtext COLLATE utf8mb4_bin,
  `num_voters` bigint DEFAULT '0',
  `actor_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `actor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` smallint DEFAULT '0',
  `result_mode` smallint DEFAULT '0',
  `max_votes` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `talk_poll_room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_polls`
--

LOCK TABLES `oc_talk_polls` WRITE;
/*!40000 ALTER TABLE `oc_talk_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_rooms`
--

DROP TABLE IF EXISTS `oc_talk_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_talk_rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `token` varchar(32) COLLATE utf8mb4_bin DEFAULT '',
  `type` int NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `active_since` datetime DEFAULT NULL,
  `active_guests` int unsigned NOT NULL DEFAULT '0',
  `last_activity` datetime DEFAULT NULL,
  `last_message` bigint DEFAULT '0',
  `object_type` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `object_id` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `read_only` int NOT NULL DEFAULT '0',
  `lobby_state` int NOT NULL DEFAULT '0',
  `lobby_timer` datetime DEFAULT NULL,
  `assigned_hpb` int DEFAULT NULL,
  `sip_enabled` smallint unsigned NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_bin,
  `listable` smallint unsigned DEFAULT '0',
  `call_flag` int NOT NULL DEFAULT '0',
  `default_permissions` int NOT NULL DEFAULT '0',
  `call_permissions` int NOT NULL DEFAULT '0',
  `remote_server` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `remote_token` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `message_expiration` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tr_room_token` (`token`),
  KEY `last_active` (`last_activity`),
  KEY `tr_listable` (`listable`),
  KEY `remote_id` (`remote_server`,`remote_token`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_rooms`
--

LOCK TABLES `oc_talk_rooms` WRITE;
/*!40000 ALTER TABLE `oc_talk_rooms` DISABLE KEYS */;
INSERT INTO `oc_talk_rooms` VALUES (1,'admin','p5remyi5',4,'',NULL,0,'2022-11-21 14:42:23',44,'','',1,0,NULL,NULL,0,NULL,0,0,0,0,NULL,NULL,0),(2,'martin','ym7qxovk',4,'',NULL,0,'2022-12-20 17:49:14',88,'','',1,0,NULL,NULL,0,NULL,0,0,0,0,NULL,NULL,0),(3,'melanie','qotccran',4,'',NULL,0,'2022-12-20 17:51:21',132,'','',1,0,NULL,NULL,0,NULL,0,0,0,0,NULL,NULL,0),(4,'ruben','usdapwvq',4,'',NULL,0,'2022-12-20 17:51:52',176,'','',1,0,NULL,NULL,0,NULL,0,0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `oc_talk_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_talk_sessions`
--

DROP TABLE IF EXISTS `oc_talk_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_talk_sessions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attendee_id` bigint unsigned NOT NULL,
  `session_id` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `in_call` int NOT NULL DEFAULT '0',
  `last_ping` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ts_session` (`session_id`),
  KEY `ts_in_call` (`in_call`),
  KEY `ts_last_ping` (`last_ping`),
  KEY `ts_attendee_id` (`attendee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_talk_sessions`
--

LOCK TABLES `oc_talk_sessions` WRITE;
/*!40000 ALTER TABLE `oc_talk_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_talk_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_documents`
--

DROP TABLE IF EXISTS `oc_text_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_text_documents` (
  `id` bigint unsigned NOT NULL,
  `current_version` bigint unsigned DEFAULT '0',
  `last_saved_version` bigint unsigned DEFAULT '0',
  `last_saved_version_time` bigint unsigned NOT NULL,
  `last_saved_version_etag` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `base_version_etag` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_documents`
--

LOCK TABLES `oc_text_documents` WRITE;
/*!40000 ALTER TABLE `oc_text_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_sessions`
--

DROP TABLE IF EXISTS `oc_text_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_text_sessions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `guest_name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `color` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL,
  `token` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `document_id` bigint NOT NULL,
  `last_contact` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rd_session_token_idx` (`token`),
  KEY `ts_lastcontact` (`last_contact`),
  KEY `ts_docid_lastcontact` (`document_id`,`last_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_sessions`
--

LOCK TABLES `oc_text_sessions` WRITE;
/*!40000 ALTER TABLE `oc_text_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_steps`
--

DROP TABLE IF EXISTS `oc_text_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_text_steps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `document_id` bigint unsigned NOT NULL,
  `session_id` bigint unsigned NOT NULL,
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  `version` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rd_steps_did_idx` (`document_id`),
  KEY `rd_steps_version_idx` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_steps`
--

LOCK TABLES `oc_text_steps` WRITE;
/*!40000 ALTER TABLE `oc_text_steps` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_trusted_servers`
--

DROP TABLE IF EXISTS `oc_trusted_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_trusted_servers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `url_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `token` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `shared_secret` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` int NOT NULL DEFAULT '2',
  `sync_token` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_hash` (`url_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_trusted_servers`
--

LOCK TABLES `oc_trusted_servers` WRITE;
/*!40000 ALTER TABLE `oc_trusted_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_trusted_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_twofactor_backupcodes`
--

DROP TABLE IF EXISTS `oc_twofactor_backupcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_twofactor_backupcodes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `code` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `used` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `twofactor_backupcodes_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_twofactor_backupcodes`
--

LOCK TABLES `oc_twofactor_backupcodes` WRITE;
/*!40000 ALTER TABLE `oc_twofactor_backupcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_twofactor_backupcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_twofactor_providers`
--

DROP TABLE IF EXISTS `oc_twofactor_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_twofactor_providers` (
  `provider_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `enabled` smallint NOT NULL,
  PRIMARY KEY (`provider_id`,`uid`),
  KEY `twofactor_providers_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_twofactor_providers`
--

LOCK TABLES `oc_twofactor_providers` WRITE;
/*!40000 ALTER TABLE `oc_twofactor_providers` DISABLE KEYS */;
INSERT INTO `oc_twofactor_providers` VALUES ('backup_codes','admin',0),('backup_codes','martin',0),('backup_codes','melanie',0),('backup_codes','ruben',0);
/*!40000 ALTER TABLE `oc_twofactor_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_status`
--

DROP TABLE IF EXISTS `oc_user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_user_status` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `status_timestamp` int unsigned NOT NULL,
  `is_user_defined` tinyint(1) DEFAULT NULL,
  `message_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `custom_icon` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `custom_message` longtext COLLATE utf8mb4_bin,
  `clear_at` int unsigned DEFAULT NULL,
  `is_backup` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_status_uid_ix` (`user_id`),
  KEY `user_status_clr_ix` (`clear_at`),
  KEY `user_status_tstmp_ix` (`status_timestamp`),
  KEY `user_status_iud_ix` (`is_user_defined`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_status`
--

LOCK TABLES `oc_user_status` WRITE;
/*!40000 ALTER TABLE `oc_user_status` DISABLE KEYS */;
INSERT INTO `oc_user_status` VALUES (1,'admin','online',1671559671,0,NULL,NULL,NULL,NULL,0),(2,'martin','away',1671560637,0,NULL,NULL,NULL,NULL,0),(3,'melanie','online',1671558681,0,NULL,NULL,NULL,NULL,0),(4,'ruben','online',1671558712,0,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `oc_user_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_transfer_owner`
--

DROP TABLE IF EXISTS `oc_user_transfer_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_user_transfer_owner` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `source_user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `target_user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `file_id` bigint NOT NULL,
  `node_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_transfer_owner`
--

LOCK TABLES `oc_user_transfer_owner` WRITE;
/*!40000 ALTER TABLE `oc_user_transfer_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_user_transfer_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_users`
--

DROP TABLE IF EXISTS `oc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_users` (
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `displayname` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid_lower` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `user_uid_lower` (`uid_lower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_users`
--

LOCK TABLES `oc_users` WRITE;
/*!40000 ALTER TABLE `oc_users` DISABLE KEYS */;
INSERT INTO `oc_users` VALUES ('admin',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$a1dudi5Lamk1YXVrQ2FOdw$SUHIBuVxyjiQrfoi/cmVyASUC9/XwKHBSLa3vthNDZk','admin'),('martin',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$b1pVQXdRSVVHcHpuMWNpYQ$srmdIVnnfMjjZiXTBfSvtLHAXY33yG9vfPF360L7uiM','martin'),('melanie',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$WU9XRzJzSmdaaElBcS5GQw$PX35k2k5qTyTtg/Oa8Of6xn2Ch+GnSnuoJpi21x2WAs','melanie'),('ruben',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$WFZES2x6UVNQOUZNaHl2TA$e9CLjsrFKcZU4RmTlH6kEyr9TryabQje6qahRXR84/k','ruben');
/*!40000 ALTER TABLE `oc_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_vcategory`
--

DROP TABLE IF EXISTS `oc_vcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_vcategory` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`),
  KEY `type_index` (`type`),
  KEY `category_index` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_vcategory`
--

LOCK TABLES `oc_vcategory` WRITE;
/*!40000 ALTER TABLE `oc_vcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_vcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_vcategory_to_object`
--

DROP TABLE IF EXISTS `oc_vcategory_to_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_vcategory_to_object` (
  `objid` bigint unsigned NOT NULL DEFAULT '0',
  `categoryid` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`,`objid`,`type`),
  KEY `vcategory_objectd_index` (`objid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_vcategory_to_object`
--

LOCK TABLES `oc_vcategory_to_object` WRITE;
/*!40000 ALTER TABLE `oc_vcategory_to_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_vcategory_to_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_webauthn`
--

DROP TABLE IF EXISTS `oc_webauthn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_webauthn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `public_key_credential_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webauthn_uid` (`uid`),
  KEY `webauthn_publicKeyCredentialId` (`public_key_credential_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_webauthn`
--

LOCK TABLES `oc_webauthn` WRITE;
/*!40000 ALTER TABLE `oc_webauthn` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_webauthn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_whats_new`
--

DROP TABLE IF EXISTS `oc_whats_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oc_whats_new` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '11',
  `etag` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `last_check` int unsigned NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `version` (`version`),
  KEY `version_etag_idx` (`version`,`etag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_whats_new`
--

LOCK TABLES `oc_whats_new` WRITE;
/*!40000 ALTER TABLE `oc_whats_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_whats_new` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-20 18:35:17