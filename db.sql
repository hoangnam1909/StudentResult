CREATE DATABASE  IF NOT EXISTS `result_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `result_management`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: result_management
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add class',7,'add_class'),(26,'Can change class',7,'change_class'),(27,'Can delete class',7,'delete_class'),(28,'Can view class',7,'view_class'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course'),(33,'Can add faculty',9,'add_faculty'),(34,'Can change faculty',9,'change_faculty'),(35,'Can delete faculty',9,'delete_faculty'),(36,'Can view faculty',9,'view_faculty'),(37,'Can add mark',10,'add_mark'),(38,'Can change mark',10,'change_mark'),(39,'Can delete mark',10,'delete_mark'),(40,'Can view mark',10,'view_mark'),(41,'Can add subject',11,'add_subject'),(42,'Can change subject',11,'change_subject'),(43,'Can delete subject',11,'delete_subject'),(44,'Can view subject',11,'view_subject'),(45,'Can add topic',12,'add_topic'),(46,'Can change topic',12,'change_topic'),(47,'Can delete topic',12,'delete_topic'),(48,'Can view topic',12,'view_topic'),(49,'Can add teacher',13,'add_teacher'),(50,'Can change teacher',13,'change_teacher'),(51,'Can delete teacher',13,'delete_teacher'),(52,'Can view teacher',13,'view_teacher'),(53,'Can add student',14,'add_student'),(54,'Can change student',14,'change_student'),(55,'Can delete student',14,'delete_student'),(56,'Can view student',14,'view_student'),(57,'Can add mark detail',15,'add_markdetail'),(58,'Can change mark detail',15,'change_markdetail'),(59,'Can delete mark detail',15,'delete_markdetail'),(60,'Can view mark detail',15,'view_markdetail'),(61,'Can add comment',16,'add_comment'),(62,'Can change comment',16,'change_comment'),(63,'Can delete comment',16,'delete_comment'),(64,'Can view comment',16,'view_comment'),(65,'Can add application',17,'add_application'),(66,'Can change application',17,'change_application'),(67,'Can delete application',17,'delete_application'),(68,'Can view application',17,'view_application'),(69,'Can add access token',18,'add_accesstoken'),(70,'Can change access token',18,'change_accesstoken'),(71,'Can delete access token',18,'delete_accesstoken'),(72,'Can view access token',18,'view_accesstoken'),(73,'Can add grant',19,'add_grant'),(74,'Can change grant',19,'change_grant'),(75,'Can delete grant',19,'delete_grant'),(76,'Can view grant',19,'view_grant'),(77,'Can add refresh token',20,'add_refreshtoken'),(78,'Can change refresh token',20,'change_refreshtoken'),(79,'Can delete refresh token',20,'delete_refreshtoken'),(80,'Can view refresh token',20,'view_refreshtoken'),(81,'Can add id token',21,'add_idtoken'),(82,'Can change id token',21,'change_idtoken'),(83,'Can delete id token',21,'delete_idtoken'),(84,'Can view id token',21,'view_idtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_management_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_management_user_id` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-04-30 14:43:28.722381','1','Công nghệ thông tin',1,'[{\"added\": {}}]',9,1),(2,'2023-04-30 14:43:53.885911','ITEC3408','ITEC3408 - Lập trình mạng',1,'[{\"added\": {}}]',11,1),(3,'2023-04-30 14:44:04.784114','ITEC3421','ITEC3421 - Các công nghệ lập trình hiện đại',1,'[{\"added\": {}}]',11,1),(4,'2023-04-30 14:44:15.102321','ITEC3406','ITEC3406 - Lập trình cơ sở dữ liệu',1,'[{\"added\": {}}]',11,1),(5,'2023-04-30 14:44:24.388426','ITEC3417','ITEC3417 - Khai phá dữ liệu',1,'[{\"added\": {}}]',11,1),(6,'2023-04-30 14:44:40.503628','ITEC4401','ITEC4401 - Đồ án ngành',1,'[{\"added\": {}}]',11,1),(7,'2023-04-30 14:44:50.891397','GLAW1315','GLAW1315 - Pháp luật đại cương',1,'[{\"added\": {}}]',11,1),(8,'2023-04-30 14:44:59.314449','ITEC3412','ITEC3412 - An toàn hệ thống thông tin',1,'[{\"added\": {}}]',11,1),(9,'2023-04-30 14:45:08.252419','ITEC4407','ITEC4407 - Lập trình Java',1,'[{\"added\": {}}]',11,1),(10,'2023-04-30 14:45:22.408695','ITEC4415','ITEC4415 - Kiểm thử phần mềm',1,'[{\"added\": {}}]',11,1),(11,'2023-04-30 14:45:45.990658','CS2001','CS2001',1,'[{\"added\": {}}]',7,1),(12,'2023-04-30 14:45:53.484322','CS1901','CS1901',1,'[{\"added\": {}}]',7,1),(13,'2023-04-30 14:45:55.794585','IT1903','IT1903',1,'[{\"added\": {}}]',7,1),(14,'2023-04-30 14:46:05.395545','IT1801','IT1801',1,'[{\"added\": {}}]',7,1),(15,'2023-04-30 14:46:09.514477','IT1902','IT1902',1,'[{\"added\": {}}]',7,1),(16,'2023-04-30 14:46:22.821397','IT1901','IT1901',1,'[{\"added\": {}}]',7,1),(17,'2023-04-30 14:46:28.641353','IM1901','IM1901',1,'[{\"added\": {}}]',7,1),(18,'2023-04-30 14:48:06.724439','2','Dương Hữu Thành - thanh.dh1 - thanh.dh1@ou.edu.vn',1,'[{\"added\": {}}]',6,1),(19,'2023-04-30 14:48:14.826540','thanh.dh1','thanh.dh1 - Dương Hữu Thành - thanh.dh1@ou.edu.vn',1,'[{\"added\": {}}]',13,1),(20,'2023-04-30 14:48:40.780713','3','Võ Thị Hồng Tuyết - tuyet.vth1 - tuyet.vth1@ou.edu.vn',1,'[{\"added\": {}}]',6,1),(21,'2023-04-30 14:48:42.179639','tuyet.vth1','tuyet.vth1 - Võ Thị Hồng Tuyết - tuyet.vth1@ou.edu.vn',1,'[{\"added\": {}}]',13,1),(22,'2023-04-30 14:50:07.664750','4','Lưu Quang Phương - phuong.lq1 - phuong.lq1@ou.edu.vn',1,'[{\"added\": {}}]',6,1),(23,'2023-04-30 14:50:09.979684','phuong.lq1','phuong.lq1 - Lưu Quang Phương - phuong.lq1@ou.edu.vn',1,'[{\"added\": {}}]',13,1),(24,'2023-04-30 15:02:56.691848','1','[ITEC3408] Lập trình mạng - CS2001',1,'[{\"added\": {}}]',8,1),(25,'2023-04-30 15:03:23.228087','2','[ITEC3421] Các công nghệ lập trình hiện đại - IT1903',1,'[{\"added\": {}}]',8,1),(26,'2023-04-30 15:04:47.426320','1','Nhắc học bù sáng mai thứ 7 (15/04)',1,'[{\"added\": {}}]',12,1),(27,'2023-04-30 15:05:06.999018','2','THÔNG BÁO NGHỈ SÁNG CHỦ NHẬT (12/02)',1,'[{\"added\": {}}]',12,1),(28,'2023-04-30 15:05:47.829120','3','[TB] V/v thực hiện bài kiểm tra trên máy 20/04/2023',1,'[{\"added\": {}}]',12,1),(29,'2023-04-30 15:06:10.800284','4','V/v THÔNG BÁO THAY ĐỔI Lịch thực hành ngày 06/04/2023, ngày 13/04/2023 & KIỂM TRA GK',1,'[{\"added\": {}}]',12,1),(30,'2023-04-30 15:06:33.794694','5','Xin các đề kiểm tra giữa kỳ của học kỳ trước',1,'[{\"added\": {}}]',12,1),(31,'2023-04-30 15:06:47.616898','6','Nộp bài tập về nhà trễ hạn',1,'[{\"added\": {}}]',12,1),(32,'2023-04-30 15:07:11.040289','1','Topic_id 5 - user_id 4 - 2023-04-30 15:07:11.039290+00:00',1,'[{\"added\": {}}]',16,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'management','class'),(16,'management','comment'),(8,'management','course'),(9,'management','faculty'),(10,'management','mark'),(15,'management','markdetail'),(14,'management','student'),(11,'management','subject'),(13,'management','teacher'),(12,'management','topic'),(6,'management','user'),(18,'oauth2_provider','accesstoken'),(17,'oauth2_provider','application'),(19,'oauth2_provider','grant'),(21,'oauth2_provider','idtoken'),(20,'oauth2_provider','refreshtoken'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-04-30 14:39:33.569832'),(2,'contenttypes','0002_remove_content_type_name','2023-04-30 14:39:33.613287'),(3,'auth','0001_initial','2023-04-30 14:39:33.817143'),(4,'auth','0002_alter_permission_name_max_length','2023-04-30 14:39:33.860843'),(5,'auth','0003_alter_user_email_max_length','2023-04-30 14:39:33.867689'),(6,'auth','0004_alter_user_username_opts','2023-04-30 14:39:33.874788'),(7,'auth','0005_alter_user_last_login_null','2023-04-30 14:39:33.882295'),(8,'auth','0006_require_contenttypes_0002','2023-04-30 14:39:33.886370'),(9,'auth','0007_alter_validators_add_error_messages','2023-04-30 14:39:33.895763'),(10,'auth','0008_alter_user_username_max_length','2023-04-30 14:39:33.905931'),(11,'auth','0009_alter_user_last_name_max_length','2023-04-30 14:39:33.913828'),(12,'auth','0010_alter_group_name_max_length','2023-04-30 14:39:33.935325'),(13,'auth','0011_update_proxy_permissions','2023-04-30 14:39:33.944171'),(14,'auth','0012_alter_user_first_name_max_length','2023-04-30 14:39:33.953265'),(15,'management','0001_initial','2023-04-30 14:39:35.105278'),(16,'admin','0001_initial','2023-04-30 14:39:35.207751'),(17,'admin','0002_logentry_remove_auto_add','2023-04-30 14:39:35.220762'),(18,'admin','0003_logentry_add_action_flag_choices','2023-04-30 14:39:35.232970'),(19,'oauth2_provider','0001_initial','2023-04-30 14:39:35.670874'),(20,'oauth2_provider','0002_auto_20190406_1805','2023-04-30 14:39:35.722225'),(21,'oauth2_provider','0003_auto_20201211_1314','2023-04-30 14:39:35.759702'),(22,'oauth2_provider','0004_auto_20200902_2022','2023-04-30 14:39:36.028678'),(23,'oauth2_provider','0005_auto_20211222_2352','2023-04-30 14:39:36.109150'),(24,'oauth2_provider','0006_alter_application_client_secret','2023-04-30 14:39:36.145297'),(25,'sessions','0001_initial','2023-04-30 14:39:36.174227'),(26,'management','0002_alter_mark_course_alter_mark_student','2023-04-30 15:16:52.886212');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('voxhg7gudix38d6apsa8iyns5fegkoec','.eJxVjMsOwiAQRf-FtSE87CAu3fcbyDAMUjWQlHZl_HfbpAvd3nPOfYuA61LC2nkOUxJXocXpd4tIT647SA-s9yap1WWeotwVedAux5b4dTvcv4OCvWw1sE8-5mwsOOUT28hE5DXDkM9sjFOZrBmygs1DBkTS4Ky7cPQ-QhafLwUWOLQ:1pt8Ds:WT19o8ZND6QXmRscyl4kjcyiH6srEvVNITHE7qEMSQg','2023-05-14 14:40:20.826415');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_class`
--

DROP TABLE IF EXISTS `management_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_class` (
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `management_class_faculty_id_1f5d0034_fk_management_faculty_id` (`faculty_id`),
  CONSTRAINT `management_class_faculty_id_1f5d0034_fk_management_faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `management_faculty` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_class`
--

LOCK TABLES `management_class` WRITE;
/*!40000 ALTER TABLE `management_class` DISABLE KEYS */;
INSERT INTO `management_class` VALUES ('2023-04-30 14:45:53.483320','2023-04-30 14:45:53.483320',1,'CS1901',1),('2023-04-30 14:45:45.989638','2023-04-30 14:45:45.989638',1,'CS2001',1),('2023-04-30 14:46:28.639350','2023-04-30 14:46:28.639350',1,'IM1901',1),('2023-04-30 14:46:05.394546','2023-04-30 14:46:05.394546',1,'IT1801',1),('2023-04-30 14:46:22.820401','2023-04-30 14:46:22.820401',1,'IT1901',1),('2023-04-30 14:46:09.513477','2023-04-30 14:46:09.513477',1,'IT1902',1),('2023-04-30 14:45:55.794585','2023-04-30 14:45:55.794585',1,'IT1903',1);
/*!40000 ALTER TABLE `management_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_comment`
--

DROP TABLE IF EXISTS `management_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `management_comment_topic_id_249ad124_fk_management_topic_id` (`topic_id`),
  KEY `management_comment_user_id_fb3999b9_fk_management_user_id` (`user_id`),
  CONSTRAINT `management_comment_topic_id_249ad124_fk_management_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `management_topic` (`id`),
  CONSTRAINT `management_comment_user_id_fb3999b9_fk_management_user_id` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_comment`
--

LOCK TABLES `management_comment` WRITE;
/*!40000 ALTER TABLE `management_comment` DISABLE KEYS */;
INSERT INTO `management_comment` VALUES (1,'2023-04-30 15:07:11.039290','2023-04-30 15:07:11.039290',1,'Chào em,\r\nĐề kiểm tra là các nội dung kiến thức đã được học, các bài tập các em đã được hướng dẫn & thực hiện, các bài tập gợi ý như thầy đã nói ở lớp em nhé.\r\n\r\nThầy.',5,4);
/*!40000 ALTER TABLE `management_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_course`
--

DROP TABLE IF EXISTS `management_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `result_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_class_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `management_course_subject_id_course_class_id_635f192c_uniq` (`subject_id`,`course_class_id`),
  KEY `management_course_teacher_id_62ed651c_fk_management_teacher_code` (`teacher_id`),
  KEY `management_course_course_class_id_b431b4eb_fk_managemen` (`course_class_id`),
  CONSTRAINT `management_course_course_class_id_b431b4eb_fk_managemen` FOREIGN KEY (`course_class_id`) REFERENCES `management_class` (`id`),
  CONSTRAINT `management_course_subject_id_f47327e7_fk_management_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `management_subject` (`id`),
  CONSTRAINT `management_course_teacher_id_62ed651c_fk_management_teacher_code` FOREIGN KEY (`teacher_id`) REFERENCES `management_teacher` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_course`
--

LOCK TABLES `management_course` WRITE;
/*!40000 ALTER TABLE `management_course` DISABLE KEYS */;
INSERT INTO `management_course` VALUES (1,'2023-04-30 15:02:56.684880','2023-04-30 15:02:56.684880',1,'2023-04-30 15:02:30.000000','2023-06-16 15:02:31.000000',0,'DRAFT','CS2001','ITEC3408','phuong.lq1'),(2,'2023-04-30 15:03:23.223050','2023-04-30 15:03:23.223050',1,'2023-04-30 15:03:09.000000','2023-04-30 15:03:09.000000',0,'DRAFT','IT1903','ITEC3421','thanh.dh1');
/*!40000 ALTER TABLE `management_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_course_students`
--

DROP TABLE IF EXISTS `management_course_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_course_students` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` bigint NOT NULL,
  `student_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `management_course_students_course_id_student_id_807610c6_uniq` (`course_id`,`student_id`),
  KEY `management_course_st_student_id_a4d8d3a2_fk_managemen` (`student_id`),
  CONSTRAINT `management_course_st_course_id_42f4619e_fk_managemen` FOREIGN KEY (`course_id`) REFERENCES `management_course` (`id`),
  CONSTRAINT `management_course_st_student_id_a4d8d3a2_fk_managemen` FOREIGN KEY (`student_id`) REFERENCES `management_student` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_course_students`
--

LOCK TABLES `management_course_students` WRITE;
/*!40000 ALTER TABLE `management_course_students` DISABLE KEYS */;
INSERT INTO `management_course_students` VALUES (2,1,'1951052099'),(3,1,'1951052123'),(1,1,'1951052125'),(5,2,'1951052099'),(6,2,'1951052123'),(4,2,'1951052125');
/*!40000 ALTER TABLE `management_course_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_faculty`
--

DROP TABLE IF EXISTS `management_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_faculty` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_faculty`
--

LOCK TABLES `management_faculty` WRITE;
/*!40000 ALTER TABLE `management_faculty` DISABLE KEYS */;
INSERT INTO `management_faculty` VALUES (1,'2023-04-30 14:43:28.718785','2023-04-30 14:43:28.718785',1,'Công nghệ thông tin');
/*!40000 ALTER TABLE `management_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_mark`
--

DROP TABLE IF EXISTS `management_mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_mark` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `course_id` bigint NOT NULL,
  `student_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `management_mark_course_id_90d337cf` (`course_id`),
  KEY `management_mark_student_id_0bb31a28` (`student_id`),
  CONSTRAINT `management_mark_course_id_90d337cf_fk_management_course_id` FOREIGN KEY (`course_id`) REFERENCES `management_course` (`id`),
  CONSTRAINT `management_mark_student_id_0bb31a28_fk_management_student_code` FOREIGN KEY (`student_id`) REFERENCES `management_student` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_mark`
--

LOCK TABLES `management_mark` WRITE;
/*!40000 ALTER TABLE `management_mark` DISABLE KEYS */;
INSERT INTO `management_mark` VALUES (7,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,2,'1951052099'),(8,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,2,'1951052125'),(9,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,2,'1951052123');
/*!40000 ALTER TABLE `management_mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_markdetail`
--

DROP TABLE IF EXISTS `management_markdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_markdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `is_midterm` tinyint(1) NOT NULL,
  `is_final` tinyint(1) NOT NULL,
  `value` double NOT NULL,
  `mark_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `management_markdetail_mark_id_10908646_fk_management_mark_id` (`mark_id`),
  CONSTRAINT `management_markdetail_mark_id_10908646_fk_management_mark_id` FOREIGN KEY (`mark_id`) REFERENCES `management_mark` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_markdetail`
--

LOCK TABLES `management_markdetail` WRITE;
/*!40000 ALTER TABLE `management_markdetail` DISABLE KEYS */;
INSERT INTO `management_markdetail` VALUES (1,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,1,0,8,7),(2,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,1,0,7,7),(3,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,1,0,4,7),(4,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,0,1,5,7),(5,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,1,0,8,8),(6,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,1,0,5,8),(7,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,0,1,4,8),(8,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,1,0,8,9),(9,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,1,0,4,9),(10,'2023-04-30 14:40:20.761041','2023-04-30 14:40:20.761041',1,0,1,3,9);
/*!40000 ALTER TABLE `management_markdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_student`
--

DROP TABLE IF EXISTS `management_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_student` (
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` bigint DEFAULT NULL,
  `regular_class_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `management_student_faculty_id_6a38d2d3_fk_management_faculty_id` (`faculty_id`),
  KEY `management_student_regular_class_id_3292b374_fk_managemen` (`regular_class_id`),
  CONSTRAINT `management_student_faculty_id_6a38d2d3_fk_management_faculty_id` FOREIGN KEY (`faculty_id`) REFERENCES `management_faculty` (`id`),
  CONSTRAINT `management_student_regular_class_id_3292b374_fk_managemen` FOREIGN KEY (`regular_class_id`) REFERENCES `management_class` (`id`),
  CONSTRAINT `management_student_user_id_bef90ea2_fk_management_user_id` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_student`
--

LOCK TABLES `management_student` WRITE;
/*!40000 ALTER TABLE `management_student` DISABLE KEYS */;
INSERT INTO `management_student` VALUES ('1951052099',NULL,NULL,5),('1951052123',NULL,NULL,7),('1951052125',NULL,NULL,6);
/*!40000 ALTER TABLE `management_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_subject`
--

DROP TABLE IF EXISTS `management_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_subject` (
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int NOT NULL,
  `midterm_percent` int NOT NULL,
  `final_percent` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_subject`
--

LOCK TABLES `management_subject` WRITE;
/*!40000 ALTER TABLE `management_subject` DISABLE KEYS */;
INSERT INTO `management_subject` VALUES ('2023-04-30 14:44:50.889391','2023-04-30 14:44:50.889391',1,'GLAW1315','Pháp luật đại cương',3,40,60),('2023-04-30 14:44:15.101323','2023-04-30 14:44:15.101323',1,'ITEC3406','Lập trình cơ sở dữ liệu',3,40,60),('2023-04-30 14:43:53.883342','2023-04-30 14:43:53.883342',1,'ITEC3408','Lập trình mạng',3,40,60),('2023-04-30 14:44:59.313424','2023-04-30 14:44:59.313424',1,'ITEC3412','An toàn hệ thống thông tin',3,40,60),('2023-04-30 14:44:24.387429','2023-04-30 14:44:24.387429',1,'ITEC3417','Khai phá dữ liệu',3,40,60),('2023-04-30 14:44:04.783114','2023-04-30 14:44:04.783114',1,'ITEC3421','Các công nghệ lập trình hiện đại',3,40,60),('2023-04-30 14:44:40.502616','2023-04-30 14:44:40.502616',1,'ITEC4401','Đồ án ngành',4,40,60),('2023-04-30 14:45:08.249884','2023-04-30 14:45:08.249884',1,'ITEC4407','Lập trình Java',3,40,60),('2023-04-30 14:45:22.407259','2023-04-30 14:45:22.407259',1,'ITEC4415','Kiểm thử phần mềm',3,40,60);
/*!40000 ALTER TABLE `management_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_teacher`
--

DROP TABLE IF EXISTS `management_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_teacher` (
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `management_teacher_user_id_c9334f14_fk_management_user_id` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_teacher`
--

LOCK TABLES `management_teacher` WRITE;
/*!40000 ALTER TABLE `management_teacher` DISABLE KEYS */;
INSERT INTO `management_teacher` VALUES ('thanh.dh1',2),('tuyet.vth1',3),('phuong.lq1',4);
/*!40000 ALTER TABLE `management_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_topic`
--

DROP TABLE IF EXISTS `management_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_topic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint NOT NULL,
  `course_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `management_topic_author_id_8eda13e2_fk_management_user_id` (`author_id`),
  KEY `management_topic_course_id_f22bbde7_fk_management_course_id` (`course_id`),
  CONSTRAINT `management_topic_author_id_8eda13e2_fk_management_user_id` FOREIGN KEY (`author_id`) REFERENCES `management_user` (`id`),
  CONSTRAINT `management_topic_course_id_f22bbde7_fk_management_course_id` FOREIGN KEY (`course_id`) REFERENCES `management_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_topic`
--

LOCK TABLES `management_topic` WRITE;
/*!40000 ALTER TABLE `management_topic` DISABLE KEYS */;
INSERT INTO `management_topic` VALUES (1,'2023-04-30 15:04:47.424276','2023-04-30 15:04:47.424276',1,'Nhắc học bù sáng mai thứ 7 (15/04)','Chào các bạn,\r\n\r\nNhư thầy đã thông báo trên lớp, sáng mai mình sẽ học bù 2 ca (Phòng máy 9) để kết thúc học phần thực hành của môn này và nghỉ cho 2 buổi tối 15/04 và 22/04.\r\n\r\nTrân trọng,',2,2),(2,'2023-04-30 15:05:06.998016','2023-04-30 15:05:06.998016',1,'THÔNG BÁO NGHỈ SÁNG CHỦ NHẬT (12/02)','Chào các bạn,\r\n\r\n- Lớp sáng chủ nhật (12/02/2023) được nghỉ do thầy bận lịch công tác đột xuất.\r\n\r\n- Các buổi thực hành tối thứ 2 (13/02/2023) và thứ 7 (18/02/2023) vẫn học bình thường.\r\n\r\nXin lỗi các bạn vì một số bất tiện này!',2,2),(3,'2023-04-30 15:05:47.827994','2023-04-30 15:05:47.827994',1,'[TB] V/v thực hiện bài kiểm tra trên máy 20/04/2023','Chào các em,\r\n\r\nThầy nhắc lại thông báo về việc thực hiện bài kiểm tra giữa kì trên máy :\r\n\r\nNgày Thứ năm, 20/04/2023 buổi chiều các em thực hiện bài kiểm tra GK trên máy tại PM5 - 371 Nguyễn Kiệm - Quận Gò Vấp - TP.HCM.\r\n\r\nThời gian:\r\n\r\nSinh viên đăng ký thực hành Ca 1: Bắt đầu lúc 13g\'\r\n\r\nSinh viên đăng ký thực hành Ca 2: Bắt đầu lúc 14g 45\'\r\n\r\nCác em nhớ có mặt đúng giờ để thực hiện bài kiểm tra, sinh viên vắng mặt sẽ không có kết quả GK.\r\n\r\n\r\nThầy.',4,1),(4,'2023-04-30 15:06:10.798284','2023-04-30 15:06:10.798284',1,'V/v THÔNG BÁO THAY ĐỔI Lịch thực hành ngày 06/04/2023, ngày 13/04/2023 & KIỂM TRA GK','Chào các em,\r\n\r\n- Do có một số lý do, lịch Thực hành & Kiểm tra giữa kì sẽ có thay đổi.\r\n\r\n- Thầy thông báo THAY ĐỔI lịch thực hành ngày 06/04/2023 và lịch thực hành tuần sau 13/04/2023 & Lịch kiểm tra Giữa kì như sau:\r\n\r\n1. Ngày thứ năm 06/04/2023 các em đi học bình thường 2 ca vào buổi chiều tại PM5\r\n\r\n2. Ngày thứ năm 13/04/2023 các em đi thực hành theo các nhóm như sau:\r\n\r\n+ Sinh viên đăng ký thực hành Ca 1 theo lịch của TKB các em sẽ thực hành buổi Sáng thứ 5 bắt đầu  lúc 7g  ngày 13/04/2023 tại PM8\r\n\r\n+ Sinh viên đăng ký thực hành Ca 2 theo lịch  của TKB các em sẽ thực hành theo đúng lịch Chiều thứ 5 ngày 13/04/2023 nhưng bắt đầu  lúc 13g tại PM5\r\n\r\n3. Ngày 20/04/2023 các em sẽ thực hiện bài Kiểm tra giữa kì trên máy buổi chiều tại PM5, Ca 1: 13g ; Ca 2: 14g45\'\r\n\r\nSinh viên được sử dụng tài liệu giấy ở các bài kiểm tra GK & CK.\r\n\r\nThầy.',4,1),(5,'2023-04-30 15:06:33.793670','2023-04-30 15:06:33.793670',1,'Xin các đề kiểm tra giữa kỳ của học kỳ trước','Em chào thầy. Thầy có thể cho em xin các file đề kiểm tra môn lập trình mạng của học kỳ trước để em tham khảo. Cảm ơn thầy.',6,1),(6,'2023-04-30 15:06:47.614898','2023-04-30 15:06:47.615900',1,'Nộp bài tập về nhà trễ hạn','Em chào thầy ạ. Em xin lỗi thầy vì hôm qua em nộp bài không đúng hạn ạ.\r\n\r\nDo là em đi theo công ty ra ngoại thành để làm vào ngày hôm đó, và lúc về tới nhà thì đã là 11h30 đêm khuya nên em đã trễ hạn ạ.\r\n\r\nEm xin phép thầy cho em hôm nay được nộp bù lại vào hôm nay ạ. Em xin lỗi thầy và em cũng cám ơn thầy ạ.',7,1);
/*!40000 ALTER TABLE `management_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_user`
--

DROP TABLE IF EXISTS `management_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_user`
--

LOCK TABLES `management_user` WRITE;
/*!40000 ALTER TABLE `management_user` DISABLE KEYS */;
INSERT INTO `management_user` VALUES (1,'pbkdf2_sha256$390000$zIRnPWytHEGvxDuAtp375Q$SEkvaC+4TsC6I2uVgGrj3wMXa3Im/eRi6lgMjc5Q/FY=','2023-04-30 14:40:20.761041',1,'admin','','',1,1,'2023-04-30 14:40:16.122626','admin@gmail.com',0,'','NO_ROLE'),(2,'pbkdf2_sha256$390000$GWfIj4J2fVpvyhWYAQpz5b$7DAnkeruCWukiyR3KjuJBorDvg6PmxENSI8FWHi/J90=',NULL,0,'thanh.dh1','Dương Hữu','Thành',0,1,'2023-04-30 14:48:06.465669','thanh.dh1@ou.edu.vn',0,'users/2023/04/z4198369065521_11c601c5536b76497091f5d64a41ae02_rnpf43Z.jpg','TEACHER'),(3,'pbkdf2_sha256$390000$n6U4IiUFI52Ctsn7imDZ1L$tvZ6E8yoF0ry4wNIVJ7WkGnog297kJ7KwDnShyNBlQY=',NULL,0,'tuyet.vth1','Võ Thị Hồng','Tuyết',0,1,'2023-04-30 14:48:40.634272','tuyet.vth1@ou.edu.vn',1,'users/2023/04/z4198369065521_11c601c5536b76497091f5d64a41ae02_CIEP9z8.jpg','TEACHER'),(4,'pbkdf2_sha256$390000$YXiVVKqwj0XbaGQDq1c4vJ$rDksUD1h02/j9tvWw2sTudHEl7mdpMukeBJaEV6XByQ=',NULL,0,'phuong.lq1','Lưu Quang','Phương',0,1,'2023-04-30 14:50:07.505247','phuong.lq1@ou.edu.vn',0,'users/2023/04/z4198369065521_11c601c5536b76497091f5d64a41ae02_0C0zuMJ.jpg','TEACHER'),(5,'pbkdf2_sha256$390000$LPUwO0jWyabKMKH9TMzmkX$aHbhUBppsE/dmqUwnmrC04CahqakDaIyfy0CbbgF5Xs=',NULL,0,'1951052099','Bùi Mạnh','Linh',0,1,'2023-04-30 14:54:44.994632','1951052099linh@ou.edu.vn',0,'users/2023/04/341056634_720479316535793_4541779416049032355_n.jpg','STUDENT'),(6,'pbkdf2_sha256$390000$4yuC3GFtNrSZOlT5TdeWhB$FMoQSxqZWGGtcvCJ5ubAEP5kPk0lkbhLuY0PyGjMh8M=',NULL,0,'1951052125','Nguyễn Hoàng','Nam',0,1,'2023-04-30 14:56:30.149503','1951052125nam@ou.edu.vn',0,'users/2023/04/49914646_967707916757510_1545321635303653376_n_2_MZTUtos.jpg','STUDENT'),(7,'pbkdf2_sha256$390000$R8opRbNwToEjmw904NA2p1$TYSHSa1Lm3DdqkZ4btM967265ODm1GDjLKi7LBTiHU0=',NULL,0,'1951052123','Lương Hoàng','Nam',0,1,'2023-04-30 14:57:45.325778','1951052123nam@ou.edu.vn',0,'users/2023/04/269639266_1003514793880511_2778633446153121529_n_EevxMYs.png','STUDENT');
/*!40000 ALTER TABLE `management_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_user_groups`
--

DROP TABLE IF EXISTS `management_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `management_user_groups_user_id_group_id_feb3e18c_uniq` (`user_id`,`group_id`),
  KEY `management_user_groups_group_id_8e7cbab4_fk_auth_group_id` (`group_id`),
  CONSTRAINT `management_user_groups_group_id_8e7cbab4_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `management_user_groups_user_id_e433e6d4_fk_management_user_id` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_user_groups`
--

LOCK TABLES `management_user_groups` WRITE;
/*!40000 ALTER TABLE `management_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management_user_user_permissions`
--

DROP TABLE IF EXISTS `management_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `management_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `management_user_user_per_user_id_permission_id_8146bd2d_uniq` (`user_id`,`permission_id`),
  KEY `management_user_user_permission_id_1cf8b5b7_fk_auth_perm` (`permission_id`),
  CONSTRAINT `management_user_user_permission_id_1cf8b5b7_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `management_user_user_user_id_195d266b_fk_managemen` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_user_user_permissions`
--

LOCK TABLES `management_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `management_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_managemen` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_managemen` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'TNDPafWPP4SijqTM8n3hMAmtnbMvLx','2023-05-01 01:00:04.818024','read write',1,7,'2023-04-30 15:00:04.818024','2023-04-30 15:00:04.818024',NULL,NULL),(2,'T28c4huoUTTcNy3LrIVlnnfuzJLOS5','2023-05-01 01:01:57.160681','read write',1,6,'2023-04-30 15:01:57.161665','2023-04-30 15:01:57.161665',NULL,NULL),(3,'FpBQe4ikmCOImNtN0X1lq1bEAz5abt','2023-05-01 01:02:04.708144','read write',1,5,'2023-04-30 15:02:04.708144','2023-04-30 15:02:04.708144',NULL,NULL),(4,'7UOIHXjon2P73XbMpZQl7amEVx2v2d','2023-05-01 01:02:11.063760','read write',1,4,'2023-04-30 15:02:11.064760','2023-04-30 15:02:11.064760',NULL,NULL),(5,'2k6nXyJ9J5wBIqPpySDD8dAwtXDr5y','2023-05-01 01:02:18.854624','read write',1,2,'2023-04-30 15:02:18.854624','2023-04-30 15:02:18.854624',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_appl_user_id_79829054_fk_managemen` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_managemen` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'nndcTyE43GNLxlcRNGTrxeOi57KRsBDAUTn9QsOW','','confidential','password','pbkdf2_sha256$390000$Y4o35MGmta4tbEyRUVkrsN$tdy0v5Ddw7fvfMAZqOEjliDKM2T6jaB/3SwFv7hcKCU=','app1',1,0,'2023-04-30 14:40:52.334334','2023-04-30 14:40:52.334334','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claims` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_management_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_management_user_id` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_management_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_management_user_id` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refr_user_id_da837fce_fk_managemen` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_managemen` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'4lFPvG2CWUMCF6CTaTcW2t64ExQrub',1,1,7,'2023-04-30 15:00:04.848998','2023-04-30 15:00:04.848998',NULL),(2,'W7Ny8NWl1lnnxj3ap6G1fYdivDrMe2',2,1,6,'2023-04-30 15:01:57.164339','2023-04-30 15:01:57.164339',NULL),(3,'8GA9D1yjRfgAEwivoDvpkotQNz11by',3,1,5,'2023-04-30 15:02:04.709086','2023-04-30 15:02:04.709086',NULL),(4,'7ddNOP4tcEqNvKC7sfLSJcghKSuD0O',4,1,4,'2023-04-30 15:02:11.065778','2023-04-30 15:02:11.065778',NULL),(5,'50tG8rksBzZP0sHiGMDrhvGLMAHocf',5,1,2,'2023-04-30 15:02:18.855659','2023-04-30 15:02:18.855659',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-30 22:37:55
