CREATE DATABASE  IF NOT EXISTS `cms_yii2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cms_yii2`;
-- MySQL dump 10.15  Distrib 10.0.20-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cms_yii2
-- ------------------------------------------------------
-- Server version	10.0.20-MariaDB-0ubuntu0.15.04.1

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
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('admin','187',1442055133),('operator','188',1442054212);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('/*',2,NULL,NULL,NULL,1442053761,1442053761),('/debug/*',2,NULL,NULL,NULL,1442053760,1442053760),('/debug/default/*',2,NULL,NULL,NULL,1442053759,1442053759),('/debug/default/db-explain',2,NULL,NULL,NULL,1442053759,1442053759),('/debug/default/download-mail',2,NULL,NULL,NULL,1442053759,1442053759),('/debug/default/index',2,NULL,NULL,NULL,1442053759,1442053759),('/debug/default/toolbar',2,NULL,NULL,NULL,1442053759,1442053759),('/debug/default/view',2,NULL,NULL,NULL,1442053759,1442053759),('/gii/*',2,NULL,NULL,NULL,1442053760,1442053760),('/gii/default/*',2,NULL,NULL,NULL,1442053760,1442053760),('/gii/default/action',2,NULL,NULL,NULL,1442053760,1442053760),('/gii/default/diff',2,NULL,NULL,NULL,1442053760,1442053760),('/gii/default/index',2,NULL,NULL,NULL,1442053760,1442053760),('/gii/default/preview',2,NULL,NULL,NULL,1442053760,1442053760),('/gii/default/view',2,NULL,NULL,NULL,1442053760,1442053760),('/rbac/*',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/assignment/*',2,NULL,NULL,NULL,1442053757,1442053757),('/rbac/assignment/assign',2,NULL,NULL,NULL,1442053757,1442053757),('/rbac/assignment/index',2,NULL,NULL,NULL,1442053757,1442053757),('/rbac/assignment/search',2,NULL,NULL,NULL,1442053757,1442053757),('/rbac/assignment/view',2,NULL,NULL,NULL,1442053757,1442053757),('/rbac/default/*',2,NULL,NULL,NULL,1442053757,1442053757),('/rbac/default/index',2,NULL,NULL,NULL,1442053757,1442053757),('/rbac/menu/*',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/menu/create',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/menu/delete',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/menu/index',2,NULL,NULL,NULL,1442053757,1442053757),('/rbac/menu/update',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/menu/view',2,NULL,NULL,NULL,1442053757,1442053757),('/rbac/permission/*',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/permission/assign',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/permission/create',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/permission/delete',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/permission/index',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/permission/search',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/permission/update',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/permission/view',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/role/*',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/role/assign',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/role/create',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/role/delete',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/role/index',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/role/search',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/role/update',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/role/view',2,NULL,NULL,NULL,1442053758,1442053758),('/rbac/route/*',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/route/assign',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/route/create',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/route/index',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/route/search',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/rule/*',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/rule/create',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/rule/delete',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/rule/index',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/rule/update',2,NULL,NULL,NULL,1442053759,1442053759),('/rbac/rule/view',2,NULL,NULL,NULL,1442053759,1442053759),('/site/*',2,NULL,NULL,NULL,1442053761,1442053761),('/site/about',2,NULL,NULL,NULL,1442053761,1442053761),('/site/captcha',2,NULL,NULL,NULL,1442053760,1442053760),('/site/contact',2,NULL,NULL,NULL,1442053761,1442053761),('/site/error',2,NULL,NULL,NULL,1442053760,1442053760),('/site/index',2,NULL,NULL,NULL,1442053760,1442053760),('/site/login',2,NULL,NULL,NULL,1442053760,1442053760),('/site/logout',2,NULL,NULL,NULL,1442053761,1442053761),('/site/request-password-reset',2,NULL,NULL,NULL,1442053761,1442053761),('/site/reset-password',2,NULL,NULL,NULL,1442053761,1442053761),('/site/signup',2,NULL,NULL,NULL,1442053761,1442053761),('admin',1,'admin role',NULL,NULL,1442054065,1442054065),('operator',1,'operator role',NULL,NULL,1442054131,1442054131);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('admin','/*'),('operator','/site/about'),('operator','/site/index');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,2,1,8,0,'Countries','countries'),(3,2,2,3,1,'Russia','russia'),(4,2,4,5,1,'Australia','australia'),(5,2,6,7,1,'Indonesia','indonesia'),(6,6,1,10,0,'City','city'),(7,6,2,3,1,'Jakarta','jakarta'),(8,6,4,5,1,'Bandung','bandung'),(9,6,6,7,1,'Surabaya','surabaya'),(10,10,1,14,0,'Provinsi','provinsi'),(11,10,2,7,1,'Sumatra Barat','sumatra-barat'),(12,10,3,4,2,'Padang','padang'),(22,10,10,11,1,'Sumatra Utara','sumatra-utara'),(23,6,8,9,1,'Tangerang Selatan','tangerang-selatan'),(24,10,12,13,1,'Bengkulu','bengkulu'),(25,10,5,6,2,'Batusangkar','batusangkar');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Admin',NULL,'/rbac/assignment/index',NULL,NULL),(2,'Assignment',1,'/rbac/assignment/index',NULL,NULL),(3,'Role',1,'/rbac/role/index',NULL,NULL),(4,'Route',1,'/rbac/route/index',NULL,NULL),(5,'Menu',1,'/rbac/menu/index',NULL,NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1442053174),('m140506_102106_rbac_init',1442053224),('m140602_111327_create_menu_table',1442053177),('m150913_111942_create_category_table',1442143637);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category`
--

DROP TABLE IF EXISTS `post_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_posts` int(11) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category`
--

LOCK TABLES `post_category` WRITE;
/*!40000 ALTER TABLE `post_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_photo`
--

DROP TABLE IF EXISTS `post_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_posts` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `path` varchar(45) NOT NULL,
  `flag` tinytext COMMENT 'untuk menentukan foto mana yang menjadi foto utama',
  `created_by` varchar(45) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_photo_1_idx` (`id_posts`),
  CONSTRAINT `fk_post_photo_1` FOREIGN KEY (`id_posts`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_photo`
--

LOCK TABLES `post_photo` WRITE;
/*!40000 ALTER TABLE `post_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `keyword` varchar(45) DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  `status` enum('Publish','Draft','Delete') DEFAULT NULL COMMENT 'untuk headline news atau bukan',
  `slug` varchar(100) NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(45) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '	',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (187,'admin','alfarioekaputra@gmail.com','$2y$13$DWqbOvDMKLgGGRZ/i71vAuLOQwevnPJT9u.3T2fDLwROfpyQlPoF6','u5ULUpMN9yNira8L4yyIWIQXby13Rb2C',NULL,NULL,NULL,NULL,1442053621,1442053621,0,10),(188,'operator','operator@operator.com','$2y$13$ZJ08S/tdWxbzu4Ezxv5jduGCGBNoAz187BCWBoyKfRniO3Yee.lCW','VYcGxb1eiNpspXrgpsSwlIj-3sLhMXJX',NULL,NULL,NULL,NULL,1442054179,1442054179,0,10);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-14 23:26:38
