-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ktmeeting
-- ------------------------------------------------------
-- Server version	5.5.5-10.2.6-MariaDB

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
-- Table structure for table `access_menu`
--

DROP TABLE IF EXISTS `access_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_menu` (
  `access_menu_id` int(5) NOT NULL AUTO_INCREMENT,
  `access_menu_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_menu_detail` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`access_menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_menu`
--

LOCK TABLES `access_menu` WRITE;
/*!40000 ALTER TABLE `access_menu` DISABLE KEYS */;
INSERT INTO `access_menu` VALUES (1,'[Admin]','ผู้ดูแลระบบ'),(2,'[system_setting]','ตั้งค่าผู้ใช้งานในระบบ'),(3,'[material_record]','ทะเบียนคุมยอดเงิน'),(4,'[computer]','ทะเบียนคอมพิวเตอร์'),(5,'[psd_stock]','ตัดจ่ายพัสดุครุภัณฑ์'),(6,'[news]','เพิ่มแก้ไขประกาศข่าว'),(7,'[booking_manage]','จัดการห้องประชุม');
/*!40000 ALTER TABLE `access_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL AUTO_INCREMENT,
  `booking_date_start` date DEFAULT NULL,
  `booking_time_start` time DEFAULT NULL,
  `booking_date_end` date DEFAULT NULL,
  `booking_time_end` time DEFAULT NULL,
  `booking_room_id` int(5) DEFAULT NULL,
  `booking_type_id` int(5) DEFAULT NULL,
  `booking_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_qty` decimal(5,0) DEFAULT NULL,
  `booking_detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_manage_type_id` int(5) DEFAULT NULL,
  `booking_budget_id` int(5) DEFAULT NULL,
  `notebook` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visualizer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `projector` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `led_tv` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mic1` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mic2` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sound_record` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vdo_record` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_record` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_table_type_id` int(5) DEFAULT NULL,
  `booking_member` int(5) DEFAULT NULL,
  `booking_department` int(5) DEFAULT NULL,
  `booking_status` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'2017-07-07','08:30:00','2017-07-07','16:30:00',1,2,'ทดสอบการจองห้องประชุม',30,'ขอเพิ่มป้ายหน้าห้อง',8,1,'Y','N','Y','Y','N','Y','N','N','N',4,1,3,'Y');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_budget`
--

DROP TABLE IF EXISTS `booking_budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_budget` (
  `booking_budget_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_budget_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_budget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_budget`
--

LOCK TABLES `booking_budget` WRITE;
/*!40000 ALTER TABLE `booking_budget` DISABLE KEYS */;
INSERT INTO `booking_budget` VALUES (1,'เงินบำรุง'),(2,'เงินสวัสดิการ'),(3,'เงินโครงการ'),(4,'เงินผู้จัด');
/*!40000 ALTER TABLE `booking_budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_equipment`
--

DROP TABLE IF EXISTS `booking_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_equipment` (
  `booking_equipment_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_equipment_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_equipment`
--

LOCK TABLES `booking_equipment` WRITE;
/*!40000 ALTER TABLE `booking_equipment` DISABLE KEYS */;
INSERT INTO `booking_equipment` VALUES (1,'คอมพิวเตอร์ Notebook'),(2,'เครื่องฉายแผ่นทึบ Visualizer'),(3,'เครื่องฉาย LCD Projecter'),(4,'โทรทัศน์สี LED TV 40นิ้ว'),(5,'ไมโครโฟนแบบตั้งโต๊ะ'),(6,'ไมโครโฟนแบบไร้สาย'),(7,'เครื่องบันทึกเสียง'),(8,'กล้องบันทึกวีดีโอ'),(9,'กล้องถ่ายภาพ');
/*!40000 ALTER TABLE `booking_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_manage_type`
--

DROP TABLE IF EXISTS `booking_manage_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_manage_type` (
  `booking_manage_type_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_manage_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_manage_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_manage_type`
--

LOCK TABLES `booking_manage_type` WRITE;
/*!40000 ALTER TABLE `booking_manage_type` DISABLE KEYS */;
INSERT INTO `booking_manage_type` VALUES (1,'จัดเครื่องดื่ม(น้ำเปล่า) 1 รอบเบรค'),(2,'จัดเครื่องดื่ม(น้ำเปล่า) 2 รอบเบรค'),(3,'จัดเครื่องดื่ม(น้ำเปล่า) 3 รอบเบรค'),(4,'จัดเครื่องดื่มพร้อมอาหารว่าง 1 รอบเบรค'),(5,'จัดเครื่องดื่มพร้อมอาหารว่าง 2 รอบเบรค'),(6,'จัดเครื่องดื่มพร้อมอาหารว่าง 3 รอบเบรค'),(7,'จัดเครื่องดื่มพร้อมอาหารว่าง 1 รอบเบรค และข้าวมื้อกลางวัน'),(8,'จัดเครื่องดื่มพร้อมอาหารว่าง 2 รอบเบรค และข้าวมื้อกลางวัน'),(9,'จัดเครื่องดื่มพร้อมอาหารว่าง 3 รอบเบรค และข้าวมื้อกลางวัน');
/*!40000 ALTER TABLE `booking_manage_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_room`
--

DROP TABLE IF EXISTS `booking_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_room` (
  `booking_room_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_room_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_room_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_room_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_room`
--

LOCK TABLES `booking_room` WRITE;
/*!40000 ALTER TABLE `booking_room` DISABLE KEYS */;
INSERT INTO `booking_room` VALUES (1,'ห้องประชุมขนาดใหญ่','ห้องประชุมขนาดใหญ่ สามารถใช้งานได้ไม่เกิน 100 ท่าน',NULL),(2,'ห้องประชุมขนาดกลาง','ห้องประชุมขนาดกลาง สามารถใช้งานได้ไม่เกิน 50 ท่าน',NULL),(3,'ห้องประชุมขนาดเล็ก','ห้องประชุมขนาดเล็ก สามารถใช้งานได้ไม่เกิน 20 ท่าน',NULL);
/*!40000 ALTER TABLE `booking_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_table_type`
--

DROP TABLE IF EXISTS `booking_table_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_table_type` (
  `booking_table_type_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_table_type_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_table_type_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_table_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_table_type`
--

LOCK TABLES `booking_table_type` WRITE;
/*!40000 ALTER TABLE `booking_table_type` DISABLE KEYS */;
INSERT INTO `booking_table_type` VALUES (1,'แบบ U shape (จัดแบบตัวU)',NULL),(2,'แบบ Boardroom (จัดแบบประชุมคณะกรรมการ)',NULL),(3,'แบบ Clusters (จัดแบบกลุ่ม/หมู่คณะ)',NULL),(4,'แบบ Classroom (จัดแบบห้องเรียน)',NULL),(5,'แบบ Theater (จัดแบบโรงละคร)',NULL),(6,'แบบ Circle of chairs (จัดแบบเก้าอี้วงกลม)',NULL);
/*!40000 ALTER TABLE `booking_table_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_time`
--

DROP TABLE IF EXISTS `booking_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_time` (
  `time` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_time`
--

LOCK TABLES `booking_time` WRITE;
/*!40000 ALTER TABLE `booking_time` DISABLE KEYS */;
INSERT INTO `booking_time` VALUES ('08:00:00'),('08:30:00'),('09:00:00'),('09:30:00'),('10:00:00'),('10:30:00'),('11:00:00'),('11:30:00'),('12:00:00'),('12:30:00'),('13:00:00'),('13:30:00'),('14:00:00'),('14:30:00'),('15:00:00'),('15:30:00'),('16:00:00'),('16:30:00'),('17:00:00');
/*!40000 ALTER TABLE `booking_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_type`
--

DROP TABLE IF EXISTS `booking_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_type` (
  `booking_type_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_type`
--

LOCK TABLES `booking_type` WRITE;
/*!40000 ALTER TABLE `booking_type` DISABLE KEYS */;
INSERT INTO `booking_type` VALUES (1,'ประชุม'),(2,'อบรม'),(3,'สัมมนา'),(4,'คณะศึกษาดูงาน');
/*!40000 ALTER TABLE `booking_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (1,'2017-07-06','::1',1),(2,'2017-07-07','127.0.0.1',1),(3,'2017-07-07','127.0.0.1',2),(4,'2017-07-18','127.0.0.1',1);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `department_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'ศูนย์คอมพิวเตอร์'),(2,'การเงินและบัญชี'),(3,'บริหารงานทั่วไป');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `member_id` int(5) NOT NULL AUTO_INCREMENT,
  `member_username` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `member_password` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `member_pname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_fname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_lname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_birthday` date DEFAULT NULL,
  `member_sex` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_dep` int(5) DEFAULT NULL,
  `department` int(5) DEFAULT NULL,
  `member_position` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_nickname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_detail` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_access` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_cid` char(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_tel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_staff` int(10) DEFAULT NULL,
  `member_status` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'admin','admin','นาย','ผู้ดูแลระบบ','','2015-10-22','M',NULL,1,'','','','',' [Admin]','','','',NULL,'Y'),(2,'test','1234','นางสาว','ทดสอบ','ระบบ','2015-10-22','F',NULL,3,'','','','',' ','','','',NULL,'Y');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
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
INSERT INTO `migration` VALUES ('m000000_000000_base',1500444758),('m130524_201442_init',1500444761);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly`
--

DROP TABLE IF EXISTS `monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly` (
  `m_id` int(2) NOT NULL AUTO_INCREMENT,
  `m_tname` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_ename` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly`
--

LOCK TABLES `monthly` WRITE;
/*!40000 ALTER TABLE `monthly` DISABLE KEYS */;
INSERT INTO `monthly` VALUES (1,'ม.ค.','January'),(2,'ก.พ.','February'),(3,'มี.ค.','March'),(4,'เม.ย.','April'),(5,'พ.ค.','May'),(6,'มิ.ย.','June'),(7,'ก.ค.','July'),(8,'ส.ค.','August'),(9,'ก.ย.','September'),(10,'ต.ค.','Octorber'),(11,'พ.ย.','November'),(12,'ธ.ค.','December');
/*!40000 ALTER TABLE `monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `news_head` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` int(10) DEFAULT NULL,
  `news_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `load_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_user` int(5) DEFAULT NULL,
  `news_type` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2015-10-22','09:36:46','ยินดีต้อนรับสู่ระบบจองห้องประชุม','- พัฒนาโดยใช้ Yii Framework\r\n- ใช้ร่วมกับฐานข้อมูล Mysql',1,'','',1,'1');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,'admin'),(2,'super'),(3,'user'),(99,'รอการอนุมัติ');
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT 99,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','H9eCBm6mPK40bYx4ChJqfngoSnjnwi5I','$2y$13$91fDPnpDWx3doXvyj0oOD.NnznEtiFR1qymqrvYFnqepyUY3OAT3S',NULL,99,'admin@ktmeeting.com',10,1500447328,1500447328),(2,'nont','Fymyj1qN8GXALSfWU1JQwkDgRi_cFH6a','$2y$13$3LJImynOlt.3uKhOEeyzGO70D/HV.gp7lz5RLULM8jifSZvUJxSYW',NULL,99,'nontage24@gmail.com',10,1500447686,1500447686);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather`
--

DROP TABLE IF EXISTS `weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `temp` decimal(10,2) DEFAULT NULL,
  `weather` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cloud` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wind` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather`
--

LOCK TABLES `weather` WRITE;
/*!40000 ALTER TABLE `weather` DISABLE KEYS */;
/*!40000 ALTER TABLE `weather` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ktmeeting'
--

--
-- Dumping routines for database 'ktmeeting'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-19 14:10:34
