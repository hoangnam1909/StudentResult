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
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add class',7,'add_class'),(26,'Can change class',7,'change_class'),(27,'Can delete class',7,'delete_class'),(28,'Can view class',7,'view_class'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course'),(33,'Can add faculty',9,'add_faculty'),(34,'Can change faculty',9,'change_faculty'),(35,'Can delete faculty',9,'delete_faculty'),(36,'Can view faculty',9,'view_faculty'),(37,'Can add mark',10,'add_mark'),(38,'Can change mark',10,'change_mark'),(39,'Can delete mark',10,'delete_mark'),(40,'Can view mark',10,'view_mark'),(41,'Can add subject',11,'add_subject'),(42,'Can change subject',11,'change_subject'),(43,'Can delete subject',11,'delete_subject'),(44,'Can view subject',11,'view_subject'),(45,'Can add topic',12,'add_topic'),(46,'Can change topic',12,'change_topic'),(47,'Can delete topic',12,'delete_topic'),(48,'Can view topic',12,'view_topic'),(49,'Can add teacher',13,'add_teacher'),(50,'Can change teacher',13,'change_teacher'),(51,'Can delete teacher',13,'delete_teacher'),(52,'Can view teacher',13,'view_teacher'),(53,'Can add student',14,'add_student'),(54,'Can change student',14,'change_student'),(55,'Can delete student',14,'delete_student'),(56,'Can view student',14,'view_student'),(57,'Can add mark detail',15,'add_markdetail'),(58,'Can change mark detail',15,'change_markdetail'),(59,'Can delete mark detail',15,'delete_markdetail'),(60,'Can view mark detail',15,'view_markdetail'),(61,'Can add comment',16,'add_comment'),(62,'Can change comment',16,'change_comment'),(63,'Can delete comment',16,'delete_comment'),(64,'Can view comment',16,'view_comment'),(65,'Can add application',17,'add_application'),(66,'Can change application',17,'change_application'),(67,'Can delete application',17,'delete_application'),(68,'Can view application',17,'view_application'),(69,'Can add access token',18,'add_accesstoken'),(70,'Can change access token',18,'change_accesstoken'),(71,'Can delete access token',18,'delete_accesstoken'),(72,'Can view access token',18,'view_accesstoken'),(73,'Can add grant',19,'add_grant'),(74,'Can change grant',19,'change_grant'),(75,'Can delete grant',19,'delete_grant'),(76,'Can view grant',19,'view_grant'),(77,'Can add refresh token',20,'add_refreshtoken'),(78,'Can change refresh token',20,'change_refreshtoken'),(79,'Can delete refresh token',20,'delete_refreshtoken'),(80,'Can view refresh token',20,'view_refreshtoken'),(81,'Can add id token',21,'add_idtoken'),(82,'Can change id token',21,'change_idtoken'),(83,'Can delete id token',21,'delete_idtoken'),(84,'Can view id token',21,'view_idtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-04-30 14:43:28.722381','1','Công nghệ thông tin',1,'[{\"added\": {}}]',9,1),(2,'2023-04-30 14:43:53.885911','ITEC3408','ITEC3408 - Lập trình mạng',1,'[{\"added\": {}}]',11,1),(3,'2023-04-30 14:44:04.784114','ITEC3421','ITEC3421 - Các công nghệ lập trình hiện đại',1,'[{\"added\": {}}]',11,1),(4,'2023-04-30 14:44:15.102321','ITEC3406','ITEC3406 - Lập trình cơ sở dữ liệu',1,'[{\"added\": {}}]',11,1),(5,'2023-04-30 14:44:24.388426','ITEC3417','ITEC3417 - Khai phá dữ liệu',1,'[{\"added\": {}}]',11,1),(6,'2023-04-30 14:44:40.503628','ITEC4401','ITEC4401 - Đồ án ngành',1,'[{\"added\": {}}]',11,1),(7,'2023-04-30 14:44:50.891397','GLAW1315','GLAW1315 - Pháp luật đại cương',1,'[{\"added\": {}}]',11,1),(8,'2023-04-30 14:44:59.314449','ITEC3412','ITEC3412 - An toàn hệ thống thông tin',1,'[{\"added\": {}}]',11,1),(9,'2023-04-30 14:45:08.252419','ITEC4407','ITEC4407 - Lập trình Java',1,'[{\"added\": {}}]',11,1),(10,'2023-04-30 14:45:22.408695','ITEC4415','ITEC4415 - Kiểm thử phần mềm',1,'[{\"added\": {}}]',11,1),(11,'2023-04-30 14:45:45.990658','CS2001','CS2001',1,'[{\"added\": {}}]',7,1),(12,'2023-04-30 14:45:53.484322','CS1901','CS1901',1,'[{\"added\": {}}]',7,1),(13,'2023-04-30 14:45:55.794585','IT1903','IT1903',1,'[{\"added\": {}}]',7,1),(14,'2023-04-30 14:46:05.395545','IT1801','IT1801',1,'[{\"added\": {}}]',7,1),(15,'2023-04-30 14:46:09.514477','IT1902','IT1902',1,'[{\"added\": {}}]',7,1),(16,'2023-04-30 14:46:22.821397','IT1901','IT1901',1,'[{\"added\": {}}]',7,1),(17,'2023-04-30 14:46:28.641353','IM1901','IM1901',1,'[{\"added\": {}}]',7,1),(18,'2023-04-30 14:48:06.724439','2','Dương Hữu Thành - thanh.dh1 - thanh.dh1@ou.edu.vn',1,'[{\"added\": {}}]',6,1),(19,'2023-04-30 14:48:14.826540','thanh.dh1','thanh.dh1 - Dương Hữu Thành - thanh.dh1@ou.edu.vn',1,'[{\"added\": {}}]',13,1),(20,'2023-04-30 14:48:40.780713','3','Võ Thị Hồng Tuyết - tuyet.vth1 - tuyet.vth1@ou.edu.vn',1,'[{\"added\": {}}]',6,1),(21,'2023-04-30 14:48:42.179639','tuyet.vth1','tuyet.vth1 - Võ Thị Hồng Tuyết - tuyet.vth1@ou.edu.vn',1,'[{\"added\": {}}]',13,1),(22,'2023-04-30 14:50:07.664750','4','Lưu Quang Phương - phuong.lq1 - phuong.lq1@ou.edu.vn',1,'[{\"added\": {}}]',6,1),(23,'2023-04-30 14:50:09.979684','phuong.lq1','phuong.lq1 - Lưu Quang Phương - phuong.lq1@ou.edu.vn',1,'[{\"added\": {}}]',13,1),(24,'2023-04-30 15:02:56.691848','1','[ITEC3408] Lập trình mạng - CS2001',1,'[{\"added\": {}}]',8,1),(25,'2023-04-30 15:03:23.228087','2','[ITEC3421] Các công nghệ lập trình hiện đại - IT1903',1,'[{\"added\": {}}]',8,1),(26,'2023-04-30 15:04:47.426320','1','Nhắc học bù sáng mai thứ 7 (15/04)',1,'[{\"added\": {}}]',12,1),(27,'2023-04-30 15:05:06.999018','2','THÔNG BÁO NGHỈ SÁNG CHỦ NHẬT (12/02)',1,'[{\"added\": {}}]',12,1),(28,'2023-04-30 15:05:47.829120','3','[TB] V/v thực hiện bài kiểm tra trên máy 20/04/2023',1,'[{\"added\": {}}]',12,1),(29,'2023-04-30 15:06:10.800284','4','V/v THÔNG BÁO THAY ĐỔI Lịch thực hành ngày 06/04/2023, ngày 13/04/2023 & KIỂM TRA GK',1,'[{\"added\": {}}]',12,1),(30,'2023-04-30 15:06:33.794694','5','Xin các đề kiểm tra giữa kỳ của học kỳ trước',1,'[{\"added\": {}}]',12,1),(31,'2023-04-30 15:06:47.616898','6','Nộp bài tập về nhà trễ hạn',1,'[{\"added\": {}}]',12,1),(32,'2023-04-30 15:07:11.040289','1','Topic_id 5 - user_id 4 - 2023-04-30 15:07:11.039290+00:00',1,'[{\"added\": {}}]',16,1),(33,'2023-05-02 15:30:16.654356','9','[ITEC3421 - IT1903] [1951052123 - Lương Hoàng Nam]',3,'',10,1),(34,'2023-05-02 15:30:16.661133','8','[ITEC3421 - IT1903] [1951052125 - Nguyễn Hoàng Nam]',3,'',10,1),(35,'2023-05-02 15:30:16.664714','7','[ITEC3421 - IT1903] [1951052099 - Bùi Mạnh Linh]',3,'',10,1),(36,'2023-05-02 15:32:05.960576','2','[ITEC3421] Các công nghệ lập trình hiện đại - IT1903',2,'[{\"changed\": {\"fields\": [\"Students\", \"Is locked\"]}}]',8,1),(37,'2023-05-02 15:32:28.190867','12','[ITEC3421 - IT1903] [1951052125 - Nguyễn Hoàng Nam]',3,'',10,1),(38,'2023-05-02 15:32:28.196200','11','[ITEC3421 - IT1903] [1951052123 - Lương Hoàng Nam]',3,'',10,1),(39,'2023-05-02 15:32:28.199715','10','[ITEC3421 - IT1903] [1951052099 - Bùi Mạnh Linh]',3,'',10,1),(40,'2023-05-02 15:32:53.664904','2','[ITEC3421] Các công nghệ lập trình hiện đại - IT1903',2,'[{\"changed\": {\"fields\": [\"Students\"]}}]',8,1),(41,'2023-05-02 15:33:04.057699','2','[ITEC3421] Các công nghệ lập trình hiện đại - IT1903',2,'[{\"changed\": {\"fields\": [\"Is locked\"]}}]',8,1),(42,'2023-05-02 17:17:45.178731','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Students\"]}}]',8,1),(43,'2023-05-03 07:27:35.059250','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Students\", \"Locked\"]}}]',8,1),(44,'2023-05-03 07:30:23.730361','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Locked\"]}}]',8,1),(45,'2023-05-03 07:31:15.971811','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Locked\"]}}]',8,1),(46,'2023-05-03 07:31:48.397988','1','[ITEC3408] Lập trình mạng - CS2001',2,'[]',8,1),(47,'2023-05-03 07:31:55.833281','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Locked\"]}}]',8,1),(48,'2023-05-03 07:33:15.637811','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Locked\"]}}]',8,1),(49,'2023-05-03 07:34:54.340738','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Locked\"]}}]',8,1),(50,'2023-05-03 07:36:48.187103','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Locked\"]}}]',8,1),(51,'2023-05-03 07:40:59.931908','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Students\", \"Locked\"]}}]',8,1),(52,'2023-05-03 07:41:52.316083','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Students\", \"Locked\"]}}]',8,1),(53,'2023-05-03 07:43:16.624295','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Students\", \"Locked\"]}}]',8,1),(54,'2023-05-03 17:10:06.865240','3','[ITEC3412] An toàn hệ thống thông tin - IM1901',1,'[{\"added\": {}}]',8,1),(55,'2023-05-04 17:24:20.447509','2','[ITEC3421] Các công nghệ lập trình hiện đại - IT1903',2,'[{\"changed\": {\"fields\": [\"Result status\"]}}]',8,1),(56,'2023-05-05 08:31:05.752705','8','Nguyễn Minh Hiếu - 1951052055 - 1951052055hieu@ou.edu.vn',1,'[{\"added\": {}}]',6,1),(57,'2023-05-05 08:31:50.206486','1951052055','1951052055 - Nguyễn Minh Hiếu',1,'[{\"added\": {}}]',14,1),(58,'2023-05-05 08:34:58.716397','POLI1208','POLI1208 - Tư tưởng Hồ Chí Minh',1,'[{\"added\": {}}]',11,1),(59,'2023-05-05 13:44:25.012467','4','[ITEC4407] Lập trình Java - IT1801',1,'[{\"added\": {}}]',8,1),(60,'2023-05-05 13:44:50.614487','5','[ITEC4415] Kiểm thử phần mềm - IT1901',1,'[{\"added\": {}}]',8,1),(61,'2023-05-05 14:27:52.564388','2','[ITEC3421] Các công nghệ lập trình hiện đại - IT1903',2,'[{\"changed\": {\"fields\": [\"Students\"]}}]',8,1),(62,'2023-05-05 14:31:31.519469','9','vfs10317 vfs10317 - vfs10317 - vfs10317@zslsz.com',1,'[{\"added\": {}}]',6,1),(63,'2023-05-05 14:31:44.225344','vfs10317','vfs10317 - vfs10317 vfs10317',1,'[{\"added\": {}}]',14,1),(64,'2023-05-05 14:32:20.854139','10','ekv47274 ekv47274 - ekv47274 - ekv47274@nezid.com',1,'[{\"added\": {}}]',6,1),(65,'2023-05-05 14:32:29.486963','ekv47274','ekv47274 - ekv47274 ekv47274',1,'[{\"added\": {}}]',14,1),(66,'2023-05-05 14:33:04.012187','11','rcs57385 rcs57385 - rcs57385 - rcs57385@omeie.com',1,'[{\"added\": {}}]',6,1),(67,'2023-05-05 14:33:25.904062','12','lum15749 lum15749 - lum15749 - lum15749@nezid.com',1,'[{\"added\": {}}]',6,1),(68,'2023-05-05 14:33:44.267357','13','xxs40493 xxs40493 - xxs40493 - xxs40493@omeie.com',1,'[{\"added\": {}}]',6,1),(69,'2023-05-05 14:34:05.757377','14','eim10757 eim10757 - eim10757 - eim10757@nezid.com',1,'[{\"added\": {}}]',6,1),(70,'2023-05-05 14:34:21.216959','15','deh83395 deh83395 - deh83395 - deh83395@zslsz.com',1,'[{\"added\": {}}]',6,1),(71,'2023-05-05 14:34:35.706144','16','suz17527 suz17527 - suz17527 - suz17527@omeie.com',1,'[{\"added\": {}}]',6,1),(72,'2023-05-05 14:34:48.255553','17','dvr68046 dvr68046 - dvr68046 - dvr68046@zslsz.com',1,'[{\"added\": {}}]',6,1),(73,'2023-05-05 14:35:06.071433','18','hki40362 hki40362 - hki40362 - hki40362@nezid.com',1,'[{\"added\": {}}]',6,1),(74,'2023-05-05 14:37:27.850038','19','vtn66753 vtn66753 - vtn66753 - vtn66753@zslsz.com',1,'[{\"added\": {}}]',6,1),(75,'2023-05-05 14:40:28.910096','20','wax15680 wax15680 - wax15680 - wax15680@zslsz.com',1,'[{\"added\": {}}]',6,1),(76,'2023-05-05 15:01:21.863251','rcs57385','rcs57385 - rcs57385 rcs57385',1,'[{\"added\": {}}]',14,1),(77,'2023-05-05 15:01:29.485512','lum15749','lum15749 - lum15749 lum15749',1,'[{\"added\": {}}]',14,1),(78,'2023-05-05 15:01:38.474309','xxs40493','xxs40493 - xxs40493 xxs40493',1,'[{\"added\": {}}]',14,1),(79,'2023-05-05 15:01:48.296380','eim10757','eim10757 - eim10757 eim10757',1,'[{\"added\": {}}]',14,1),(80,'2023-05-05 15:01:55.917795','deh83395','deh83395 - deh83395 deh83395',1,'[{\"added\": {}}]',14,1),(81,'2023-05-05 15:02:10.596190','suz17527','suz17527 - suz17527 suz17527',1,'[{\"added\": {}}]',14,1),(82,'2023-05-05 15:02:16.659434','dvr68046','dvr68046 - dvr68046 dvr68046',1,'[{\"added\": {}}]',14,1),(83,'2023-05-05 15:02:26.536009','hki40362','hki40362 - hki40362 hki40362',1,'[{\"added\": {}}]',14,1),(84,'2023-05-05 15:02:35.077265','vtn66753','vtn66753 - vtn66753 vtn66753',1,'[{\"added\": {}}]',14,1),(85,'2023-05-05 15:02:45.294574','wax15680','wax15680 - wax15680 wax15680',1,'[{\"added\": {}}]',14,1),(86,'2023-05-05 15:06:15.450419','4','[ITEC4407] Lập trình Java - IT1801',2,'[{\"changed\": {\"fields\": [\"Students\"]}}]',8,1),(87,'2023-05-05 15:06:28.815711','5','[ITEC4415] Kiểm thử phần mềm - IT1901',2,'[{\"changed\": {\"fields\": [\"Students\"]}}]',8,1),(88,'2023-05-05 15:06:41.656018','1','[ITEC3408] Lập trình mạng - CS2001',2,'[{\"changed\": {\"fields\": [\"Students\"]}}]',8,1),(89,'2023-05-05 15:06:55.461216','3','[ITEC3412] An toàn hệ thống thông tin - IM1901',2,'[{\"changed\": {\"fields\": [\"Students\"]}}]',8,1),(90,'2023-05-05 15:07:04.273308','2','[ITEC3421] Các công nghệ lập trình hiện đại - IT1903',2,'[{\"changed\": {\"fields\": [\"Students\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'management','class'),(16,'management','comment'),(8,'management','course'),(9,'management','faculty'),(10,'management','mark'),(15,'management','markdetail'),(14,'management','student'),(11,'management','subject'),(13,'management','teacher'),(12,'management','topic'),(6,'management','user'),(18,'oauth2_provider','accesstoken'),(17,'oauth2_provider','application'),(19,'oauth2_provider','grant'),(21,'oauth2_provider','idtoken'),(20,'oauth2_provider','refreshtoken'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-04-30 14:39:33.569832'),(2,'contenttypes','0002_remove_content_type_name','2023-04-30 14:39:33.613287'),(3,'auth','0001_initial','2023-04-30 14:39:33.817143'),(4,'auth','0002_alter_permission_name_max_length','2023-04-30 14:39:33.860843'),(5,'auth','0003_alter_user_email_max_length','2023-04-30 14:39:33.867689'),(6,'auth','0004_alter_user_username_opts','2023-04-30 14:39:33.874788'),(7,'auth','0005_alter_user_last_login_null','2023-04-30 14:39:33.882295'),(8,'auth','0006_require_contenttypes_0002','2023-04-30 14:39:33.886370'),(9,'auth','0007_alter_validators_add_error_messages','2023-04-30 14:39:33.895763'),(10,'auth','0008_alter_user_username_max_length','2023-04-30 14:39:33.905931'),(11,'auth','0009_alter_user_last_name_max_length','2023-04-30 14:39:33.913828'),(12,'auth','0010_alter_group_name_max_length','2023-04-30 14:39:33.935325'),(13,'auth','0011_update_proxy_permissions','2023-04-30 14:39:33.944171'),(14,'auth','0012_alter_user_first_name_max_length','2023-04-30 14:39:33.953265'),(15,'management','0001_initial','2023-04-30 14:39:35.105278'),(16,'admin','0001_initial','2023-04-30 14:39:35.207751'),(17,'admin','0002_logentry_remove_auto_add','2023-04-30 14:39:35.220762'),(18,'admin','0003_logentry_add_action_flag_choices','2023-04-30 14:39:35.232970'),(19,'oauth2_provider','0001_initial','2023-04-30 14:39:35.670874'),(20,'oauth2_provider','0002_auto_20190406_1805','2023-04-30 14:39:35.722225'),(21,'oauth2_provider','0003_auto_20201211_1314','2023-04-30 14:39:35.759702'),(22,'oauth2_provider','0004_auto_20200902_2022','2023-04-30 14:39:36.028678'),(23,'oauth2_provider','0005_auto_20211222_2352','2023-04-30 14:39:36.109150'),(24,'oauth2_provider','0006_alter_application_client_secret','2023-04-30 14:39:36.145297'),(25,'sessions','0001_initial','2023-04-30 14:39:36.174227'),(26,'management','0002_alter_mark_course_alter_mark_student','2023-04-30 15:16:52.886212'),(27,'management','0003_rename_is_locked_course_locked','2023-05-02 15:37:54.476997'),(28,'management','0004_remove_course_locked','2023-05-03 07:44:49.201134'),(29,'management','0005_mark_mark_s10_mark_mark_s4','2023-05-03 08:08:17.608719');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('voxhg7gudix38d6apsa8iyns5fegkoec','.eJxVjMsOwiAQRf-FtSE87CAu3fcbyDAMUjWQlHZl_HfbpAvd3nPOfYuA61LC2nkOUxJXocXpd4tIT647SA-s9yap1WWeotwVedAux5b4dTvcv4OCvWw1sE8-5mwsOOUT28hE5DXDkM9sjFOZrBmygs1DBkTS4Ky7cPQ-QhafLwUWOLQ:1pt8Ds:WT19o8ZND6QXmRscyl4kjcyiH6srEvVNITHE7qEMSQg','2023-05-14 14:40:20.826415');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_class`
--

LOCK TABLES `management_class` WRITE;
/*!40000 ALTER TABLE `management_class` DISABLE KEYS */;
INSERT INTO `management_class` VALUES ('2023-04-30 14:45:53.483320','2023-04-30 14:45:53.483320',1,'CS1901',1),('2023-04-30 14:45:45.989638','2023-04-30 14:45:45.989638',1,'CS2001',1),('2023-04-30 14:46:28.639350','2023-04-30 14:46:28.639350',1,'IM1901',1),('2023-04-30 14:46:05.394546','2023-04-30 14:46:05.394546',1,'IT1801',1),('2023-04-30 14:46:22.820401','2023-04-30 14:46:22.820401',1,'IT1901',1),('2023-04-30 14:46:09.513477','2023-04-30 14:46:09.513477',1,'IT1902',1),('2023-04-30 14:45:55.794585','2023-04-30 14:45:55.794585',1,'IT1903',1);
/*!40000 ALTER TABLE `management_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_comment`
--

LOCK TABLES `management_comment` WRITE;
/*!40000 ALTER TABLE `management_comment` DISABLE KEYS */;
INSERT INTO `management_comment` VALUES (1,'2023-04-30 15:07:11.039290','2023-04-30 15:07:11.039290',1,'Chào em,\r\nĐề kiểm tra là các nội dung kiến thức đã được học, các bài tập các em đã được hướng dẫn & thực hiện, các bài tập gợi ý như thầy đã nói ở lớp em nhé.\r\n\r\nThầy.',5,4);
/*!40000 ALTER TABLE `management_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_course`
--

LOCK TABLES `management_course` WRITE;
/*!40000 ALTER TABLE `management_course` DISABLE KEYS */;
INSERT INTO `management_course` VALUES (1,'2023-04-30 15:02:56.684880','2023-05-05 15:06:41.653005',1,'2023-04-30 15:02:30.000000','2023-06-16 15:02:31.000000','DRAFT','CS2001','ITEC3408','phuong.lq1'),(2,'2023-04-30 15:03:23.223050','2023-05-05 15:07:04.270305',1,'2023-04-30 15:03:09.000000','2023-04-30 15:03:09.000000','DRAFT','IT1903','ITEC3421','thanh.dh1'),(3,'2023-05-03 17:10:06.850301','2023-05-05 15:06:55.458563',1,'2023-03-12 17:09:42.000000','2023-07-12 17:09:43.000000','DRAFT','IM1901','ITEC3412','phuong.lq1'),(4,'2023-05-05 13:44:25.007445','2023-05-05 15:06:15.447290',1,'2023-04-03 13:44:16.000000','2023-06-15 13:44:17.000000','DRAFT','IT1801','ITEC4407','thanh.dh1'),(5,'2023-05-05 13:44:50.610201','2023-05-05 15:06:28.812166',1,'2023-04-17 13:44:43.000000','2023-06-09 13:44:44.000000','DRAFT','IT1901','ITEC4415','thanh.dh1');
/*!40000 ALTER TABLE `management_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_course_students`
--

LOCK TABLES `management_course_students` WRITE;
/*!40000 ALTER TABLE `management_course_students` DISABLE KEYS */;
INSERT INTO `management_course_students` VALUES (17,1,'1951052099'),(18,1,'1951052123'),(16,1,'1951052125'),(49,1,'deh83395'),(45,1,'eim10757'),(47,1,'hki40362'),(50,1,'rcs57385'),(44,1,'suz17527'),(46,1,'vfs10317'),(51,1,'vtn66753'),(52,1,'wax15680'),(48,1,'xxs40493'),(30,2,'1951052055'),(7,2,'1951052099'),(6,2,'1951052123'),(4,2,'1951052125'),(67,2,'deh83395'),(66,2,'dvr68046'),(65,2,'hki40362'),(64,2,'lum15749'),(68,2,'rcs57385'),(62,2,'suz17527'),(63,2,'vfs10317'),(69,2,'vtn66753'),(70,2,'wax15680'),(59,3,'1951052055'),(21,3,'1951052099'),(20,3,'1951052123'),(19,3,'1951052125'),(56,3,'ekv47274'),(57,3,'hki40362'),(55,3,'lum15749'),(60,3,'rcs57385'),(53,3,'suz17527'),(54,3,'vfs10317'),(61,3,'wax15680'),(58,3,'xxs40493'),(23,4,'1951052055'),(24,4,'1951052099'),(25,4,'1951052123'),(22,4,'1951052125'),(32,4,'eim10757'),(33,4,'hki40362'),(35,4,'rcs57385'),(31,4,'suz17527'),(36,4,'vtn66753'),(34,4,'xxs40493'),(27,5,'1951052055'),(28,5,'1951052099'),(29,5,'1951052123'),(26,5,'1951052125'),(39,5,'dvr68046'),(38,5,'hki40362'),(41,5,'rcs57385'),(37,5,'suz17527'),(42,5,'vtn66753'),(43,5,'wax15680'),(40,5,'xxs40493');
/*!40000 ALTER TABLE `management_course_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_faculty`
--

LOCK TABLES `management_faculty` WRITE;
/*!40000 ALTER TABLE `management_faculty` DISABLE KEYS */;
INSERT INTO `management_faculty` VALUES (1,'2023-04-30 14:43:28.718785','2023-04-30 14:43:28.718785',1,'Công nghệ thông tin');
/*!40000 ALTER TABLE `management_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_mark`
--

LOCK TABLES `management_mark` WRITE;
/*!40000 ALTER TABLE `management_mark` DISABLE KEYS */;
INSERT INTO `management_mark` VALUES (13,'2023-05-02 15:33:04.053924','2023-05-05 13:53:10.702905',1,2,'1951052099',3,1.2),(14,'2023-05-02 15:33:04.054925','2023-05-05 13:53:10.706536',1,2,'1951052123',3,1.2),(15,'2023-05-02 15:33:04.055942','2023-05-05 13:53:10.710440',1,2,'1951052125',3,1.2),(35,'2023-05-03 07:52:39.507759','2023-05-03 07:52:39.507759',1,1,'1951052099',0,0),(36,'2023-05-03 07:52:39.514084','2023-05-03 07:52:39.514084',1,1,'1951052125',0,0),(37,'2023-05-03 07:52:39.519739','2023-05-03 07:52:39.519739',1,1,'1951052123',0,0),(38,'2023-05-05 14:27:34.214070','2023-05-05 14:27:34.214070',1,4,'1951052099',0,0),(39,'2023-05-05 14:27:34.218052','2023-05-05 14:27:34.218052',1,4,'1951052125',0,0),(40,'2023-05-05 14:27:34.221106','2023-05-05 14:27:34.221106',1,4,'1951052123',0,0),(41,'2023-05-05 14:27:34.223092','2023-05-05 14:27:34.223092',1,4,'1951052055',0,0),(42,'2023-05-05 14:27:41.190337','2023-05-05 14:27:41.190337',1,5,'1951052099',0,0),(43,'2023-05-05 14:27:41.195581','2023-05-05 14:27:41.195581',1,5,'1951052125',0,0),(44,'2023-05-05 14:27:41.199211','2023-05-05 14:27:41.199211',1,5,'1951052123',0,0),(45,'2023-05-05 14:27:41.203690','2023-05-05 14:27:41.203690',1,5,'1951052055',0,0),(46,'2023-05-05 14:28:09.837800','2023-05-05 14:28:09.837800',1,2,'1951052055',0,0),(47,'2023-05-05 15:07:19.533315','2023-05-05 15:07:19.533315',1,4,'eim10757',0,0),(48,'2023-05-05 15:07:19.537332','2023-05-05 15:07:19.537332',1,4,'hki40362',0,0),(49,'2023-05-05 15:07:19.542372','2023-05-05 15:07:19.542372',1,4,'rcs57385',0,0),(50,'2023-05-05 15:07:19.545914','2023-05-05 15:07:19.545914',1,4,'suz17527',0,0),(51,'2023-05-05 15:07:19.549163','2023-05-05 15:07:19.549163',1,4,'vtn66753',0,0),(52,'2023-05-05 15:07:19.552538','2023-05-05 15:07:19.552538',1,4,'xxs40493',0,0),(53,'2023-05-05 15:07:47.515688','2023-05-05 15:07:47.515688',1,2,'deh83395',0,0),(54,'2023-05-05 15:07:47.519194','2023-05-05 15:07:47.519194',1,2,'dvr68046',0,0),(55,'2023-05-05 15:07:47.522699','2023-05-05 15:07:47.522699',1,2,'hki40362',0,0),(56,'2023-05-05 15:07:47.528229','2023-05-05 15:07:47.528229',1,2,'lum15749',0,0),(57,'2023-05-05 15:07:47.532270','2023-05-05 15:07:47.532270',1,2,'rcs57385',0,0),(58,'2023-05-05 15:07:47.535804','2023-05-05 15:07:47.535804',1,2,'suz17527',0,0),(59,'2023-05-05 15:07:47.539345','2023-05-05 15:07:47.539345',1,2,'vfs10317',0,0),(60,'2023-05-05 15:07:47.543866','2023-05-05 15:07:47.543866',1,2,'vtn66753',0,0),(61,'2023-05-05 15:07:47.547081','2023-05-05 15:07:47.547081',1,2,'wax15680',0,0);
/*!40000 ALTER TABLE `management_mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_markdetail`
--

LOCK TABLES `management_markdetail` WRITE;
/*!40000 ALTER TABLE `management_markdetail` DISABLE KEYS */;
INSERT INTO `management_markdetail` VALUES (62,'2023-05-02 18:47:19.043487','2023-05-02 18:47:19.043487',1,1,0,3,13),(63,'2023-05-02 18:47:19.048816','2023-05-02 18:47:19.048816',1,0,1,3,13),(64,'2023-05-02 18:47:19.050788','2023-05-02 18:47:19.050788',1,1,0,3,13),(65,'2023-05-02 18:47:19.076959','2023-05-02 18:47:19.076959',1,1,0,3,14),(66,'2023-05-02 18:47:19.080998','2023-05-02 18:47:19.080998',1,1,0,3,14),(67,'2023-05-02 18:47:19.085498','2023-05-02 18:47:19.085498',1,1,0,3,14),(68,'2023-05-02 18:47:19.113862','2023-05-02 18:47:19.113862',1,1,0,3,15),(69,'2023-05-02 18:47:19.118940','2023-05-02 18:47:19.118940',1,1,0,3,15),(70,'2023-05-02 18:47:19.122008','2023-05-02 18:47:19.122008',1,0,1,3,15),(71,'2023-05-02 18:47:52.555404','2023-05-02 18:47:52.555404',1,1,0,3,15),(72,'2023-05-02 18:47:52.558414','2023-05-02 18:47:52.558414',1,1,0,3,15),(73,'2023-05-05 08:18:58.499398','2023-05-05 08:18:58.499398',1,0,1,3,14);
/*!40000 ALTER TABLE `management_markdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_student`
--

LOCK TABLES `management_student` WRITE;
/*!40000 ALTER TABLE `management_student` DISABLE KEYS */;
INSERT INTO `management_student` VALUES ('1951052055',1,'IT1903',8),('1951052099',NULL,NULL,5),('1951052123',NULL,NULL,7),('1951052125',NULL,NULL,6),('deh83395',1,'IT1901',15),('dvr68046',1,'IT1903',17),('eim10757',1,'IT1902',14),('ekv47274',1,'IT1801',10),('hki40362',1,'IT1902',18),('lum15749',1,'IT1903',12),('rcs57385',1,'IT1903',11),('suz17527',1,'IT1902',16),('vfs10317',1,'IT1902',9),('vtn66753',1,'IT1901',19),('wax15680',1,'IT1901',20),('xxs40493',1,'IT1902',13);
/*!40000 ALTER TABLE `management_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_subject`
--

LOCK TABLES `management_subject` WRITE;
/*!40000 ALTER TABLE `management_subject` DISABLE KEYS */;
INSERT INTO `management_subject` VALUES ('2023-04-30 14:44:50.889391','2023-04-30 14:44:50.889391',1,'GLAW1315','Pháp luật đại cương',3,40,60),('2023-04-30 14:44:15.101323','2023-04-30 14:44:15.101323',1,'ITEC3406','Lập trình cơ sở dữ liệu',3,40,60),('2023-04-30 14:43:53.883342','2023-04-30 14:43:53.883342',1,'ITEC3408','Lập trình mạng',3,40,60),('2023-04-30 14:44:59.313424','2023-04-30 14:44:59.313424',1,'ITEC3412','An toàn hệ thống thông tin',3,40,60),('2023-04-30 14:44:24.387429','2023-04-30 14:44:24.387429',1,'ITEC3417','Khai phá dữ liệu',3,40,60),('2023-04-30 14:44:04.783114','2023-04-30 14:44:04.783114',1,'ITEC3421','Các công nghệ lập trình hiện đại',3,40,60),('2023-04-30 14:44:40.502616','2023-04-30 14:44:40.502616',1,'ITEC4401','Đồ án ngành',4,40,60),('2023-04-30 14:45:08.249884','2023-04-30 14:45:08.249884',1,'ITEC4407','Lập trình Java',3,40,60),('2023-04-30 14:45:22.407259','2023-04-30 14:45:22.407259',1,'ITEC4415','Kiểm thử phần mềm',3,40,60),('2023-05-05 08:34:58.714784','2023-05-05 08:34:58.714784',1,'POLI1208','Tư tưởng Hồ Chí Minh',3,40,60);
/*!40000 ALTER TABLE `management_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_teacher`
--

LOCK TABLES `management_teacher` WRITE;
/*!40000 ALTER TABLE `management_teacher` DISABLE KEYS */;
INSERT INTO `management_teacher` VALUES ('thanh.dh1',2),('tuyet.vth1',3),('phuong.lq1',4);
/*!40000 ALTER TABLE `management_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_topic`
--

LOCK TABLES `management_topic` WRITE;
/*!40000 ALTER TABLE `management_topic` DISABLE KEYS */;
INSERT INTO `management_topic` VALUES (1,'2023-04-30 15:04:47.424276','2023-04-30 15:04:47.424276',1,'Nhắc học bù sáng mai thứ 7 (15/04)','Chào các bạn,\r\n\r\nNhư thầy đã thông báo trên lớp, sáng mai mình sẽ học bù 2 ca (Phòng máy 9) để kết thúc học phần thực hành của môn này và nghỉ cho 2 buổi tối 15/04 và 22/04.\r\n\r\nTrân trọng,',2,2),(2,'2023-04-30 15:05:06.998016','2023-04-30 15:05:06.998016',1,'THÔNG BÁO NGHỈ SÁNG CHỦ NHẬT (12/02)','Chào các bạn,\r\n\r\n- Lớp sáng chủ nhật (12/02/2023) được nghỉ do thầy bận lịch công tác đột xuất.\r\n\r\n- Các buổi thực hành tối thứ 2 (13/02/2023) và thứ 7 (18/02/2023) vẫn học bình thường.\r\n\r\nXin lỗi các bạn vì một số bất tiện này!',2,2),(3,'2023-04-30 15:05:47.827994','2023-04-30 15:05:47.827994',1,'[TB] V/v thực hiện bài kiểm tra trên máy 20/04/2023','Chào các em,\r\n\r\nThầy nhắc lại thông báo về việc thực hiện bài kiểm tra giữa kì trên máy :\r\n\r\nNgày Thứ năm, 20/04/2023 buổi chiều các em thực hiện bài kiểm tra GK trên máy tại PM5 - 371 Nguyễn Kiệm - Quận Gò Vấp - TP.HCM.\r\n\r\nThời gian:\r\n\r\nSinh viên đăng ký thực hành Ca 1: Bắt đầu lúc 13g\'\r\n\r\nSinh viên đăng ký thực hành Ca 2: Bắt đầu lúc 14g 45\'\r\n\r\nCác em nhớ có mặt đúng giờ để thực hiện bài kiểm tra, sinh viên vắng mặt sẽ không có kết quả GK.\r\n\r\n\r\nThầy.',4,1),(4,'2023-04-30 15:06:10.798284','2023-04-30 15:06:10.798284',1,'V/v THÔNG BÁO THAY ĐỔI Lịch thực hành ngày 06/04/2023, ngày 13/04/2023 & KIỂM TRA GK','Chào các em,\r\n\r\n- Do có một số lý do, lịch Thực hành & Kiểm tra giữa kì sẽ có thay đổi.\r\n\r\n- Thầy thông báo THAY ĐỔI lịch thực hành ngày 06/04/2023 và lịch thực hành tuần sau 13/04/2023 & Lịch kiểm tra Giữa kì như sau:\r\n\r\n1. Ngày thứ năm 06/04/2023 các em đi học bình thường 2 ca vào buổi chiều tại PM5\r\n\r\n2. Ngày thứ năm 13/04/2023 các em đi thực hành theo các nhóm như sau:\r\n\r\n+ Sinh viên đăng ký thực hành Ca 1 theo lịch của TKB các em sẽ thực hành buổi Sáng thứ 5 bắt đầu  lúc 7g  ngày 13/04/2023 tại PM8\r\n\r\n+ Sinh viên đăng ký thực hành Ca 2 theo lịch  của TKB các em sẽ thực hành theo đúng lịch Chiều thứ 5 ngày 13/04/2023 nhưng bắt đầu  lúc 13g tại PM5\r\n\r\n3. Ngày 20/04/2023 các em sẽ thực hiện bài Kiểm tra giữa kì trên máy buổi chiều tại PM5, Ca 1: 13g ; Ca 2: 14g45\'\r\n\r\nSinh viên được sử dụng tài liệu giấy ở các bài kiểm tra GK & CK.\r\n\r\nThầy.',4,1),(5,'2023-04-30 15:06:33.793670','2023-04-30 15:06:33.793670',1,'Xin các đề kiểm tra giữa kỳ của học kỳ trước','Em chào thầy. Thầy có thể cho em xin các file đề kiểm tra môn lập trình mạng của học kỳ trước để em tham khảo. Cảm ơn thầy.',6,1),(6,'2023-04-30 15:06:47.614898','2023-04-30 15:06:47.615900',1,'Nộp bài tập về nhà trễ hạn','Em chào thầy ạ. Em xin lỗi thầy vì hôm qua em nộp bài không đúng hạn ạ.\r\n\r\nDo là em đi theo công ty ra ngoại thành để làm vào ngày hôm đó, và lúc về tới nhà thì đã là 11h30 đêm khuya nên em đã trễ hạn ạ.\r\n\r\nEm xin phép thầy cho em hôm nay được nộp bù lại vào hôm nay ạ. Em xin lỗi thầy và em cũng cám ơn thầy ạ.',7,1);
/*!40000 ALTER TABLE `management_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_user`
--

LOCK TABLES `management_user` WRITE;
/*!40000 ALTER TABLE `management_user` DISABLE KEYS */;
INSERT INTO `management_user` VALUES (1,'pbkdf2_sha256$390000$zIRnPWytHEGvxDuAtp375Q$SEkvaC+4TsC6I2uVgGrj3wMXa3Im/eRi6lgMjc5Q/FY=','2023-04-30 14:40:20.761041',1,'admin','','',1,1,'2023-04-30 14:40:16.122626','admin@gmail.com',0,'','NO_ROLE'),(2,'pbkdf2_sha256$390000$GWfIj4J2fVpvyhWYAQpz5b$7DAnkeruCWukiyR3KjuJBorDvg6PmxENSI8FWHi/J90=',NULL,0,'thanh.dh1','Dương Hữu','Thành',0,1,'2023-04-30 14:48:06.465669','thanh.dh1@ou.edu.vn',1,'users/2023/04/z4198369065521_11c601c5536b76497091f5d64a41ae02_rnpf43Z.jpg','TEACHER'),(3,'pbkdf2_sha256$390000$n6U4IiUFI52Ctsn7imDZ1L$tvZ6E8yoF0ry4wNIVJ7WkGnog297kJ7KwDnShyNBlQY=',NULL,0,'tuyet.vth1','Võ Thị Hồng','Tuyết',0,1,'2023-04-30 14:48:40.634272','tuyet.vth1@ou.edu.vn',1,'users/2023/04/z4198369065521_11c601c5536b76497091f5d64a41ae02_CIEP9z8.jpg','TEACHER'),(4,'pbkdf2_sha256$390000$YXiVVKqwj0XbaGQDq1c4vJ$rDksUD1h02/j9tvWw2sTudHEl7mdpMukeBJaEV6XByQ=',NULL,0,'phuong.lq1','Lưu Quang','Phương',0,1,'2023-04-30 14:50:07.505247','phuong.lq1@ou.edu.vn',0,'users/2023/04/z4198369065521_11c601c5536b76497091f5d64a41ae02_0C0zuMJ.jpg','TEACHER'),(5,'pbkdf2_sha256$390000$LPUwO0jWyabKMKH9TMzmkX$aHbhUBppsE/dmqUwnmrC04CahqakDaIyfy0CbbgF5Xs=',NULL,0,'1951052099','Bùi Mạnh','Linh',0,1,'2023-04-30 14:54:44.994632','1951052099linh@ou.edu.vn',0,'users/2023/04/341056634_720479316535793_4541779416049032355_n.jpg','STUDENT'),(6,'pbkdf2_sha256$390000$4yuC3GFtNrSZOlT5TdeWhB$FMoQSxqZWGGtcvCJ5ubAEP5kPk0lkbhLuY0PyGjMh8M=',NULL,0,'1951052125','Nguyễn Hoàng','Nam',0,1,'2023-04-30 14:56:30.149503','1951052125nam@ou.edu.vn',0,'users/2023/04/49914646_967707916757510_1545321635303653376_n_2_MZTUtos.jpg','STUDENT'),(7,'pbkdf2_sha256$390000$R8opRbNwToEjmw904NA2p1$TYSHSa1Lm3DdqkZ4btM967265ODm1GDjLKi7LBTiHU0=',NULL,0,'1951052123','Lương Hoàng','Nam',0,1,'2023-04-30 14:57:45.325778','1951052123nam@ou.edu.vn',0,'users/2023/04/269639266_1003514793880511_2778633446153121529_n_EevxMYs.png','STUDENT'),(8,'pbkdf2_sha256$390000$qdtMX3raxD5Z8Qbu3Q2ux9$si2FO/RdI71UKmafQEKPJ9YuRQThEkopkKC6OcaxqGU=',NULL,0,'1951052055','Nguyễn Minh','Hiếu',0,1,'2023-05-05 08:31:05.422650','1951052055hieu@ou.edu.vn',0,'users/2023/05/277392621_531170558451209_4191490624857614752_n.png','STUDENT'),(9,'pbkdf2_sha256$390000$u9F25uy6JrqvdK9OPd3Cra$V9/4QYiRLT1Z7bX01GcVg34f/GsvmkF1XuvbJ6n+B/s=',NULL,0,'vfs10317','vfs10317','vfs10317',0,1,'2023-05-05 14:31:31.247570','vfs10317@zslsz.com',0,'users/2023/05/36852305_1071850716299858_5877637906780127232_n.jpg','STUDENT'),(10,'pbkdf2_sha256$390000$wIsCJt4pJlPtXdq3GDKn0t$/uK6Uze0/+yA8np8c1MHnZdOB6XEWIF/JVHkWhamY0k=',NULL,0,'ekv47274','ekv47274','ekv47274',0,1,'2023-05-05 14:32:20.680013','ekv47274@nezid.com',1,'users/2023/05/36852305_1071850716299858_5877637906780127232_n_3lhLclj.jpg','STUDENT'),(11,'pbkdf2_sha256$390000$DvP7jpR7hAvxrqk0W5JOxL$JXtwJHbyASScRiGhkZWCSzCUcgPSgyVOoJMYwZdqFDU=',NULL,0,'rcs57385','rcs57385','rcs57385',0,1,'2023-05-05 14:33:03.826673','rcs57385@omeie.com',0,'users/2023/05/36852305_1071850716299858_5877637906780127232_n_9rl6KR8.jpg','STUDENT'),(12,'pbkdf2_sha256$390000$6TtBWKrTalgpfMf0l9xt7P$V9/+P/HXh17MuvI+lpU/p8aga5h/NOB//i7mLHYlaEU=',NULL,0,'lum15749','lum15749','lum15749',0,1,'2023-05-05 14:33:25.694761','lum15749@nezid.com',0,'users/2023/05/36852305_1071850716299858_5877637906780127232_n_XTLJYRx.jpg','STUDENT'),(13,'pbkdf2_sha256$390000$IbMcprVpVZh4YBSQprcSld$mozMjwHCkBHY0d+mKn58vHgXauaL87BQo091l3XYFAI=',NULL,0,'xxs40493','xxs40493','xxs40493',0,1,'2023-05-05 14:33:44.049477','xxs40493@omeie.com',0,'users/2023/05/20230214_202040.jpg','STUDENT'),(14,'pbkdf2_sha256$390000$Ai8tUhAJ4e1RgdbPKqT4By$Kq83Mp57KK6n/83P0GsAXmmzQVETBV44LI7AVoNLx20=',NULL,0,'eim10757','eim10757','eim10757',0,1,'2023-05-05 14:34:05.586438','eim10757@nezid.com',1,'users/2023/05/20221108_100117.jpg','STUDENT'),(15,'pbkdf2_sha256$390000$t6x9YAXYTtP48Q4PyXcTuw$k+FWXqK0S4gh1qPb9/EIN75iKGjIiumy21U3VaYA0k8=',NULL,0,'deh83395','deh83395','deh83395',0,1,'2023-05-05 14:34:21.031730','deh83395@zslsz.com',0,'users/2023/05/20200520_120247.jpg','STUDENT'),(16,'pbkdf2_sha256$390000$Ck2ETYfhfh6RNg1g6i6Ira$9fj/YNHp+XxAIrbC7jBoiKztR86TkidxQLLIzy0WFkw=',NULL,0,'suz17527','suz17527','suz17527',0,1,'2023-05-05 14:34:35.546288','suz17527@omeie.com',1,'users/2023/05/71940184_2465615567001023_4757721834273636352_n.jpg','STUDENT'),(17,'pbkdf2_sha256$390000$2vukCziAe56IMXSH2WGjLx$iZ8jceZgIeEk5NoYtP84Se6Yyu6ohQh6YJDRnIwBiik=',NULL,0,'dvr68046','dvr68046','dvr68046',0,1,'2023-05-05 14:34:48.082658','dvr68046@zslsz.com',1,'users/2023/05/74343930_567187290490555_9195527145399517184_n.jpg','STUDENT'),(18,'pbkdf2_sha256$390000$pnLgrV4zKPp2baN5OOUlz3$L5sIX2ou1QTqMMdxNNWvmrBxOe1X1QdM+iLT8J+gokA=',NULL,0,'hki40362','hki40362','hki40362',0,1,'2023-05-05 14:35:05.902126','hki40362@nezid.com',0,'users/2023/05/317247710_669966884722407_8439014606666217221_n_cleanup.jpg','STUDENT'),(19,'pbkdf2_sha256$390000$IYjJAudj1gAtrFyoWQ1kE7$mW0G0DPeFdo0NzeUCSN2b7DkMxBeymNed/O2D9tGVls=',NULL,0,'vtn66753','vtn66753','vtn66753',0,1,'2023-05-05 14:37:27.630259','vtn66753@zslsz.com',0,'users/2023/05/20230214_202040_TdzYZC8.jpg','STUDENT'),(20,'pbkdf2_sha256$390000$NGfsfaIZLXeiwNR2nL1h5z$N1kNwglaWVtO7AuWbNlCJMyolarN8dSJHEHHwLe6Abo=',NULL,0,'wax15680','wax15680','wax15680',0,1,'2023-05-05 14:40:28.714313','wax15680@zslsz.com',0,'users/2023/05/316710792_905719517257156_1415766676679525445_n.jpg','STUDENT');
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
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'TNDPafWPP4SijqTM8n3hMAmtnbMvLx','2023-05-01 01:00:04.818024','read write',1,7,'2023-04-30 15:00:04.818024','2023-04-30 15:00:04.818024',NULL,NULL),(2,'T28c4huoUTTcNy3LrIVlnnfuzJLOS5','2023-05-01 01:01:57.160681','read write',1,6,'2023-04-30 15:01:57.161665','2023-04-30 15:01:57.161665',NULL,NULL),(3,'FpBQe4ikmCOImNtN0X1lq1bEAz5abt','2023-05-01 01:02:04.708144','read write',1,5,'2023-04-30 15:02:04.708144','2023-04-30 15:02:04.708144',NULL,NULL),(4,'7UOIHXjon2P73XbMpZQl7amEVx2v2d','2023-05-01 01:02:11.063760','read write',1,4,'2023-04-30 15:02:11.064760','2023-04-30 15:02:11.064760',NULL,NULL),(5,'2k6nXyJ9J5wBIqPpySDD8dAwtXDr5y','2023-05-01 01:02:18.854624','read write',1,2,'2023-04-30 15:02:18.854624','2023-04-30 15:02:18.854624',NULL,NULL),(6,'5qncaHQ4Hym4uftSvd8927dKeFBomC','2023-05-03 01:52:38.894395','read write',1,2,'2023-05-02 15:52:38.895378','2023-05-02 15:52:38.895378',NULL,NULL),(7,'kdEShFfGxj8EinvBzeq1HNtOko0eCY','2023-05-03 01:53:27.378980','read write',1,4,'2023-05-02 15:53:27.379980','2023-05-02 15:53:27.379980',NULL,NULL),(8,'c6BV4USmQWyYmjxZSlncNQ8SscO8Wz','2023-05-03 03:18:21.751520','read write',1,5,'2023-05-02 17:18:21.752577','2023-05-02 17:18:21.752577',NULL,NULL),(9,'USecLrw0sIjepYEDmC0BALS2TWWsb9','2023-05-03 03:21:30.344792','read write',1,6,'2023-05-02 17:21:30.344792','2023-05-02 17:21:30.344792',NULL,NULL),(10,'lceaesiGrl98iirL6fjXcMG0jO82Bk','2023-05-03 03:23:45.963198','read write',1,4,'2023-05-02 17:23:45.963198','2023-05-02 17:23:45.963198',NULL,NULL),(11,'6zXxajwjimF6aJvsdZ5mLw1ysARDhd','2023-05-03 03:24:33.041589','read write',1,6,'2023-05-02 17:24:33.042597','2023-05-02 17:24:33.042597',NULL,NULL),(12,'jPbIVj3s7JT8X7jOecRXPSL1OBklei','2023-05-03 03:26:55.013163','read write',1,2,'2023-05-02 17:26:55.013163','2023-05-02 17:26:55.013163',NULL,NULL),(13,'L7VfOA6tt495OWEDpnhfc0iX7UoBNY','2023-05-03 03:27:16.108542','read write',1,5,'2023-05-02 17:27:16.108542','2023-05-02 17:27:16.108542',NULL,NULL),(14,'H70UWv8RIZ2BByzfhI6UY1kU07s0ht','2023-05-03 03:27:29.136975','read write',1,6,'2023-05-02 17:27:29.136975','2023-05-02 17:27:29.136975',NULL,NULL),(15,'yt0u7lV0oGY44UK0mfsA8ZsJUVDAMY','2023-05-03 03:28:47.739966','read write',1,2,'2023-05-02 17:28:47.741026','2023-05-02 17:28:47.741026',NULL,NULL),(16,'qm6ca85ZhEU0UGlhsP11rw5SpSJTSx','2023-05-03 03:32:03.657139','read write',1,4,'2023-05-02 17:32:03.657139','2023-05-02 17:32:03.657139',NULL,NULL),(17,'qXZpwBDBpngkXLe74CErpCBNvqoAdF','2023-05-03 04:29:55.384626','read write',1,5,'2023-05-02 18:29:55.384626','2023-05-02 18:29:55.384626',NULL,NULL),(18,'ZKeJh8wHzpPzglCDYRvkiap8qR4PGA','2023-05-03 04:32:12.594133','read write',1,6,'2023-05-02 18:32:12.594133','2023-05-02 18:32:12.594133',NULL,NULL),(19,'rXo7GuoHayQuZ0A8EPKodjYd8urcuV','2023-05-03 17:12:55.731679','read write',1,2,'2023-05-03 07:12:55.731679','2023-05-03 07:12:55.731679',NULL,NULL),(20,'0wmxyOE7eDGSwd6nLu7yyoxLDf1Y9x','2023-05-03 17:52:08.719400','read write',1,4,'2023-05-03 07:52:08.720408','2023-05-03 07:52:08.720408',NULL,NULL),(21,'AtH6hN1ackgmBMAQC8kVKRJj06SbUb','2023-05-03 18:08:01.718147','read write',1,2,'2023-05-03 08:08:01.719230','2023-05-03 08:08:01.719230',NULL,NULL),(22,'xFjQhM8UTYva4ZqQZbeRkWkUBfr0vd','2023-05-03 18:42:20.418813','read write',1,2,'2023-05-03 08:42:20.419805','2023-05-03 08:42:20.419805',NULL,NULL),(23,'ce9SGVVgxknPOezMQ2s0lKw5t1CXTn','2023-05-04 00:17:58.747982','read write',1,6,'2023-05-03 14:17:58.748983','2023-05-03 14:17:58.748983',NULL,NULL),(24,'YGLhVjk0A0U20hWiDJjMogm7Vq4GCb','2023-05-04 03:10:36.168011','read write',1,6,'2023-05-03 17:10:36.168011','2023-05-03 17:10:36.168011',NULL,NULL),(25,'peOUKtNsCDCkVOYs6uvvSLVMMpdbmf','2023-05-05 00:52:10.002485','read write',1,2,'2023-05-04 14:52:10.002485','2023-05-04 14:52:10.002485',NULL,NULL),(26,'nIGIigSH3F3DlC29RKbGIO6jVPI6jl','2023-05-05 03:18:17.465657','read write',1,2,'2023-05-04 17:18:17.466306','2023-05-04 17:18:17.466306',NULL,NULL),(27,'aW6j99tBDT31WulkZ7NSs5sJif80fn','2023-05-05 03:23:17.631730','read write',1,2,'2023-05-04 17:23:17.632817','2023-05-04 17:23:17.632817',NULL,NULL),(29,'THy447UW8kaOwFnnIKRrq65pbBUzv0','2023-05-05 03:24:27.779602','read write',1,2,'2023-05-04 17:24:27.825494','2023-05-04 17:24:27.825494',28,NULL),(30,'bv2oggpYkVNaNuBYj6sIhTYxj8vWuW','2023-05-05 03:24:58.386118','read write',1,4,'2023-05-04 17:24:58.387182','2023-05-04 17:24:58.387182',NULL,NULL),(31,'5pNVqmUzmurx2hXcYtSqkZhzDeb0qq','2023-05-05 13:22:35.641159','read write',1,2,'2023-05-05 03:22:35.641159','2023-05-05 03:22:35.641159',NULL,NULL),(32,'XZWW8PccDkpneJrQ7Hk6HmzRyRYTcH','2023-05-05 17:37:51.084019','read write',1,2,'2023-05-05 07:37:51.085627','2023-05-05 07:37:51.085627',NULL,NULL),(33,'qdUCNvjJslJfoyim3UZocfErVvRC5U','2023-05-05 17:49:47.982714','read write',1,2,'2023-05-05 07:49:47.982714','2023-05-05 07:49:47.982714',NULL,NULL),(36,'fkE8Em1F56LyPgovFwWzJeI6PdoaKo','2023-05-05 18:23:15.212638','read write',1,2,'2023-05-05 08:23:15.212638','2023-05-05 08:23:15.212638',NULL,NULL),(38,'TlIijBz85go2qatRO1HlfkhwnwVqLn','2023-05-05 18:59:25.472947','read write',1,2,'2023-05-05 08:59:25.479475','2023-05-05 08:59:25.479475',37,NULL),(39,'LqXgUVQ1sAuQP30tkqemeG1vdxMr53','2023-05-05 23:51:30.170067','read write',1,2,'2023-05-05 13:51:30.170067','2023-05-05 13:51:30.170067',NULL,NULL),(42,'mJq0CierroVQ8BylHBTRtlECsUQRQ2','2023-05-05 23:54:30.159982','read write',1,2,'2023-05-05 13:54:30.167019','2023-05-05 13:54:30.167019',41,NULL),(45,'6nlR3zKKEGrVImH2zIqfA9dlHzdDCV','2023-05-06 00:27:55.134144','read write',1,2,'2023-05-05 14:27:55.141443','2023-05-05 14:27:55.141443',44,NULL),(46,'ylevPU6vUCs93GUZKkYP1zz8VGeUr9','2023-05-06 00:28:06.372145','read write',1,2,'2023-05-05 14:28:06.372145','2023-05-05 14:28:06.372145',NULL,NULL),(47,'kRkdfuUxHsyUa146OE09QFFqu0ObWm','2023-05-06 01:05:49.311174','read write',1,2,'2023-05-05 15:05:49.312208','2023-05-05 15:05:49.312208',NULL,NULL),(48,'gqB61T3U2TKhhsKr0NJBOEeCVxVv51','2023-05-06 01:07:15.536107','read write',1,2,'2023-05-05 15:07:15.536107','2023-05-05 15:07:15.536107',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'nndcTyE43GNLxlcRNGTrxeOi57KRsBDAUTn9QsOW','','confidential','password','pbkdf2_sha256$390000$Y4o35MGmta4tbEyRUVkrsN$tdy0v5Ddw7fvfMAZqOEjliDKM2T6jaB/3SwFv7hcKCU=','app1',1,0,'2023-04-30 14:40:52.334334','2023-04-30 14:40:52.334334','');
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
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'4lFPvG2CWUMCF6CTaTcW2t64ExQrub',1,1,7,'2023-04-30 15:00:04.848998','2023-04-30 15:00:04.848998',NULL),(2,'W7Ny8NWl1lnnxj3ap6G1fYdivDrMe2',2,1,6,'2023-04-30 15:01:57.164339','2023-04-30 15:01:57.164339',NULL),(3,'8GA9D1yjRfgAEwivoDvpkotQNz11by',3,1,5,'2023-04-30 15:02:04.709086','2023-04-30 15:02:04.709086',NULL),(4,'7ddNOP4tcEqNvKC7sfLSJcghKSuD0O',4,1,4,'2023-04-30 15:02:11.065778','2023-04-30 15:02:11.065778',NULL),(5,'50tG8rksBzZP0sHiGMDrhvGLMAHocf',5,1,2,'2023-04-30 15:02:18.855659','2023-04-30 15:02:18.855659',NULL),(6,'6XYzwFbIiahUKT827XEbuFmk9a0tv5',6,1,2,'2023-05-02 15:52:38.910988','2023-05-02 15:52:38.910988',NULL),(7,'Cz5CkwSMOKuuFZfZSYqfzUDFATN7j3',7,1,4,'2023-05-02 15:53:27.390754','2023-05-02 15:53:27.390754',NULL),(8,'11OkVUCKJN5WACY1VVip0uCvfcHPeq',8,1,5,'2023-05-02 17:18:21.776630','2023-05-02 17:18:21.776630',NULL),(9,'Zer7KFui5Jl2FsnvYKGLor53Amo8VI',9,1,6,'2023-05-02 17:21:30.347961','2023-05-02 17:21:30.347961',NULL),(10,'Z8rUH2iO3Umv6rQyX9fftkm45gicqn',10,1,4,'2023-05-02 17:23:45.967237','2023-05-02 17:23:45.967237',NULL),(11,'xCOGGQzOtwdH0vL3lLyNv6WPSQusxW',11,1,6,'2023-05-02 17:24:33.053055','2023-05-02 17:24:33.053055',NULL),(12,'l3scyhUoLvrw6tJqJCF7z5yjnAfrqz',12,1,2,'2023-05-02 17:26:55.025073','2023-05-02 17:26:55.025073',NULL),(13,'Cx8DyRetRXUTpk5H2tONBJioD1bCGX',13,1,5,'2023-05-02 17:27:16.109639','2023-05-02 17:27:16.109639',NULL),(14,'QGk2fG16e4AoXXLpOGJhXwJPzRLuXM',14,1,6,'2023-05-02 17:27:29.138983','2023-05-02 17:27:29.138983',NULL),(15,'5mJYGGbIFrA6g7krFG9hqwWaTieRmc',15,1,2,'2023-05-02 17:28:47.742960','2023-05-02 17:28:47.742960',NULL),(16,'pdkIXgZOIXD0C2EDbIZHYDWfeB7lhq',16,1,4,'2023-05-02 17:32:03.669342','2023-05-02 17:32:03.669342',NULL),(17,'msDvoplo90iDWFbEpWHC9YaQDTJxca',17,1,5,'2023-05-02 18:29:55.398348','2023-05-02 18:29:55.398860',NULL),(18,'733usAcXCoEMoql9QBCUNKL5UfhL0d',18,1,6,'2023-05-02 18:32:12.597227','2023-05-02 18:32:12.597227',NULL),(19,'hNxCzVzJyo5Qe6MIgaJuSoOcTzyBxv',19,1,2,'2023-05-03 07:12:55.748831','2023-05-03 07:12:55.748831',NULL),(20,'zH1ltqhAk8AdTFekowxYeXzheYagUN',20,1,4,'2023-05-03 07:52:08.722720','2023-05-03 07:52:08.722720',NULL),(21,'3sArwdqA1zFsCGasUSd4UCo9BK4css',21,1,2,'2023-05-03 08:08:01.722246','2023-05-03 08:08:01.722246',NULL),(22,'DxnYdLoBYam6GSV0sMdLJkVfvMCLvl',22,1,2,'2023-05-03 08:42:20.422721','2023-05-03 08:42:20.422721',NULL),(23,'WURfsUGABPQMbLEJrscGHJcUqXzdTz',23,1,6,'2023-05-03 14:17:58.768854','2023-05-03 14:17:58.768854',NULL),(24,'kKQbDy7yQqeLkjgUQtgp7mTd2IseFR',24,1,6,'2023-05-03 17:10:36.180927','2023-05-03 17:10:36.180927',NULL),(25,'Nxt06IK0X0voLQ8HrTcAoZcLGc92YV',25,1,2,'2023-05-04 14:52:10.021008','2023-05-04 14:52:10.022035',NULL),(26,'O1Gs5R75NJNzccr8Yw5tTjUEI6Ua3c',26,1,2,'2023-05-04 17:18:17.479205','2023-05-04 17:18:17.479205',NULL),(27,'NUZrsllnvMeM8pcKTyRRLQV3bxBKNx',27,1,2,'2023-05-04 17:23:17.636596','2023-05-04 17:23:17.637230',NULL),(28,'TLufMOTYAoiggynswW2lu1i6NR6rSZ',NULL,1,2,'2023-05-04 17:23:44.954265','2023-05-04 17:24:27.820525','2023-05-04 17:24:27.820525'),(29,'iUzEYnxiId5nsMp1XiZ9BzvFXjqkZS',29,1,2,'2023-05-04 17:24:27.827119','2023-05-04 17:24:27.827119',NULL),(30,'u21kT7mmylTpZP5N2uxo0kqJO6aaql',30,1,4,'2023-05-04 17:24:58.388126','2023-05-04 17:24:58.388126',NULL),(31,'gNVDaQEwb3wOWQIeFdZJjf33pxYbT7',31,1,2,'2023-05-05 03:22:35.653725','2023-05-05 03:22:35.653725',NULL),(32,'G8m5UsRSJsxB5cLado6vLi2IeKJETO',32,1,2,'2023-05-05 07:37:51.088585','2023-05-05 07:37:51.088585',NULL),(33,'G8GaKGEcgChwOXmxqOFPpLI0GWYmpR',33,1,2,'2023-05-05 07:49:47.985260','2023-05-05 07:49:47.985260',NULL),(34,'BJXmkDHH20Lp84iehEMFK89gL10XbJ',NULL,1,2,'2023-05-05 08:18:39.894959','2023-05-05 08:19:24.409285','2023-05-05 08:19:24.409285'),(35,'BrVVam1MAEhJgANBMplojs3UsLZ89W',NULL,1,2,'2023-05-05 08:19:24.411287','2023-05-05 08:34:06.281751','2023-05-05 08:34:06.280201'),(36,'9UCsJxsQNRY65oMPAH46kHZLxsnycX',36,1,2,'2023-05-05 08:23:15.213631','2023-05-05 08:23:15.213631',NULL),(37,'ohJd9lMU123OhhmsUOcM5NkeJVwXjj',NULL,1,2,'2023-05-05 08:34:06.283810','2023-05-05 08:59:25.478474','2023-05-05 08:59:25.478474'),(38,'wHFBItahDBBGs8YbinvYVR8cRl92Tx',38,1,2,'2023-05-05 08:59:25.480476','2023-05-05 08:59:25.480476',NULL),(39,'x1iJR2bYJYLYhguHUHbhc6bLGyrUMs',39,1,2,'2023-05-05 13:51:30.172012','2023-05-05 13:51:30.172012',NULL),(40,'stn2ursRIQ1NMN1UR36glGkpdWdUer',NULL,1,2,'2023-05-05 13:54:09.119497','2023-05-05 13:54:15.349494','2023-05-05 13:54:15.349494'),(41,'mwkZJb1Ph2Qxo2sP5FS9TvRV5kMKuh',NULL,1,2,'2023-05-05 13:54:15.354044','2023-05-05 13:54:30.166019','2023-05-05 13:54:30.166019'),(42,'IjU9b0YojXQhXarIzPHXD0AOp6ndus',42,1,2,'2023-05-05 13:54:30.168019','2023-05-05 13:54:30.168019',NULL),(43,'mNe40ZzjbT8pLRzmCqbCKxIOMLFE3x',NULL,1,2,'2023-05-05 13:54:41.916684','2023-05-05 14:27:26.426922','2023-05-05 14:27:26.426922'),(44,'q5Uo8dJPE97Y9FEUzcMQp5Gvt4o0lD',NULL,1,2,'2023-05-05 14:27:26.427923','2023-05-05 14:27:55.140334','2023-05-05 14:27:55.140334'),(45,'eNRgjRJplJUEkZsazYNuRRKYHxGU8q',45,1,2,'2023-05-05 14:27:55.142442','2023-05-05 14:27:55.142442',NULL),(46,'TXKVRdrWjHol0yxhzHKBLw0ylXoZ6g',46,1,2,'2023-05-05 14:28:06.373167','2023-05-05 14:28:06.373167',NULL),(47,'8StcaeNXdaSlqL2fkNSg44apb58ma9',47,1,2,'2023-05-05 15:05:49.313183','2023-05-05 15:05:49.313183',NULL),(48,'mtgTyI73Q74OYm7pGVjqXlMub42Mna',48,1,2,'2023-05-05 15:07:15.537238','2023-05-05 15:07:15.537238',NULL);
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

-- Dump completed on 2023-05-05 23:07:15
