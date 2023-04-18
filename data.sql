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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-18 14:56:01
