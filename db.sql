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
-- Dumping data for table `management_class`
--

LOCK TABLES `management_class` WRITE;
/*!40000 ALTER TABLE `management_class` DISABLE KEYS */;
INSERT INTO `management_class` VALUES ('2023-03-30 02:38:26.038945','2023-03-30 02:38:26.038945',1,'DH19CS01',1),('2023-03-30 02:38:28.602581','2023-03-30 02:38:28.602581',1,'DH19CS02',1),('2023-03-30 02:38:09.987167','2023-03-30 02:38:09.987167',1,'DH19IT01',1),('2023-03-30 02:38:13.103553','2023-03-30 02:38:13.103553',1,'DH19IT02',1),('2023-03-30 02:38:15.445766','2023-03-30 02:38:15.445766',1,'DH19IT03',1),('2023-03-30 02:38:38.606357','2023-03-30 02:38:38.606357',1,'DH19LK01',3),('2023-03-30 02:38:42.769328','2023-03-30 02:38:42.769328',1,'DH19LK02',3);
/*!40000 ALTER TABLE `management_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_comment`
--

LOCK TABLES `management_comment` WRITE;
/*!40000 ALTER TABLE `management_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_course`
--

LOCK TABLES `management_course` WRITE;
/*!40000 ALTER TABLE `management_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_course_students`
--

LOCK TABLES `management_course_students` WRITE;
/*!40000 ALTER TABLE `management_course_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_course_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_faculty`
--

LOCK TABLES `management_faculty` WRITE;
/*!40000 ALTER TABLE `management_faculty` DISABLE KEYS */;
INSERT INTO `management_faculty` VALUES (1,'Công nghệ thông tin'),(2,'Công nghệ thực phẩm'),(3,'Luật'),(4,'Tài chính ngân hàng'),(5,'Xây dựng'),(6,'Marketing'),(7,'Ngôn ngữ Anh'),(8,'Ngôn ngữ Trung'),(9,'Ngôn ngữ Hàn'),(10,'Kế toán');
/*!40000 ALTER TABLE `management_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_mark`
--

LOCK TABLES `management_mark` WRITE;
/*!40000 ALTER TABLE `management_mark` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_markdetail`
--

LOCK TABLES `management_markdetail` WRITE;
/*!40000 ALTER TABLE `management_markdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_markdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_student`
--

LOCK TABLES `management_student` WRITE;
/*!40000 ALTER TABLE `management_student` DISABLE KEYS */;
INSERT INTO `management_student` VALUES ('1951052121',NULL,NULL,5),('1951052122',NULL,NULL,4),('1951052125',NULL,NULL,6);
/*!40000 ALTER TABLE `management_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_subject`
--

LOCK TABLES `management_subject` WRITE;
/*!40000 ALTER TABLE `management_subject` DISABLE KEYS */;
INSERT INTO `management_subject` VALUES ('2023-03-30 02:40:11.508343','2023-03-30 02:40:11.508343',1,'GLAW1315','Pháp luật đại cương',3,40,60),('2023-03-30 02:39:48.314126','2023-03-30 02:39:48.315123',1,'ITEC3406','Lập trình cơ sở dữ liệu',3,40,60),('2023-03-30 02:39:20.404282','2023-03-30 02:39:20.404282',1,'ITEC3408','Lập trình mạng',3,40,60),('2023-03-30 02:39:59.403987','2023-03-30 02:39:59.403987',1,'ITEC3417','Khai phá dữ liệu',3,40,60),('2023-03-30 02:39:32.027805','2023-03-30 02:39:32.027805',1,'ITEC3421','Các công nghệ lập trình hiện đại',3,40,60),('2023-03-30 02:39:39.853230','2023-03-30 02:39:39.853230',1,'ITEC4899','Thực tập tốt nghiệp',4,40,60),('2023-03-30 02:40:45.430077','2023-03-30 02:40:45.430077',1,'MATH2402','Toán rời rạc',4,40,60),('2023-03-30 02:40:54.711008','2023-03-30 02:40:54.711008',1,'POLI1205','Kinh tế chính trị Mác - Lênin',2,40,60),('2023-03-30 02:40:32.469856','2023-03-30 02:40:32.469856',1,'POLI1207','Lịch sử Đảng Cộng sản Việt Nam',2,40,60),('2023-03-30 02:40:19.519400','2023-03-30 02:40:19.519400',1,'POLI1208','Tư tưởng Hồ Chí Minh',2,40,60);
/*!40000 ALTER TABLE `management_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_teacher`
--

LOCK TABLES `management_teacher` WRITE;
/*!40000 ALTER TABLE `management_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_topic`
--

LOCK TABLES `management_topic` WRITE;
/*!40000 ALTER TABLE `management_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `management_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_user`
--

LOCK TABLES `management_user` WRITE;
/*!40000 ALTER TABLE `management_user` DISABLE KEYS */;
INSERT INTO `management_user` VALUES (1,'pbkdf2_sha256$390000$VMdCYHxTB9eADnKk030sQG$MNwXMOeVWHF5YLopHEAqdNbLCbDkUvuUVVaEKMQ8QuM=','2023-03-30 02:33:26.209374',1,'admin','','',1,1,'2023-03-30 02:32:46.404198','admin@gmail.com',0,''),(4,'1951052122',NULL,0,'1951052122','Nguyen Hoang','Nam',0,1,'2023-03-30 02:46:49.153255','1951052122nam@ou.edu.vn',0,''),(5,'pbkdf2_sha256$390000$A0c41cTPdJkx8jUXafbP3o$xCD/y9Fe0I7n++iRumAAsVAEgyVFyx/mX9ym5xyiYGc=',NULL,0,'1951052121','Nguyen Hoang','Nam',0,1,'2023-03-30 02:47:15.736537','1951052121nam@ou.edu.vn',0,''),(6,'pbkdf2_sha256$390000$JL03oFD55ckIhdOXqh0x8B$c3aoB5NjaAXQrH/b5LWmKAQ1BH5QGuNwzaq9RuTRTig=',NULL,0,'1951052125','Nguyen Hoang','Nam',0,1,'2023-03-30 03:11:43.215818','1951052125nam@ou.edu.vn',0,'');
/*!40000 ALTER TABLE `management_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-30 10:47:35
