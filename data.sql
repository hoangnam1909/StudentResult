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
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add class',7,'add_class'),(26,'Can change class',7,'change_class'),(27,'Can delete class',7,'delete_class'),(28,'Can view class',7,'view_class'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course'),(33,'Can add faculty',9,'add_faculty'),(34,'Can change faculty',9,'change_faculty'),(35,'Can delete faculty',9,'delete_faculty'),(36,'Can view faculty',9,'view_faculty'),(37,'Can add subject',10,'add_subject'),(38,'Can change subject',10,'change_subject'),(39,'Can delete subject',10,'delete_subject'),(40,'Can view subject',10,'view_subject'),(41,'Can add topic',11,'add_topic'),(42,'Can change topic',11,'change_topic'),(43,'Can delete topic',11,'delete_topic'),(44,'Can view topic',11,'view_topic'),(45,'Can add teacher',12,'add_teacher'),(46,'Can change teacher',12,'change_teacher'),(47,'Can delete teacher',12,'delete_teacher'),(48,'Can view teacher',12,'view_teacher'),(49,'Can add student',13,'add_student'),(50,'Can change student',13,'change_student'),(51,'Can delete student',13,'delete_student'),(52,'Can view student',13,'view_student'),(53,'Can add mark',14,'add_mark'),(54,'Can change mark',14,'change_mark'),(55,'Can delete mark',14,'delete_mark'),(56,'Can view mark',14,'view_mark'),(57,'Can add comment',15,'add_comment'),(58,'Can change comment',15,'change_comment'),(59,'Can delete comment',15,'delete_comment'),(60,'Can view comment',15,'view_comment'),(61,'Can add mark detail',16,'add_markdetail'),(62,'Can change mark detail',16,'change_markdetail'),(63,'Can delete mark detail',16,'delete_markdetail'),(64,'Can view mark detail',16,'view_markdetail'),(65,'Can add application',17,'add_application'),(66,'Can change application',17,'change_application'),(67,'Can delete application',17,'delete_application'),(68,'Can view application',17,'view_application'),(69,'Can add access token',18,'add_accesstoken'),(70,'Can change access token',18,'change_accesstoken'),(71,'Can delete access token',18,'delete_accesstoken'),(72,'Can view access token',18,'view_accesstoken'),(73,'Can add grant',19,'add_grant'),(74,'Can change grant',19,'change_grant'),(75,'Can delete grant',19,'delete_grant'),(76,'Can view grant',19,'view_grant'),(77,'Can add refresh token',20,'add_refreshtoken'),(78,'Can change refresh token',20,'change_refreshtoken'),(79,'Can delete refresh token',20,'delete_refreshtoken'),(80,'Can view refresh token',20,'view_refreshtoken'),(81,'Can add id token',21,'add_idtoken'),(82,'Can change id token',21,'change_idtoken'),(83,'Can delete id token',21,'delete_idtoken'),(84,'Can view id token',21,'view_idtoken');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-03-30 15:00:06.134367','6','giangvien1 - 2645392858thanh@ou.edu.vn',1,'[{\"added\": {}}]',6,5),(2,'2023-03-30 15:00:09.186714','2645392858','2645392858 - Nguyễn Văn Thành',1,'[{\"added\": {}}]',12,5),(3,'2023-03-30 15:01:43.480736','1','Công nghệ thông tin',1,'[{\"added\": {}}]',9,5),(4,'2023-03-30 15:01:47.954995','2','Công nghệ thực phẩm',1,'[{\"added\": {}}]',9,5),(5,'2023-03-30 15:01:54.358730','3','Kế toán - Kiểm toán',1,'[{\"added\": {}}]',9,5),(6,'2023-03-30 15:02:01.020668','4','Ngôn ngữ Anh',1,'[{\"added\": {}}]',9,5),(7,'2023-03-30 15:02:05.625885','5','Luật kinh tế',1,'[{\"added\": {}}]',9,5),(8,'2023-03-30 15:02:10.527832','6','Xây dựng',1,'[{\"added\": {}}]',9,5),(9,'2023-03-30 15:02:14.933696','7','Luật',1,'[{\"added\": {}}]',9,5),(10,'2023-03-30 15:02:21.841570','5','Luật kinh tế',3,'',9,5),(11,'2023-03-31 14:24:01.876851','DH19IT01','DH19IT01',1,'[{\"added\": {}}]',7,5),(12,'2023-03-31 14:24:04.574167','DH19IT02','DH19IT02',1,'[{\"added\": {}}]',7,5),(13,'2023-03-31 14:24:07.547569','DH19IT03','DH19IT03',1,'[{\"added\": {}}]',7,5),(14,'2023-03-31 14:25:14.629831','ITEC3408','ITEC3408 - Lập trình mạng',1,'[{\"added\": {}}]',10,5),(15,'2023-03-31 14:25:20.640691','ITEC3421','ITEC3421 - Các công nghệ lập trình hiện đại',1,'[{\"added\": {}}]',10,5),(16,'2023-03-31 14:25:30.470549','ITEC3417','ITEC3417 - Khai phá dữ liệu',1,'[{\"added\": {}}]',10,5),(17,'2023-03-31 14:25:40.161743','ITEC4407','ITEC4407 - Lập trình Java',1,'[{\"added\": {}}]',10,5),(18,'2023-03-31 14:27:57.745658','3','ITEC4407 - DH19IT03',1,'[{\"added\": {}}]',8,5),(19,'2023-03-31 14:43:56.723908','1','Mark object (1)',1,'[{\"added\": {}}]',14,5),(20,'2023-03-31 14:44:06.681049','1','MarkDetail object (1)',1,'[{\"added\": {}}]',16,5),(21,'2023-03-31 14:44:14.576018','2','MarkDetail object (2)',1,'[{\"added\": {}}]',16,5),(22,'2023-03-31 15:04:49.292681','1','Bài tập về nhà môn Java',1,'[{\"added\": {}}]',11,5),(23,'2023-03-31 15:05:03.454551','1','Comment object (1)',1,'[{\"added\": {}}]',15,5),(24,'2023-03-31 15:05:21.442909','2','Comment object (2)',1,'[{\"added\": {}}]',15,5);
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
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'management','class'),(15,'management','comment'),(8,'management','course'),(9,'management','faculty'),(14,'management','mark'),(16,'management','markdetail'),(13,'management','student'),(10,'management','subject'),(12,'management','teacher'),(11,'management','topic'),(6,'management','user'),(18,'oauth2_provider','accesstoken'),(17,'oauth2_provider','application'),(19,'oauth2_provider','grant'),(21,'oauth2_provider','idtoken'),(20,'oauth2_provider','refreshtoken'),(5,'sessions','session');
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
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-03-30 03:48:47.503825'),(2,'contenttypes','0002_remove_content_type_name','2023-03-30 03:48:47.584050'),(3,'auth','0001_initial','2023-03-30 03:48:47.911642'),(4,'auth','0002_alter_permission_name_max_length','2023-03-30 03:48:47.967464'),(5,'auth','0003_alter_user_email_max_length','2023-03-30 03:48:47.977085'),(6,'auth','0004_alter_user_username_opts','2023-03-30 03:48:47.986201'),(7,'auth','0005_alter_user_last_login_null','2023-03-30 03:48:47.993142'),(8,'auth','0006_require_contenttypes_0002','2023-03-30 03:48:47.998935'),(9,'auth','0007_alter_validators_add_error_messages','2023-03-30 03:48:48.005968'),(10,'auth','0008_alter_user_username_max_length','2023-03-30 03:48:48.023979'),(11,'auth','0009_alter_user_last_name_max_length','2023-03-30 03:48:48.040057'),(12,'auth','0010_alter_group_name_max_length','2023-03-30 03:48:48.058016'),(13,'auth','0011_update_proxy_permissions','2023-03-30 03:48:48.066493'),(14,'auth','0012_alter_user_first_name_max_length','2023-03-30 03:48:48.073008'),(15,'management','0001_initial','2023-03-30 03:48:49.318114'),(16,'admin','0001_initial','2023-03-30 03:48:49.420072'),(17,'admin','0002_logentry_remove_auto_add','2023-03-30 03:48:49.431128'),(18,'admin','0003_logentry_add_action_flag_choices','2023-03-30 03:48:49.440577'),(19,'oauth2_provider','0001_initial','2023-03-30 03:48:49.984246'),(20,'oauth2_provider','0002_auto_20190406_1805','2023-03-30 03:48:50.093125'),(21,'oauth2_provider','0003_auto_20201211_1314','2023-03-30 03:48:50.144577'),(22,'oauth2_provider','0004_auto_20200902_2022','2023-03-30 03:48:50.554956'),(23,'oauth2_provider','0005_auto_20211222_2352','2023-03-30 03:48:50.624206'),(24,'oauth2_provider','0006_alter_application_client_secret','2023-03-30 03:48:50.650297'),(25,'sessions','0001_initial','2023-03-30 03:48:50.694591'),(26,'management','0002_faculty_active_faculty_created_date_and_more','2023-03-30 16:41:07.770185');
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
INSERT INTO `django_session` VALUES ('h0khi7g7bx7aoz4n4ktj6dtvn0ndpkgk','.eJxVjDsOwyAQBe9CHaHlYwgp0-cMaIElOIlAMnYV5e4Rkgu7fTPzvszjtha_dVr8nNiNTexy3ALGN9UB0gvrs_HY6rrMgQ-F77TzR0v0ue_u6aBgL6OegDRaZSFJJDAQbRZOO-kwKACNCnQWgZQg6bIRFi0mCflKxkVAxX5_1Ac3iQ:1phtXY:x5TvLYfZbM3GGZO2iJ_PtwxN5PDRaxreVd0Aqbgu5l4','2023-04-13 14:46:12.790567');
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
INSERT INTO `management_class` VALUES ('2023-03-31 14:24:01.875851','2023-03-31 14:24:01.875851',1,'DH19IT01',1),('2023-03-31 14:24:04.573166','2023-03-31 14:24:04.573166',1,'DH19IT02',1),('2023-03-31 14:24:07.547569','2023-03-31 14:24:07.547569',1,'DH19IT03',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_comment`
--

LOCK TABLES `management_comment` WRITE;
/*!40000 ALTER TABLE `management_comment` DISABLE KEYS */;
INSERT INTO `management_comment` VALUES (1,'2023-03-31 15:05:03.453046','2023-03-31 15:05:03.453046',1,'MySQL nhé em',1,6),(2,'2023-03-31 15:05:21.441981','2023-03-31 15:05:21.441981',1,'không biết bạn ơi',1,9);
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
  `course_class_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `management_course_subject_id_f47327e7_fk_management_subject_id` (`subject_id`),
  KEY `management_course_teacher_id_62ed651c_fk_management_teacher_code` (`teacher_id`),
  KEY `management_course_course_class_id_b431b4eb_fk_managemen` (`course_class_id`),
  CONSTRAINT `management_course_course_class_id_b431b4eb_fk_managemen` FOREIGN KEY (`course_class_id`) REFERENCES `management_class` (`id`),
  CONSTRAINT `management_course_subject_id_f47327e7_fk_management_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `management_subject` (`id`),
  CONSTRAINT `management_course_teacher_id_62ed651c_fk_management_teacher_code` FOREIGN KEY (`teacher_id`) REFERENCES `management_teacher` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_course`
--

LOCK TABLES `management_course` WRITE;
/*!40000 ALTER TABLE `management_course` DISABLE KEYS */;
INSERT INTO `management_course` VALUES (3,'2023-03-31 14:27:57.743045','2023-03-31 14:27:57.743045',1,'2023-02-08 14:26:19.000000','2023-04-14 14:26:22.000000','DH19IT03','ITEC4407','2645392858');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_course_students`
--

LOCK TABLES `management_course_students` WRITE;
/*!40000 ALTER TABLE `management_course_students` DISABLE KEYS */;
INSERT INTO `management_course_students` VALUES (15,3,'1951021263'),(11,3,'1951052123'),(14,3,'1951052125'),(13,3,'1951312263'),(12,3,'1951315263');
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
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_faculty`
--

LOCK TABLES `management_faculty` WRITE;
/*!40000 ALTER TABLE `management_faculty` DISABLE KEYS */;
INSERT INTO `management_faculty` VALUES (1,'Công nghệ thông tin',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139'),(2,'Công nghệ thực phẩm',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139'),(3,'Kế toán - Kiểm toán',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139'),(4,'Ngôn ngữ Anh',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139'),(6,'Xây dựng',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139'),(7,'Luật',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139');
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
  UNIQUE KEY `management_mark_student_id_course_id_3ba013f2_uniq` (`student_id`,`course_id`),
  KEY `management_mark_course_id_90d337cf_fk_management_course_id` (`course_id`),
  CONSTRAINT `management_mark_course_id_90d337cf_fk_management_course_id` FOREIGN KEY (`course_id`) REFERENCES `management_course` (`id`),
  CONSTRAINT `management_mark_student_id_0bb31a28_fk_management_student_code` FOREIGN KEY (`student_id`) REFERENCES `management_student` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_mark`
--

LOCK TABLES `management_mark` WRITE;
/*!40000 ALTER TABLE `management_mark` DISABLE KEYS */;
INSERT INTO `management_mark` VALUES (1,'2023-03-31 14:43:56.720387','2023-03-31 14:43:56.720901',1,3,'1951052123');
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
  UNIQUE KEY `management_markdetail_is_midterm_is_final_e51abc03_uniq` (`is_midterm`,`is_final`),
  KEY `management_markdetail_mark_id_10908646_fk_management_mark_id` (`mark_id`),
  CONSTRAINT `management_markdetail_mark_id_10908646_fk_management_mark_id` FOREIGN KEY (`mark_id`) REFERENCES `management_mark` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_markdetail`
--

LOCK TABLES `management_markdetail` WRITE;
/*!40000 ALTER TABLE `management_markdetail` DISABLE KEYS */;
INSERT INTO `management_markdetail` VALUES (1,'2023-03-31 14:44:06.680029','2023-03-31 14:44:06.680029',1,1,0,6,1),(2,'2023-03-31 14:44:14.575012','2023-03-31 14:44:14.575012',1,0,1,8,1);
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
  KEY `management_student_faculty_id_6a38d2d3_fk_management_faculty_id` (`faculty_id`),
  KEY `management_student_regular_class_id_3292b374_fk_managemen` (`regular_class_id`),
  KEY `management_student_user_id_bef90ea2_fk_management_user_id` (`user_id`),
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
INSERT INTO `management_student` VALUES ('1951021223',NULL,NULL,8),('1951021263',NULL,NULL,9),('1951052123',NULL,NULL,15),('1951052125',NULL,NULL,3),('1951311222',NULL,NULL,13),('1951312222',NULL,NULL,12),('1951312263',NULL,NULL,11),('1951315263',NULL,NULL,10);
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
INSERT INTO `management_subject` VALUES ('2023-03-31 14:25:14.628823','2023-03-31 14:25:14.628823',1,'ITEC3408','Lập trình mạng',3,40,60),('2023-03-31 14:25:30.469009','2023-03-31 14:25:30.469009',1,'ITEC3417','Khai phá dữ liệu',3,40,60),('2023-03-31 14:25:20.638522','2023-03-31 14:25:20.638522',1,'ITEC3421','Các công nghệ lập trình hiện đại',3,40,60),('2023-03-31 14:25:40.160740','2023-03-31 14:25:40.160740',1,'ITEC4407','Lập trình Java',3,40,60);
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
  KEY `management_teacher_user_id_c9334f14_fk_management_user_id` (`user_id`),
  CONSTRAINT `management_teacher_user_id_c9334f14_fk_management_user_id` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_teacher`
--

LOCK TABLES `management_teacher` WRITE;
/*!40000 ALTER TABLE `management_teacher` DISABLE KEYS */;
INSERT INTO `management_teacher` VALUES ('2645392858',6);
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
  PRIMARY KEY (`id`),
  KEY `management_topic_author_id_8eda13e2_fk_management_user_id` (`author_id`),
  CONSTRAINT `management_topic_author_id_8eda13e2_fk_management_user_id` FOREIGN KEY (`author_id`) REFERENCES `management_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_topic`
--

LOCK TABLES `management_topic` WRITE;
/*!40000 ALTER TABLE `management_topic` DISABLE KEYS */;
INSERT INTO `management_topic` VALUES (1,'2023-03-31 15:04:49.292030','2023-03-31 15:04:49.292030',1,'Bài tập về nhà môn Java','thầy cho em hỏi môn này dùng hệ quản trị CSDL gì vậy ạ?',15);
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management_user`
--

LOCK TABLES `management_user` WRITE;
/*!40000 ALTER TABLE `management_user` DISABLE KEYS */;
INSERT INTO `management_user` VALUES (3,'pbkdf2_sha256$390000$PSZFMDrrxvvTR8EPqdKsxi$bb3S7UX4BAzV5cpYXdfqFTjBxRRTQ3MhAY690K7Mp70=',NULL,0,'1951052125','Nguyen Hoang','Nam',0,1,'2023-03-30 14:03:24.039347','1951052125nam@ou.edu.vn',0,'users/2023/03/7490_1_U6j9HqY.png'),(5,'pbkdf2_sha256$390000$U2lBr1J5LqtusWH3jp19RB$jbaWtRxfPU9eNOrZUIMmEJjduJeF4I+zhny9LNHf8AY=','2023-03-30 14:46:12.786027',1,'admin','','',1,1,'2023-03-30 14:46:06.992372','admin@gmail.com',0,''),(6,'1',NULL,0,'giangvien1','Nguyễn Văn','Thành',0,1,'2023-03-30 14:59:03.000000','2645392858thanh@ou.edu.vn',0,'users/2023/03/2a898ac3d8fac7365776a0e4120d0105.jpg'),(8,'pbkdf2_sha256$390000$ZJUOAOI5UJjxn2rJxBiNRu$Ly8uWn4azYM4BQrswS0Kv70wVYcz3KiZEurKw+mmFSQ=',NULL,0,'1951021223','Nguyen Hoang','Nam',0,1,'2023-03-30 16:00:07.183393','1951021223nam@ou.edu.vn',0,'users/2023/03/7490_1_R9fLHbv.png'),(9,'pbkdf2_sha256$390000$zUjEqoelhYL2rVcYVWSzaG$0ziMOayY4dzewTiVSBPWEMfINIQX0YKH5HhbrdfwyR4=',NULL,0,'1951021263','Nguyen Hoang','Nam',0,1,'2023-03-30 16:26:59.624349','1951021263linh@ou.edu.vn',0,'users/2023/03/7490_1_76cMD5R.png'),(10,'pbkdf2_sha256$390000$tWqkrTPEbpGEHZpPcH4HDi$3oWLodIXxEK1IwFzfxuo6cXdw5rNG/2Hy8nG2Z5wtwY=',NULL,0,'1951315263','Nguyen Hoang','Nam',0,1,'2023-03-30 16:31:52.111873','1951315263linh@ou.edu.vn',0,'users/2023/03/7490_1_TyWr1FM.png'),(11,'pbkdf2_sha256$390000$DZzm2RqM5e9TmNJhsNLeUL$j0EuvYFI/82g8S0AKbFJ+qYiFOrIyF3JSqKU11zSBbc=',NULL,0,'1951312263','Nguyen Hoang','Nam',0,1,'2023-03-30 16:35:03.077482','1951312263linh@ou.edu.vn',0,'users/2023/03/7490_1_U8nOJ0Z.png'),(12,'pbkdf2_sha256$390000$XAe18EJdFY9Ma8v4R3m0hj$XWBLXZvcgGrSP+jAewSWIC6NEo0QM7wQnEUh4KHzzxA=',NULL,0,'1951312222','Nguyen Hoang','Nam',0,1,'2023-03-30 16:42:52.250436','1951312222thuy@ou.edu.vn',0,'users/2023/03/7490_1_LisZ4Fw.png'),(13,'pbkdf2_sha256$390000$IVa3L9yCPz6xRstkPLMOms$FQ4JoFYzeW3SWIyxoPWDoVQwxT4IBiLaX1ZuJ+vHmPc=',NULL,0,'1951311222','Nguyen Hoang','Nam',0,1,'2023-03-30 16:47:33.114290','1951311222thuy@ou.edu.vn',0,'users/2023/03/7490_1_8M0m22r.png'),(15,'pbkdf2_sha256$390000$YXe68SCgKQ84fT3w7QQOGJ$FkJuQw3k9js0u69NmYtwSJppm5JPCcf5RFLiWirhgHk=',NULL,0,'1951052123','Luong Hoang','Nam',0,1,'2023-03-31 13:50:13.156921','1951052123nam@ou.edu.vn',0,'users/2023/03/9763c363dcc5389b61d4_josZTeD.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'kk5hkKwzyoXhMnELZqEcz5PcGV11oQ','2023-03-31 02:50:52.817884','read write',1,12,'2023-03-30 16:50:52.817884','2023-03-30 16:50:52.817884',NULL,NULL);
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
INSERT INTO `oauth2_provider_application` VALUES (1,'bmVMP3FSd4czmQm24ARPCTjznx9oZCq7n7RwbtzD','','confidential','password','pbkdf2_sha256$390000$jwKeiDnUXg6IPZyFO22N7T$TJR9HZP1Fz1CjYvt7ISJRhpLNcdzOV/X8qubk1pTq3M=','app',5,0,'2023-03-30 16:50:38.166708','2023-03-30 16:50:38.166708','');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'epWC1GJfWX1CeZRqJHAG0YcP13Z0oO',1,1,12,'2023-03-30 16:50:52.830974','2023-03-30 16:50:52.830974',NULL);
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

-- Dump completed on 2023-04-01 12:18:14
