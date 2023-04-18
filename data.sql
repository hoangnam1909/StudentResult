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
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add class',7,'add_class'),(26,'Can change class',7,'change_class'),(27,'Can delete class',7,'delete_class'),(28,'Can view class',7,'view_class'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course'),(33,'Can add faculty',9,'add_faculty'),(34,'Can change faculty',9,'change_faculty'),(35,'Can delete faculty',9,'delete_faculty'),(36,'Can view faculty',9,'view_faculty'),(37,'Can add subject',10,'add_subject'),(38,'Can change subject',10,'change_subject'),(39,'Can delete subject',10,'delete_subject'),(40,'Can view subject',10,'view_subject'),(41,'Can add topic',11,'add_topic'),(42,'Can change topic',11,'change_topic'),(43,'Can delete topic',11,'delete_topic'),(44,'Can view topic',11,'view_topic'),(45,'Can add teacher',12,'add_teacher'),(46,'Can change teacher',12,'change_teacher'),(47,'Can delete teacher',12,'delete_teacher'),(48,'Can view teacher',12,'view_teacher'),(49,'Can add student',13,'add_student'),(50,'Can change student',13,'change_student'),(51,'Can delete student',13,'delete_student'),(52,'Can view student',13,'view_student'),(53,'Can add mark',14,'add_mark'),(54,'Can change mark',14,'change_mark'),(55,'Can delete mark',14,'delete_mark'),(56,'Can view mark',14,'view_mark'),(57,'Can add comment',15,'add_comment'),(58,'Can change comment',15,'change_comment'),(59,'Can delete comment',15,'delete_comment'),(60,'Can view comment',15,'view_comment'),(61,'Can add mark detail',16,'add_markdetail'),(62,'Can change mark detail',16,'change_markdetail'),(63,'Can delete mark detail',16,'delete_markdetail'),(64,'Can view mark detail',16,'view_markdetail'),(65,'Can add application',17,'add_application'),(66,'Can change application',17,'change_application'),(67,'Can delete application',17,'delete_application'),(68,'Can view application',17,'view_application'),(69,'Can add access token',18,'add_accesstoken'),(70,'Can change access token',18,'change_accesstoken'),(71,'Can delete access token',18,'delete_accesstoken'),(72,'Can view access token',18,'view_accesstoken'),(73,'Can add grant',19,'add_grant'),(74,'Can change grant',19,'change_grant'),(75,'Can delete grant',19,'delete_grant'),(76,'Can view grant',19,'view_grant'),(77,'Can add refresh token',20,'add_refreshtoken'),(78,'Can change refresh token',20,'change_refreshtoken'),(79,'Can delete refresh token',20,'delete_refreshtoken'),(80,'Can view refresh token',20,'view_refreshtoken'),(81,'Can add id token',21,'add_idtoken'),(82,'Can change id token',21,'change_idtoken'),(83,'Can delete id token',21,'delete_idtoken'),(84,'Can view id token',21,'view_idtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-03-30 15:00:06.134367','6','giangvien1 - 2645392858thanh@ou.edu.vn',1,'[{\"added\": {}}]',6,5),(2,'2023-03-30 15:00:09.186714','2645392858','2645392858 - Nguyễn Văn Thành',1,'[{\"added\": {}}]',12,5),(3,'2023-03-30 15:01:43.480736','1','Công nghệ thông tin',1,'[{\"added\": {}}]',9,5),(4,'2023-03-30 15:01:47.954995','2','Công nghệ thực phẩm',1,'[{\"added\": {}}]',9,5),(5,'2023-03-30 15:01:54.358730','3','Kế toán - Kiểm toán',1,'[{\"added\": {}}]',9,5),(6,'2023-03-30 15:02:01.020668','4','Ngôn ngữ Anh',1,'[{\"added\": {}}]',9,5),(7,'2023-03-30 15:02:05.625885','5','Luật kinh tế',1,'[{\"added\": {}}]',9,5),(8,'2023-03-30 15:02:10.527832','6','Xây dựng',1,'[{\"added\": {}}]',9,5),(9,'2023-03-30 15:02:14.933696','7','Luật',1,'[{\"added\": {}}]',9,5),(10,'2023-03-30 15:02:21.841570','5','Luật kinh tế',3,'',9,5),(11,'2023-03-31 14:24:01.876851','DH19IT01','DH19IT01',1,'[{\"added\": {}}]',7,5),(12,'2023-03-31 14:24:04.574167','DH19IT02','DH19IT02',1,'[{\"added\": {}}]',7,5),(13,'2023-03-31 14:24:07.547569','DH19IT03','DH19IT03',1,'[{\"added\": {}}]',7,5),(14,'2023-03-31 14:25:14.629831','ITEC3408','ITEC3408 - Lập trình mạng',1,'[{\"added\": {}}]',10,5),(15,'2023-03-31 14:25:20.640691','ITEC3421','ITEC3421 - Các công nghệ lập trình hiện đại',1,'[{\"added\": {}}]',10,5),(16,'2023-03-31 14:25:30.470549','ITEC3417','ITEC3417 - Khai phá dữ liệu',1,'[{\"added\": {}}]',10,5),(17,'2023-03-31 14:25:40.161743','ITEC4407','ITEC4407 - Lập trình Java',1,'[{\"added\": {}}]',10,5),(18,'2023-03-31 14:27:57.745658','3','ITEC4407 - DH19IT03',1,'[{\"added\": {}}]',8,5),(19,'2023-03-31 14:43:56.723908','1','Mark object (1)',1,'[{\"added\": {}}]',14,5),(20,'2023-03-31 14:44:06.681049','1','MarkDetail object (1)',1,'[{\"added\": {}}]',16,5),(21,'2023-03-31 14:44:14.576018','2','MarkDetail object (2)',1,'[{\"added\": {}}]',16,5),(22,'2023-03-31 15:04:49.292681','1','Bài tập về nhà môn Java',1,'[{\"added\": {}}]',11,5),(23,'2023-03-31 15:05:03.454551','1','Comment object (1)',1,'[{\"added\": {}}]',15,5),(24,'2023-03-31 15:05:21.442909','2','Comment object (2)',1,'[{\"added\": {}}]',15,5),(25,'2023-04-17 06:24:46.508370','1951052125','1951052125 - Nguyen Hoang Nam',2,'[{\"changed\": {\"fields\": [\"Faculty\", \"Regular class\"]}}]',13,5),(26,'2023-04-17 08:10:53.045378','13','1951311222 - 1951311222thuy@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"password\", \"First name\"]}}]',6,5),(27,'2023-04-17 08:11:20.229483','10','1951315263 - 1951315263linh@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"password\", \"First name\"]}}]',6,5),(28,'2023-04-17 08:12:41.202552','10','1951315263 - 1951315263linh@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',6,5),(29,'2023-04-17 08:13:39.005335','12','1951312222 - 1951312222thuy@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"password\", \"First name\"]}}]',6,5),(30,'2023-04-17 08:20:52.052551','15','1951052123 - 1951052123nam@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',6,5),(31,'2023-04-17 08:21:14.103345','15','1951052123 - 1951052123nam@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',6,5),(32,'2023-04-17 08:22:39.326977','3','1951052125 - 1951052125nam@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',6,5),(33,'2023-04-17 08:36:25.352438','3','1951052125 - 1951052125nam@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"password\", \"First name\"]}}]',6,5),(34,'2023-04-17 08:36:34.953650','3','1951052125 - 1951052125nam@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',6,5),(35,'2023-04-17 08:37:18.068780','3','1951052125 - 1951052125nam@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"password\", \"First name\"]}}]',6,5),(36,'2023-04-17 08:38:02.061493','3','1951052125 - 1951052125nam@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"password\", \"First name\"]}}]',6,5),(37,'2023-04-17 08:39:03.388214','3','1951052125 - 1951052125nam@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"password\", \"First name\"]}}]',6,5),(38,'2023-04-17 08:44:14.492602','3','1951052125 - 1951052125nam@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',6,5),(39,'2023-04-17 08:50:10.468856','3','1951052125 - 1951052125nam@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"password\", \"First name\"]}}]',6,5),(40,'2023-04-17 08:51:14.753437','3','1951052125 - 1951052125nam@ou.edu.vn',2,'[{\"changed\": {\"fields\": [\"First name\", \"password\"]}}]',6,5);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'management','class'),(15,'management','comment'),(8,'management','course'),(9,'management','faculty'),(14,'management','mark'),(16,'management','markdetail'),(13,'management','student'),(10,'management','subject'),(12,'management','teacher'),(11,'management','topic'),(6,'management','user'),(18,'oauth2_provider','accesstoken'),(17,'oauth2_provider','application'),(19,'oauth2_provider','grant'),(21,'oauth2_provider','idtoken'),(20,'oauth2_provider','refreshtoken'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-03-30 03:48:47.503825'),(2,'contenttypes','0002_remove_content_type_name','2023-03-30 03:48:47.584050'),(3,'auth','0001_initial','2023-03-30 03:48:47.911642'),(4,'auth','0002_alter_permission_name_max_length','2023-03-30 03:48:47.967464'),(5,'auth','0003_alter_user_email_max_length','2023-03-30 03:48:47.977085'),(6,'auth','0004_alter_user_username_opts','2023-03-30 03:48:47.986201'),(7,'auth','0005_alter_user_last_login_null','2023-03-30 03:48:47.993142'),(8,'auth','0006_require_contenttypes_0002','2023-03-30 03:48:47.998935'),(9,'auth','0007_alter_validators_add_error_messages','2023-03-30 03:48:48.005968'),(10,'auth','0008_alter_user_username_max_length','2023-03-30 03:48:48.023979'),(11,'auth','0009_alter_user_last_name_max_length','2023-03-30 03:48:48.040057'),(12,'auth','0010_alter_group_name_max_length','2023-03-30 03:48:48.058016'),(13,'auth','0011_update_proxy_permissions','2023-03-30 03:48:48.066493'),(14,'auth','0012_alter_user_first_name_max_length','2023-03-30 03:48:48.073008'),(15,'management','0001_initial','2023-03-30 03:48:49.318114'),(16,'admin','0001_initial','2023-03-30 03:48:49.420072'),(17,'admin','0002_logentry_remove_auto_add','2023-03-30 03:48:49.431128'),(18,'admin','0003_logentry_add_action_flag_choices','2023-03-30 03:48:49.440577'),(19,'oauth2_provider','0001_initial','2023-03-30 03:48:49.984246'),(20,'oauth2_provider','0002_auto_20190406_1805','2023-03-30 03:48:50.093125'),(21,'oauth2_provider','0003_auto_20201211_1314','2023-03-30 03:48:50.144577'),(22,'oauth2_provider','0004_auto_20200902_2022','2023-03-30 03:48:50.554956'),(23,'oauth2_provider','0005_auto_20211222_2352','2023-03-30 03:48:50.624206'),(24,'oauth2_provider','0006_alter_application_client_secret','2023-03-30 03:48:50.650297'),(25,'sessions','0001_initial','2023-03-30 03:48:50.694591'),(26,'management','0002_faculty_active_faculty_created_date_and_more','2023-03-30 16:41:07.770185');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('qjw3a8kktzjso57n7ijn9fyg36rbqhel','.eJxVjDsOwyAQBe9CHaHlYwgp0-cMaIElOIlAMnYV5e4Rkgu7fTPzvszjtha_dVr8nNiNTexy3ALGN9UB0gvrs_HY6rrMgQ-F77TzR0v0ue_u6aBgL6OegDRaZSFJJDAQbRZOO-kwKACNCnQWgZQg6bIRFi0mCflKxkVAxX5_1Ac3iQ:1poIHd:9t6OL9kCka5AOrs9RTMqIzlZ2daceSDhCIZHFohL9l4','2023-05-01 06:24:13.424484');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_class`
--

LOCK TABLES `management_class` WRITE;
/*!40000 ALTER TABLE `management_class` DISABLE KEYS */;
INSERT INTO `management_class` VALUES ('2023-03-31 14:24:01.875851','2023-03-31 14:24:01.875851',1,'DH19IT01',1),('2023-03-31 14:24:04.573166','2023-03-31 14:24:04.573166',1,'DH19IT02',1),('2023-03-31 14:24:07.547569','2023-03-31 14:24:07.547569',1,'DH19IT03',1);
/*!40000 ALTER TABLE `management_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_comment`
--

LOCK TABLES `management_comment` WRITE;
/*!40000 ALTER TABLE `management_comment` DISABLE KEYS */;
INSERT INTO `management_comment` VALUES (1,'2023-03-31 15:05:03.453046','2023-03-31 15:05:03.453046',1,'MySQL nhé em',1,6),(2,'2023-03-31 15:05:21.441981','2023-03-31 15:05:21.441981',1,'không biết bạn ơi',1,9),(3,'2023-04-01 06:45:24.749032','2023-04-01 06:45:24.749032',1,'comment add',1,9),(4,'2023-04-01 06:46:32.396390','2023-04-01 06:46:32.396390',1,'comment add',1,9),(5,'2023-04-01 06:48:24.185422','2023-04-01 06:48:24.185422',1,'comment add',1,9),(6,'2023-04-01 06:50:55.925459','2023-04-01 06:50:55.925459',1,'cai qq',1,9),(7,'2023-04-01 06:51:32.042828','2023-04-01 06:51:32.042828',1,'cai qq',1,9),(8,'2023-04-01 07:00:49.359038','2023-04-01 07:00:49.359038',1,'cai qq',1,9),(9,'2023-04-01 07:10:50.914868','2023-04-01 07:10:50.914868',1,'sao z',1,9),(10,'2023-04-01 07:48:36.256141','2023-04-01 07:48:36.256141',1,'admin cmt',1,5);
/*!40000 ALTER TABLE `management_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_course`
--

LOCK TABLES `management_course` WRITE;
/*!40000 ALTER TABLE `management_course` DISABLE KEYS */;
INSERT INTO `management_course` VALUES (3,'2023-03-31 14:27:57.743045','2023-03-31 14:27:57.743045',1,'2023-02-08 14:26:19.000000','2023-04-14 14:26:22.000000','DH19IT03','ITEC4407','2645392858');
/*!40000 ALTER TABLE `management_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_course_students`
--

LOCK TABLES `management_course_students` WRITE;
/*!40000 ALTER TABLE `management_course_students` DISABLE KEYS */;
INSERT INTO `management_course_students` VALUES (15,3,'1951021263'),(11,3,'1951052123'),(14,3,'1951052125'),(13,3,'1951312263'),(12,3,'1951315263');
/*!40000 ALTER TABLE `management_course_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_faculty`
--

LOCK TABLES `management_faculty` WRITE;
/*!40000 ALTER TABLE `management_faculty` DISABLE KEYS */;
INSERT INTO `management_faculty` VALUES (1,'Công nghệ thông tin',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139'),(2,'Công nghệ thực phẩm',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139'),(3,'Kế toán - Kiểm toán',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139'),(4,'Ngôn ngữ Anh',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139'),(6,'Xây dựng',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139'),(7,'Luật',1,'2023-03-30 16:41:07.721801','2023-03-30 16:41:07.746139');
/*!40000 ALTER TABLE `management_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_mark`
--

LOCK TABLES `management_mark` WRITE;
/*!40000 ALTER TABLE `management_mark` DISABLE KEYS */;
INSERT INTO `management_mark` VALUES (1,'2023-03-31 14:43:56.720387','2023-03-31 14:43:56.720901',1,3,'1951052123');
/*!40000 ALTER TABLE `management_mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_markdetail`
--

LOCK TABLES `management_markdetail` WRITE;
/*!40000 ALTER TABLE `management_markdetail` DISABLE KEYS */;
INSERT INTO `management_markdetail` VALUES (1,'2023-03-31 14:44:06.680029','2023-03-31 14:44:06.680029',1,1,0,6,1),(2,'2023-03-31 14:44:14.575012','2023-03-31 14:44:14.575012',1,0,1,8,1);
/*!40000 ALTER TABLE `management_markdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_student`
--

LOCK TABLES `management_student` WRITE;
/*!40000 ALTER TABLE `management_student` DISABLE KEYS */;
INSERT INTO `management_student` VALUES ('1951021223',NULL,NULL,8),('1951021263',NULL,NULL,9),('1951052123',NULL,NULL,15),('1951052125',1,'DH19IT03',3),('1951311222',NULL,NULL,13),('1951312222',NULL,NULL,12),('1951312263',NULL,NULL,11),('1951315263',NULL,NULL,10);
/*!40000 ALTER TABLE `management_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_subject`
--

LOCK TABLES `management_subject` WRITE;
/*!40000 ALTER TABLE `management_subject` DISABLE KEYS */;
INSERT INTO `management_subject` VALUES ('2023-03-31 14:25:14.628823','2023-03-31 14:25:14.628823',1,'ITEC3408','Lập trình mạng',3,40,60),('2023-03-31 14:25:30.469009','2023-03-31 14:25:30.469009',1,'ITEC3417','Khai phá dữ liệu',3,40,60),('2023-03-31 14:25:20.638522','2023-03-31 14:25:20.638522',1,'ITEC3421','Các công nghệ lập trình hiện đại',3,40,60),('2023-03-31 14:25:40.160740','2023-03-31 14:25:40.160740',1,'ITEC4407','Lập trình Java',3,40,60);
/*!40000 ALTER TABLE `management_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_teacher`
--

LOCK TABLES `management_teacher` WRITE;
/*!40000 ALTER TABLE `management_teacher` DISABLE KEYS */;
INSERT INTO `management_teacher` VALUES ('2645392858',6);
/*!40000 ALTER TABLE `management_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_topic`
--

LOCK TABLES `management_topic` WRITE;
/*!40000 ALTER TABLE `management_topic` DISABLE KEYS */;
INSERT INTO `management_topic` VALUES (1,'2023-03-31 15:04:49.292030','2023-03-31 15:04:49.292030',1,'Bài tập về nhà môn Java','thầy cho em hỏi môn này dùng hệ quản trị CSDL gì vậy ạ?',15);
/*!40000 ALTER TABLE `management_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_user`
--

LOCK TABLES `management_user` WRITE;
/*!40000 ALTER TABLE `management_user` DISABLE KEYS */;
INSERT INTO `management_user` VALUES (3,'pbkdf2_sha256$390000$PSZFMDrrxvvTR8EPqdKsxi$bb3S7UX4BAzV5cpYXdfqFTjBxRRTQ3MhAY690K7Mp70=',NULL,0,'1951052125','Hoang qq','Nam',0,1,'2023-03-30 14:03:24.039347','1951052125nam@ou.edu.vn',0,'users/2023/03/7490_1_U6j9HqY.png'),(5,'pbkdf2_sha256$390000$U2lBr1J5LqtusWH3jp19RB$jbaWtRxfPU9eNOrZUIMmEJjduJeF4I+zhny9LNHf8AY=','2023-04-17 06:24:13.330071',1,'admin','','',1,1,'2023-03-30 14:46:06.992372','admin@gmail.com',0,'users/2023/03/7490_1.png'),(6,'1',NULL,0,'giangvien1','Nguyễn Văn','Thành',0,1,'2023-03-30 14:59:03.000000','2645392858thanh@ou.edu.vn',0,'users/2023/03/2a898ac3d8fac7365776a0e4120d0105.jpg'),(8,'pbkdf2_sha256$390000$ZJUOAOI5UJjxn2rJxBiNRu$Ly8uWn4azYM4BQrswS0Kv70wVYcz3KiZEurKw+mmFSQ=',NULL,0,'1951021223','Nguyen Hoang','Nam',0,1,'2023-03-30 16:00:07.183393','1951021223nam@ou.edu.vn',0,'users/2023/03/7490_1_R9fLHbv.png'),(9,'pbkdf2_sha256$390000$zUjEqoelhYL2rVcYVWSzaG$0ziMOayY4dzewTiVSBPWEMfINIQX0YKH5HhbrdfwyR4=',NULL,0,'1951021263','Nguyen Hoang','Nam',0,1,'2023-03-30 16:26:59.624349','1951021263linh@ou.edu.vn',0,'users/2023/03/7490_1_76cMD5R.png'),(10,'pbkdf2_sha256$390000$DZzm2RqM5e9TmNJhsNLeUL$j0EuvYFI/82g8S0AKbFJ+qYiFOrIyF3JSqKU11zSBbc=',NULL,0,'1951315263','Nguye','Nam',0,1,'2023-03-30 16:31:52.111873','1951315263linh@ou.edu.vn',0,'users/2023/03/7490_1_TyWr1FM.png'),(11,'pbkdf2_sha256$390000$DZzm2RqM5e9TmNJhsNLeUL$j0EuvYFI/82g8S0AKbFJ+qYiFOrIyF3JSqKU11zSBbc=',NULL,0,'1951312263','Nguyen Hoang','Nam',0,1,'2023-03-30 16:35:03.077482','1951312263linh@ou.edu.vn',0,'users/2023/03/7490_1_U8nOJ0Z.png'),(12,'pbkdf2_sha256$390000$DZzm2RqM5e9TmNJhsNLeUL$j0EuvYFI/82g8S0AKbFJ+qYiFOrIyF3JSqKU11zSBbc=',NULL,0,'1951312222','Nguyen','Nam',0,1,'2023-03-30 16:42:52.250436','1951312222thuy@ou.edu.vn',0,'users/2023/03/7490_1_LisZ4Fw.png'),(13,'pbkdf2_sha256$390000$DZzm2RqM5e9TmNJhsNLeUL$j0EuvYFI/82g8S0AKbFJ+qYiFOrIyF3JSqKU11zSBbc=',NULL,0,'1951311222','Hoang','Nam',0,1,'2023-03-30 16:47:33.114290','1951311222thuy@ou.edu.vn',0,'users/2023/03/7490_1_8M0m22r.png'),(15,'pbkdf2_sha256$390000$0ofW5HMWwvm4UzM0NezedS$vO+8sf0paVdoRrTRKbpQv2da8lYFMjY9zxIA5yRS6DA=',NULL,0,'1951052123','Luong Hoang','Nam',0,1,'2023-03-31 13:50:13.156921','1951052123nam@ou.edu.vn',0,'users/2023/03/9763c363dcc5389b61d4_josZTeD.jpg');
/*!40000 ALTER TABLE `management_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_user_groups`
--

LOCK TABLES `management_user_groups` WRITE;
/*!40000 ALTER TABLE `management_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_user_user_permissions`
--

LOCK TABLES `management_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `management_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'kk5hkKwzyoXhMnELZqEcz5PcGV11oQ','2023-03-31 02:50:52.817884','read write',1,12,'2023-03-30 16:50:52.817884','2023-03-30 16:50:52.817884',NULL,NULL),(2,'n3Gp4AWt4OuhDEr3psF1iDAlHsTDkG','2023-04-01 15:19:46.389499','read write',1,12,'2023-04-01 05:19:46.390835','2023-04-01 05:19:46.390835',NULL,NULL),(3,'36omgd55tof0Trv8nI8MSOp3Sb1rOF','2023-04-01 15:29:41.846473','read write',1,3,'2023-04-01 05:29:41.848271','2023-04-01 05:29:41.848271',NULL,NULL),(4,'D5IEWmovFGb7btYzlvG6YuyxTcLdcD','2023-04-01 15:45:15.012349','read write',1,5,'2023-04-01 05:45:15.013348','2023-04-01 05:45:15.013348',NULL,NULL),(5,'yKAmzpdWUEYk9c4oV2aVphkgvLEmpT','2023-04-01 17:44:37.993361','read write',1,5,'2023-04-01 07:44:37.994379','2023-04-01 07:44:37.994379',NULL,NULL),(6,'JhCSwaUufiaqjJWdxmarBbKMq0GFvV','2023-04-03 18:16:11.806682','read write',1,5,'2023-04-03 08:16:11.806682','2023-04-03 08:16:11.806682',NULL,NULL),(7,'4oBZyfBEUT25CmDydyUbVDke6E4hTR','2023-04-03 18:22:04.984686','read write',1,5,'2023-04-03 08:22:04.984686','2023-04-03 08:22:04.984686',NULL,NULL),(8,'CjDQYOkuWTvaL8Js6m5KgO3Tb1aU3s','2023-04-03 18:24:10.143440','read write',1,5,'2023-04-03 08:24:10.143440','2023-04-03 08:24:10.143440',NULL,NULL),(9,'gJ8fn4Ln5aPMzmr4VfCbYMKuEPPGKp','2023-04-03 18:24:28.024411','read write',1,5,'2023-04-03 08:24:28.024411','2023-04-03 08:24:28.024411',NULL,NULL),(10,'90LrJjDlgPAzZZBRx9XEu4D7ITtVUb','2023-04-03 18:26:57.862435','read write',1,5,'2023-04-03 08:26:57.862435','2023-04-03 08:26:57.863431',NULL,NULL),(11,'gWIq2Aws25sIwxs9MAImTE1yLCxWOE','2023-04-03 18:27:13.087112','read write',1,5,'2023-04-03 08:27:13.087112','2023-04-03 08:27:13.087112',NULL,NULL),(12,'1oMfwOpJcisS5luCBLlItTmXJJAO4m','2023-04-03 18:27:38.261864','read write',1,5,'2023-04-03 08:27:38.261864','2023-04-03 08:27:38.261864',NULL,NULL),(13,'fgZrfHzoN1k0mjVtQ0tP8Ter31g2Gx','2023-04-03 18:27:51.877337','read write',1,5,'2023-04-03 08:27:51.878334','2023-04-03 08:27:51.878334',NULL,NULL),(14,'cER1BY92p1cL0ddXXdHq5FwAszn2Gl','2023-04-03 18:28:38.152323','read write',1,5,'2023-04-03 08:28:38.152323','2023-04-03 08:28:38.152323',NULL,NULL),(15,'0g4EHYdMsMbzcU1i68fkoCZfX409k9','2023-04-03 18:28:40.093584','read write',1,5,'2023-04-03 08:28:40.094592','2023-04-03 08:28:40.094592',NULL,NULL),(16,'LGd9v8dEOEQgFa4Uwg34Dckf5gTDtE','2023-04-03 18:32:04.219825','read write',1,5,'2023-04-03 08:32:04.221072','2023-04-03 08:32:04.221072',NULL,NULL),(17,'AKwfoIBXaJ1VlJnLwGF5QSDKcmDJoZ','2023-04-03 18:34:33.046731','read write',1,5,'2023-04-03 08:34:33.046731','2023-04-03 08:34:33.046731',NULL,NULL),(18,'T4WkKY1Xfw1EuIuJwqmdQ1HviAhSwF','2023-04-03 18:35:28.545352','read write',1,5,'2023-04-03 08:35:28.546859','2023-04-03 08:35:28.546859',NULL,NULL),(19,'e7ZqOGJn84J2zW0xfEYn3eBb1LxGlF','2023-04-03 18:35:30.389975','read write',1,5,'2023-04-03 08:35:30.391019','2023-04-03 08:35:30.391019',NULL,NULL),(20,'MkjRrrNlBjIho2Av5iQJ24lMqnWiZK','2023-04-03 18:35:41.072963','read write',1,5,'2023-04-03 08:35:41.072963','2023-04-03 08:35:41.072963',NULL,NULL),(21,'orNABqffAo5TV6CbSPCA1xyydN0fP3','2023-04-03 18:36:28.901371','read write',1,5,'2023-04-03 08:36:28.902345','2023-04-03 08:36:28.902345',NULL,NULL),(22,'TDi8aM124pt7LL12hmlpgWTpqEgTzq','2023-04-03 18:37:23.662931','read write',1,5,'2023-04-03 08:37:23.662931','2023-04-03 08:37:23.662931',NULL,NULL),(23,'tAwPfzVkX7HxpFC51FY0HbPdWaOMgW','2023-04-03 18:39:03.439395','read write',1,5,'2023-04-03 08:39:03.439395','2023-04-03 08:39:03.439395',NULL,NULL),(24,'LAMClSUIoysqA392LDHfzKuVD6KcHX','2023-04-03 18:39:34.908342','read write',1,5,'2023-04-03 08:39:34.909349','2023-04-03 08:39:34.909349',NULL,NULL),(25,'WRwBUqZiKGLWgTx8mU0p023ApKQpdA','2023-04-03 18:39:48.102264','read write',1,5,'2023-04-03 08:39:48.103259','2023-04-03 08:39:48.103259',NULL,NULL),(26,'zW1oWUkxyGzkyCYLc7AgGJ6SHZVEe8','2023-04-03 18:40:23.270192','read write',1,3,'2023-04-03 08:40:23.272391','2023-04-03 08:40:23.272391',NULL,NULL),(27,'LeETg4DadvDytUxcvNjhwlhviEH3n3','2023-04-03 18:40:37.426253','read write',1,3,'2023-04-03 08:40:37.427256','2023-04-03 08:40:37.427256',NULL,NULL),(28,'bmT3T85qe3RtawXU3glCH3WRn3fWpR','2023-04-17 18:22:15.108337','read write',1,3,'2023-04-17 08:22:15.108337','2023-04-17 08:22:15.108337',NULL,NULL),(29,'QjgNcV9wYLApXoyt3DzF9lJtCAD66N','2023-04-17 18:22:59.419389','read write',1,3,'2023-04-17 08:22:59.420343','2023-04-17 08:22:59.420343',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'bmVMP3FSd4czmQm24ARPCTjznx9oZCq7n7RwbtzD','','confidential','password','pbkdf2_sha256$390000$jwKeiDnUXg6IPZyFO22N7T$TJR9HZP1Fz1CjYvt7ISJRhpLNcdzOV/X8qubk1pTq3M=','app',5,0,'2023-03-30 16:50:38.166708','2023-03-30 16:50:38.166708','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'epWC1GJfWX1CeZRqJHAG0YcP13Z0oO',1,1,12,'2023-03-30 16:50:52.830974','2023-03-30 16:50:52.830974',NULL),(2,'AUX3kZFZBdzXNUdB9tmHGnL34abjgZ',2,1,12,'2023-04-01 05:19:46.393930','2023-04-01 05:19:46.393930',NULL),(3,'NtM8UtGRLUmkZEw1Sws31aQmpfEheP',3,1,3,'2023-04-01 05:29:41.853216','2023-04-01 05:29:41.853216',NULL),(4,'yHcPe1OdfN7tW3SaxLMlDW7s2W5urw',4,1,5,'2023-04-01 05:45:15.015858','2023-04-01 05:45:15.015858',NULL),(5,'wnB1mabtJrJjR1qiN7EcVrOhPgm5mm',5,1,5,'2023-04-01 07:44:38.008679','2023-04-01 07:44:38.008679',NULL),(6,'oLAbEVsMjO93EwDkQTGvVIrvWTcPJ9',6,1,5,'2023-04-03 08:16:11.848457','2023-04-03 08:16:11.848457',NULL),(7,'ETd7OzmOuiOYvSBGwV2ko6CucjISHT',7,1,5,'2023-04-03 08:22:04.988662','2023-04-03 08:22:04.988662',NULL),(8,'igN9stXgNGF9MEjSacqpO9R1yOwhdT',8,1,5,'2023-04-03 08:24:10.146001','2023-04-03 08:24:10.146001',NULL),(9,'r2unyLgi3KiUmaGb7YHJy1ixpP5c0T',9,1,5,'2023-04-03 08:24:28.026932','2023-04-03 08:24:28.026932',NULL),(10,'hjPoObPngJ4Ra6eCbhZgKzX7eP7OIo',10,1,5,'2023-04-03 08:26:57.865436','2023-04-03 08:26:57.865955',NULL),(11,'eGzrDE2qIhJgz3UQ5jgfrpPIeN06Rt',11,1,5,'2023-04-03 08:27:13.089367','2023-04-03 08:27:13.089367',NULL),(12,'Vmeso1LXqn0Ff1HGHyBpRzwURH9GQ6',12,1,5,'2023-04-03 08:27:38.271780','2023-04-03 08:27:38.271780',NULL),(13,'bsihHSLATaeaTpYrIUnvLIUJtENUp5',13,1,5,'2023-04-03 08:27:51.879990','2023-04-03 08:27:51.879990',NULL),(14,'7Cgv0dFUMKwLcOsRyw7fg3KovHILxO',14,1,5,'2023-04-03 08:28:38.154322','2023-04-03 08:28:38.154322',NULL),(15,'MVkZMlDHyWI7gmHN4MZIwYP03xfKUd',15,1,5,'2023-04-03 08:28:40.103707','2023-04-03 08:28:40.103707',NULL),(16,'0qMmXaj8cdO0p5H5LUKCfGUZb8TSPu',16,1,5,'2023-04-03 08:32:04.224088','2023-04-03 08:32:04.224088',NULL),(17,'40URYqUVMJnzknmkQd0jJgnSndW0dq',17,1,5,'2023-04-03 08:34:33.049769','2023-04-03 08:34:33.049769',NULL),(18,'XN3UqOltk966UmWFq9XjWx5vfihz6l',18,1,5,'2023-04-03 08:35:28.549410','2023-04-03 08:35:28.549410',NULL),(19,'cprhrOqNia4HrKKd8GDz8naFq1wUd9',19,1,5,'2023-04-03 08:35:30.395030','2023-04-03 08:35:30.395030',NULL),(20,'mb694ZWkm1f864b73rF0TR7cyeVLik',20,1,5,'2023-04-03 08:35:41.076966','2023-04-03 08:35:41.076966',NULL),(21,'T8T4EufHWxGno4xCWPPvlZB5NLbw7t',21,1,5,'2023-04-03 08:36:28.904347','2023-04-03 08:36:28.904347',NULL),(22,'aR4yQJfnrQ3zeLEErBO9072P5Foxgg',22,1,5,'2023-04-03 08:37:23.664927','2023-04-03 08:37:23.664927',NULL),(23,'guDTWN3xmGOcthq3By6qeZXOGUkyxE',23,1,5,'2023-04-03 08:39:03.441922','2023-04-03 08:39:03.441922',NULL),(24,'9Oxf4RNF2YgHpfoZwQdH2565MO8zbN',24,1,5,'2023-04-03 08:39:34.911383','2023-04-03 08:39:34.911383',NULL),(25,'r0hPmWusBhaSOjyBrXat0ZxB6LEs1i',25,1,5,'2023-04-03 08:39:48.104821','2023-04-03 08:39:48.104821',NULL),(26,'yrJClfNk5FBvrB0aLrfWptJYzk2CIu',26,1,3,'2023-04-03 08:40:23.275464','2023-04-03 08:40:23.275464',NULL),(27,'K7fCIGa0d0NOrAZpKT1KdOJaV3i4Ox',27,1,3,'2023-04-03 08:40:37.429272','2023-04-03 08:40:37.429272',NULL),(28,'KJyQqmtiLyX5OlDY2PR3TjVKHNCVOW',28,1,3,'2023-04-17 08:22:15.130578','2023-04-17 08:22:15.130578',NULL),(29,'riDDmaUGbmmZK4o5SQJdFfgVOGjlrm',29,1,3,'2023-04-17 08:22:59.421342','2023-04-17 08:22:59.421342',NULL);
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

-- Dump completed on 2023-04-18 14:41:03
