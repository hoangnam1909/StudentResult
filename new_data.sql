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
INSERT INTO `management_class` VALUES ('2023-04-22 14:34:23.778354','2023-04-22 14:34:23.778354',1,'CS1901',2),('2023-04-22 14:34:17.275293','2023-04-22 14:34:17.275293',1,'CS2001',2),('2023-04-22 14:34:54.237751','2023-04-22 14:34:54.237751',1,'IM1901',2),('2023-04-22 14:34:30.763251','2023-04-22 14:34:30.763251',1,'IT1903',2),('2023-04-22 14:35:14.585512','2023-04-22 14:35:14.585512',1,'LA95',4);
/*!40000 ALTER TABLE `management_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_comment`
--

LOCK TABLES `management_comment` WRITE;
/*!40000 ALTER TABLE `management_comment` DISABLE KEYS */;
INSERT INTO `management_comment` VALUES (1,'2023-04-22 17:10:38.428078','2023-04-22 17:10:38.428078',1,'1951052422 comment1',1,2);
/*!40000 ALTER TABLE `management_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_course`
--

LOCK TABLES `management_course` WRITE;
/*!40000 ALTER TABLE `management_course` DISABLE KEYS */;
INSERT INTO `management_course` VALUES (1,'2023-04-22 16:10:35.670432','2023-04-22 16:10:35.670432',1,'2023-04-22 16:10:16.000000','2023-06-15 16:10:16.000000','CS2001','ITEC3408','123456');
/*!40000 ALTER TABLE `management_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_course_students`
--

LOCK TABLES `management_course_students` WRITE;
/*!40000 ALTER TABLE `management_course_students` DISABLE KEYS */;
INSERT INTO `management_course_students` VALUES (1,1,'1951052125');
/*!40000 ALTER TABLE `management_course_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_faculty`
--

LOCK TABLES `management_faculty` WRITE;
/*!40000 ALTER TABLE `management_faculty` DISABLE KEYS */;
INSERT INTO `management_faculty` VALUES (2,'2023-04-22 09:32:01.428241','2023-04-22 09:32:01.428241',1,'Công nghệ thông tin'),(3,'2023-04-22 09:32:06.438109','2023-04-22 09:32:06.438109',1,'Công nghệ thực phẩm'),(4,'2023-04-22 09:32:10.325810','2023-04-22 09:32:10.325810',1,'Luật'),(5,'2023-04-22 09:32:13.484774','2023-04-22 09:32:13.484774',1,'Kinh tế'),(6,'2023-04-22 14:33:32.799903','2023-04-22 14:33:32.799903',1,'Xây dựng'),(7,'2023-04-22 14:33:37.515697','2023-04-22 14:33:37.515697',1,'Marketing');
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
INSERT INTO `management_student` VALUES ('1951052125',NULL,NULL,2);
/*!40000 ALTER TABLE `management_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_subject`
--

LOCK TABLES `management_subject` WRITE;
/*!40000 ALTER TABLE `management_subject` DISABLE KEYS */;
INSERT INTO `management_subject` VALUES ('2023-04-22 14:39:20.789138','2023-04-22 14:39:20.789138',1,'ITEC1303','Kiến trúc máy tính',3,40,60),('2023-04-22 14:38:02.294819','2023-04-22 14:38:02.294819',1,'ITEC1401','Nhập môn tin học',3,40,60),('2023-04-22 14:39:39.137979','2023-04-22 14:39:39.137979',1,'ITEC1406','Thiết kế Web',3,40,60),('2023-04-22 14:39:12.620320','2023-04-22 14:39:12.620320',1,'ITEC1504','Kỹ thuật lập trình',4,40,60),('2023-04-22 14:37:43.496141','2023-04-22 14:37:43.496141',1,'ITEC1505','Cơ sở lập trình',4,40,60),('2023-04-22 14:39:54.962083','2023-04-22 14:39:54.962083',1,'ITEC2301','Hệ điều hành',3,40,60),('2023-04-22 16:10:09.797719','2023-04-22 16:10:09.797719',1,'ITEC3408','Lập trình mạng',3,40,60),('2023-04-22 16:09:45.519124','2023-04-22 16:09:45.519124',1,'ITEC3421','Các công nghệ lập trình hiện đại',3,40,60),('2023-04-22 14:37:34.185692','2023-04-22 14:37:34.185692',1,'MATH1313','Đại số tuyến tính',3,40,60),('2023-04-22 14:39:47.274327','2023-04-22 14:39:47.274327',1,'MATH1315','Xác suất và Thống kê',3,40,60),('2023-04-22 14:39:30.010792','2023-04-22 14:39:30.010792',1,'MISY2501','Cấu trúc dữ liệu và giải thuật',4,40,60);
/*!40000 ALTER TABLE `management_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_teacher`
--

LOCK TABLES `management_teacher` WRITE;
/*!40000 ALTER TABLE `management_teacher` DISABLE KEYS */;
INSERT INTO `management_teacher` VALUES ('123456',3);
/*!40000 ALTER TABLE `management_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_topic`
--

LOCK TABLES `management_topic` WRITE;
/*!40000 ALTER TABLE `management_topic` DISABLE KEYS */;
INSERT INTO `management_topic` VALUES (1,'2023-04-22 16:12:02.770301','2023-04-22 16:12:02.770301',1,'[TB] V/v thực hiện bài kiểm tra trên máy 20/04/2023','Ngày Thứ năm, 20/04/2023 buổi chiều các em thực hiện bài kiểm tra GK trên máy tại PM5 - 371 Nguyễn Kiệm - Quận Gò Vấp - TP.HCM.',3,1),(2,'2023-04-22 16:12:24.964721','2023-04-22 16:12:24.964721',1,'V/v THÔNG BÁO THAY ĐỔI Lịch thực hành ngày 06/04/2023, ngày 13/04/2023 & KIỂM TRA GK','Chào các em,\r\n\r\n- Do có một số lý do, lịch Thực hành & Kiểm tra giữa kì sẽ có thay đổi.\r\n\r\n- Thầy thông báo THAY ĐỔI lịch thực hành ngày 06/04/2023 và lịch thực hành tuần sau 13/04/2023 & Lịch kiểm tra Giữa kì như sau:\r\n\r\n1. Ngày thứ năm 06/04/2023 các em đi học bình thường 2 ca vào buổi chiều tại PM5\r\n\r\n2. Ngày thứ năm 13/04/2023 các em đi thực hành theo các nhóm như sau:\r\n\r\n+ Sinh viên đăng ký thực hành Ca 1 theo lịch của TKB các em sẽ thực hành buổi Sáng thứ 5 bắt đầu  lúc 7g  ngày 13/04/2023 tại PM8\r\n\r\n+ Sinh viên đăng ký thực hành Ca 2 theo lịch  của TKB các em sẽ thực hành theo đúng lịch Chiều thứ 5 ngày 13/04/2023 nhưng bắt đầu  lúc 13g tại PM5\r\n\r\n3. Ngày 20/04/2023 các em sẽ thực hiện bài Kiểm tra giữa kì trên máy buổi chiều tại PM5, Ca 1: 13g ; Ca 2: 14g45\'\r\n\r\nSinh viên được sử dụng tài liệu giấy ở các bài kiểm tra GK & CK.\r\n\r\n\r\nThầy.',3,1);
/*!40000 ALTER TABLE `management_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `management_user`
--

LOCK TABLES `management_user` WRITE;
/*!40000 ALTER TABLE `management_user` DISABLE KEYS */;
INSERT INTO `management_user` VALUES (1,'pbkdf2_sha256$390000$5KhXlt0OnnQiPb1uiDq8Gn$JtyQAbxhVD7NOTkTrzW8LjihNz7K/PYfGBCoh7fsmGQ=','2023-04-22 09:20:24.203648',1,'admin','','',1,1,'2023-04-22 09:18:41.585931','admin@gmail.com',0,''),(2,'pbkdf2_sha256$390000$lAEnUbpQNTUbOalOhFDMRb$q/PgllAeHlhPGm4vnPRRidfo5biEJSZWvaZbCMPvbug=',NULL,0,'1951052422','Nguyen Hoang','Nam',0,1,'2023-04-22 09:22:00.371401','1951052125nam@ou.edu.vn',0,'users/2023/04/49914646_967707916757510_1545321635303653376_n_2.jpg'),(3,'pbkdf2_sha256$390000$FrrGCpxCxi8LamAokQgcxV$UWTygIAbsNWLFMzJexnd66/NFhsuhZo1EqssbDE0S2w=',NULL,0,'thanh.dh','Dương Hữuu','Thành',0,1,'2023-04-22 14:50:57.912861','thanh.dh@gmail.com',0,'users/2023/04/z4198369065521_11c601c5536b76497091f5d64a41ae02.jpg');
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

-- Dump completed on 2023-04-23  0:13:36
