-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: cleandesk
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `cd_auth`
--

DROP TABLE IF EXISTS `cd_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(20) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_id`,`au_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_auth`
--

LOCK TABLES `cd_auth` WRITE;
/*!40000 ALTER TABLE `cd_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_autosave`
--

DROP TABLE IF EXISTS `cd_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_autosave` (
  `as_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint(20) unsigned NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` text NOT NULL,
  `as_datetime` datetime NOT NULL,
  PRIMARY KEY (`as_id`),
  UNIQUE KEY `as_uid` (`as_uid`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_autosave`
--

LOCK TABLES `cd_autosave` WRITE;
/*!40000 ALTER TABLE `cd_autosave` DISABLE KEYS */;
INSERT INTO `cd_autosave` VALUES (1,'admin',2021021501072135,'공지사항 첨부파일 테스트','<p><br></p>','2021-02-15 01:08:21');
/*!40000 ALTER TABLE `cd_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_board`
--

DROP TABLE IF EXISTS `cd_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_write_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_download_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_html_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_link_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_point` int(11) NOT NULL DEFAULT '0',
  `bo_write_point` int(11) NOT NULL DEFAULT '0',
  `bo_comment_point` int(11) NOT NULL DEFAULT '0',
  `bo_download_point` int(11) NOT NULL DEFAULT '0',
  `bo_use_category` tinyint(4) NOT NULL DEFAULT '0',
  `bo_category_list` text NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT '0',
  `bo_select_editor` varchar(50) NOT NULL DEFAULT '',
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_good` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_name` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_file` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_table_width` int(11) NOT NULL DEFAULT '0',
  `bo_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_new` int(11) NOT NULL DEFAULT '0',
  `bo_hot` int(11) NOT NULL DEFAULT '0',
  `bo_image_width` int(11) NOT NULL DEFAULT '0',
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` text NOT NULL,
  `bo_mobile_content_head` text NOT NULL,
  `bo_content_tail` text NOT NULL,
  `bo_mobile_content_tail` text NOT NULL,
  `bo_insert_content` text NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_upload_size` int(11) NOT NULL DEFAULT '0',
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_search` tinyint(4) NOT NULL DEFAULT '0',
  `bo_order` int(11) NOT NULL DEFAULT '0',
  `bo_count_write` int(11) NOT NULL DEFAULT '0',
  `bo_count_comment` int(11) NOT NULL DEFAULT '0',
  `bo_write_min` int(11) NOT NULL DEFAULT '0',
  `bo_write_max` int(11) NOT NULL DEFAULT '0',
  `bo_comment_min` int(11) NOT NULL DEFAULT '0',
  `bo_comment_max` int(11) NOT NULL DEFAULT '0',
  `bo_notice` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_captcha` tinyint(4) NOT NULL DEFAULT '0',
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`bo_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_board`
--

LOCK TABLES `cd_board` WRITE;
/*!40000 ALTER TABLE `cd_board` DISABLE KEYS */;
INSERT INTO `cd_board` VALUES ('archv','community','자료실','','both','',1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,'',0,0,0,0,'',0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,835,'theme/basic','basic','_head.php','_tail.php','','','','','',4,202,150,125,100,1048576,1,0,0,0,0,0,0,0,0,'',2,0,'',0,0,'','','','','','','','','','','','','','','','','','','','',''),('free','community','커뮤니티','','both','',2,2,1,1,1,1,1,1,1,1,1,0,0,0,0,0,'',0,0,0,0,'',0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,835,'theme/community','basic','_head.php','_tail.php','','','','','',4,202,150,125,100,1048576,1,0,0,0,0,0,0,0,0,'',2,0,'',0,0,'','','','','','','','','','','','','','','','','','','','',''),('gallery','community','갤러리','','both','',2,2,1,1,1,1,1,1,1,1,1,-1,5,1,-20,0,'',0,0,0,0,'',0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,835,'gallery','gallery','_head.php','_tail.php','','','','','',4,202,150,125,100,1048576,1,0,0,0,0,0,0,0,0,'',2,0,'',0,0,'','','','','','','','','','','','','','','','','','','','',''),('notice','community','공지사항','','both','',1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,'',0,0,0,1,'smarteditor2',0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,835,'theme/basic','basic','_head.php','_tail.php','','','','','',4,202,150,125,100,2097152,1,0,0,1,0,0,0,0,0,'6',2,0,'',0,0,'','','','','','','','','','','','','','','','','','','','',''),('qa','community','FAQ','','both','',1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,'',0,0,0,0,'',0,0,0,0,0,0,0,0,0,100,60,30,15,15,24,100,835,'theme/basic','basic','_head.php','_tail.php','','','','','',4,202,150,125,100,1048576,1,0,0,0,0,0,0,0,0,'',2,0,'',0,0,'','','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `cd_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_board_file`
--

DROP TABLE IF EXISTS `cd_board_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `bf_no` int(11) NOT NULL DEFAULT '0',
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_fileurl` varchar(255) NOT NULL DEFAULT '',
  `bf_thumburl` varchar(255) NOT NULL DEFAULT '',
  `bf_storage` varchar(50) NOT NULL DEFAULT '',
  `bf_filesize` int(11) NOT NULL DEFAULT '0',
  `bf_width` int(11) NOT NULL DEFAULT '0',
  `bf_height` smallint(6) NOT NULL DEFAULT '0',
  `bf_type` tinyint(4) NOT NULL DEFAULT '0',
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_board_file`
--

LOCK TABLES `cd_board_file` WRITE;
/*!40000 ALTER TABLE `cd_board_file` DISABLE KEYS */;
INSERT INTO `cd_board_file` VALUES ('notice',6,0,'사이버 교육 학습시 숙지사항.pdf','1028887781_pvsoc8dL_e86812920f712ebabfa32087df2779e644e6b7f1.pdf',5,'','','','',123428,0,0,0,'2022-08-15 21:36:58');
/*!40000 ALTER TABLE `cd_board_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_board_good`
--

DROP TABLE IF EXISTS `cd_board_good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_board_good` (
  `bg_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bg_id`),
  UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_board_good`
--

LOCK TABLES `cd_board_good` WRITE;
/*!40000 ALTER TABLE `cd_board_good` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_board_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_board_new`
--

DROP TABLE IF EXISTS `cd_board_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_board_new` (
  `bn_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `bn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`bn_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_board_new`
--

LOCK TABLES `cd_board_new` WRITE;
/*!40000 ALTER TABLE `cd_board_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_board_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_cert_history`
--

DROP TABLE IF EXISTS `cd_cert_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_cert_history` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT '0000-00-00',
  `cr_time` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`cr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_cert_history`
--

LOCK TABLES `cd_cert_history` WRITE;
/*!40000 ALTER TABLE `cd_cert_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_cert_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_certification`
--

DROP TABLE IF EXISTS `cd_certification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_certification` (
  `cer_no` int(11) NOT NULL AUTO_INCREMENT,
  `cer_num` varchar(45) NOT NULL,
  `cer_uid` varchar(45) NOT NULL,
  `cer_name` varchar(45) NOT NULL,
  `cer_com` varchar(45) NOT NULL,
  `cer_date` datetime NOT NULL,
  `cer_1` varchar(45) DEFAULT NULL,
  `cer_2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cer_no`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_certification`
--

LOCK TABLES `cd_certification` WRITE;
/*!40000 ALTER TABLE `cd_certification` DISABLE KEYS */;
INSERT INTO `cd_certification` VALUES (1,'2022-SE10-0001','admin','최고관리자','(주)디아크','0000-00-00 00:00:00',NULL,NULL),(2,'2022-SE10-0002','test04','테스트04','(주)디아크','2022-10-04 00:10:56',NULL,NULL),(3,'2022-SE10-0003','test03','테스트03','(주)디아크','2022-10-04 00:24:32',NULL,NULL),(4,'2022-SE10-0004','99290005','장우진','(주)디아크','2022-10-05 10:23:45',NULL,NULL),(5,'2022-SE10-0005','77220802','권형준','(주)디아크','2022-10-05 15:38:30',NULL,NULL),(6,'2022-SE10-0006','77220701','박용우','(주)디아크','2022-10-06 10:16:13',NULL,NULL),(7,'2022-SE10-0007','99202204','김수빈','(주)디아크','2022-10-06 13:03:03',NULL,NULL),(8,'2022-SE10-0008','77220603','강환희','(주)디아크','2022-10-06 14:28:45',NULL,NULL),(9,'2022-SE10-0009','200039','박재덕','(주)디아크','2022-10-07 13:55:45',NULL,NULL),(10,'2022-SE10-0010','99201010','김성종','(주)디아크','2022-10-07 16:03:50',NULL,NULL),(11,'2022-SE10-0011','99202110','송태일','(주)디아크','2022-10-11 12:24:39',NULL,NULL),(12,'2022-SE10-0012','99201009','남창우','(주)디아크','2022-10-13 14:11:24',NULL,NULL),(13,'2022-SE10-0013','77220602','김종곤','(주)디아크','2022-10-13 15:58:43',NULL,NULL),(14,'2022-SE10-0014','99201319','이귀남','(주)디아크','2022-10-17 16:49:35',NULL,NULL),(15,'2022-SE10-0015','99201904','김대기','(주)디아크','2022-10-18 14:56:22',NULL,NULL),(16,'2022-SE10-0016','99201923','김유정','(주)디아크','2022-10-19 15:10:29',NULL,NULL),(17,'2022-SE10-0017','99201508','최진오','(주)디아크','2022-10-19 15:23:54',NULL,NULL),(18,'2022-SE10-0018','99201711','조효제','(주)디아크','2022-10-19 16:26:44',NULL,NULL),(19,'2022-SE10-0019','99201922','김말순','(주)디아크','2022-10-19 16:35:57',NULL,NULL),(20,'2022-SE10-0020','77220604','고현섭','(주)디아크','2022-10-20 13:11:10',NULL,NULL),(21,'2022-SE10-0021','99201914','이상현','(주)디아크','2022-10-20 20:54:43',NULL,NULL),(22,'2022-SE10-0022','77220605','권지형','(주)디아크','2022-10-23 14:01:25',NULL,NULL),(23,'2022-SE10-0023','77220704','김경아','(주)디아크','2022-10-24 18:00:16',NULL,NULL),(24,'2022-SE10-0024','77220703','천영봉','(주)디아크','2022-10-25 10:39:37',NULL,NULL),(25,'2022-SE10-0025','77220504','조경순','(주)디아크','2022-10-26 15:10:38',NULL,NULL),(26,'2022-SE10-0026','77220801','김윤일','(주)디아크','2022-10-27 14:07:07',NULL,NULL),(27,'2022-SE10-0027','77220601','설정호','(주)디아크','2022-10-31 13:49:56',NULL,NULL),(28,'2022-SE10-0028','77220501','김현선','(주)디아크','2022-10-31 14:35:50',NULL,NULL),(29,'2022-SE10-0029','77220503','신명호','(주)디아크','2022-10-31 14:52:11',NULL,NULL),(30,'2022-SE10-0030','77220505','김서현','(주)디아크','2022-10-31 15:11:18',NULL,NULL),(31,'2022-SE10-0031','77220502','명인식','(주)디아크','2022-10-31 15:22:57',NULL,NULL);
/*!40000 ALTER TABLE `cd_certification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_config`
--

DROP TABLE IF EXISTS `cd_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(100) NOT NULL DEFAULT '',
  `cf_admin` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(100) NOT NULL DEFAULT '',
  `cf_add_script` text NOT NULL,
  `cf_use_point` tinyint(4) NOT NULL DEFAULT '0',
  `cf_point_term` int(11) NOT NULL DEFAULT '0',
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT '0',
  `cf_login_point` int(11) NOT NULL DEFAULT '0',
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT '0',
  `cf_nick_modify` int(11) NOT NULL DEFAULT '0',
  `cf_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT '0',
  `cf_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_point` int(11) NOT NULL DEFAULT '0',
  `cf_comment_point` int(11) NOT NULL DEFAULT '0',
  `cf_download_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_pages` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_pages` int(11) NOT NULL DEFAULT '0',
  `cf_link_target` varchar(50) NOT NULL DEFAULT '',
  `cf_bbs_rewrite` tinyint(4) NOT NULL DEFAULT '0',
  `cf_delay_sec` int(11) NOT NULL DEFAULT '0',
  `cf_filter` text NOT NULL,
  `cf_possible_ip` text NOT NULL,
  `cf_intercept_ip` text NOT NULL,
  `cf_analytics` text NOT NULL,
  `cf_add_meta` text NOT NULL,
  `cf_syndi_token` varchar(255) NOT NULL,
  `cf_syndi_except` text NOT NULL,
  `cf_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_point` int(11) NOT NULL DEFAULT '0',
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT '0',
  `cf_recommend_point` int(11) NOT NULL DEFAULT '0',
  `cf_leave_day` int(11) NOT NULL DEFAULT '0',
  `cf_search_part` int(11) NOT NULL DEFAULT '0',
  `cf_email_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_prohibit_id` text NOT NULL,
  `cf_prohibit_email` text NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT '0',
  `cf_memo_del` int(11) NOT NULL DEFAULT '0',
  `cf_visit_del` int(11) NOT NULL DEFAULT '0',
  `cf_popular_del` int(11) NOT NULL DEFAULT '0',
  `cf_optimize_date` date NOT NULL DEFAULT '0000-00-00',
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT '0',
  `cf_member_icon_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_height` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_img_height` int(11) NOT NULL DEFAULT '0',
  `cf_login_minutes` int(11) NOT NULL DEFAULT '0',
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT '0',
  `cf_stipulation` text NOT NULL,
  `cf_privacy` text NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT '0',
  `cf_memo_send_point` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(50) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(100) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(100) NOT NULL DEFAULT '',
  `cf_cert_limit` int(11) NOT NULL DEFAULT '0',
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT '0',
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_sms_type` varchar(10) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_token_key` varchar(100) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(50) NOT NULL DEFAULT '',
  `cf_social_login_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_social_servicelist` varchar(255) NOT NULL DEFAULT '',
  `cf_payco_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_payco_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(100) NOT NULL,
  `cf_facebook_secret` varchar(100) NOT NULL,
  `cf_twitter_key` varchar(100) NOT NULL,
  `cf_twitter_secret` varchar(100) NOT NULL,
  `cf_google_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_google_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_rest_key` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_client_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_js_apikey` varchar(100) NOT NULL,
  `cf_captcha` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_site_key` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_secret_key` varchar(100) NOT NULL DEFAULT '',
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_config`
--

LOCK TABLES `cd_config` WRITE;
/*!40000 ALTER TABLE `cd_config` DISABLE KEYS */;
INSERT INTO `cd_config` VALUES ('세종교육원','lofa','admin','admin@domain.com','클린데스크','',1,0,1,0,0,15,60,'basic',15,'basic','basic','basic',0,0,0,0,10,5,'_blank',0,30,'18아,18놈,18새끼,18뇬,18노,18것,18넘,개년,개놈,개뇬,개새,개색끼,개세끼,개세이,개쉐이,개쉑,개쉽,개시키,개자식,개좆,게색기,게색끼,광뇬,뇬,눈깔,뉘미럴,니귀미,니기미,니미,도촬,되질래,뒈져라,뒈진다,디져라,디진다,디질래,병쉰,병신,뻐큐,뻑큐,뽁큐,삐리넷,새꺄,쉬발,쉬밸,쉬팔,쉽알,스패킹,스팽,시벌,시부랄,시부럴,시부리,시불,시브랄,시팍,시팔,시펄,실밸,십8,십쌔,십창,싶알,쌉년,썅놈,쌔끼,쌩쑈,썅,써벌,썩을년,쎄꺄,쎄엑,쓰바,쓰발,쓰벌,쓰팔,씨8,씨댕,씨바,씨발,씨뱅,씨봉알,씨부랄,씨부럴,씨부렁,씨부리,씨불,씨브랄,씨빠,씨빨,씨뽀랄,씨팍,씨팔,씨펄,씹,아가리,아갈이,엄창,접년,잡놈,재랄,저주글,조까,조빠,조쟁이,조지냐,조진다,조질래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미랄,쫍빱,凸,퍽큐,뻑큐,빠큐,ㅅㅂㄹㅁ','','','','','','','basic',0,0,0,0,0,0,0,0,0,0,0,0,2,0,2,0,0,30,10000,1,0,0,0,0,0,0,0,0,'admin,administrator,관리자,운영자,어드민,주인장,webmaster,웹마스터,sysop,시삽,시샵,manager,매니저,메니저,root,루트,su,guest,방문객','',30,180,180,180,'2022-11-30',2,5000,22,22,50000,60,60,10,'gif|jpg|jpeg|png','swf','asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3',1,15,15,'오늘:1,어제:3,최대:13,전체:442',0,'해당 홈페이지에 맞는 회원가입약관을 입력합니다.','해당 홈페이지에 맞는 개인정보처리방침을 입력합니다.',0,0,'basic','basic','basic','basic','basic','basic','smarteditor2',0,'','','','','','',2,0,'','','','','211.172.232.124','7295','','',0,'','','','','','','','','','','','','','','kcaptcha','','','','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `cd_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_content`
--

DROP TABLE IF EXISTS `cd_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_content` (
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `co_html` tinyint(4) NOT NULL DEFAULT '0',
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_seo_title` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint(4) NOT NULL DEFAULT '0',
  `co_hit` int(11) NOT NULL DEFAULT '0',
  `co_include_head` varchar(255) NOT NULL,
  `co_include_tail` varchar(255) NOT NULL,
  PRIMARY KEY (`co_id`),
  KEY `co_seo_title` (`co_seo_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_content`
--

LOCK TABLES `cd_content` WRITE;
/*!40000 ALTER TABLE `cd_content` DISABLE KEYS */;
INSERT INTO `cd_content` VALUES ('company',1,'회사소개','<p align=center><b>회사소개에 대한 내용을 입력하십시오.</b></p>','회사소개','','','',0,0,'',''),('privacy',1,'개인정보 처리방침','<p align=center><b>개인정보 처리방침에 대한 내용을 입력하십시오.</b></p>','개인정보-처리방침','','','',0,0,'',''),('provision',1,'서비스 이용약관','<p align=center><b>서비스 이용약관에 대한 내용을 입력하십시오.</b></p>','서비스-이용약관','','','',0,0,'','');
/*!40000 ALTER TABLE `cd_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_faq`
--

DROP TABLE IF EXISTS `cd_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_faq` (
  `fa_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_id` int(11) NOT NULL DEFAULT '0',
  `fa_subject` text NOT NULL,
  `fa_content` text NOT NULL,
  `fa_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fa_id`),
  KEY `fm_id` (`fm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_faq`
--

LOCK TABLES `cd_faq` WRITE;
/*!40000 ALTER TABLE `cd_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_faq_master`
--

DROP TABLE IF EXISTS `cd_faq_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_faq_master` (
  `fm_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` text NOT NULL,
  `fm_tail_html` text NOT NULL,
  `fm_mobile_head_html` text NOT NULL,
  `fm_mobile_tail_html` text NOT NULL,
  `fm_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_faq_master`
--

LOCK TABLES `cd_faq_master` WRITE;
/*!40000 ALTER TABLE `cd_faq_master` DISABLE KEYS */;
INSERT INTO `cd_faq_master` VALUES (1,'자주하시는 질문','','','','',0);
/*!40000 ALTER TABLE `cd_faq_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_group`
--

DROP TABLE IF EXISTS `cd_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint(4) NOT NULL DEFAULT '0',
  `gr_order` int(11) NOT NULL DEFAULT '0',
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_group`
--

LOCK TABLES `cd_group` WRITE;
/*!40000 ALTER TABLE `cd_group` DISABLE KEYS */;
INSERT INTO `cd_group` VALUES ('community','커뮤니티','both','',0,0,'','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `cd_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_group_member`
--

DROP TABLE IF EXISTS `cd_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_group_member` (
  `gm_id` int(11) NOT NULL AUTO_INCREMENT,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`gm_id`),
  KEY `gr_id` (`gr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_group_member`
--

LOCK TABLES `cd_group_member` WRITE;
/*!40000 ALTER TABLE `cd_group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_lesson_apply`
--

DROP TABLE IF EXISTS `cd_lesson_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_lesson_apply` (
  `app_no` int(11) NOT NULL AUTO_INCREMENT,
  `app_lssn_no` int(11) NOT NULL DEFAULT '0',
  `app_uid` varchar(30) NOT NULL DEFAULT '',
  `app_payok` int(1) NOT NULL DEFAULT '0',
  `app_paydate` datetime DEFAULT NULL,
  `app_paymethod` varchar(10) NOT NULL DEFAULT '',
  `app_paybank` varchar(20) NOT NULL,
  `app_payaccount` varchar(50) NOT NULL,
  `app_payuser` varchar(30) NOT NULL,
  `app_card_name` varchar(30) NOT NULL DEFAULT '',
  `app_bank_uname` varchar(30) NOT NULL DEFAULT '',
  `app_payprice` bigint(20) NOT NULL,
  `app_cancel_private` varchar(50) NOT NULL DEFAULT '',
  `app_cancel_admin` varchar(20) NOT NULL DEFAULT '',
  `app_oid` bigint(20) DEFAULT NULL,
  `app_dateinfo` varchar(100) DEFAULT NULL,
  `app_datestart` date DEFAULT NULL,
  `app_dateend` date DEFAULT NULL,
  `app_rdate` datetime DEFAULT NULL,
  `app_cart_type` varchar(20) NOT NULL DEFAULT '',
  `app_cart_id` varchar(20) NOT NULL DEFAULT '',
  `app_descript` text NOT NULL,
  `app_rpoint` int(1) NOT NULL DEFAULT '0',
  `app_rprice` int(11) NOT NULL DEFAULT '0',
  `app_study_rate` int(11) NOT NULL DEFAULT '0',
  `app_study_chapter` int(11) NOT NULL DEFAULT '0',
  `app_study_page` int(11) NOT NULL DEFAULT '0',
  `app_evaluation` char(1) NOT NULL DEFAULT 'N',
  `app_evaluation_rdate` datetime DEFAULT NULL,
  `app_evaluation_success` char(1) NOT NULL DEFAULT 'N',
  `app_survey` char(1) NOT NULL DEFAULT 'N',
  `app_survey_rdate` datetime DEFAULT NULL,
  `app_certification` char(1) DEFAULT 'N',
  `app_certification_number` varchar(10) DEFAULT NULL,
  `app_certification_rdate` datetime DEFAULT NULL,
  `app_edate` datetime DEFAULT NULL,
  `app_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`app_no`),
  KEY `app_uid` (`app_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=507 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_lesson_apply`
--

LOCK TABLES `cd_lesson_apply` WRITE;
/*!40000 ALTER TABLE `cd_lesson_apply` DISABLE KEYS */;
INSERT INTO `cd_lesson_apply` VALUES (1,1,'admin',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2021-04-12 18:00:39','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(2,2,'admin',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2021-05-30 23:09:41','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(3,5,'admin',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2021-05-30 23:09:41','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(4,6,'admin',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2021-08-08 23:55:48','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(5,1,'test00',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2021-12-05 22:00:27','','','',0,0,10,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(6,5,'test00',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2021-12-05 22:01:34','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(7,6,'test00',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2021-12-05 22:01:43','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(8,1,'test01',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-03-18 16:19:19','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(9,8,'admin',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-03-20 19:14:39','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(15,9,'admin',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-12 02:32:56','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-12 03:03:47',NULL),(14,11,'admin',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-12 02:32:54','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-12 02:49:36',NULL),(13,10,'admin',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-12 02:30:59','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-12 02:32:19',NULL),(16,9,'test05',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-12 09:48:44','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(17,10,'test05',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-12 09:48:59','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-12 09:50:33',NULL),(18,11,'test05',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-12 09:49:22','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-12 09:49:49',NULL),(19,9,'test06',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-12 13:53:14','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-12 14:31:08',NULL),(20,10,'test06',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-12 13:56:23','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-12 13:59:43',NULL),(21,11,'test06',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-12 13:56:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-12 13:57:55',NULL),(22,9,'test00',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-14 15:36:46','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-14 15:37:16',NULL),(23,10,'test00',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-14 16:12:57','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-14 16:13:10',NULL),(24,11,'test00',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-14 16:16:33','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-14 16:16:50',NULL),(25,9,'test001',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 10:09:40','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-15 10:10:38',NULL),(26,10,'test001',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 10:10:56','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-15 10:11:12',NULL),(27,11,'test001',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 10:11:47','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-15 10:12:20',NULL),(28,9,'test002',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 19:41:25','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-15 19:42:14',NULL),(29,10,'test002',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 19:42:25','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-15 19:42:33',NULL),(30,11,'test002',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 19:43:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-15 19:43:37',NULL),(31,9,'test009',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 20:33:01','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(32,10,'test009',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 20:34:07','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 12:50:21',NULL),(33,11,'test009',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 20:34:10','','','',0,0,50,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(34,9,'test003',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 21:01:08','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-15 21:01:44',NULL),(35,10,'test003',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 21:02:01','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-15 21:02:08',NULL),(36,11,'test003',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 21:02:25','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-15 21:02:45',NULL),(37,10,'test004',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 21:08:05','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-15 21:08:12',NULL),(38,11,'test004',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-15 21:20:28','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-15 21:20:50',NULL),(39,9,'test07',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 08:48:41','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 08:49:08',NULL),(40,9,'2140',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 14:45:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 16:21:17',NULL),(41,10,'2148',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 14:48:50','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 17:01:38',NULL),(42,9,'2166',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 14:51:28','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 15:40:30',NULL),(43,9,'2175',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 14:53:31','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 16:56:05',NULL),(44,10,'2166',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 15:40:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 13:38:52',NULL),(45,11,'2166',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 15:43:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 10:43:44',NULL),(46,9,'2120',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 15:49:57','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 09:39:09',NULL),(47,10,'2140',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 16:34:45','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 16:49:28',NULL),(48,11,'2140',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 16:36:08','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 16:54:18',NULL),(49,9,'2151',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 16:39:15','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 17:19:24',NULL),(50,9,'2148',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 16:51:06','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 17:22:33',NULL),(51,9,'2165',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 16:54:03','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 18:11:35',NULL),(52,10,'2175',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 16:56:16','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 17:34:07',NULL),(53,11,'2151',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 17:19:01','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 09:28:14',NULL),(54,10,'2151',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 17:19:05','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 09:26:21',NULL),(55,9,'2180',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 17:57:15','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 15:38:10',NULL),(56,10,'2165',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 18:11:57','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 11:11:09',NULL),(57,9,'2195',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 18:19:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 09:22:58',NULL),(58,9,'2108',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 19:54:00','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 20:26:27',NULL),(59,10,'2108',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 20:26:48','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 20:54:00',NULL),(60,11,'2108',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-16 20:56:41','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-16 20:57:09',NULL),(61,9,'3070',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 07:38:27','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 08:18:57',NULL),(62,9,'2137',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 08:03:47','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 09:03:57',NULL),(63,10,'3070',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 08:19:17','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 11:33:31',NULL),(64,9,'2093',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 08:42:54','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 09:22:42',NULL),(65,9,'2062',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 08:48:19','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 10:25:45',NULL),(66,9,'2121',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:04:05','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 09:56:17',NULL),(67,9,'2160',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:04:21','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 10:06:49',NULL),(68,9,'2024',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:04:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 11:20:25',NULL),(69,9,'2183',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:16:08','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 10:35:27',NULL),(70,10,'2093',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:22:56','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 11:09:14',NULL),(71,10,'2195',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:23:29','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 17:59:39',NULL),(72,9,'2066',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:35:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 10:38:42',NULL),(73,9,'2082',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:37:00','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 11:05:06',NULL),(74,10,'2120',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:39:29','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 13:03:59',NULL),(75,10,'2121',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:56:33','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 14:45:55',NULL),(76,9,'2055',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:56:56','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 09:58:16',NULL),(77,10,'2055',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 09:58:53','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 10:21:26',NULL),(78,10,'2160',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 10:07:04','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 15:02:06',NULL),(79,11,'2160',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 10:14:39','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 11:28:58',NULL),(80,10,'2127',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 10:20:29','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(81,11,'2127',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 10:21:23','','','',0,0,50,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(82,10,'2066',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 10:23:08','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 14:05:47',NULL),(83,11,'2055',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 10:23:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 10:30:17',NULL),(84,10,'2062',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 10:26:10','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 12:06:48',NULL),(85,10,'test008',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 10:28:11','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(86,10,'2183',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 10:35:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 11:13:45',NULL),(87,9,'2063',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 10:47:59','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 12:53:08',NULL),(88,10,'2082',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 11:05:26','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 15:39:00',NULL),(89,11,'2093',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 11:11:29','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 09:14:26',NULL),(90,11,'2165',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 11:13:33','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 13:58:47',NULL),(91,9,'3069',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 11:17:12','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 13:42:24',NULL),(92,10,'2024',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 11:20:34','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 18:00:53',NULL),(93,11,'3070',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 11:35:32','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 13:17:39',NULL),(94,9,'2057',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 11:55:45','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 13:24:29',NULL),(95,11,'2062',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 12:13:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 12:47:55',NULL),(96,9,'2191',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 12:22:29','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 12:06:39',NULL),(97,11,'2191',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 12:23:06','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 10:36:17',NULL),(98,10,'2063',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 12:53:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 15:24:56',NULL),(99,9,'2185',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 12:58:55','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 13:08:43',NULL),(100,9,'2099',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:05:25','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 14:50:19',NULL),(101,11,'2120',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:06:17','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 17:28:03',NULL),(102,9,'2157',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:07:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 13:28:19',NULL),(103,10,'2157',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:09:56','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 13:30:34',NULL),(104,9,'2112',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:09:59','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 15:50:25',NULL),(105,10,'2185',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:10:08','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:39:43',NULL),(106,9,'2142',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:10:12','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 13:49:55',NULL),(107,11,'2157',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:11:46','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 13:23:36',NULL),(108,10,'2057',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:26:08','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 13:32:17',NULL),(109,9,'2058',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:29:59','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 14:19:37',NULL),(110,9,'3038',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:39:00','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 14:21:14',NULL),(111,10,'2142',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:50:07','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 14:02:22',NULL),(112,9,'2090',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 13:51:13','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 14:29:21',NULL),(113,11,'2066',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 14:09:16','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 09:26:27',NULL),(114,9,'2034',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 14:17:02','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 15:05:07',NULL),(115,10,'2058',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 14:20:19','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 13:31:29',NULL),(116,10,'3038',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 14:21:30','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:34:11',NULL),(117,9,'2178',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 14:25:26','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:31:49',NULL),(118,10,'2090',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 14:29:35','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:22:19',NULL),(119,9,'2154',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 14:33:58','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 15:18:51',NULL),(120,9,'2020',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 14:43:31','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 15:19:24',NULL),(121,11,'2121',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 14:48:53','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 17:46:17',NULL),(122,9,'2182',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 14:54:22','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 15:32:14',NULL),(123,10,'2034',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:05:33','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 11:37:17',NULL),(124,11,'2034',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:06:41','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:23:54',NULL),(125,10,'3069',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:17:48','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 08:44:44',NULL),(126,10,'2020',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:19:55','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 17:39:56',NULL),(127,10,'2154',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:23:57','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:58:24',NULL),(128,11,'2020',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:24:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:16:53',NULL),(129,11,'2063',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:27:04','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:47:47',NULL),(130,10,'2182',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:32:33','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:57:35',NULL),(131,9,'2117',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:32:41','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:26:23',NULL),(132,10,'2180',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:38:19','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 17:06:52',NULL),(133,9,'2153',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:39:05','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:42:48',NULL),(134,11,'2082',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:41:15','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 17:19:38',NULL),(135,9,'2026',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 15:56:01','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:32:45',NULL),(136,9,'2131',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:12:40','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:52:47',NULL),(137,10,'2112',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:13:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 13:35:42',NULL),(138,9,'2042',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:23:01','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:58:19',NULL),(139,11,'2090',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:24:44','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 07:45:21',NULL),(140,9,'2037',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:27:06','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 17:42:05',NULL),(141,10,'2117',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:27:55','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 14:30:19',NULL),(142,11,'2185',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:35:39','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 16:39:09',NULL),(143,11,'3038',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:39:46','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 08:17:54',NULL),(144,10,'2153',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:43:01','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 14:08:45',NULL),(145,10,'2026',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:47:10','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 10:32:55',NULL),(146,11,'2153',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:47:17','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 09:48:14',NULL),(147,10,'2178',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:48:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-02 11:30:51',NULL),(148,10,'2131',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:52:56','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 20:57:45',NULL),(149,10,'2042',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 16:58:56','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 14:04:03',NULL),(150,11,'2180',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 17:09:01','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 16:07:43',NULL),(151,9,'2135',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 17:12:29','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-17 17:57:12',NULL),(152,10,'2037',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-17 17:42:44','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 09:51:04',NULL),(153,11,'2182',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 07:54:02','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 09:20:32',NULL),(154,11,'2154',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 07:54:16','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 09:05:23',NULL),(155,10,'2038',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 08:30:36','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 08:39:22',NULL),(156,9,'2139',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 08:31:15','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 16:38:03',NULL),(157,9,'2038',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 08:32:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 08:35:34',NULL),(158,11,'2038',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 08:39:39','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 09:38:08',NULL),(159,9,'2096',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 08:41:10','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 09:51:01',NULL),(160,11,'3069',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 08:44:54','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 15:43:00',NULL),(161,9,'2101',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 09:02:30','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 09:43:27',NULL),(162,10,'2135',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 09:05:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 10:40:31',NULL),(163,9,'3071',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 09:35:49','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(164,11,'2042',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 09:40:44','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 10:38:48',NULL),(165,9,'2025',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 09:50:21','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 11:18:17',NULL),(166,9,'2193',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 09:52:54','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 10:41:23',NULL),(167,9,'2126',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 09:53:30','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 11:27:48',NULL),(168,11,'2037',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 09:54:24','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 10:40:34',NULL),(169,10,'2025',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 10:00:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 10:58:57',NULL),(170,9,'2118',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 10:17:34','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 13:47:22',NULL),(171,11,'2026',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 10:35:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 13:19:03',NULL),(172,10,'2193',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 10:41:35','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 14:49:38',NULL),(173,11,'2195',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 10:47:01','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 16:31:49',NULL),(174,11,'2135',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 10:57:23','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 11:28:40',NULL),(175,9,'2125',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 11:18:00','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 12:00:37',NULL),(176,10,'2125',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 12:00:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 13:38:03',NULL),(177,9,'2102',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 13:22:31','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 15:34:47',NULL),(178,11,'2112',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 13:36:37','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 13:37:43',NULL),(179,11,'2057',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 13:37:51','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 17:25:02',NULL),(180,9,'2056',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 13:42:01','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 14:27:11',NULL),(181,9,'3045',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 13:56:31','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 10:38:13',NULL),(182,9,'2094',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 14:01:10','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 14:10:00',NULL),(183,11,'2125',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 14:01:11','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(184,9,'2181',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 14:04:47','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 14:41:32',NULL),(185,11,'2142',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 14:05:54','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 11:28:14',NULL),(186,10,'2094',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 14:10:17','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 14:10:36',NULL),(187,11,'2094',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 14:11:13','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 16:56:50',NULL),(188,10,'2118',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 14:14:48','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 15:17:07',NULL),(189,10,'2056',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 14:29:50','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 16:17:54',NULL),(190,11,'2117',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 14:34:25','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 14:36:09',NULL),(191,11,'2175',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 15:07:21','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 09:48:47',NULL),(192,10,'2102',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 15:35:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 09:27:03',NULL),(193,11,'2193',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 15:36:35','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 18:26:15',NULL),(194,11,'2056',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 16:21:22','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 16:11:33',NULL),(195,10,'2139',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 16:39:08','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 09:32:54',NULL),(196,9,'2072',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 17:05:55','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-18 17:42:39',NULL),(197,10,'2072',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 17:43:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-26 15:46:51',NULL),(198,11,'2072',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 17:45:07','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-26 09:28:12',NULL),(199,11,'2148',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-18 17:46:02','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 11:26:29',NULL),(200,10,'2096',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 07:41:56','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 10:17:59',NULL),(201,11,'2025',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 08:26:27','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 09:50:59',NULL),(202,10,'2137',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 09:16:54','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 14:34:04',NULL),(203,9,'2152',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 09:19:41','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 09:30:50',NULL),(204,9,'2127',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 09:25:35','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(205,10,'2152',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 09:31:15','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 09:55:31',NULL),(206,11,'2139',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 09:42:21','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 10:36:02',NULL),(207,9,'2083',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 09:54:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 14:24:14',NULL),(208,11,'2152',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 09:55:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 09:56:40',NULL),(209,9,'3075',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 10:02:58','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 10:55:48',NULL),(210,11,'2096',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 10:18:13','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 10:18:36',NULL),(211,10,'2101',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 10:34:46','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 16:30:30',NULL),(212,10,'3075',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 10:56:03','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 15:53:01',NULL),(213,11,'2102',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 10:57:10','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 16:47:27',NULL),(214,11,'2183',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 11:24:10','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 17:41:45',NULL),(215,10,'2191',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 12:07:16','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 16:48:11',NULL),(216,9,'2031',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 13:17:44','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 13:52:27',NULL),(217,10,'2031',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 13:54:27','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 17:44:35',NULL),(218,9,'2156',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 14:16:24','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 14:37:00',NULL),(219,10,'2083',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 14:24:26','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-31 17:12:48',NULL),(220,11,'2137',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 14:36:46','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 15:50:41',NULL),(221,10,'2156',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 14:38:05','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 16:46:46',NULL),(222,11,'2083',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 15:06:17','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-31 15:43:28',NULL),(223,9,'2194',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 15:12:47','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 09:15:24',NULL),(224,9,'3074',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 15:18:54','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 16:16:09',NULL),(225,11,'3075',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 16:09:14','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 10:24:59',NULL),(226,10,'3071',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 16:12:45','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 17:40:51',NULL),(227,10,'3074',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 16:16:21','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 10:41:21',NULL),(228,9,'2129',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 16:21:13','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 16:21:49',NULL),(229,10,'2129',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 16:22:06','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 16:23:28',NULL),(230,11,'2129',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 16:24:25','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 16:25:26',NULL),(231,11,'3071',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 17:43:37','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(232,11,'2031',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 17:47:50','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 13:37:52',NULL),(233,9,'2075',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 18:54:36','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-19 20:05:03',NULL),(234,10,'2075',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-19 20:05:17','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-26 12:45:42',NULL),(235,11,'2156',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-20 12:41:49','','','',0,0,50,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(236,9,'2015',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 08:11:51','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 08:44:29',NULL),(237,10,'2015',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 08:45:39','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 10:34:16',NULL),(238,9,'2136',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 09:04:55','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 09:59:57',NULL),(239,10,'2194',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 09:15:35','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-24 11:08:13',NULL),(240,11,'2194',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 09:23:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 14:05:06',NULL),(241,10,'2136',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 10:00:23','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 15:32:47',NULL),(242,11,'2015',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 10:35:35','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 10:40:43',NULL),(243,11,'3074',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 10:41:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 10:42:40',NULL),(244,9,'2085',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 10:43:50','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 13:04:57',NULL),(245,9,'2163',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 11:18:58','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 13:40:35',NULL),(246,10,'2085',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 13:05:32','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 10:24:03',NULL),(247,10,'2163',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 14:41:30','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-25 16:12:49',NULL),(248,9,'2044',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 15:15:05','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 17:25:08',NULL),(249,11,'2136',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 15:48:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 13:37:28',NULL),(250,10,'2044',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 17:25:32','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 09:48:36',NULL),(251,11,'2131',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-22 20:58:11','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-22 20:58:24',NULL),(252,9,'2078',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 06:12:50','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 06:55:24',NULL),(253,10,'2078',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 07:08:26','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-24 10:34:31',NULL),(254,9,'2069',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 08:30:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 09:10:30',NULL),(255,10,'2069',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 09:10:49','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 20:10:24',NULL),(256,11,'2044',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 09:50:41','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 16:12:35',NULL),(257,9,'2144',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 10:03:04','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 10:05:47',NULL),(258,10,'2144',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 10:06:25','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 10:10:20',NULL),(259,10,'2126',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 10:07:24','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 13:21:25',NULL),(260,11,'2144',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 10:07:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 10:09:17',NULL),(261,11,'2085',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 11:12:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 22:03:19',NULL),(262,10,'2113',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 11:39:34','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-02 16:05:28',NULL),(263,11,'2126',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 13:22:03','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 10:02:40',NULL),(264,11,'2058',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 14:15:45','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-26 11:02:17',NULL),(265,10,'2181',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 14:43:19','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-23 17:57:06',NULL),(266,9,'2189',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 17:47:58','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-30 09:47:19',NULL),(267,11,'2181',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 18:00:06','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-24 10:47:32',NULL),(268,11,'2069',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-23 20:13:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-24 16:49:31',NULL),(269,10,'2099',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-24 09:02:13','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-25 13:07:41',NULL),(270,11,'2078',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-24 10:50:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-24 15:44:39',NULL),(271,9,'2109',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-24 11:25:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-24 12:52:15',NULL),(272,10,'2109',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-24 12:52:29','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-24 15:24:01',NULL),(273,11,'2109',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-24 15:26:11','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-25 10:27:33',NULL),(274,9,'2116',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-24 15:52:47','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-24 17:20:28',NULL),(275,10,'2116',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-24 17:20:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-29 10:08:43',NULL),(276,9,'2023',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-25 11:25:41','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-25 15:01:51',NULL),(277,10,'2023',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-25 15:02:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 11:08:16',NULL),(278,11,'2023',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-25 15:23:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-25 17:16:02',NULL),(279,11,'2163',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-25 16:54:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-25 18:01:44',NULL),(280,11,'2075',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-26 13:51:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 14:32:25',NULL),(281,9,'2045',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-26 14:12:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-26 14:40:04',NULL),(282,9,'2088',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-26 14:18:35','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-26 14:55:17',NULL),(283,10,'2045',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-26 14:40:23','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-26 15:20:16',NULL),(284,10,'2088',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-26 14:57:15','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(285,11,'2088',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-26 15:11:39','','','',0,0,50,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(286,11,'2045',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-26 15:23:05','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-26 15:41:42',NULL),(287,9,'2064',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-27 16:57:49','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-27 17:32:42',NULL),(288,10,'2064',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-27 17:33:05','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-27 18:38:20',NULL),(289,11,'2064',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-28 14:11:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-28 16:01:54',NULL),(290,9,'3010',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-29 09:36:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 17:01:24',NULL),(291,11,'2116',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-29 10:50:31','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-29 16:29:48',NULL),(292,11,'2099',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-29 11:31:12','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 16:55:28',NULL),(293,9,'3040',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-29 13:45:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-02 10:59:45',NULL),(294,9,'2158',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-29 15:06:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-29 16:01:06',NULL),(295,10,'2158',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-29 16:01:26','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-30 17:06:27',NULL),(296,10,'3010',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-29 16:31:07','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 09:07:27',NULL),(297,9,'2114',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-30 08:04:55','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-30 08:40:36',NULL),(298,10,'2114',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-30 08:40:47','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-30 16:37:42',NULL),(299,10,'2189',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-30 09:47:29','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-30 17:34:11',NULL),(300,11,'2189',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-30 09:49:43','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(301,9,'2098',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-30 14:36:04','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-30 15:28:20',NULL),(302,10,'2098',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-30 15:28:51','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-30 17:17:13',NULL),(303,9,'2059',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-30 15:44:02','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 09:26:25',NULL),(304,9,'2172',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-30 15:44:45','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-30 16:29:59',NULL),(305,11,'2098',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-30 17:19:16','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-30 17:58:03',NULL),(306,11,'2158',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-30 17:30:16','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-01 15:35:14',NULL),(307,10,'2172',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-30 17:56:41','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-01 16:21:27',NULL),(308,11,'2114',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-31 08:11:28','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-31 15:11:51',NULL),(309,9,'3067',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-31 16:28:02','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-08-31 17:09:37',NULL),(310,10,'3067',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-08-31 17:10:00','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 16:04:26',NULL),(311,9,'2052',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-01 11:31:51','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-01 15:10:13',NULL),(312,10,'2052',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-01 13:38:46','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-02 15:53:02',NULL),(313,11,'2172',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-01 16:26:39','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 10:56:19',NULL),(314,10,'3040',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-02 11:00:21','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 14:43:36',NULL),(315,11,'3040',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-02 11:34:12','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-02 14:15:12',NULL),(316,11,'2178',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-02 11:55:59','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 15:52:22',NULL),(317,9,'2113',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-02 14:10:56','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-02 14:42:37',NULL),(318,11,'2052',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-02 16:05:07','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-02 17:42:37',NULL),(319,11,'2113',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-02 16:08:31','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-02 17:47:50',NULL),(320,9,'2179',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 10:11:19','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 13:02:37',NULL),(321,9,'2173',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 10:19:33','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 11:03:11',NULL),(322,9,'2184',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 10:27:02','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 13:59:29',NULL),(323,9,'2186',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 10:28:40','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 11:30:10',NULL),(324,9,'2162',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 10:34:26','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 10:35:08',NULL),(325,10,'2162',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 10:35:39','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 10:37:10',NULL),(326,11,'2162',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 10:37:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 10:38:18',NULL),(327,10,'2173',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 11:03:22','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 15:05:05',NULL),(328,9,'2169',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 11:14:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 11:58:12',NULL),(329,10,'2186',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 11:30:30','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 10:37:52',NULL),(330,10,'2169',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 11:58:22','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 15:16:08',NULL),(331,11,'2173',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 13:11:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 15:23:08',NULL),(332,11,'2169',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 15:18:26','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-05 16:34:18',NULL),(333,11,'3067',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 16:51:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 16:17:16',NULL),(334,11,'3010',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-05 17:07:21','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 09:09:37',NULL),(335,9,'2081',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-06 08:30:33','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 08:31:01',NULL),(336,10,'2081',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-06 08:31:15','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 08:31:46',NULL),(337,11,'2081',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-06 08:31:59','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 08:32:57',NULL),(338,9,'2111',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-06 13:36:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 14:09:47',NULL),(339,10,'2111',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-06 14:14:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 15:51:41',NULL),(340,9,'2018',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-06 14:39:17','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-07 10:54:57',NULL),(341,11,'2118',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-06 15:19:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-08 15:47:30',NULL),(342,9,'2170',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-06 15:36:59','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 16:10:53',NULL),(343,11,'2111',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-06 15:54:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-06 18:02:46',NULL),(344,10,'2170',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-06 16:11:02','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-07 10:55:16',NULL),(345,11,'2170',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-06 16:19:08','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-07 14:05:24',NULL),(346,10,'2018',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-07 10:55:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-07 11:29:01',NULL),(347,11,'2018',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-07 11:31:18','','','',0,0,50,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(348,9,'2164',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-08 14:51:03','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-08 15:56:31',NULL),(349,10,'2164',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-08 15:56:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-08 16:29:59',NULL),(350,11,'2164',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-08 16:31:28','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-08 17:18:14',NULL),(351,9,'2138',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:20:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 10:57:49',NULL),(352,9,'3066',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:23:40','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 18:44:18',NULL),(353,11,'2138',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:24:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 11:03:56',NULL),(354,9,'2147',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:28:24','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 11:05:00',NULL),(355,11,'2186',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:34:55','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 10:36:59',NULL),(356,9,'2174',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:43:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 11:19:42',NULL),(357,9,'2095',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:47:41','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 13:15:36',NULL),(358,9,'2133',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:47:45','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 10:48:06',NULL),(359,10,'2133',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:48:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 10:55:33',NULL),(360,9,'2143',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:53:12','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 10:56:40',NULL),(361,10,'3045',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:55:02','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 14:34:51',NULL),(362,11,'2133',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:56:34','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 10:59:59',NULL),(363,10,'2143',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:56:49','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 10:59:34',NULL),(364,10,'2138',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:58:10','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 11:00:32',NULL),(365,11,'2143',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 10:59:47','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 11:04:07',NULL),(366,9,'2176',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 11:03:04','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 12:29:46',NULL),(367,10,'2176',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 11:24:39','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 15:15:57',NULL),(368,9,'2028',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 11:29:51','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 12:36:45',NULL),(369,9,'2106',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 12:36:48','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 13:34:09',NULL),(370,10,'2028',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 12:37:24','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 12:41:16',NULL),(371,11,'2028',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 12:38:40','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 12:40:28',NULL),(372,10,'2147',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 13:01:30','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 14:52:46',NULL),(373,10,'2095',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 13:16:10','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 15:34:38',NULL),(374,10,'2174',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 13:28:11','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 14:52:06',NULL),(375,10,'2106',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 13:46:05','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(376,11,'3045',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 14:35:01','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 14:37:07',NULL),(377,9,'2115',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 14:49:08','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 13:04:50',NULL),(378,11,'2174',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 14:54:15','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 15:51:24',NULL),(379,11,'2147',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 14:55:17','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 16:29:28',NULL),(380,9,'2077',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 15:01:13','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 15:33:49',NULL),(381,11,'2095',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 15:37:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 17:00:18',NULL),(382,11,'2176',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 15:43:08','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 18:38:02',NULL),(383,11,'2101',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 16:40:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 14:09:49',NULL),(384,10,'3066',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 18:44:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 19:15:36',NULL),(385,11,'3066',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-13 19:15:53','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-13 19:16:22',NULL),(386,10,'2077',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 07:54:15','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(387,9,'2097',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 08:01:54','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 08:33:57',NULL),(388,10,'2097',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 08:36:33','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 18:04:12',NULL),(389,9,'2196',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 08:43:28','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 11:03:25',NULL),(390,9,'2029',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 08:47:04','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 16:33:50',NULL),(391,10,'2179',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 08:57:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 14:19:12',NULL),(392,9,'2043',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 08:58:44','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 09:44:45',NULL),(393,11,'2077',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 09:06:08','','','',0,0,50,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(394,9,'2073',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 09:10:59','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 09:12:08',NULL),(395,10,'2073',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 09:12:21','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 09:15:38',NULL),(396,11,'2073',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 09:16:10','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 09:17:34',NULL),(397,11,'2179',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 09:26:52','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 14:18:57',NULL),(398,9,'2104',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 09:27:54','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 11:10:34',NULL),(399,10,'2043',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 09:45:13','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(400,11,'2043',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 09:50:33','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(401,9,'3065',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 09:57:10','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 11:15:19',NULL),(402,9,'2017',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 10:25:25','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 10:57:35',NULL),(403,10,'2029',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 10:47:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-19 14:25:07',NULL),(404,10,'2017',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 10:58:03','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 15:39:39',NULL),(405,10,'2196',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 11:03:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 15:27:33',NULL),(406,10,'2104',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 11:12:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 13:15:49',NULL),(407,10,'3065',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 11:16:12','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 09:50:28',NULL),(408,9,'2187',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 11:34:48','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 13:15:18',NULL),(409,10,'2187',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 11:39:15','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 11:50:00',NULL),(410,11,'2187',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 11:48:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 11:51:57',NULL),(411,9,'2171',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 13:48:02','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 15:04:11',NULL),(412,10,'2184',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 13:59:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 16:25:28',NULL),(413,10,'2171',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 15:04:22','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 16:39:09',NULL),(414,11,'2017',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 15:42:06','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 17:32:07',NULL),(415,9,'2089',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 15:56:32','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 10:48:56',NULL),(416,11,'2104',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 16:13:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 16:50:30',NULL),(417,11,'2171',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 16:41:59','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(418,11,'2184',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 16:55:18','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-19 18:00:37',NULL),(419,11,'2196',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 16:56:41','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 09:19:41',NULL),(420,11,'2024',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-14 18:01:05','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-14 19:39:32',NULL),(421,10,'2059',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 09:26:51','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 09:31:29',NULL),(422,11,'2059',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 09:32:24','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 09:52:58',NULL),(423,11,'2155',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 10:12:19','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 20:25:04',NULL),(424,9,'3043',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 10:29:16','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 14:33:24',NULL),(425,9,'2039',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 10:29:17','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 11:03:40',NULL),(426,11,'3065',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 10:32:55','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 14:08:57',NULL),(427,9,'2084',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 10:34:25','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(428,10,'2115',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 10:35:51','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 14:59:41',NULL),(429,9,'2155',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 10:40:40','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 15:03:16',NULL),(430,11,'2097',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 10:50:19','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 18:03:51',NULL),(431,10,'2039',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 11:04:19','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 14:25:05',NULL),(432,9,'2105',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 11:19:27','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 11:22:57',NULL),(433,10,'2105',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 11:23:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 11:31:40',NULL),(434,10,'2089',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 11:26:26','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(435,11,'2105',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 11:32:32','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 11:34:22',NULL),(436,9,'3068',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 11:36:45','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 13:17:58',NULL),(437,10,'3068',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 13:18:41','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-16 10:57:42',NULL),(438,11,'2192',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 13:21:34','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 16:45:12',NULL),(439,9,'2132',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 13:35:28','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 13:37:56',NULL),(440,10,'2132',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 13:38:13','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 13:51:14',NULL),(441,11,'2132',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 13:51:26','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 13:51:51',NULL),(442,9,'2190',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 14:11:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 14:12:40',NULL),(443,10,'2190',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 14:12:57','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 14:57:53',NULL),(444,9,'2192',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 14:15:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 15:14:09',NULL),(445,11,'2190',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 14:17:02','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 14:19:54',NULL),(446,11,'2039',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 14:27:22','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 16:19:57',NULL),(447,10,'3043',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 14:33:57','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 14:36:17',NULL),(448,11,'3043',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 14:36:31','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 14:53:18',NULL),(449,9,'2087',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 14:46:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-16 20:03:29',NULL),(450,11,'2115',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 15:04:15','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 15:33:36',NULL),(451,10,'2192',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 15:14:25','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 16:45:28',NULL),(452,10,'2084',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 15:23:52','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(453,9,'2149',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 16:24:06','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-19 13:33:22',NULL),(454,10,'2149',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 17:01:45','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-21 09:52:04',NULL),(455,10,'2155',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-15 18:00:35','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-15 20:50:08',NULL),(456,11,'3068',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-16 11:01:34','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-16 13:40:07',NULL),(457,9,'2046',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-16 13:25:28','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-16 13:39:48',NULL),(458,10,'2046',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-16 13:25:36','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-16 13:40:09',NULL),(459,11,'2046',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-16 13:25:40','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-16 13:40:37',NULL),(460,10,'2087',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-16 20:03:44','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-16 20:04:08',NULL),(461,11,'2087',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-16 20:04:18','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-16 20:05:22',NULL),(462,9,'2145',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-18 11:36:06','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-18 11:36:56',NULL),(463,10,'2145',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-18 11:37:21','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-18 11:41:59',NULL),(464,11,'2145',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-18 11:38:18','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-18 11:39:58',NULL),(465,9,'2110',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-18 15:14:49','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-18 15:50:13',NULL),(466,10,'2110',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-18 15:51:16','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-18 16:47:30',NULL),(467,11,'2110',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-18 16:11:20','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-18 16:46:44',NULL),(468,11,'2029',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-19 14:27:19','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-19 17:44:39',NULL),(469,11,'2149',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-09-21 10:01:44','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-09-21 13:28:02',NULL),(470,12,'admin',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-03 06:49:40','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-03 23:15:09',NULL),(471,12,'test001',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-03 23:16:06','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-03 23:23:34',NULL),(472,12,'test04',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-04 00:08:48','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-04 00:10:56',NULL),(473,12,'test03',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-04 00:14:37','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-04 00:24:32',NULL),(474,12,'test05',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-04 13:26:21','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(475,12,'test01',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-04 14:47:45','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(476,12,'99290005',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-04 15:27:42','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-05 10:23:45',NULL),(477,12,'77220603',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-05 13:56:07','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-06 14:28:45',NULL),(478,12,'77220802',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-05 14:08:25','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-05 15:38:30',NULL),(479,12,'99201010',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-05 17:14:30','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-07 16:03:50',NULL),(480,12,'77220701',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-06 07:56:48','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-06 10:16:13',NULL),(481,12,'99202204',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-06 08:37:01','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-06 13:03:03',NULL),(482,12,'200039',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-07 09:56:51','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-07 13:55:45',NULL),(483,12,'99201923',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-07 09:59:48','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-19 15:10:29',NULL),(484,12,'99201319',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-07 10:16:21','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-17 16:49:35',NULL),(485,12,'99201009',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-07 13:22:53','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-13 14:11:24',NULL),(486,12,'99202110',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-11 12:10:28','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-11 12:24:39',NULL),(487,12,'77220602',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-12 15:45:38','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-13 15:58:43',NULL),(488,12,'77220801',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-13 16:16:43','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-27 14:07:07',NULL),(489,12,'99201922',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-17 17:12:12','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-19 16:35:57',NULL),(490,12,'99201904',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-18 14:52:12','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-18 14:56:22',NULL),(491,12,'99201508',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-19 15:01:55','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-19 15:23:54',NULL),(492,12,'99201711',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-19 15:35:17','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-19 16:26:44',NULL),(493,12,'77220604',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-20 10:45:10','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-20 13:11:10',NULL),(494,12,'99201914',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-20 19:32:50','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-20 20:54:43',NULL),(495,12,'77220605',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-23 12:46:03','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-23 14:01:25',NULL),(496,12,'77220704',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-24 17:40:51','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-24 18:00:16',NULL),(497,12,'77220703',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-25 08:58:34','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-25 10:39:37',NULL),(498,12,'test002',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-25 17:47:31','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(499,12,'77220504',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-26 09:11:47','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-26 15:10:38',NULL),(500,12,'77220505',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-30 06:38:54','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-31 15:11:18',NULL),(501,12,'77220601',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-31 12:38:24','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-31 13:49:56',NULL),(502,12,'77220501',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-31 14:23:50','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-31 14:35:50',NULL),(503,12,'77220503',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-31 14:37:09','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-31 14:52:11',NULL),(504,12,'77220502',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-10-31 15:11:54','','','',0,0,100,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,'2022-10-31 15:22:57',NULL),(505,12,'test02',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-11-08 15:06:55','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL),(506,10,'test02',0,NULL,'','','','','','',0,'','',NULL,NULL,NULL,NULL,'2022-11-29 09:29:27','','','',0,0,0,0,0,'N',NULL,'N','N',NULL,'N',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cd_lesson_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_lms_chapter`
--

DROP TABLE IF EXISTS `cd_lms_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_lms_chapter` (
  `cpt_no` int(11) NOT NULL AUTO_INCREMENT,
  `cpt_lesson` int(11) NOT NULL DEFAULT '0',
  `cpt_seq` int(11) NOT NULL DEFAULT '0',
  `cpt_contents` int(11) NOT NULL DEFAULT '0',
  `cpt_quiz` int(11) NOT NULL DEFAULT '0',
  `cpt_type` varchar(10) NOT NULL,
  `cpt_rdate` datetime NOT NULL,
  `cpt_use` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`cpt_no`),
  KEY `cpt_lesson` (`cpt_lesson`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_lms_chapter`
--

LOCK TABLES `cd_lms_chapter` WRITE;
/*!40000 ALTER TABLE `cd_lms_chapter` DISABLE KEYS */;
INSERT INTO `cd_lms_chapter` VALUES (1,1,1,1,0,'contents','2020-11-08 00:00:00',''),(2,1,2,2,0,'contents','2020-11-08 00:00:00',''),(3,1,3,3,0,'contents','2020-11-08 00:00:00',''),(4,1,4,4,0,'contents','2020-11-08 00:00:00',''),(5,1,5,5,0,'contents','2020-11-08 00:00:00',''),(6,1,6,6,0,'contents','2020-11-08 00:00:00',''),(7,1,7,7,0,'contents','2020-11-08 00:00:00',''),(8,1,8,8,0,'contents','2020-11-08 00:00:00',''),(9,1,9,9,0,'contents','2020-11-08 00:00:00',''),(10,1,10,10,0,'contents','2020-11-08 00:00:00',''),(12,8,1,12,0,'contents','2022-03-22 00:00:00',''),(13,8,2,13,0,'contents','2022-03-22 00:00:00',''),(14,8,3,14,0,'contents','2022-03-22 00:00:00',''),(15,8,4,15,0,'contents','2022-03-22 00:00:00',''),(16,8,5,16,0,'contents','2022-03-22 00:00:00',''),(17,9,1,17,0,'contents','2022-08-01 00:00:00',''),(18,10,1,18,0,'contents','2022-08-01 00:00:00',''),(19,11,1,19,0,'contents','2022-08-01 00:00:00',''),(20,11,2,20,0,'contents','2022-08-01 00:00:00',''),(21,12,1,21,0,'','0000-00-00 00:00:00',''),(22,12,2,22,0,'','0000-00-00 00:00:00',''),(23,12,3,23,0,'','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `cd_lms_chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_lms_chapter_attend`
--

DROP TABLE IF EXISTS `cd_lms_chapter_attend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_lms_chapter_attend` (
  `att_no` int(11) NOT NULL AUTO_INCREMENT,
  `att_order` bigint(20) NOT NULL DEFAULT '0',
  `att_item_code` bigint(20) NOT NULL DEFAULT '0',
  `att_lssn_no` bigint(20) NOT NULL DEFAULT '0',
  `att_chapter_no` bigint(20) NOT NULL DEFAULT '0',
  `att_contents` bigint(20) NOT NULL DEFAULT '0',
  `att_quiz` int(11) NOT NULL DEFAULT '0',
  `att_uid` varchar(30) NOT NULL DEFAULT '',
  `att_study_page` int(11) NOT NULL DEFAULT '0',
  `att_total_page` int(11) NOT NULL DEFAULT '0',
  `att_study_time` varchar(20) NOT NULL DEFAULT '',
  `att_total_time` varchar(20) NOT NULL DEFAULT '',
  `att_study_question` int(11) NOT NULL DEFAULT '0',
  `att_total_question` int(11) NOT NULL DEFAULT '0',
  `att_study_rate` int(11) NOT NULL DEFAULT '0',
  `att_study_last` datetime DEFAULT NULL,
  `att_rdate` datetime DEFAULT NULL,
  `att_viewcount` int(11) NOT NULL DEFAULT '0',
  `att_view1sdate` datetime DEFAULT NULL,
  `att_view1edate` datetime DEFAULT NULL,
  `att_view1ip` varchar(20) NOT NULL DEFAULT '',
  `att_view2sdate` datetime DEFAULT NULL,
  `att_view2edate` datetime DEFAULT NULL,
  `att_view2ip` varchar(20) NOT NULL DEFAULT '',
  `att_view3sdate` datetime DEFAULT NULL,
  `att_view3edate` datetime DEFAULT NULL,
  `att_view3ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`att_no`),
  KEY `att_lssn_no` (`att_lssn_no`),
  KEY `att_chapter_no` (`att_chapter_no`),
  KEY `att_uid` (`att_uid`),
  KEY `att_item_code` (`att_item_code`),
  KEY `att_order` (`att_order`)
) ENGINE=MyISAM AUTO_INCREMENT=704 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_lms_chapter_attend`
--

LOCK TABLES `cd_lms_chapter_attend` WRITE;
/*!40000 ALTER TABLE `cd_lms_chapter_attend` DISABLE KEYS */;
INSERT INTO `cd_lms_chapter_attend` VALUES (1,0,0,1,1,1,0,'admin',16,17,'','',0,0,94,'2022-08-02 11:21:57','2021-04-19 00:27:57',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(2,0,0,1,1,1,0,'test00',17,17,'','',0,0,100,'2021-12-05 23:32:27','2021-12-05 22:02:10',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(3,0,0,1,2,2,0,'admin',4,10,'','',0,0,40,'2022-08-02 11:22:03','2022-03-27 23:30:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(4,0,0,1,3,3,0,'admin',2,8,'','',0,0,25,'2022-08-02 11:22:30','2022-04-13 10:20:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(11,0,0,11,19,19,0,'admin',7,7,'','',0,0,100,'2022-08-12 02:37:03','2022-08-12 02:36:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(14,0,0,9,17,17,0,'admin',3,3,'','',0,0,100,'2022-08-12 03:03:47','2022-08-12 03:02:53',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(10,0,0,10,18,18,0,'admin',6,6,'','',0,0,100,'2022-08-12 02:32:19','2022-08-12 02:31:00',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(13,0,0,11,20,20,0,'admin',7,7,'','',0,0,100,'2022-08-12 02:49:36','2022-08-12 02:49:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(15,0,0,9,17,17,0,'test05',1,3,'','',0,0,33,'2022-08-12 09:48:49','2022-08-12 09:48:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(16,0,0,10,18,18,0,'test05',6,6,'','',0,0,100,'2022-08-12 09:50:33','2022-08-12 09:49:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(17,0,0,11,19,19,0,'test05',7,7,'','',0,0,100,'2022-08-12 09:49:38','2022-08-12 09:49:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(18,0,0,11,20,20,0,'test05',7,7,'','',0,0,100,'2022-08-12 09:49:49','2022-08-12 09:49:42',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(19,0,0,9,17,17,0,'test06',3,3,'','',0,0,100,'2022-08-12 14:31:08','2022-08-12 13:53:17',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(20,0,0,11,19,19,0,'test06',7,7,'','',0,0,100,'2022-08-12 13:57:21','2022-08-12 13:56:56',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(21,0,0,11,20,20,0,'test06',7,7,'','',0,0,100,'2022-08-12 13:57:55','2022-08-12 13:57:34',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(22,0,0,10,18,18,0,'test06',6,6,'','',0,0,100,'2022-08-12 13:59:43','2022-08-12 13:58:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(23,0,0,9,17,17,0,'test00',3,3,'','',0,0,100,'2022-08-14 15:37:16','2022-08-14 15:36:50',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(24,0,0,10,18,18,0,'test00',6,6,'','',0,0,100,'2022-08-14 16:13:10','2022-08-14 16:12:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(25,0,0,11,19,19,0,'test00',7,7,'','',0,0,100,'2022-08-14 16:16:43','2022-08-14 16:16:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(26,0,0,11,20,20,0,'test00',7,7,'','',0,0,100,'2022-08-14 16:16:50','2022-08-14 16:16:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(27,0,0,9,17,17,0,'test001',3,3,'','',0,0,100,'2022-08-15 10:10:38','2022-08-15 10:09:41',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(28,0,0,10,18,18,0,'test001',6,6,'','',0,0,100,'2022-08-15 10:11:12','2022-08-15 10:11:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(29,0,0,11,19,19,0,'test001',7,7,'','',0,0,100,'2022-08-15 10:12:00','2022-08-15 10:11:52',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(30,0,0,11,20,20,0,'test001',7,7,'','',0,0,100,'2022-08-15 10:12:20','2022-08-15 10:12:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(31,0,0,9,17,17,0,'test002',3,3,'','',0,0,100,'2022-08-15 19:42:14','2022-08-15 19:41:29',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(32,0,0,10,18,18,0,'test002',6,6,'','',0,0,100,'2022-08-15 19:42:33','2022-08-15 19:42:27',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(33,0,0,11,19,19,0,'test002',7,7,'','',0,0,100,'2022-08-15 19:43:29','2022-08-15 19:43:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(34,0,0,11,20,20,0,'test002',7,7,'','',0,0,100,'2022-08-15 19:43:37','2022-08-15 19:43:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(35,0,0,9,17,17,0,'test009',2,3,'','',0,0,66,'2022-08-15 20:33:17','2022-08-15 20:33:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(36,0,0,9,17,17,0,'test003',3,3,'','',0,0,100,'2022-08-15 21:01:44','2022-08-15 21:01:10',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(37,0,0,10,18,18,0,'test003',6,6,'','',0,0,100,'2022-08-15 21:02:08','2022-08-15 21:02:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(38,0,0,11,19,19,0,'test003',7,7,'','',0,0,100,'2022-08-15 21:02:31','2022-08-15 21:02:26',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(39,0,0,11,20,20,0,'test003',7,7,'','',0,0,100,'2022-08-15 21:02:45','2022-08-15 21:02:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(40,0,0,10,18,18,0,'test004',6,6,'','',0,0,100,'2022-08-15 21:08:12','2022-08-15 21:08:07',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(41,0,0,11,19,19,0,'test004',7,7,'','',0,0,100,'2022-08-15 21:20:36','2022-08-15 21:20:30',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(42,0,0,11,20,20,0,'test004',7,7,'','',0,0,100,'2022-08-15 21:20:50','2022-08-15 21:20:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(43,0,0,9,17,17,0,'test07',3,3,'','',0,0,100,'2022-08-16 08:49:08','2022-08-16 08:48:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(44,0,0,9,17,17,0,'2140',3,3,'','',0,0,100,'2022-08-16 16:21:17','2022-08-16 14:46:54',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(45,0,0,9,17,17,0,'2166',3,3,'','',0,0,100,'2022-08-16 15:40:30','2022-08-16 14:51:30',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(46,0,0,9,17,17,0,'2175',3,3,'','',0,0,100,'2022-08-16 16:56:05','2022-08-16 14:54:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(47,0,0,11,19,19,0,'2166',7,7,'','',0,0,100,'2022-08-16 16:50:16','2022-08-16 15:43:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(48,0,0,9,17,17,0,'2120',3,3,'','',0,0,100,'2022-08-17 09:39:09','2022-08-16 15:50:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(49,0,0,10,18,18,0,'2140',6,6,'','',0,0,100,'2022-08-16 16:49:28','2022-08-16 16:40:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(50,0,0,9,17,17,0,'2151',3,3,'','',0,0,100,'2022-08-16 17:19:24','2022-08-16 16:46:00',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(51,0,0,9,17,17,0,'2148',3,3,'','',0,0,100,'2022-08-16 17:22:33','2022-08-16 16:51:10',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(52,0,0,11,19,19,0,'2140',7,7,'','',0,0,100,'2022-08-16 16:53:22','2022-08-16 16:53:17',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(53,0,0,11,20,20,0,'2140',7,7,'','',0,0,100,'2022-08-16 16:54:18','2022-08-16 16:54:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(54,0,0,9,17,17,0,'2165',3,3,'','',0,0,100,'2022-08-16 18:11:35','2022-08-16 16:55:13',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(55,0,0,10,18,18,0,'2175',6,6,'','',0,0,100,'2022-08-17 17:34:07','2022-08-16 16:58:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(56,0,0,10,18,18,0,'2151',6,6,'','',0,0,100,'2022-08-17 09:26:21','2022-08-16 17:21:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(57,0,0,11,20,20,0,'2166',7,7,'','',0,0,100,'2022-08-17 10:43:44','2022-08-16 17:38:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(58,0,0,9,17,17,0,'2180',3,3,'','',0,0,100,'2022-08-17 15:38:10','2022-08-16 17:57:17',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(59,0,0,10,18,18,0,'2165',6,6,'','',0,0,100,'2022-08-17 11:11:09','2022-08-16 18:14:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(60,0,0,9,17,17,0,'2195',3,3,'','',0,0,100,'2022-08-17 09:22:58','2022-08-16 18:19:41',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(61,0,0,9,17,17,0,'2108',3,3,'','',0,0,100,'2022-08-16 20:26:27','2022-08-16 19:54:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(62,0,0,10,18,18,0,'2108',6,6,'','',0,0,100,'2022-08-16 20:54:00','2022-08-16 20:31:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(63,0,0,11,19,19,0,'2108',7,7,'','',0,0,100,'2022-08-16 20:56:54','2022-08-16 20:56:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(64,0,0,11,20,20,0,'2108',7,7,'','',0,0,100,'2022-08-16 20:57:09','2022-08-16 20:56:57',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(65,0,0,9,17,17,0,'3070',3,3,'','',0,0,100,'2022-08-17 08:18:57','2022-08-17 07:39:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(66,0,0,9,17,17,0,'2137',3,3,'','',0,0,100,'2022-08-17 09:03:57','2022-08-17 08:04:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(67,0,0,9,17,17,0,'2093',3,3,'','',0,0,100,'2022-08-17 09:22:42','2022-08-17 08:42:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(68,0,0,9,17,17,0,'2062',3,3,'','',0,0,100,'2022-08-17 10:25:45','2022-08-17 08:48:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(69,0,0,10,18,18,0,'3070',6,6,'','',0,0,100,'2022-08-17 11:33:31','2022-08-17 08:58:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(70,0,0,9,17,17,0,'2121',3,3,'','',0,0,100,'2022-08-17 09:56:17','2022-08-17 09:04:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(71,0,0,9,17,17,0,'2160',3,3,'','',0,0,100,'2022-08-17 10:06:49','2022-08-17 09:04:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(72,0,0,9,17,17,0,'2024',3,3,'','',0,0,100,'2022-08-17 11:20:25','2022-08-17 09:04:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(73,0,0,9,17,17,0,'2183',3,3,'','',0,0,100,'2022-08-17 10:35:27','2022-08-17 09:16:10',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(74,0,0,10,18,18,0,'2093',6,6,'','',0,0,100,'2022-08-17 11:09:14','2022-08-17 09:22:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(75,0,0,11,19,19,0,'2151',7,7,'','',0,0,100,'2022-08-17 09:27:44','2022-08-17 09:27:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(76,0,0,11,20,20,0,'2151',7,7,'','',0,0,100,'2022-08-17 09:28:14','2022-08-17 09:27:48',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(77,0,0,9,17,17,0,'2066',3,3,'','',0,0,100,'2022-08-17 10:38:42','2022-08-17 09:36:34',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(78,0,0,9,17,17,0,'2082',3,3,'','',0,0,100,'2022-08-17 11:05:06','2022-08-17 09:39:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(79,0,0,10,18,18,0,'2120',6,6,'','',0,0,100,'2022-08-17 13:03:59','2022-08-17 09:39:37',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(80,0,0,10,18,18,0,'2121',6,6,'','',0,0,100,'2022-08-17 14:45:55','2022-08-17 09:56:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(81,0,0,9,17,17,0,'2055',3,3,'','',0,0,100,'2022-08-17 09:58:16','2022-08-17 09:56:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(82,0,0,11,19,19,0,'2160',7,7,'','',0,0,100,'2022-08-17 11:28:53','2022-08-17 10:14:41',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(83,0,0,10,18,18,0,'2055',6,6,'','',0,0,100,'2022-08-17 10:21:26','2022-08-17 10:19:56',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(84,0,0,11,19,19,0,'2127',7,7,'','',0,0,100,'2022-08-17 10:21:46','2022-08-17 10:21:26',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(85,0,0,11,20,20,0,'2127',1,7,'','',0,0,14,'2022-08-17 10:21:48','2022-08-17 10:21:48',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(86,0,0,10,18,18,0,'2127',1,6,'','',0,0,16,'2022-08-17 10:22:04','2022-08-17 10:22:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(87,0,0,11,19,19,0,'2055',7,7,'','',0,0,100,'2022-08-17 10:26:52','2022-08-17 10:24:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(88,0,0,11,20,20,0,'2055',7,7,'','',0,0,100,'2022-08-17 10:30:17','2022-08-17 10:27:28',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(89,0,0,10,18,18,0,'test008',2,6,'','',0,0,33,'2022-08-17 10:28:52','2022-08-17 10:28:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(90,0,0,10,18,18,0,'2062',6,6,'','',0,0,100,'2022-08-17 12:06:48','2022-08-17 10:28:29',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(91,0,0,10,18,18,0,'2183',6,6,'','',0,0,100,'2022-08-19 11:13:45','2022-08-17 10:35:40',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(92,0,0,10,18,18,0,'2066',6,6,'','',0,0,100,'2022-08-17 14:05:47','2022-08-17 10:39:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(93,0,0,10,18,18,0,'2166',6,6,'','',0,0,100,'2022-08-17 13:38:52','2022-08-17 10:45:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(94,0,0,9,17,17,0,'2063',3,3,'','',0,0,100,'2022-08-17 12:53:08','2022-08-17 10:49:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(95,0,0,11,19,19,0,'2093',7,7,'','',0,0,100,'2022-08-17 13:26:39','2022-08-17 11:11:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(96,0,0,10,18,18,0,'2082',6,6,'','',0,0,100,'2022-08-17 15:39:00','2022-08-17 11:13:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(97,0,0,11,19,19,0,'2165',7,7,'','',0,0,100,'2022-08-17 13:04:24','2022-08-17 11:13:41',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(98,0,0,9,17,17,0,'3069',3,3,'','',0,0,100,'2022-08-17 13:42:24','2022-08-17 11:18:27',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(99,0,0,10,18,18,0,'2024',6,6,'','',0,0,100,'2022-09-14 18:00:53','2022-08-17 11:20:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(100,0,0,11,20,20,0,'2160',7,7,'','',0,0,100,'2022-08-17 11:28:58','2022-08-17 11:28:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(101,0,0,11,19,19,0,'3070',7,7,'','',0,0,100,'2022-08-17 13:00:20','2022-08-17 11:35:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(102,0,0,9,17,17,0,'2057',3,3,'','',0,0,100,'2022-08-17 13:24:29','2022-08-17 11:55:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(103,0,0,11,19,19,0,'2062',7,7,'','',0,0,100,'2022-08-17 12:47:42','2022-08-17 12:14:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(104,0,0,11,19,19,0,'2191',7,7,'','',0,0,100,'2022-08-22 09:46:37','2022-08-17 12:23:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(105,0,0,11,20,20,0,'2062',7,7,'','',0,0,100,'2022-08-17 12:47:55','2022-08-17 12:47:53',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(106,0,0,11,19,19,0,'test009',7,7,'','',0,0,100,'2022-08-17 12:48:55','2022-08-17 12:48:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(107,0,0,11,20,20,0,'test009',5,7,'','',0,0,71,'2022-08-17 12:51:56','2022-08-17 12:49:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(108,0,0,10,18,18,0,'test009',6,6,'','',0,0,100,'2022-08-17 12:50:21','2022-08-17 12:49:43',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(109,0,0,10,18,18,0,'2063',6,6,'','',0,0,100,'2022-08-17 15:24:56','2022-08-17 12:54:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(110,0,0,9,17,17,0,'2185',3,3,'','',0,0,100,'2022-08-17 13:08:43','2022-08-17 12:59:28',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(111,0,0,11,20,20,0,'3070',7,7,'','',0,0,100,'2022-08-17 13:17:39','2022-08-17 13:00:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(112,0,0,11,19,19,0,'2120',7,7,'','',0,0,100,'2022-08-17 14:07:57','2022-08-17 13:06:19',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(113,0,0,9,17,17,0,'2099',3,3,'','',0,0,100,'2022-08-17 14:50:19','2022-08-17 13:07:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(114,0,0,9,17,17,0,'2142',3,3,'','',0,0,100,'2022-08-17 13:49:55','2022-08-17 13:10:25',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(115,0,0,11,19,19,0,'2157',7,7,'','',0,0,100,'2022-08-17 13:14:51','2022-08-17 13:11:52',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(116,0,0,9,17,17,0,'2112',3,3,'','',0,0,100,'2022-08-17 15:50:25','2022-08-17 13:14:52',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(117,0,0,11,20,20,0,'2157',7,7,'','',0,0,100,'2022-08-17 13:23:36','2022-08-17 13:15:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(118,0,0,11,20,20,0,'2165',7,7,'','',0,0,100,'2022-08-17 13:58:47','2022-08-17 13:25:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(119,0,0,9,17,17,0,'2157',3,3,'','',0,0,100,'2022-08-17 13:28:19','2022-08-17 13:25:42',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(120,0,0,10,18,18,0,'2057',6,6,'','',0,0,100,'2022-08-18 13:32:17','2022-08-17 13:26:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(121,0,0,11,20,20,0,'2093',7,7,'','',0,0,100,'2022-08-18 09:14:26','2022-08-17 13:27:00',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(122,0,0,10,18,18,0,'2157',6,6,'','',0,0,100,'2022-08-17 13:30:34','2022-08-17 13:29:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(123,0,0,9,17,17,0,'2058',3,3,'','',0,0,100,'2022-08-17 14:19:37','2022-08-17 13:30:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(124,0,0,9,17,17,0,'3038',3,3,'','',0,0,100,'2022-08-17 14:21:14','2022-08-17 13:39:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(125,0,0,10,18,18,0,'2142',6,6,'','',0,0,100,'2022-08-18 14:02:22','2022-08-17 13:50:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(126,0,0,9,17,17,0,'2090',3,3,'','',0,0,100,'2022-08-17 14:29:21','2022-08-17 13:51:17',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(127,0,0,11,20,20,0,'2120',7,7,'','',0,0,100,'2022-08-17 17:28:03','2022-08-17 14:08:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(128,0,0,11,19,19,0,'2066',7,7,'','',0,0,100,'2022-08-17 16:24:07','2022-08-17 14:09:19',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(129,0,0,9,17,17,0,'2034',3,3,'','',0,0,100,'2022-08-17 15:05:07','2022-08-17 14:17:28',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(130,0,0,10,18,18,0,'2058',6,6,'','',0,0,100,'2022-08-23 13:31:29','2022-08-17 14:20:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(131,0,0,9,17,17,0,'2178',3,3,'','',0,0,100,'2022-08-17 16:31:49','2022-08-17 14:26:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(132,0,0,10,18,18,0,'2195',6,6,'','',0,0,100,'2022-08-17 17:59:39','2022-08-17 14:29:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(133,0,0,10,18,18,0,'2090',6,6,'','',0,0,100,'2022-08-17 16:22:19','2022-08-17 14:29:38',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(134,0,0,9,17,17,0,'2154',3,3,'','',0,0,100,'2022-08-17 15:18:51','2022-08-17 14:34:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(135,0,0,10,18,18,0,'3038',6,6,'','',0,0,100,'2022-08-17 16:34:11','2022-08-17 14:39:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(136,0,0,9,17,17,0,'2020',3,3,'','',0,0,100,'2022-08-17 15:19:24','2022-08-17 14:43:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(137,0,0,11,19,19,0,'2121',7,7,'','',0,0,100,'2022-08-17 15:32:02','2022-08-17 14:48:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(138,0,0,9,17,17,0,'2182',3,3,'','',0,0,100,'2022-08-17 15:32:14','2022-08-17 14:54:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(139,0,0,10,18,18,0,'2160',6,6,'','',0,0,100,'2022-08-17 15:02:06','2022-08-17 15:02:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(140,0,0,11,19,19,0,'2034',7,7,'','',0,0,100,'2022-08-17 15:48:39','2022-08-17 15:06:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(141,0,0,10,18,18,0,'3069',6,6,'','',0,0,100,'2022-08-18 08:44:44','2022-08-17 15:22:31',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(142,0,0,10,18,18,0,'2154',6,6,'','',0,0,100,'2022-08-17 16:58:24','2022-08-17 15:23:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(143,0,0,11,19,19,0,'2020',7,7,'','',0,0,100,'2022-08-17 15:53:59','2022-08-17 15:24:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(144,0,0,11,20,20,0,'2121',7,7,'','',0,0,100,'2022-08-17 17:46:17','2022-08-17 15:32:15',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(145,0,0,10,18,18,0,'2182',6,6,'','',0,0,100,'2022-08-17 16:57:35','2022-08-17 15:32:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(146,0,0,9,17,17,0,'2117',3,3,'','',0,0,100,'2022-08-17 16:26:23','2022-08-17 15:32:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(147,0,0,11,19,19,0,'2063',7,7,'','',0,0,100,'2022-08-17 16:07:21','2022-08-17 15:33:48',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(148,0,0,10,18,18,0,'2180',6,6,'','',0,0,100,'2022-08-17 17:06:52','2022-08-17 15:38:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(149,0,0,9,17,17,0,'2153',3,3,'','',0,0,100,'2022-08-17 16:42:48','2022-08-17 15:39:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(150,0,0,11,19,19,0,'2082',7,7,'','',0,0,100,'2022-08-17 16:33:00','2022-08-17 15:42:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(151,0,0,11,20,20,0,'2034',7,7,'','',0,0,100,'2022-08-17 16:23:54','2022-08-17 15:48:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(152,0,0,11,20,20,0,'2020',7,7,'','',0,0,100,'2022-08-17 16:16:53','2022-08-17 15:54:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(153,0,0,9,17,17,0,'2026',3,3,'','',0,0,100,'2022-08-17 16:32:45','2022-08-17 15:56:06',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(154,0,0,10,18,18,0,'2148',6,6,'','',0,0,100,'2022-08-18 17:01:38','2022-08-17 16:06:57',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(155,0,0,11,20,20,0,'2063',7,7,'','',0,0,100,'2022-08-17 16:47:47','2022-08-17 16:07:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(156,0,0,9,17,17,0,'2131',3,3,'','',0,0,100,'2022-08-17 16:52:47','2022-08-17 16:12:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(157,0,0,10,18,18,0,'2112',6,6,'','',0,0,100,'2022-08-18 13:35:42','2022-08-17 16:14:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(158,0,0,10,18,18,0,'2020',6,6,'','',0,0,100,'2022-08-17 17:39:56','2022-08-17 16:17:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(159,0,0,9,17,17,0,'2042',3,3,'','',0,0,100,'2022-08-17 16:58:19','2022-08-17 16:23:52',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(160,0,0,11,19,19,0,'2090',7,7,'','',0,0,100,'2022-08-17 16:54:47','2022-08-17 16:24:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(161,0,0,9,17,17,0,'2037',3,3,'','',0,0,100,'2022-08-17 17:42:05','2022-08-17 16:27:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(162,0,0,11,20,20,0,'2082',7,7,'','',0,0,100,'2022-08-17 17:19:38','2022-08-17 16:33:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(163,0,0,11,19,19,0,'2185',7,7,'','',0,0,100,'2022-08-17 16:38:39','2022-08-17 16:35:42',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(164,0,0,10,18,18,0,'2117',6,6,'','',0,0,100,'2022-08-18 14:30:19','2022-08-17 16:36:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(165,0,0,11,20,20,0,'2185',7,7,'','',0,0,100,'2022-08-17 16:39:09','2022-08-17 16:38:43',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(166,0,0,10,18,18,0,'2185',6,6,'','',0,0,100,'2022-08-17 16:39:43','2022-08-17 16:39:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(167,0,0,11,19,19,0,'3038',7,7,'','',0,0,100,'2022-08-17 17:01:32','2022-08-17 16:39:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(168,0,0,11,20,20,0,'2066',7,7,'','',0,0,100,'2022-08-18 09:26:27','2022-08-17 16:43:40',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(169,0,0,10,18,18,0,'2026',6,6,'','',0,0,100,'2022-08-18 10:32:55','2022-08-17 16:47:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(170,0,0,11,19,19,0,'2153',7,7,'','',0,0,100,'2022-08-18 08:29:36','2022-08-17 16:47:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(171,0,0,10,18,18,0,'2131',6,6,'','',0,0,100,'2022-08-22 20:57:45','2022-08-17 16:54:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(172,0,0,11,20,20,0,'2090',7,7,'','',0,0,100,'2022-08-18 07:45:21','2022-08-17 16:55:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(173,0,0,11,20,20,0,'3038',7,7,'','',0,0,100,'2022-08-18 08:17:54','2022-08-17 17:01:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(174,0,0,11,19,19,0,'2180',7,7,'','',0,0,100,'2022-08-18 13:07:50','2022-08-17 17:09:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(175,0,0,9,17,17,0,'2135',3,3,'','',0,0,100,'2022-08-17 17:57:12','2022-08-17 17:12:31',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(176,0,0,10,18,18,0,'2034',6,6,'','',0,0,100,'2022-08-18 11:37:17','2022-08-17 17:46:15',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(177,0,0,10,18,18,0,'2037',6,6,'','',0,0,100,'2022-08-18 09:51:04','2022-08-17 17:46:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(178,0,0,10,18,18,0,'2042',6,6,'','',0,0,100,'2022-08-18 14:04:03','2022-08-17 17:46:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(179,0,0,11,19,19,0,'2182',7,7,'','',0,0,100,'2022-08-18 08:45:45','2022-08-18 07:54:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(180,0,0,11,19,19,0,'2154',7,7,'','',0,0,100,'2022-08-18 08:35:05','2022-08-18 07:54:19',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(181,0,0,9,17,17,0,'2139',3,3,'','',0,0,100,'2022-08-18 16:38:03','2022-08-18 08:31:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(182,0,0,9,17,17,0,'2038',3,3,'','',0,0,100,'2022-08-18 08:35:34','2022-08-18 08:32:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(183,0,0,11,20,20,0,'2154',7,7,'','',0,0,100,'2022-08-18 09:05:23','2022-08-18 08:35:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(184,0,0,10,18,18,0,'2038',6,6,'','',0,0,100,'2022-08-18 08:39:22','2022-08-18 08:38:15',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(185,0,0,11,19,19,0,'2038',7,7,'','',0,0,100,'2022-08-18 08:41:07','2022-08-18 08:39:42',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(186,0,0,11,20,20,0,'2038',7,7,'','',0,0,100,'2022-08-18 09:38:08','2022-08-18 08:41:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(187,0,0,9,17,17,0,'2096',3,3,'','',0,0,100,'2022-08-18 09:51:01','2022-08-18 08:41:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(188,0,0,11,19,19,0,'3069',7,7,'','',0,0,100,'2022-08-18 11:10:16','2022-08-18 08:44:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(189,0,0,11,20,20,0,'2182',7,7,'','',0,0,100,'2022-08-18 09:20:32','2022-08-18 08:46:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(190,0,0,9,17,17,0,'2101',3,3,'','',0,0,100,'2022-08-18 09:43:27','2022-08-18 09:02:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(191,0,0,10,18,18,0,'2135',6,6,'','',0,0,100,'2022-08-18 10:40:31','2022-08-18 09:05:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(192,0,0,11,20,20,0,'2153',7,7,'','',0,0,100,'2022-08-18 09:48:14','2022-08-18 09:07:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(193,0,0,9,17,17,0,'3071',2,3,'','',0,0,66,'2022-08-18 10:00:08','2022-08-18 09:35:54',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(194,0,0,11,19,19,0,'2042',7,7,'','',0,0,100,'2022-08-18 10:08:03','2022-08-18 09:40:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(195,0,0,10,18,18,0,'2153',6,6,'','',0,0,100,'2022-08-18 14:08:45','2022-08-18 09:48:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(196,0,0,9,17,17,0,'2025',3,3,'','',0,0,100,'2022-08-18 11:18:17','2022-08-18 09:50:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(197,0,0,9,17,17,0,'2126',3,3,'','',0,0,100,'2022-08-18 11:27:48','2022-08-18 09:53:40',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(198,0,0,9,17,17,0,'2193',3,3,'','',0,0,100,'2022-08-18 10:41:23','2022-08-18 09:54:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(199,0,0,11,19,19,0,'2037',7,7,'','',0,0,100,'2022-08-18 10:34:19','2022-08-18 09:56:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(200,0,0,10,18,18,0,'2025',6,6,'','',0,0,100,'2022-08-18 10:58:57','2022-08-18 10:01:41',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(201,0,0,11,20,20,0,'2042',7,7,'','',0,0,100,'2022-08-18 10:38:48','2022-08-18 10:08:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(202,0,0,9,17,17,0,'2118',3,3,'','',0,0,100,'2022-08-18 13:47:22','2022-08-18 10:18:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(203,0,0,11,19,19,0,'2026',7,7,'','',0,0,100,'2022-08-18 11:08:15','2022-08-18 10:35:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(204,0,0,11,20,20,0,'2037',7,7,'','',0,0,100,'2022-08-18 10:40:34','2022-08-18 10:40:29',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(205,0,0,11,19,19,0,'2195',7,7,'','',0,0,100,'2022-08-18 14:05:49','2022-08-18 10:49:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(206,0,0,11,19,19,0,'2135',7,7,'','',0,0,100,'2022-08-18 11:28:34','2022-08-18 10:57:25',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(207,0,0,10,18,18,0,'2193',6,6,'','',0,0,100,'2022-08-18 14:49:38','2022-08-18 10:58:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(208,0,0,11,20,20,0,'2026',7,7,'','',0,0,100,'2022-08-18 13:19:03','2022-08-18 11:14:13',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(209,0,0,11,20,20,0,'3069',7,7,'','',0,0,100,'2022-08-18 15:43:00','2022-08-18 11:15:31',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(210,0,0,9,17,17,0,'2125',3,3,'','',0,0,100,'2022-08-18 12:00:37','2022-08-18 11:19:57',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(211,0,0,11,20,20,0,'2135',7,7,'','',0,0,100,'2022-08-18 11:28:40','2022-08-18 11:28:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(212,0,0,10,18,18,0,'2125',6,6,'','',0,0,100,'2022-08-18 13:38:03','2022-08-18 12:03:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(213,0,0,11,20,20,0,'2180',7,7,'','',0,0,100,'2022-08-18 16:07:43','2022-08-18 13:18:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(214,0,0,9,17,17,0,'2102',3,3,'','',0,0,100,'2022-08-18 15:34:47','2022-08-18 13:33:53',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(215,0,0,11,19,19,0,'2112',7,7,'','',0,0,100,'2022-08-18 13:37:06','2022-08-18 13:36:40',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(216,0,0,11,20,20,0,'2112',7,7,'','',0,0,100,'2022-08-18 13:37:43','2022-08-18 13:37:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(217,0,0,11,19,19,0,'2057',7,7,'','',0,0,100,'2022-08-18 15:25:52','2022-08-18 13:37:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(218,0,0,9,17,17,0,'2056',3,3,'','',0,0,100,'2022-08-18 14:27:11','2022-08-18 13:42:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(219,0,0,9,17,17,0,'2094',3,3,'','',0,0,100,'2022-08-18 14:10:00','2022-08-18 14:01:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(220,0,0,11,19,19,0,'2125',4,7,'','',0,0,57,'2022-08-18 17:00:29','2022-08-18 14:01:15',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(221,0,0,9,17,17,0,'2181',3,3,'','',0,0,100,'2022-08-23 14:41:32','2022-08-18 14:04:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(222,0,0,9,17,17,0,'3045',3,3,'','',0,0,100,'2022-09-13 10:38:13','2022-08-18 14:10:19',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(223,0,0,10,18,18,0,'2094',6,6,'','',0,0,100,'2022-08-18 14:10:36','2022-08-18 14:10:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(224,0,0,11,19,19,0,'2094',7,7,'','',0,0,100,'2022-08-18 16:56:07','2022-08-18 14:11:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(225,0,0,10,18,18,0,'2118',6,6,'','',0,0,100,'2022-09-06 15:17:07','2022-08-18 14:16:19',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(226,0,0,11,20,20,0,'2195',7,7,'','',0,0,100,'2022-08-18 16:31:49','2022-08-18 14:30:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(227,0,0,11,19,19,0,'2117',7,7,'','',0,0,100,'2022-08-18 14:35:32','2022-08-18 14:34:30',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(228,0,0,11,20,20,0,'2117',7,7,'','',0,0,100,'2022-08-18 14:36:09','2022-08-18 14:35:37',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(229,0,0,10,18,18,0,'2056',6,6,'','',0,0,100,'2022-08-18 16:17:54','2022-08-18 14:37:54',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(230,0,0,11,19,19,0,'2142',7,7,'','',0,0,100,'2022-08-18 17:34:36','2022-08-18 14:45:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(231,0,0,11,19,19,0,'2175',7,7,'','',0,0,100,'2022-08-18 17:33:46','2022-08-18 15:13:05',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(232,0,0,11,20,20,0,'2057',7,7,'','',0,0,100,'2022-08-18 17:25:02','2022-08-18 15:27:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(233,0,0,11,19,19,0,'2193',7,7,'','',0,0,100,'2022-08-18 17:04:17','2022-08-18 15:37:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(234,0,0,11,19,19,0,'2056',7,7,'','',0,0,100,'2022-09-13 11:26:42','2022-08-18 16:21:27',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(235,0,0,10,18,18,0,'2102',6,6,'','',0,0,100,'2022-08-19 09:27:03','2022-08-18 16:47:50',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(236,0,0,11,20,20,0,'2094',7,7,'','',0,0,100,'2022-08-18 16:56:50','2022-08-18 16:56:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(237,0,0,9,17,17,0,'2072',3,3,'','',0,0,100,'2022-08-18 17:42:39','2022-08-18 17:06:28',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(238,0,0,11,20,20,0,'2193',7,7,'','',0,0,100,'2022-08-18 18:26:15','2022-08-18 17:07:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(239,0,0,10,18,18,0,'2139',6,6,'','',0,0,100,'2022-08-19 09:32:54','2022-08-18 17:08:48',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(240,0,0,11,20,20,0,'2142',7,7,'','',0,0,100,'2022-09-05 11:28:14','2022-08-18 17:42:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(241,0,0,11,19,19,0,'2072',7,7,'','',0,0,100,'2022-08-26 09:27:56','2022-08-18 17:45:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(242,0,0,11,19,19,0,'2148',7,7,'','',0,0,100,'2022-08-18 21:29:42','2022-08-18 17:46:05',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(243,0,0,11,20,20,0,'2175',7,7,'','',0,0,100,'2022-08-19 09:48:47','2022-08-18 17:49:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(244,0,0,11,20,20,0,'2148',7,7,'','',0,0,100,'2022-08-22 11:26:29','2022-08-18 21:29:52',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(245,0,0,11,19,19,0,'2025',7,7,'','',0,0,100,'2022-08-19 09:05:46','2022-08-19 08:26:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(246,0,0,11,20,20,0,'2025',7,7,'','',0,0,100,'2022-08-19 09:50:59','2022-08-19 09:07:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(247,0,0,9,17,17,0,'2152',3,3,'','',0,0,100,'2022-08-19 09:30:50','2022-08-19 09:21:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(248,0,0,9,17,17,0,'2127',1,3,'','',0,0,33,'2022-08-19 09:27:04','2022-08-19 09:25:37',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(249,0,0,11,19,19,0,'2139',7,7,'','',0,0,100,'2022-08-19 10:04:47','2022-08-19 09:42:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(250,0,0,9,17,17,0,'2083',3,3,'','',0,0,100,'2022-08-19 14:24:14','2022-08-19 09:54:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(251,0,0,10,18,18,0,'2152',6,6,'','',0,0,100,'2022-08-19 09:55:31','2022-08-19 09:55:13',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(252,0,0,11,19,19,0,'2152',7,7,'','',0,0,100,'2022-08-19 09:56:10','2022-08-19 09:55:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(253,0,0,11,20,20,0,'2152',7,7,'','',0,0,100,'2022-08-19 09:56:40','2022-08-19 09:56:15',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(254,0,0,9,17,17,0,'3075',3,3,'','',0,0,100,'2022-08-19 10:55:48','2022-08-19 10:03:40',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(255,0,0,11,20,20,0,'2139',7,7,'','',0,0,100,'2022-08-19 10:36:02','2022-08-19 10:05:15',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(256,0,0,9,17,17,0,'2191',3,3,'','',0,0,100,'2022-08-19 12:06:39','2022-08-19 10:05:17',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(257,0,0,10,18,18,0,'2096',6,6,'','',0,0,100,'2022-08-19 10:17:59','2022-08-19 10:17:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(258,0,0,11,19,19,0,'2096',7,7,'','',0,0,100,'2022-08-19 10:18:21','2022-08-19 10:18:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(259,0,0,11,20,20,0,'2096',7,7,'','',0,0,100,'2022-08-19 10:18:36','2022-08-19 10:18:29',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(260,0,0,11,19,19,0,'2102',7,7,'','',0,0,100,'2022-08-19 13:11:48','2022-08-19 10:57:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(261,0,0,10,18,18,0,'3075',6,6,'','',0,0,100,'2022-08-19 15:53:01','2022-08-19 10:59:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(262,0,0,11,19,19,0,'2183',7,7,'','',0,0,100,'2022-08-19 14:18:11','2022-08-19 11:24:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(263,0,0,10,18,18,0,'2191',6,6,'','',0,0,100,'2022-08-19 16:48:11','2022-08-19 12:08:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(264,0,0,10,18,18,0,'2137',6,6,'','',0,0,100,'2022-08-19 14:34:04','2022-08-19 13:04:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(265,0,0,11,20,20,0,'2102',7,7,'','',0,0,100,'2022-08-19 16:47:27','2022-08-19 13:12:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(266,0,0,9,17,17,0,'2031',3,3,'','',0,0,100,'2022-08-19 13:52:27','2022-08-19 13:17:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(267,0,0,10,18,18,0,'2031',6,6,'','',0,0,100,'2022-08-19 17:44:35','2022-08-19 13:54:29',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(268,0,0,9,17,17,0,'2156',3,3,'','',0,0,100,'2022-08-19 14:37:00','2022-08-19 14:16:27',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(269,0,0,11,20,20,0,'2183',7,7,'','',0,0,100,'2022-08-19 17:41:45','2022-08-19 14:18:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(270,0,0,11,19,19,0,'2137',7,7,'','',0,0,100,'2022-08-19 15:06:23','2022-08-19 14:36:53',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(271,0,0,10,18,18,0,'2156',6,6,'','',0,0,100,'2022-08-19 16:46:46','2022-08-19 14:41:07',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(272,0,0,11,20,20,0,'2137',7,7,'','',0,0,100,'2022-08-19 15:50:41','2022-08-19 15:06:34',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(273,0,0,9,17,17,0,'2194',3,3,'','',0,0,100,'2022-08-22 09:15:24','2022-08-19 15:12:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(274,0,0,9,17,17,0,'3074',3,3,'','',0,0,100,'2022-08-19 16:16:09','2022-08-19 15:19:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(275,0,0,11,19,19,0,'3075',7,7,'','',0,0,100,'2022-08-23 09:39:34','2022-08-19 16:10:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(276,0,0,10,18,18,0,'3071',6,6,'','',0,0,100,'2022-08-19 17:40:51','2022-08-19 16:15:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(277,0,0,10,18,18,0,'3074',6,6,'','',0,0,100,'2022-08-22 10:41:21','2022-08-19 16:16:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(278,0,0,9,17,17,0,'2129',3,3,'','',0,0,100,'2022-08-19 16:21:49','2022-08-19 16:21:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(279,0,0,10,18,18,0,'2129',6,6,'','',0,0,100,'2022-08-19 16:23:28','2022-08-19 16:22:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(280,0,0,11,19,19,0,'2129',7,7,'','',0,0,100,'2022-08-19 16:25:01','2022-08-19 16:24:34',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(281,0,0,11,20,20,0,'2129',7,7,'','',0,0,100,'2022-08-19 16:25:26','2022-08-19 16:25:05',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(282,0,0,11,19,19,0,'2031',7,7,'','',0,0,100,'2022-08-22 11:06:22','2022-08-19 17:47:52',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(283,0,0,9,17,17,0,'2075',3,3,'','',0,0,100,'2022-08-19 20:05:03','2022-08-19 18:55:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(284,0,0,11,19,19,0,'2156',7,7,'','',0,0,100,'2022-08-23 16:40:00','2022-08-20 12:42:31',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(285,0,0,9,17,17,0,'2015',3,3,'','',0,0,100,'2022-08-22 08:44:29','2022-08-22 08:12:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(286,0,0,10,18,18,0,'2015',6,6,'','',0,0,100,'2022-08-22 10:34:16','2022-08-22 08:48:10',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(287,0,0,9,17,17,0,'2136',3,3,'','',0,0,100,'2022-08-22 09:59:57','2022-08-22 09:05:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(288,0,0,11,19,19,0,'2194',7,7,'','',0,0,100,'2022-08-22 13:10:57','2022-08-22 09:23:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(289,0,0,11,20,20,0,'2191',7,7,'','',0,0,100,'2022-08-22 10:36:17','2022-08-22 09:47:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(290,0,0,10,18,18,0,'2136',6,6,'','',0,0,100,'2022-08-22 15:32:47','2022-08-22 10:01:27',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(291,0,0,11,19,19,0,'2015',7,7,'','',0,0,100,'2022-08-22 10:38:34','2022-08-22 10:35:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(292,0,0,11,20,20,0,'2015',7,7,'','',0,0,100,'2022-08-22 10:40:43','2022-08-22 10:38:54',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(293,0,0,11,19,19,0,'3074',7,7,'','',0,0,100,'2022-08-22 10:42:15','2022-08-22 10:41:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(294,0,0,11,20,20,0,'3074',7,7,'','',0,0,100,'2022-08-22 10:42:40','2022-08-22 10:42:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(295,0,0,9,17,17,0,'2085',3,3,'','',0,0,100,'2022-08-22 13:04:57','2022-08-22 10:44:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(296,0,0,11,20,20,0,'2031',7,7,'','',0,0,100,'2022-08-22 13:37:52','2022-08-22 11:06:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(297,0,0,9,17,17,0,'2163',3,3,'','',0,0,100,'2022-08-22 13:40:35','2022-08-22 11:19:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(298,0,0,10,18,18,0,'2085',6,6,'','',0,0,100,'2022-08-23 10:24:03','2022-08-22 13:39:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(299,0,0,10,18,18,0,'2163',6,6,'','',0,0,100,'2022-08-25 16:12:49','2022-08-22 15:05:50',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(300,0,0,9,17,17,0,'2044',3,3,'','',0,0,100,'2022-08-22 17:25:08','2022-08-22 15:15:37',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(301,0,0,11,19,19,0,'2136',7,7,'','',0,0,100,'2022-08-22 17:54:18','2022-08-22 15:48:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(302,0,0,11,20,20,0,'2194',7,7,'','',0,0,100,'2022-08-23 14:05:06','2022-08-22 16:14:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(303,0,0,11,20,20,0,'2136',7,7,'','',0,0,100,'2022-08-23 13:37:28','2022-08-22 17:58:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(304,0,0,11,19,19,0,'2131',7,7,'','',0,0,100,'2022-08-22 20:58:18','2022-08-22 20:58:13',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(305,0,0,11,20,20,0,'2131',7,7,'','',0,0,100,'2022-08-22 20:58:24','2022-08-22 20:58:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(306,0,0,9,17,17,0,'2078',3,3,'','',0,0,100,'2022-08-23 06:55:24','2022-08-23 06:13:29',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(307,0,0,10,18,18,0,'2078',6,6,'','',0,0,100,'2022-08-24 10:34:31','2022-08-23 07:10:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(308,0,0,10,18,18,0,'2044',6,6,'','',0,0,100,'2022-08-23 09:48:36','2022-08-23 08:21:13',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(309,0,0,9,17,17,0,'2069',3,3,'','',0,0,100,'2022-08-23 09:10:30','2022-08-23 08:30:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(310,0,0,10,18,18,0,'2075',6,6,'','',0,0,100,'2022-08-26 12:45:42','2022-08-23 09:07:43',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(311,0,0,11,20,20,0,'3075',7,7,'','',0,0,100,'2022-08-23 10:24:59','2022-08-23 09:39:57',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(312,0,0,10,18,18,0,'2069',6,6,'','',0,0,100,'2022-08-23 20:10:24','2022-08-23 09:47:27',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(313,0,0,11,19,19,0,'2044',7,7,'','',0,0,100,'2022-08-23 11:09:05','2022-08-23 09:50:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(314,0,0,9,17,17,0,'2144',3,3,'','',0,0,100,'2022-08-23 10:05:47','2022-08-23 10:03:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(315,0,0,10,18,18,0,'2126',6,6,'','',0,0,100,'2022-08-23 13:21:25','2022-08-23 10:07:30',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(316,0,0,11,19,19,0,'2144',7,7,'','',0,0,100,'2022-08-23 10:08:39','2022-08-23 10:07:53',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(317,0,0,11,20,20,0,'2144',7,7,'','',0,0,100,'2022-08-23 10:09:17','2022-08-23 10:08:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(318,0,0,10,18,18,0,'2144',6,6,'','',0,0,100,'2022-08-23 10:10:20','2022-08-23 10:09:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(319,0,0,11,20,20,0,'2044',7,7,'','',0,0,100,'2022-08-23 16:12:35','2022-08-23 11:12:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(320,0,0,11,19,19,0,'2085',7,7,'','',0,0,100,'2022-08-23 14:32:04','2022-08-23 11:12:41',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(321,0,0,10,18,18,0,'2113',6,6,'','',0,0,100,'2022-09-02 16:05:28','2022-08-23 11:39:37',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(322,0,0,11,19,19,0,'2126',7,7,'','',0,0,100,'2022-08-23 14:20:22','2022-08-23 13:22:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(323,0,0,11,19,19,0,'2058',7,7,'','',0,0,100,'2022-08-25 13:44:28','2022-08-23 14:15:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(324,0,0,11,20,20,0,'2126',7,7,'','',0,0,100,'2022-09-06 10:02:40','2022-08-23 14:20:25',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(325,0,0,11,20,20,0,'2085',7,7,'','',0,0,100,'2022-08-23 22:03:19','2022-08-23 14:36:50',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(326,0,0,10,18,18,0,'2181',6,6,'','',0,0,100,'2022-08-23 17:57:06','2022-08-23 14:43:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(327,0,0,11,20,20,0,'2156',2,7,'','',0,0,28,'2022-08-23 16:53:55','2022-08-23 16:40:17',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(328,0,0,9,17,17,0,'2189',3,3,'','',0,0,100,'2022-08-30 09:47:19','2022-08-23 17:49:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(329,0,0,11,19,19,0,'2069',7,7,'','',0,0,100,'2022-08-24 09:03:14','2022-08-24 08:12:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(330,0,0,10,18,18,0,'2194',6,6,'','',0,0,100,'2022-08-24 11:08:13','2022-08-24 08:37:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(331,0,0,11,19,19,0,'2181',7,7,'','',0,0,100,'2022-08-24 09:49:24','2022-08-24 09:06:52',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(332,0,0,10,18,18,0,'2099',6,6,'','',0,0,100,'2022-08-25 13:07:41','2022-08-24 09:14:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(333,0,0,11,20,20,0,'2181',7,7,'','',0,0,100,'2022-08-24 10:47:32','2022-08-24 09:49:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(334,0,0,11,20,20,0,'2069',7,7,'','',0,0,100,'2022-08-24 16:49:31','2022-08-24 10:50:38',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(335,0,0,11,19,19,0,'2078',7,7,'','',0,0,100,'2022-08-24 13:44:38','2022-08-24 11:05:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(336,0,0,9,17,17,0,'2109',3,3,'','',0,0,100,'2022-08-24 12:52:15','2022-08-24 11:25:41',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(337,0,0,10,18,18,0,'2109',6,6,'','',0,0,100,'2022-08-24 15:24:01','2022-08-24 12:52:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(338,0,0,11,20,20,0,'2078',7,7,'','',0,0,100,'2022-08-24 15:44:39','2022-08-24 13:49:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(339,0,0,11,19,19,0,'2109',7,7,'','',0,0,100,'2022-08-25 10:27:24','2022-08-24 15:26:15',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(340,0,0,9,17,17,0,'2116',3,3,'','',0,0,100,'2022-08-24 17:20:28','2022-08-24 15:52:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(341,0,0,10,18,18,0,'2116',6,6,'','',0,0,100,'2022-08-29 10:08:43','2022-08-24 17:20:54',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(342,0,0,11,20,20,0,'2109',7,7,'','',0,0,100,'2022-08-25 10:27:33','2022-08-25 10:27:27',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(343,0,0,9,17,17,0,'2023',3,3,'','',0,0,100,'2022-08-25 15:01:51','2022-08-25 11:25:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(344,0,0,11,20,20,0,'2058',7,7,'','',0,0,100,'2022-08-26 11:02:17','2022-08-25 13:44:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(345,0,0,10,18,18,0,'2023',6,6,'','',0,0,100,'2022-09-06 11:08:16','2022-08-25 15:14:05',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(346,0,0,11,19,19,0,'2023',7,7,'','',0,0,100,'2022-08-25 16:45:02','2022-08-25 15:23:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(347,0,0,11,20,20,0,'2023',7,7,'','',0,0,100,'2022-08-25 17:16:02','2022-08-25 16:45:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(348,0,0,11,19,19,0,'2163',7,7,'','',0,0,100,'2022-08-25 18:01:35','2022-08-25 16:54:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(349,0,0,11,20,20,0,'2163',7,7,'','',0,0,100,'2022-08-25 18:01:44','2022-08-25 18:01:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(350,0,0,11,20,20,0,'2072',7,7,'','',0,0,100,'2022-08-26 09:28:12','2022-08-26 09:28:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(351,0,0,10,18,18,0,'2072',6,6,'','',0,0,100,'2022-08-26 15:46:51','2022-08-26 09:28:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(352,0,0,11,19,19,0,'2075',7,7,'','',0,0,100,'2022-09-08 20:11:24','2022-08-26 13:51:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(353,0,0,9,17,17,0,'2045',3,3,'','',0,0,100,'2022-08-26 14:40:04','2022-08-26 14:15:54',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(354,0,0,9,17,17,0,'2088',3,3,'','',0,0,100,'2022-08-26 14:55:17','2022-08-26 14:19:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(355,0,0,10,18,18,0,'2045',6,6,'','',0,0,100,'2022-08-26 15:20:16','2022-08-26 14:41:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(356,0,0,10,18,18,0,'2088',1,6,'','',0,0,16,'2022-08-26 14:58:17','2022-08-26 14:58:17',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(357,0,0,11,19,19,0,'2088',7,7,'','',0,0,100,'2022-08-26 15:43:39','2022-08-26 15:11:41',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(358,0,0,11,19,19,0,'2045',7,7,'','',0,0,100,'2022-08-26 15:41:05','2022-08-26 15:23:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(359,0,0,11,20,20,0,'2045',7,7,'','',0,0,100,'2022-08-26 15:41:42','2022-08-26 15:41:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(360,0,0,11,20,20,0,'2088',2,7,'','',0,0,28,'2022-08-26 15:52:34','2022-08-26 15:45:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(361,0,0,9,17,17,0,'2064',3,3,'','',0,0,100,'2022-08-27 17:32:42','2022-08-27 16:58:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(362,0,0,10,18,18,0,'2064',6,6,'','',0,0,100,'2022-08-27 18:38:20','2022-08-27 17:34:05',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(363,0,0,11,19,19,0,'2064',7,7,'','',0,0,100,'2022-08-28 15:08:56','2022-08-28 14:11:30',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(364,0,0,11,20,20,0,'2064',7,7,'','',0,0,100,'2022-08-28 16:01:54','2022-08-28 15:09:07',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(365,0,0,9,17,17,0,'3010',3,3,'','',0,0,100,'2022-09-05 17:01:24','2022-08-29 09:36:43',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(366,0,0,11,19,19,0,'2116',7,7,'','',0,0,100,'2022-08-29 14:10:00','2022-08-29 10:50:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(367,0,0,11,19,19,0,'2099',7,7,'','',0,0,100,'2022-09-07 09:47:38','2022-08-29 11:31:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(368,0,0,9,17,17,0,'3040',3,3,'','',0,0,100,'2022-09-02 10:59:45','2022-08-29 13:45:56',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(369,0,0,11,20,20,0,'2116',7,7,'','',0,0,100,'2022-08-29 16:29:48','2022-08-29 14:10:13',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(370,0,0,9,17,17,0,'2158',3,3,'','',0,0,100,'2022-08-29 16:01:06','2022-08-29 15:06:42',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(371,0,0,10,18,18,0,'2158',6,6,'','',0,0,100,'2022-08-30 17:06:27','2022-08-29 16:01:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(372,0,0,10,18,18,0,'3010',6,6,'','',0,0,100,'2022-09-06 09:07:27','2022-08-29 16:31:10',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(373,0,0,9,17,17,0,'2114',3,3,'','',0,0,100,'2022-08-30 08:40:36','2022-08-30 08:04:57',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(374,0,0,10,18,18,0,'2114',6,6,'','',0,0,100,'2022-08-30 16:37:42','2022-08-30 08:40:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(375,0,0,10,18,18,0,'2189',6,6,'','',0,0,100,'2022-08-30 17:34:11','2022-08-30 09:50:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(376,0,0,9,17,17,0,'2098',3,3,'','',0,0,100,'2022-08-30 15:28:20','2022-08-30 14:36:07',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(377,0,0,10,18,18,0,'2098',6,6,'','',0,0,100,'2022-08-30 17:17:13','2022-08-30 15:28:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(378,0,0,9,17,17,0,'2059',3,3,'','',0,0,100,'2022-09-15 09:26:25','2022-08-30 15:44:05',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(379,0,0,9,17,17,0,'2172',3,3,'','',0,0,100,'2022-08-30 16:29:59','2022-08-30 15:44:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(380,0,0,11,19,19,0,'2098',7,7,'','',0,0,100,'2022-08-30 17:51:42','2022-08-30 17:19:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(381,0,0,11,19,19,0,'2158',7,7,'','',0,0,100,'2022-09-01 14:31:25','2022-08-30 17:30:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(382,0,0,11,20,20,0,'2098',7,7,'','',0,0,100,'2022-08-30 17:58:03','2022-08-30 17:51:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(383,0,0,10,18,18,0,'2172',6,6,'','',0,0,100,'2022-09-01 16:21:27','2022-08-30 17:56:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(384,0,0,11,19,19,0,'2114',7,7,'','',0,0,100,'2022-08-31 09:10:59','2022-08-31 08:11:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(385,0,0,11,20,20,0,'2114',7,7,'','',0,0,100,'2022-08-31 15:11:51','2022-08-31 09:11:10',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(386,0,0,11,19,19,0,'2083',7,7,'','',0,0,100,'2022-08-31 15:22:34','2022-08-31 14:40:56',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(387,0,0,11,20,20,0,'2083',7,7,'','',0,0,100,'2022-08-31 15:43:28','2022-08-31 15:22:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(388,0,0,10,18,18,0,'2083',6,6,'','',0,0,100,'2022-08-31 17:12:48','2022-08-31 15:45:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(389,0,0,9,17,17,0,'3067',3,3,'','',0,0,100,'2022-08-31 17:09:37','2022-08-31 16:28:05',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(390,0,0,10,18,18,0,'2178',6,6,'','',0,0,100,'2022-09-02 11:30:51','2022-08-31 17:46:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(391,0,0,9,17,17,0,'2052',3,3,'','',0,0,100,'2022-09-01 15:10:13','2022-09-01 11:31:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(392,0,0,11,20,20,0,'2158',7,7,'','',0,0,100,'2022-09-01 15:35:14','2022-09-01 14:31:40',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(393,0,0,11,19,19,0,'2172',7,7,'','',0,0,100,'2022-09-02 17:10:07','2022-09-01 17:20:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(394,0,0,10,18,18,0,'2052',6,6,'','',0,0,100,'2022-09-02 15:53:02','2022-09-02 09:55:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(395,0,0,11,19,19,0,'3040',7,7,'','',0,0,100,'2022-09-02 13:15:19','2022-09-02 11:34:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(396,0,0,11,20,20,0,'3040',7,7,'','',0,0,100,'2022-09-02 14:15:12','2022-09-02 13:15:30',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(397,0,0,9,17,17,0,'2113',3,3,'','',0,0,100,'2022-09-02 14:42:37','2022-09-02 14:10:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(398,0,0,11,19,19,0,'2113',7,7,'','',0,0,100,'2022-09-02 16:42:56','2022-09-02 16:08:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(399,0,0,11,19,19,0,'2052',7,7,'','',0,0,100,'2022-09-02 17:27:50','2022-09-02 16:09:30',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(400,0,0,11,20,20,0,'2113',7,7,'','',0,0,100,'2022-09-02 17:47:50','2022-09-02 16:43:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(401,0,0,11,20,20,0,'2172',7,7,'','',0,0,100,'2022-09-05 10:56:19','2022-09-02 17:10:25',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(402,0,0,11,20,20,0,'2052',7,7,'','',0,0,100,'2022-09-02 17:42:37','2022-09-02 17:28:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(403,0,0,9,17,17,0,'2179',3,3,'','',0,0,100,'2022-09-05 13:02:37','2022-09-05 10:16:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(404,0,0,9,17,17,0,'2173',3,3,'','',0,0,100,'2022-09-05 11:03:11','2022-09-05 10:20:27',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(405,0,0,9,17,17,0,'2184',3,3,'','',0,0,100,'2022-09-14 13:59:29','2022-09-05 10:27:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(406,0,0,9,17,17,0,'2186',3,3,'','',0,0,100,'2022-09-05 11:30:10','2022-09-05 10:30:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(407,0,0,9,17,17,0,'2162',3,3,'','',0,0,100,'2022-09-05 10:35:08','2022-09-05 10:34:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(408,0,0,10,18,18,0,'2162',6,6,'','',0,0,100,'2022-09-05 10:37:10','2022-09-05 10:36:31',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(409,0,0,11,19,19,0,'2162',7,7,'','',0,0,100,'2022-09-05 10:38:02','2022-09-05 10:37:41',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(410,0,0,11,20,20,0,'2162',7,7,'','',0,0,100,'2022-09-05 10:38:18','2022-09-05 10:38:06',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(411,0,0,9,17,17,0,'2169',3,3,'','',0,0,100,'2022-09-05 11:58:12','2022-09-05 11:14:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(412,0,0,10,18,18,0,'2186',6,6,'','',0,0,100,'2022-09-13 10:37:52','2022-09-05 11:31:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(413,0,0,10,18,18,0,'2169',6,6,'','',0,0,100,'2022-09-05 15:16:08','2022-09-05 13:02:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(414,0,0,11,19,19,0,'2173',7,7,'','',0,0,100,'2022-09-05 14:12:18','2022-09-05 13:11:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(415,0,0,10,18,18,0,'3040',6,6,'','',0,0,100,'2022-09-05 14:43:36','2022-09-05 13:16:25',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(416,0,0,10,18,18,0,'3067',6,6,'','',0,0,100,'2022-09-05 16:04:26','2022-09-05 14:02:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(417,0,0,11,20,20,0,'2173',7,7,'','',0,0,100,'2022-09-05 15:23:08','2022-09-05 14:12:28',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(418,0,0,11,19,19,0,'2169',7,7,'','',0,0,100,'2022-09-05 15:53:55','2022-09-05 15:22:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(419,0,0,11,20,20,0,'2169',7,7,'','',0,0,100,'2022-09-05 16:34:18','2022-09-05 16:03:57',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(420,0,0,11,19,19,0,'2178',7,7,'','',0,0,100,'2022-09-06 11:12:36','2022-09-05 16:08:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(421,0,0,11,19,19,0,'3067',7,7,'','',0,0,100,'2022-09-06 10:50:24','2022-09-05 16:51:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(422,0,0,11,19,19,0,'3010',7,7,'','',0,0,100,'2022-09-05 17:07:58','2022-09-05 17:07:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(423,0,0,11,20,20,0,'3010',7,7,'','',0,0,100,'2022-09-06 09:09:37','2022-09-05 17:08:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(424,0,0,9,17,17,0,'2081',3,3,'','',0,0,100,'2022-09-06 08:31:01','2022-09-06 08:30:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(425,0,0,10,18,18,0,'2081',6,6,'','',0,0,100,'2022-09-06 08:31:46','2022-09-06 08:31:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(426,0,0,11,19,19,0,'2081',7,7,'','',0,0,100,'2022-09-06 08:32:29','2022-09-06 08:32:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(427,0,0,11,20,20,0,'2081',7,7,'','',0,0,100,'2022-09-06 08:32:57','2022-09-06 08:32:34',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(428,0,0,11,20,20,0,'3067',7,7,'','',0,0,100,'2022-09-06 16:17:16','2022-09-06 10:50:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(429,0,0,10,18,18,0,'2173',6,6,'','',0,0,100,'2022-09-06 15:05:05','2022-09-06 11:09:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(430,0,0,11,20,20,0,'2178',7,7,'','',0,0,100,'2022-09-06 15:52:22','2022-09-06 11:12:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(431,0,0,9,17,17,0,'2111',3,3,'','',0,0,100,'2022-09-06 14:09:47','2022-09-06 13:37:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(432,0,0,10,18,18,0,'2111',6,6,'','',0,0,100,'2022-09-06 15:51:41','2022-09-06 14:16:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(433,0,0,9,17,17,0,'2018',3,3,'','',0,0,100,'2022-09-07 10:54:57','2022-09-06 14:39:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(434,0,0,11,19,19,0,'2118',7,7,'','',0,0,100,'2022-09-06 16:54:59','2022-09-06 15:19:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(435,0,0,9,17,17,0,'2170',3,3,'','',0,0,100,'2022-09-06 16:10:53','2022-09-06 15:37:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(436,0,0,11,19,19,0,'2111',7,7,'','',0,0,100,'2022-09-06 16:55:39','2022-09-06 15:54:15',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(437,0,0,11,19,19,0,'2170',7,7,'','',0,0,100,'2022-09-07 14:05:15','2022-09-06 16:19:27',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(438,0,0,11,20,20,0,'2111',7,7,'','',0,0,100,'2022-09-06 18:02:46','2022-09-06 16:56:52',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(439,0,0,11,20,20,0,'2118',7,7,'','',0,0,100,'2022-09-08 15:47:30','2022-09-06 16:59:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(440,0,0,11,20,20,0,'2099',7,7,'','',0,0,100,'2022-09-14 16:55:28','2022-09-07 09:49:37',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(441,0,0,10,18,18,0,'2170',6,6,'','',0,0,100,'2022-09-07 10:55:16','2022-09-07 10:53:53',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(442,0,0,10,18,18,0,'2018',6,6,'','',0,0,100,'2022-09-07 11:29:01','2022-09-07 10:55:42',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(443,0,0,11,19,19,0,'2018',7,7,'','',0,0,100,'2022-09-07 11:39:24','2022-09-07 11:31:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(444,0,0,11,20,20,0,'2018',1,7,'','',0,0,14,'2022-09-07 11:41:34','2022-09-07 11:41:34',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(445,0,0,11,20,20,0,'2170',7,7,'','',0,0,100,'2022-09-07 14:05:24','2022-09-07 14:05:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(446,0,0,9,17,17,0,'2164',3,3,'','',0,0,100,'2022-09-08 15:56:31','2022-09-08 14:51:07',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(447,0,0,10,18,18,0,'2164',6,6,'','',0,0,100,'2022-09-08 16:29:59','2022-09-08 15:58:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(448,0,0,11,19,19,0,'2164',7,7,'','',0,0,100,'2022-09-08 16:43:11','2022-09-08 16:31:31',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(449,0,0,11,20,20,0,'2164',7,7,'','',0,0,100,'2022-09-08 17:18:14','2022-09-08 16:43:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(450,0,0,11,20,20,0,'2075',7,7,'','',0,0,100,'2022-09-13 14:32:25','2022-09-08 20:16:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(451,0,0,9,17,17,0,'2138',3,3,'','',0,0,100,'2022-09-13 10:57:49','2022-09-13 10:27:00',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(452,0,0,9,17,17,0,'2147',3,3,'','',0,0,100,'2022-09-13 11:05:00','2022-09-13 10:28:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(453,0,0,9,17,17,0,'3066',3,3,'','',0,0,100,'2022-09-13 18:44:18','2022-09-13 10:34:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(454,0,0,11,19,19,0,'2186',7,7,'','',0,0,100,'2022-09-13 10:36:13','2022-09-13 10:34:57',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(455,0,0,11,20,20,0,'2186',7,7,'','',0,0,100,'2022-09-13 10:36:59','2022-09-13 10:36:29',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(456,0,0,9,17,17,0,'2174',3,3,'','',0,0,100,'2022-09-13 11:19:42','2022-09-13 10:44:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(457,0,0,9,17,17,0,'2095',3,3,'','',0,0,100,'2022-09-13 13:15:36','2022-09-13 10:47:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(458,0,0,9,17,17,0,'2133',3,3,'','',0,0,100,'2022-09-13 10:48:06','2022-09-13 10:47:48',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(459,0,0,9,17,17,0,'2143',3,3,'','',0,0,100,'2022-09-13 10:56:40','2022-09-13 10:53:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(460,0,0,10,18,18,0,'2133',6,6,'','',0,0,100,'2022-09-13 10:55:33','2022-09-13 10:54:54',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(461,0,0,11,19,19,0,'2133',7,7,'','',0,0,100,'2022-09-13 10:56:52','2022-09-13 10:56:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(462,0,0,10,18,18,0,'2143',6,6,'','',0,0,100,'2022-09-13 10:59:34','2022-09-13 10:57:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(463,0,0,11,20,20,0,'2133',7,7,'','',0,0,100,'2022-09-13 10:59:59','2022-09-13 10:58:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(464,0,0,10,18,18,0,'2138',6,6,'','',0,0,100,'2022-09-13 11:00:32','2022-09-13 10:59:38',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(465,0,0,11,19,19,0,'2143',7,7,'','',0,0,100,'2022-09-13 11:02:24','2022-09-13 11:00:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(466,0,0,11,20,20,0,'2143',7,7,'','',0,0,100,'2022-09-13 11:04:07','2022-09-13 11:03:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(467,0,0,9,17,17,0,'2176',3,3,'','',0,0,100,'2022-09-13 12:29:46','2022-09-13 11:03:06',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(468,0,0,11,19,19,0,'2138',7,7,'','',0,0,100,'2022-09-13 11:03:37','2022-09-13 11:03:28',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(469,0,0,11,20,20,0,'2138',7,7,'','',0,0,100,'2022-09-13 11:03:56','2022-09-13 11:03:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(470,0,0,11,20,20,0,'2056',7,7,'','',0,0,100,'2022-09-13 16:11:33','2022-09-13 11:27:05',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(471,0,0,9,17,17,0,'2028',3,3,'','',0,0,100,'2022-09-13 12:36:45','2022-09-13 11:31:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(472,0,0,9,17,17,0,'2106',3,3,'','',0,0,100,'2022-09-13 13:34:09','2022-09-13 12:37:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(473,0,0,11,19,19,0,'2028',7,7,'','',0,0,100,'2022-09-13 12:39:29','2022-09-13 12:38:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(474,0,0,10,18,18,0,'2176',6,6,'','',0,0,100,'2022-09-13 15:15:57','2022-09-13 12:39:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(475,0,0,11,20,20,0,'2028',7,7,'','',0,0,100,'2022-09-13 12:40:28','2022-09-13 12:39:38',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(476,0,0,10,18,18,0,'2028',6,6,'','',0,0,100,'2022-09-13 12:41:16','2022-09-13 12:41:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(477,0,0,10,18,18,0,'2147',6,6,'','',0,0,100,'2022-09-13 14:52:46','2022-09-13 13:02:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(478,0,0,10,18,18,0,'2101',6,6,'','',0,0,100,'2022-09-13 16:30:30','2022-09-13 13:13:17',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(479,0,0,10,18,18,0,'2095',6,6,'','',0,0,100,'2022-09-13 15:34:38','2022-09-13 13:16:42',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(480,0,0,10,18,18,0,'2174',6,6,'','',0,0,100,'2022-09-13 14:52:06','2022-09-13 13:29:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(481,0,0,10,18,18,0,'3045',6,6,'','',0,0,100,'2022-09-13 14:34:51','2022-09-13 14:34:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(482,0,0,11,19,19,0,'3045',7,7,'','',0,0,100,'2022-09-13 14:35:13','2022-09-13 14:35:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(483,0,0,11,20,20,0,'3045',7,7,'','',0,0,100,'2022-09-13 14:37:07','2022-09-13 14:35:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(484,0,0,9,17,17,0,'2115',3,3,'','',0,0,100,'2022-09-15 13:04:50','2022-09-13 14:49:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(485,0,0,11,19,19,0,'2174',7,7,'','',0,0,100,'2022-09-13 15:29:45','2022-09-13 14:54:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(486,0,0,11,19,19,0,'2147',7,7,'','',0,0,100,'2022-09-13 15:55:33','2022-09-13 14:55:25',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(487,0,0,9,17,17,0,'2077',3,3,'','',0,0,100,'2022-09-13 15:33:49','2022-09-13 15:01:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(488,0,0,11,20,20,0,'2174',7,7,'','',0,0,100,'2022-09-13 15:51:24','2022-09-13 15:29:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(489,0,0,11,19,19,0,'2095',7,7,'','',0,0,100,'2022-09-13 16:59:42','2022-09-13 15:40:40',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(490,0,0,11,20,20,0,'2147',7,7,'','',0,0,100,'2022-09-13 16:29:28','2022-09-13 15:55:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(491,0,0,11,19,19,0,'2176',7,7,'','',0,0,100,'2022-09-13 18:37:45','2022-09-13 16:18:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(492,0,0,11,19,19,0,'2101',7,7,'','',0,0,100,'2022-09-15 13:28:36','2022-09-13 16:40:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(493,0,0,11,20,20,0,'2095',7,7,'','',0,0,100,'2022-09-13 17:00:18','2022-09-13 16:59:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(494,0,0,11,20,20,0,'2176',7,7,'','',0,0,100,'2022-09-13 18:38:02','2022-09-13 18:37:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(495,0,0,10,18,18,0,'3066',6,6,'','',0,0,100,'2022-09-13 19:15:36','2022-09-13 19:14:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(496,0,0,11,19,19,0,'3066',7,7,'','',0,0,100,'2022-09-13 19:16:05','2022-09-13 19:15:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(497,0,0,11,20,20,0,'3066',7,7,'','',0,0,100,'2022-09-13 19:16:22','2022-09-13 19:16:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(498,0,0,9,17,17,0,'2097',3,3,'','',0,0,100,'2022-09-14 08:33:57','2022-09-14 08:02:00',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(499,0,0,10,18,18,0,'2097',6,6,'','',0,0,100,'2022-09-15 18:04:12','2022-09-14 08:36:36',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(500,0,0,9,17,17,0,'2196',3,3,'','',0,0,100,'2022-09-14 11:03:25','2022-09-14 08:44:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(501,0,0,9,17,17,0,'2029',3,3,'','',0,0,100,'2022-09-14 16:33:50','2022-09-14 08:47:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(502,0,0,9,17,17,0,'2043',3,3,'','',0,0,100,'2022-09-14 09:44:45','2022-09-14 08:58:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(503,0,0,11,19,19,0,'2077',7,7,'','',0,0,100,'2022-09-14 14:05:52','2022-09-14 09:06:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(504,0,0,9,17,17,0,'2073',3,3,'','',0,0,100,'2022-09-14 09:12:08','2022-09-14 09:11:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(505,0,0,10,18,18,0,'2073',6,6,'','',0,0,100,'2022-09-14 09:15:38','2022-09-14 09:14:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(506,0,0,11,19,19,0,'2073',7,7,'','',0,0,100,'2022-09-14 09:16:37','2022-09-14 09:16:13',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(507,0,0,11,20,20,0,'2073',7,7,'','',0,0,100,'2022-09-14 09:17:34','2022-09-14 09:17:17',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(508,0,0,11,19,19,0,'2179',7,7,'','',0,0,100,'2022-09-14 13:56:56','2022-09-14 09:26:53',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(509,0,0,9,17,17,0,'2104',3,3,'','',0,0,100,'2022-09-14 11:10:34','2022-09-14 09:27:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(510,0,0,9,17,17,0,'3065',3,3,'','',0,0,100,'2022-09-14 11:15:19','2022-09-14 09:57:13',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(511,0,0,9,17,17,0,'2017',3,3,'','',0,0,100,'2022-09-14 10:57:35','2022-09-14 10:25:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(512,0,0,10,18,18,0,'2017',6,6,'','',0,0,100,'2022-09-14 15:39:39','2022-09-14 10:59:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(513,0,0,10,18,18,0,'2104',6,6,'','',0,0,100,'2022-09-15 13:15:49','2022-09-14 11:33:26',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(514,0,0,9,17,17,0,'2187',3,3,'','',0,0,100,'2022-09-14 13:15:18','2022-09-14 11:38:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(515,0,0,11,19,19,0,'2187',7,7,'','',0,0,100,'2022-09-14 11:51:45','2022-09-14 11:48:25',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(516,0,0,10,18,18,0,'2187',6,6,'','',0,0,100,'2022-09-14 11:50:00','2022-09-14 11:49:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(517,0,0,11,20,20,0,'2187',7,7,'','',0,0,100,'2022-09-14 11:51:57','2022-09-14 11:51:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(518,0,0,10,18,18,0,'2196',6,6,'','',0,0,100,'2022-09-14 15:27:33','2022-09-14 13:01:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(519,0,0,9,17,17,0,'2171',3,3,'','',0,0,100,'2022-09-14 15:04:11','2022-09-14 13:48:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(520,0,0,10,18,18,0,'2184',6,6,'','',0,0,100,'2022-09-14 16:25:28','2022-09-14 14:05:49',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(521,0,0,11,20,20,0,'2077',3,7,'','',0,0,42,'2022-09-19 07:25:29','2022-09-14 14:06:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(522,0,0,11,20,20,0,'2179',7,7,'','',0,0,100,'2022-09-14 14:18:57','2022-09-14 14:18:37',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(523,0,0,10,18,18,0,'2179',6,6,'','',0,0,100,'2022-09-14 14:19:12','2022-09-14 14:19:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(524,0,0,10,18,18,0,'2171',6,6,'','',0,0,100,'2022-09-14 16:39:09','2022-09-14 15:08:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(525,0,0,11,19,19,0,'2017',7,7,'','',0,0,100,'2022-09-14 16:56:23','2022-09-14 15:42:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(526,0,0,10,18,18,0,'3065',6,6,'','',0,0,100,'2022-09-15 09:50:28','2022-09-14 15:45:26',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(527,0,0,9,17,17,0,'2089',3,3,'','',0,0,100,'2022-09-15 10:48:56','2022-09-14 15:58:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(528,0,0,11,19,19,0,'2171',3,7,'','',0,0,42,'2022-09-15 16:47:24','2022-09-14 16:42:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(529,0,0,10,18,18,0,'2029',6,6,'','',0,0,100,'2022-09-19 14:25:07','2022-09-14 16:48:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(530,0,0,11,19,19,0,'2184',7,7,'','',0,0,100,'2022-09-19 17:58:15','2022-09-14 16:55:19',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(531,0,0,11,19,19,0,'2196',7,7,'','',0,0,100,'2022-09-14 18:18:09','2022-09-14 16:56:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(532,0,0,11,20,20,0,'2017',7,7,'','',0,0,100,'2022-09-14 17:32:07','2022-09-14 16:57:06',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(533,0,0,11,19,19,0,'2024',7,7,'','',0,0,100,'2022-09-14 19:12:36','2022-09-14 18:01:06',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(534,0,0,11,20,20,0,'2024',7,7,'','',0,0,100,'2022-09-14 19:39:32','2022-09-14 19:12:38',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(535,0,0,11,20,20,0,'2196',7,7,'','',0,0,100,'2022-09-15 09:19:41','2022-09-15 08:43:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(536,0,0,10,18,18,0,'2059',6,6,'','',0,0,100,'2022-09-15 09:31:29','2022-09-15 09:29:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(537,0,0,11,19,19,0,'2059',7,7,'','',0,0,100,'2022-09-15 09:50:38','2022-09-15 09:32:27',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(538,0,0,11,20,20,0,'2059',7,7,'','',0,0,100,'2022-09-15 09:52:58','2022-09-15 09:50:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(539,0,0,11,19,19,0,'2155',7,7,'','',0,0,100,'2022-09-15 19:38:18','2022-09-15 10:13:30',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(540,0,0,9,17,17,0,'2039',3,3,'','',0,0,100,'2022-09-15 11:03:40','2022-09-15 10:29:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(541,0,0,11,19,19,0,'3065',7,7,'','',0,0,100,'2022-09-15 13:46:30','2022-09-15 10:32:56',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(542,0,0,9,17,17,0,'2155',3,3,'','',0,0,100,'2022-09-15 15:03:16','2022-09-15 10:41:13',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(543,0,0,11,19,19,0,'2097',7,7,'','',0,0,100,'2022-09-15 18:03:13','2022-09-15 10:50:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(544,0,0,9,17,17,0,'3043',3,3,'','',0,0,100,'2022-09-15 14:33:24','2022-09-15 10:50:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(545,0,0,10,18,18,0,'2039',6,6,'','',0,0,100,'2022-09-15 14:25:05','2022-09-15 11:05:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(546,0,0,9,17,17,0,'2105',3,3,'','',0,0,100,'2022-09-15 11:22:57','2022-09-15 11:19:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(547,0,0,10,18,18,0,'2105',6,6,'','',0,0,100,'2022-09-15 11:31:40','2022-09-15 11:25:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(548,0,0,11,19,19,0,'2105',7,7,'','',0,0,100,'2022-09-15 11:33:19','2022-09-15 11:32:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(549,0,0,11,20,20,0,'2105',7,7,'','',0,0,100,'2022-09-15 11:34:22','2022-09-15 11:33:26',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(550,0,0,9,17,17,0,'3068',3,3,'','',0,0,100,'2022-09-15 13:17:58','2022-09-15 11:37:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(551,0,0,10,18,18,0,'2115',6,6,'','',0,0,100,'2022-09-15 14:59:41','2022-09-15 13:16:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(552,0,0,11,19,19,0,'2104',7,7,'','',0,0,100,'2022-09-15 13:57:29','2022-09-15 13:20:26',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(553,0,0,11,20,20,0,'2101',7,7,'','',0,0,100,'2022-09-15 14:09:49','2022-09-15 13:28:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(554,0,0,9,17,17,0,'2132',3,3,'','',0,0,100,'2022-09-15 13:37:56','2022-09-15 13:36:05',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(555,0,0,11,20,20,0,'3065',7,7,'','',0,0,100,'2022-09-15 14:08:57','2022-09-15 13:49:45',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(556,0,0,10,18,18,0,'2132',6,6,'','',0,0,100,'2022-09-15 13:51:14','2022-09-15 13:50:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(557,0,0,11,19,19,0,'2132',7,7,'','',0,0,100,'2022-09-15 13:51:40','2022-09-15 13:51:28',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(558,0,0,11,20,20,0,'2132',7,7,'','',0,0,100,'2022-09-15 13:51:51','2022-09-15 13:51:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(559,0,0,11,20,20,0,'2104',7,7,'','',0,0,100,'2022-09-15 16:50:30','2022-09-15 13:57:44',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(560,0,0,9,17,17,0,'2190',3,3,'','',0,0,100,'2022-09-15 14:12:40','2022-09-15 14:11:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(561,0,0,9,17,17,0,'2192',3,3,'','',0,0,100,'2022-09-15 15:14:09','2022-09-15 14:15:38',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(562,0,0,11,19,19,0,'2190',7,7,'','',0,0,100,'2022-09-15 14:19:22','2022-09-15 14:18:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(563,0,0,11,20,20,0,'2190',7,7,'','',0,0,100,'2022-09-15 14:19:54','2022-09-15 14:19:28',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(564,0,0,11,19,19,0,'2039',7,7,'','',0,0,100,'2022-09-15 15:32:56','2022-09-15 14:28:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(565,0,0,10,18,18,0,'3043',6,6,'','',0,0,100,'2022-09-15 14:36:17','2022-09-15 14:36:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(566,0,0,11,19,19,0,'3043',7,7,'','',0,0,100,'2022-09-15 14:53:09','2022-09-15 14:41:28',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(567,0,0,9,17,17,0,'2087',3,3,'','',0,0,100,'2022-09-16 20:03:29','2022-09-15 14:46:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(568,0,0,11,20,20,0,'3043',7,7,'','',0,0,100,'2022-09-15 14:53:18','2022-09-15 14:53:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(569,0,0,10,18,18,0,'2190',6,6,'','',0,0,100,'2022-09-15 14:57:53','2022-09-15 14:57:19',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(570,0,0,11,19,19,0,'2115',7,7,'','',0,0,100,'2022-09-15 15:17:08','2022-09-15 15:04:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(571,0,0,11,20,20,0,'2115',7,7,'','',0,0,100,'2022-09-15 15:33:36','2022-09-15 15:17:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(572,0,0,11,19,19,0,'2192',7,7,'','',0,0,100,'2022-09-15 16:02:43','2022-09-15 15:17:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(573,0,0,11,20,20,0,'2039',7,7,'','',0,0,100,'2022-09-15 16:19:57','2022-09-15 15:34:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(574,0,0,11,20,20,0,'2192',7,7,'','',0,0,100,'2022-09-15 16:45:12','2022-09-15 16:02:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(575,0,0,9,17,17,0,'2149',3,3,'','',0,0,100,'2022-09-19 13:33:22','2022-09-15 16:24:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(576,0,0,10,18,18,0,'3068',6,6,'','',0,0,100,'2022-09-16 10:57:42','2022-09-15 16:40:41',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(577,0,0,10,18,18,0,'2192',6,6,'','',0,0,100,'2022-09-15 16:45:28','2022-09-15 16:45:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(578,0,0,10,18,18,0,'2149',6,6,'','',0,0,100,'2022-09-21 09:52:04','2022-09-15 17:02:19',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(579,0,0,11,20,20,0,'2097',7,7,'','',0,0,100,'2022-09-15 18:03:51','2022-09-15 18:03:31',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(580,0,0,11,20,20,0,'2155',7,7,'','',0,0,100,'2022-09-15 20:25:04','2022-09-15 19:41:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(581,0,0,10,18,18,0,'2155',6,6,'','',0,0,100,'2022-09-15 20:50:08','2022-09-15 20:49:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(582,0,0,11,19,19,0,'3068',7,7,'','',0,0,100,'2022-09-16 13:11:52','2022-09-16 11:01:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(583,0,0,11,20,20,0,'3068',7,7,'','',0,0,100,'2022-09-16 13:40:07','2022-09-16 13:12:03',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(584,0,0,9,17,17,0,'2046',3,3,'','',0,0,100,'2022-09-16 13:39:48','2022-09-16 13:26:17',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(585,0,0,10,18,18,0,'2046',6,6,'','',0,0,100,'2022-09-16 13:40:09','2022-09-16 13:40:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(586,0,0,11,19,19,0,'2046',7,7,'','',0,0,100,'2022-09-16 13:40:26','2022-09-16 13:40:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(587,0,0,11,20,20,0,'2046',7,7,'','',0,0,100,'2022-09-16 13:40:37','2022-09-16 13:40:29',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(588,0,0,10,18,18,0,'2087',6,6,'','',0,0,100,'2022-09-16 20:04:08','2022-09-16 20:03:47',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(589,0,0,11,19,19,0,'2087',7,7,'','',0,0,100,'2022-09-16 20:05:09','2022-09-16 20:04:50',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(590,0,0,11,20,20,0,'2087',7,7,'','',0,0,100,'2022-09-16 20:05:22','2022-09-16 20:05:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(591,0,0,9,17,17,0,'2145',3,3,'','',0,0,100,'2022-09-18 11:36:56','2022-09-18 11:36:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(592,0,0,10,18,18,0,'2145',6,6,'','',0,0,100,'2022-09-18 11:41:59','2022-09-18 11:37:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(593,0,0,11,19,19,0,'2145',7,7,'','',0,0,100,'2022-09-18 11:39:09','2022-09-18 11:38:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(594,0,0,11,20,20,0,'2145',7,7,'','',0,0,100,'2022-09-18 11:39:58','2022-09-18 11:39:15',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(595,0,0,9,17,17,0,'2110',3,3,'','',0,0,100,'2022-09-18 15:50:13','2022-09-18 15:15:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(596,0,0,10,18,18,0,'2110',6,6,'','',0,0,100,'2022-09-18 16:47:30','2022-09-18 15:52:19',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(597,0,0,11,19,19,0,'2110',7,7,'','',0,0,100,'2022-09-18 16:46:16','2022-09-18 16:11:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(598,0,0,11,20,20,0,'2110',7,7,'','',0,0,100,'2022-09-18 16:46:44','2022-09-18 16:46:26',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(599,0,0,11,19,19,0,'2029',7,7,'','',0,0,100,'2022-09-19 14:55:50','2022-09-19 14:27:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(600,0,0,11,20,20,0,'2029',7,7,'','',0,0,100,'2022-09-19 17:44:39','2022-09-19 14:56:01',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(601,0,0,11,20,20,0,'2184',7,7,'','',0,0,100,'2022-09-19 18:00:37','2022-09-19 17:59:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(602,0,0,10,18,18,0,'2077',5,6,'','',0,0,83,'2022-09-21 14:44:52','2022-09-21 07:35:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(603,0,0,11,19,19,0,'2149',7,7,'','',0,0,100,'2022-09-21 10:51:12','2022-09-21 10:01:48',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(604,0,0,11,20,20,0,'2149',7,7,'','',0,0,100,'2022-09-21 13:28:02','2022-09-21 10:51:54',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(605,0,0,12,21,21,0,'admin',9,9,'','',0,0,100,'2022-10-03 23:08:54','2022-10-03 07:13:34',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(606,0,0,12,22,22,0,'admin',9,9,'','',0,0,100,'2022-10-03 23:13:31','2022-10-03 23:12:00',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(607,0,0,12,23,23,0,'admin',10,10,'','',0,0,100,'2022-10-03 23:15:09','2022-10-03 23:13:41',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(608,0,0,12,21,21,0,'test001',9,9,'','',0,0,100,'2022-10-03 23:17:36','2022-10-03 23:16:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(609,0,0,12,22,22,0,'test001',9,9,'','',0,0,100,'2022-10-03 23:19:00','2022-10-03 23:17:57',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(610,0,0,12,23,23,0,'test001',10,10,'','',0,0,100,'2022-10-03 23:23:34','2022-10-03 23:22:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(611,0,0,12,21,21,0,'test04',9,9,'','',0,0,100,'2022-10-04 00:10:02','2022-10-04 00:08:50',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(612,0,0,12,22,22,0,'test04',9,9,'','',0,0,100,'2022-10-04 00:10:31','2022-10-04 00:10:12',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(613,0,0,12,23,23,0,'test04',10,10,'','',0,0,100,'2022-10-04 00:10:56','2022-10-04 00:10:38',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(614,0,0,12,21,21,0,'test03',9,9,'','',0,0,100,'2022-10-04 00:15:53','2022-10-04 00:14:39',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(615,0,0,12,22,22,0,'test03',9,9,'','',0,0,100,'2022-10-04 00:16:51','2022-10-04 00:16:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(616,0,0,12,23,23,0,'test03',10,10,'','',0,0,100,'2022-10-04 00:24:32','2022-10-04 00:16:58',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(617,0,0,12,21,21,0,'test05',2,9,'','',0,0,22,'2022-10-04 13:27:30','2022-10-04 13:26:25',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(618,0,0,12,21,21,0,'test01',2,9,'','',0,0,22,'2022-11-08 15:03:25','2022-10-04 14:47:48',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(619,0,0,12,21,21,0,'99290005',9,9,'','',0,0,100,'2022-10-04 15:30:44','2022-10-04 15:27:53',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(620,0,0,12,22,22,0,'99290005',9,9,'','',0,0,100,'2022-10-05 10:08:51','2022-10-05 09:28:26',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(621,0,0,12,23,23,0,'99290005',10,10,'','',0,0,100,'2022-10-05 10:23:45','2022-10-05 10:09:13',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(622,0,0,12,21,21,0,'77220603',9,9,'','',0,0,100,'2022-10-05 15:54:31','2022-10-05 13:56:15',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(623,0,0,12,21,21,0,'77220802',9,9,'','',0,0,100,'2022-10-05 14:50:00','2022-10-05 14:08:28',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(624,0,0,12,22,22,0,'77220802',9,9,'','',0,0,100,'2022-10-05 15:14:13','2022-10-05 14:50:33',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(625,0,0,12,23,23,0,'77220802',10,10,'','',0,0,100,'2022-10-05 15:38:30','2022-10-05 15:14:34',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(626,0,0,12,22,22,0,'77220603',9,9,'','',0,0,100,'2022-10-05 17:52:22','2022-10-05 17:01:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(627,0,0,12,21,21,0,'99201010',9,9,'','',0,0,100,'2022-10-05 17:50:41','2022-10-05 17:14:40',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(628,0,0,12,21,21,0,'77220701',9,9,'','',0,0,100,'2022-10-06 08:29:46','2022-10-06 07:56:53',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(629,0,0,12,22,22,0,'77220701',9,9,'','',0,0,100,'2022-10-06 09:02:08','2022-10-06 08:30:56',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(630,0,0,12,21,21,0,'99202204',9,9,'','',0,0,100,'2022-10-06 10:17:48','2022-10-06 08:37:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(631,0,0,12,23,23,0,'77220701',10,10,'','',0,0,100,'2022-10-06 10:16:13','2022-10-06 09:03:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(632,0,0,12,22,22,0,'99202204',9,9,'','',0,0,100,'2022-10-06 12:00:03','2022-10-06 10:18:10',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(633,0,0,12,23,23,0,'99202204',10,10,'','',0,0,100,'2022-10-06 13:03:03','2022-10-06 12:00:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(634,0,0,12,23,23,0,'77220603',10,10,'','',0,0,100,'2022-10-06 14:28:45','2022-10-06 13:24:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(635,0,0,12,22,22,0,'99201010',9,9,'','',0,0,100,'2022-10-06 17:27:56','2022-10-06 17:01:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(636,0,0,12,21,21,0,'200039',9,9,'','',0,0,100,'2022-10-07 10:53:32','2022-10-07 09:56:57',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(637,0,0,12,21,21,0,'99201923',9,9,'','',0,0,100,'2022-10-07 13:06:29','2022-10-07 10:01:19',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(638,0,0,12,21,21,0,'99201319',9,9,'','',0,0,100,'2022-10-17 13:26:51','2022-10-07 10:16:25',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(639,0,0,12,22,22,0,'200039',9,9,'','',0,0,100,'2022-10-07 13:33:31','2022-10-07 10:54:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(640,0,0,12,23,23,0,'200039',10,10,'','',0,0,100,'2022-10-07 13:55:45','2022-10-07 13:36:50',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(641,0,0,12,22,22,0,'99201923',9,9,'','',0,0,100,'2022-10-07 16:40:18','2022-10-07 14:03:46',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(642,0,0,12,23,23,0,'99201010',10,10,'','',0,0,100,'2022-10-07 16:03:50','2022-10-07 15:14:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(643,0,0,12,23,23,0,'99201923',10,10,'','',0,0,100,'2022-10-19 15:10:29','2022-10-07 16:40:38',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(644,0,0,12,21,21,0,'99202110',9,9,'','',0,0,100,'2022-10-11 12:19:34','2022-10-11 12:10:31',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(645,0,0,12,22,22,0,'99202110',9,9,'','',0,0,100,'2022-10-11 12:23:02','2022-10-11 12:19:53',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(646,0,0,12,23,23,0,'99202110',10,10,'','',0,0,100,'2022-10-11 12:24:39','2022-10-11 12:23:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(647,0,0,12,21,21,0,'77220602',9,9,'','',0,0,100,'2022-10-12 16:19:00','2022-10-12 15:45:50',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(648,0,0,12,22,22,0,'77220602',9,9,'','',0,0,100,'2022-10-12 17:13:36','2022-10-12 16:47:52',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(649,0,0,12,23,23,0,'77220602',10,10,'','',0,0,100,'2022-10-13 15:58:43','2022-10-12 17:14:26',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(650,0,0,12,21,21,0,'99201009',9,9,'','',0,0,100,'2022-10-13 11:32:21','2022-10-13 10:52:06',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(651,0,0,12,22,22,0,'99201009',9,9,'','',0,0,100,'2022-10-13 13:19:29','2022-10-13 11:33:19',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(652,0,0,12,23,23,0,'99201009',10,10,'','',0,0,100,'2022-10-13 14:11:24','2022-10-13 13:20:40',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(653,0,0,12,21,21,0,'77220801',9,9,'','',0,0,100,'2022-10-19 15:44:20','2022-10-13 16:16:50',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(654,0,0,12,22,22,0,'99201319',9,9,'','',0,0,100,'2022-10-17 14:33:37','2022-10-17 13:30:38',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(655,0,0,12,23,23,0,'99201319',10,10,'','',0,0,100,'2022-10-17 16:49:35','2022-10-17 14:39:31',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(656,0,0,12,21,21,0,'99201922',9,9,'','',0,0,100,'2022-10-19 08:38:01','2022-10-17 17:12:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(657,0,0,12,21,21,0,'99201904',9,9,'','',0,0,100,'2022-10-18 14:53:52','2022-10-18 14:52:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(658,0,0,12,22,22,0,'99201904',9,9,'','',0,0,100,'2022-10-18 14:55:10','2022-10-18 14:54:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(659,0,0,12,23,23,0,'99201904',10,10,'','',0,0,100,'2022-10-18 14:56:22','2022-10-18 14:55:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(660,0,0,12,22,22,0,'99201922',9,9,'','',0,0,100,'2022-10-19 09:23:52','2022-10-19 08:38:34',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(661,0,0,12,23,23,0,'99201922',10,10,'','',0,0,100,'2022-10-19 16:35:57','2022-10-19 09:24:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(662,0,0,12,21,21,0,'99201508',9,9,'','',0,0,100,'2022-10-19 15:18:32','2022-10-19 15:01:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(663,0,0,12,22,22,0,'99201508',9,9,'','',0,0,100,'2022-10-19 15:21:13','2022-10-19 15:19:06',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(664,0,0,12,23,23,0,'99201508',10,10,'','',0,0,100,'2022-10-19 15:23:54','2022-10-19 15:21:24',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(665,0,0,12,21,21,0,'99201711',9,9,'','',0,0,100,'2022-10-19 15:59:12','2022-10-19 15:35:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(666,0,0,12,22,22,0,'77220801',9,9,'','',0,0,100,'2022-10-27 11:10:51','2022-10-19 15:44:42',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(667,0,0,12,22,22,0,'99201711',9,9,'','',0,0,100,'2022-10-19 16:13:28','2022-10-19 15:59:31',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(668,0,0,12,23,23,0,'99201711',10,10,'','',0,0,100,'2022-10-19 16:26:44','2022-10-19 16:13:51',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(669,0,0,12,21,21,0,'77220604',9,9,'','',0,0,100,'2022-10-20 11:29:58','2022-10-20 10:45:13',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(670,0,0,12,22,22,0,'77220604',9,9,'','',0,0,100,'2022-10-20 11:59:30','2022-10-20 11:30:26',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(671,0,0,12,23,23,0,'77220604',10,10,'','',0,0,100,'2022-10-20 13:11:10','2022-10-20 12:00:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(672,0,0,12,21,21,0,'99201914',9,9,'','',0,0,100,'2022-10-20 20:04:48','2022-10-20 19:33:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(673,0,0,12,22,22,0,'99201914',9,9,'','',0,0,100,'2022-10-20 20:30:11','2022-10-20 20:05:21',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(674,0,0,12,23,23,0,'99201914',10,10,'','',0,0,100,'2022-10-20 20:54:43','2022-10-20 20:30:35',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(675,0,0,12,21,21,0,'77220605',9,9,'','',0,0,100,'2022-10-23 13:18:16','2022-10-23 12:46:08',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(676,0,0,12,22,22,0,'77220605',9,9,'','',0,0,100,'2022-10-23 13:43:13','2022-10-23 13:18:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(677,0,0,12,23,23,0,'77220605',10,10,'','',0,0,100,'2022-10-23 14:01:25','2022-10-23 13:43:37',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(678,0,0,12,21,21,0,'77220704',9,9,'','',0,0,100,'2022-10-24 17:47:26','2022-10-24 17:40:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(679,0,0,12,22,22,0,'77220704',9,9,'','',0,0,100,'2022-10-24 17:54:51','2022-10-24 17:48:32',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(680,0,0,12,23,23,0,'77220704',10,10,'','',0,0,100,'2022-10-24 18:00:16','2022-10-24 17:55:22',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(681,0,0,12,21,21,0,'77220703',9,9,'','',0,0,100,'2022-10-25 09:32:01','2022-10-25 08:58:43',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(682,0,0,12,22,22,0,'77220703',9,9,'','',0,0,100,'2022-10-25 09:59:10','2022-10-25 09:32:37',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(683,0,0,12,23,23,0,'77220703',10,10,'','',0,0,100,'2022-10-25 10:39:37','2022-10-25 10:01:02',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(684,0,0,12,21,21,0,'77220504',9,9,'','',0,0,100,'2022-10-26 10:12:14','2022-10-26 09:11:52',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(685,0,0,12,22,22,0,'77220504',9,9,'','',0,0,100,'2022-10-26 11:30:10','2022-10-26 10:12:37',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(686,0,0,12,23,23,0,'77220504',10,10,'','',0,0,100,'2022-10-26 15:10:38','2022-10-26 11:30:37',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(687,0,0,12,23,23,0,'77220801',10,10,'','',0,0,100,'2022-10-27 14:07:07','2022-10-27 11:11:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(688,0,0,12,21,21,0,'77220505',9,9,'','',0,0,100,'2022-10-30 07:31:31','2022-10-30 06:39:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(689,0,0,12,22,22,0,'77220505',9,9,'','',0,0,100,'2022-10-31 08:46:16','2022-10-31 08:12:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(690,0,0,12,21,21,0,'77220601',9,9,'','',0,0,100,'2022-10-31 12:55:29','2022-10-31 12:38:28',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(691,0,0,12,22,22,0,'77220601',9,9,'','',0,0,100,'2022-10-31 13:15:11','2022-10-31 12:55:59',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(692,0,0,12,23,23,0,'77220601',10,10,'','',0,0,100,'2022-10-31 13:49:56','2022-10-31 13:15:16',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(693,0,0,12,21,21,0,'77220501',9,9,'','',0,0,100,'2022-10-31 14:26:46','2022-10-31 14:23:53',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(694,0,0,12,22,22,0,'77220501',9,9,'','',0,0,100,'2022-10-31 14:29:48','2022-10-31 14:27:04',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(695,0,0,12,23,23,0,'77220501',10,10,'','',0,0,100,'2022-10-31 14:35:50','2022-10-31 14:30:23',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(696,0,0,12,21,21,0,'77220503',9,9,'','',0,0,100,'2022-10-31 14:40:54','2022-10-31 14:37:11',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(697,0,0,12,22,22,0,'77220503',9,9,'','',0,0,100,'2022-10-31 14:46:25','2022-10-31 14:41:09',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(698,0,0,12,23,23,0,'77220503',10,10,'','',0,0,100,'2022-10-31 14:52:11','2022-10-31 14:46:56',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(699,0,0,12,23,23,0,'77220505',10,10,'','',0,0,100,'2022-10-31 15:11:18','2022-10-31 15:07:20',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(700,0,0,12,21,21,0,'77220502',9,9,'','',0,0,100,'2022-10-31 15:16:08','2022-10-31 15:11:55',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(701,0,0,12,22,22,0,'77220502',9,9,'','',0,0,100,'2022-10-31 15:19:08','2022-10-31 15:16:18',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(702,0,0,12,23,23,0,'77220502',10,10,'','',0,0,100,'2022-10-31 15:22:57','2022-10-31 15:19:30',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,''),(703,0,0,12,21,21,0,'test02',1,9,'','',0,0,11,'2022-11-29 09:59:46','2022-11-29 09:29:14',0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,'');
/*!40000 ALTER TABLE `cd_lms_chapter_attend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_lms_contents`
--

DROP TABLE IF EXISTS `cd_lms_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_lms_contents` (
  `c_no` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(70) NOT NULL DEFAULT '',
  `c_kind` varchar(10) NOT NULL DEFAULT '',
  `c_type` varchar(10) NOT NULL DEFAULT '',
  `c_url` varchar(100) NOT NULL DEFAULT '',
  `c_size_w` int(11) NOT NULL DEFAULT '0',
  `c_size_h` int(11) NOT NULL DEFAULT '0',
  `c_runtime` int(11) NOT NULL DEFAULT '0',
  `c_page` int(11) NOT NULL DEFAULT '0',
  `c_cont` text,
  `c_realfile` varchar(50) NOT NULL DEFAULT '',
  `c_userfile` varchar(50) NOT NULL DEFAULT '',
  `c_admin` varchar(30) NOT NULL DEFAULT '',
  `c_rdate` datetime DEFAULT NULL,
  `c_udate` datetime DEFAULT NULL,
  `c_view` char(1) NOT NULL DEFAULT 'N',
  `c_use` char(1) NOT NULL DEFAULT 'Y',
  `c_del` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`c_no`),
  KEY `c_kind` (`c_kind`),
  KEY `c_type` (`c_type`),
  KEY `c_use` (`c_use`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_lms_contents`
--

LOCK TABLES `cd_lms_contents` WRITE;
/*!40000 ALTER TABLE `cd_lms_contents` DISABLE KEYS */;
INSERT INTO `cd_lms_contents` VALUES (1,'윤리경영 수준제고의 필요성','A','W','01',1024,700,20,17,'윤리경영 및 청탁금지법 교육(1차시)','','','',NULL,NULL,'N','Y','N'),(2,'윤리경영 성공 및 실패 사례','A','W','02',1024,700,20,10,'윤리경영 및 청탁금지법 교육(2차시)','','','',NULL,NULL,'N','Y','N'),(3,'핵심영역-취약부문에서의 윤리 실천','A','W','03',1024,700,20,8,'윤리경영 및 청탁금지법 교육(3차시)','','','',NULL,NULL,'N','Y','N'),(4,'윤리경영을 위한 임직원 실천과제','A','W','04',1024,700,20,8,'윤리경영 및 청탁금지법 교육(4차시)','','','',NULL,NULL,'N','Y','N'),(5,'청탁금지법 제정 배경과 목적','A','W','05',1024,700,20,12,'윤리경영 및 청탁금지법 교육(5차시)','','','',NULL,NULL,'N','Y','N'),(6,'청탁금지법 적용대상과 범위','A','W','06',1024,700,20,7,'윤리경영 및 청탁금지법 교육(6차시)','','','',NULL,NULL,'N','Y','N'),(7,'청탁금지법 시행 후의 영향','A','W','07',1024,700,20,6,'윤리경영 및 청탁금지법 교육(7차시)','','','',NULL,NULL,'N','Y','N'),(8,'부정청탁금지','A','W','08',1024,700,20,9,'윤리경영 및 청탁금지법 교육(8차시)','','','',NULL,NULL,'N','Y','N'),(9,'금품 등 수수의 금지','A','W','09',1024,700,20,12,'윤리경영 및 청탁금지법 교육(9차시)','','','',NULL,NULL,'N','Y','N'),(10,'청탁금지법 준수를 위한 실천 과제','A','W','10',1024,700,20,6,'윤리경영 및 청탁금지법 교육(10차시)','','','',NULL,NULL,'N','Y','N'),(12,'윤리적 직무수행 기본 다지기','A','W','01',1024,700,20,9,'나와 조직을 지키는 윤리·청렴·이해충돌방지·ESG경영 가이드라인(1차시)','','','',NULL,NULL,'N','Y','N'),(13,'윤리적 리더십과 MZ세대 아우르기','A','W','02',1024,700,20,10,'나와 조직을 지키는 윤리·청렴·이해충돌방지·ESG경영 가이드라인(2차시)','','','',NULL,NULL,'N','Y','N'),(14,'청탁금지법 리스크 제로','A','W','03',1024,700,20,9,'나와 조직을 지키는 윤리·청렴·이해충돌방지·ESG경영 가이드라인(3차시)','','','',NULL,NULL,'N','Y','N'),(15,'이해충돌방지 리스크 제로','A','W','04',1024,700,20,9,'나와 조직을 지키는 윤리·청렴·이해충돌방지·ESG경영 가이드라인(4차시)','','','',NULL,NULL,'N','Y','N'),(16,'ESG와 기업의 지속가능성','A','W','05',1024,700,20,10,'나와 조직을 지키는 윤리·청렴·이해충돌방지·ESG경영 가이드라인(5차시)','','','',NULL,NULL,'N','Y','N'),(17,'공직자의 이해충돌방지법 길라잡이','A','W','01',1024,700,20,3,'공직자의 이해충돌방지법 길라잡이(1차시)','','','',NULL,NULL,'N','Y','N'),(18,'카드로 보는 갑질 개선교육','A','W','01',1024,700,20,6,'카드로 보는 갑질 개선교육(1차시)','','','',NULL,NULL,'N','Y','N'),(19,'직장내 괴롭힘 예방교육 1차시','A','W','01',1024,700,20,7,'직장내 괴롭힘 예방교육(1차시)','','','',NULL,NULL,'N','Y','N'),(20,'직장내 괴롭힘 예방교육 2차시','A','W','02',1024,700,20,7,'직장내 괴롭힘 예방교육(2차시)','','','',NULL,NULL,'N','Y','N'),(21,'윤리적 직무수행 기본 다지기','','','01',0,0,0,9,NULL,'','','',NULL,NULL,'N','Y','N'),(22,'윤리적 리더십과 MZ세대 어우르기','','','02',0,0,0,9,NULL,'','','',NULL,NULL,'N','Y','N'),(23,'ESG와 기업의 지속가능경영','','','03',0,0,0,10,NULL,'','','',NULL,NULL,'N','Y','N');
/*!40000 ALTER TABLE `cd_lms_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_lms_lesson`
--

DROP TABLE IF EXISTS `cd_lms_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_lms_lesson` (
  `lssn_no` int(11) NOT NULL AUTO_INCREMENT,
  `lssn_kind` varchar(20) NOT NULL,
  `lssn_title` varchar(100) NOT NULL DEFAULT '',
  `lssn_intro` text,
  `lssn_year` int(11) DEFAULT NULL,
  `lssn_sdate` date DEFAULT NULL,
  `lssn_edate` date DEFAULT NULL,
  `lssn_controlbar` char(1) NOT NULL DEFAULT 'Y',
  `lssn_allowtime` int(2) NOT NULL DEFAULT '0',
  `lssn_completerate` int(11) NOT NULL DEFAULT '100',
  `lssn_view` char(1) NOT NULL DEFAULT 'Y',
  `lssn_del` char(1) NOT NULL DEFAULT 'N',
  `lssn_udate` datetime DEFAULT NULL,
  `lssn_rdate` datetime NOT NULL,
  `lssn_popular` int(1) NOT NULL DEFAULT '0',
  `lssn_status` varchar(10) NOT NULL DEFAULT '',
  `lssn_div` varchar(10) NOT NULL DEFAULT '',
  `lssn_rimg` varchar(50) NOT NULL,
  `lssn_uimg` varchar(50) NOT NULL,
  `lssn_admin` varchar(30) NOT NULL DEFAULT '30',
  `lssn_quiz` int(11) NOT NULL DEFAULT '0',
  `lssn_quiz_point` int(11) NOT NULL DEFAULT '0',
  `lssn_survey` int(11) NOT NULL DEFAULT '0',
  `lssn_rcertification` varchar(50) DEFAULT NULL,
  `lssn_ucertification` varchar(50) DEFAULT NULL,
  `lssn_chap_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '과정 차시 개수',
  `lssn_point` int(11) NOT NULL DEFAULT '0',
  `lssn_url` text,
  PRIMARY KEY (`lssn_no`),
  KEY `lssn_year` (`lssn_year`),
  KEY `lssn_sdate` (`lssn_sdate`),
  KEY `lssn_edate` (`lssn_edate`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_lms_lesson`
--

LOCK TABLES `cd_lms_lesson` WRITE;
/*!40000 ALTER TABLE `cd_lms_lesson` DISABLE KEYS */;
INSERT INTO `cd_lms_lesson` VALUES (1,'LS01','아름다운 동행을 위한 윤리경영 및 청탁금지법 이해와 실천','<p>2019 기타유원시설업 사업자 안전교육 입니다.</p>',2021,'2022-01-01','2022-12-31','N',4,100,'N','N','2019-09-11 05:45:27','2021-04-01 11:35:55',0,'A','cyber01','course_img3.png','','',1,60,2,'15305350695b3a1c9db26ec.jpg','수료증_V3.jpg',0,30,NULL),(2,'LS03','윤리의 시대','캠페인 설명',2021,'2021-04-01','2022-12-31','N',0,100,'Y','N',NULL,'0000-00-00 00:00:00',0,'Y','','','','30',0,0,0,NULL,NULL,0,10,NULL),(3,'LS04','온라인 테스트','온라인 세미나',2021,'2021-04-01','2022-03-25','N',30,100,'Y','N',NULL,'0000-00-00 00:00:00',0,'Y','','','','30',0,0,0,NULL,NULL,0,50,'https://meet93.webex.com/join/pr1423321712'),(4,'LS04','이해관계 윤리경영','이해관계 윤리경영 온라인',NULL,'2021-05-30','2021-06-05','Y',60,100,'N','N',NULL,'2021-05-31 17:45:32',0,'','','','','30',0,0,0,NULL,NULL,0,20,''),(5,'LS02','윤리는 사치인가','윤리경영 메시지 교육',NULL,'2021-05-30','2022-12-31','Y',60,100,'N','N',NULL,'2021-05-31 17:45:32',0,'','','','','30',0,0,0,NULL,NULL,0,50,''),(6,'LS12','계영배','청렴 메시지 교육',NULL,'2021-05-30','2021-12-30','Y',60,100,'N','N',NULL,'2021-05-31 17:45:32',0,'','','','','30',0,0,0,NULL,NULL,0,50,''),(7,'LS22','직장 내 괴롭힘 예방 교육','괴롭힘 방지 및 예방 메시지 교육',NULL,'2021-05-30','2021-12-30','Y',60,100,'N','N',NULL,'2021-05-31 17:45:32',0,'','','','','30',0,0,0,NULL,NULL,0,50,''),(8,'LS01','나와 조직을 지키는 윤리·청렴·이해충돌방지·ESG경영 가이드라인',NULL,2022,'2022-03-01','2022-12-31','N',0,100,'N','N',NULL,'0000-00-00 00:00:00',0,'B','cyber02','Ethics_02.png','','30',0,0,0,NULL,NULL,0,0,NULL),(9,'LS01','공직자의 이해충돌방지법 길라잡이','공직자의 이해충돌방지법 길라잡이',2022,'2022-08-01','2022-09-30','N',0,100,'Y','N',NULL,'0000-00-01 00:00:00',0,'A','collect','L9.png','','30',0,0,0,NULL,NULL,0,30,NULL),(10,'LS01','카드로 보는 갑질 개선교육','카드로 보는 갑질 개선교육',2022,'2022-08-01','2022-12-31','N',0,100,'N','N',NULL,'0000-00-02 00:00:00',0,'C','10','L10.png','','30',0,0,0,NULL,NULL,0,25,NULL),(11,'LS01','직장내 괴롭힘 예방교육','직장내 괴롭힘 예방교육',2022,'2022-08-01','2022-12-31','N',0,100,'N','N',NULL,'0000-00-03 00:00:00',0,'D','11','L11.png','','30',0,0,0,NULL,NULL,0,25,NULL),(12,'LS01','나외 조직을 지키는 윤리경영 가이드라인','나외 조직을 지키는 윤리경영 가이드라인',2022,'2022-11-30','2022-12-31','Y',0,100,'Y','N',NULL,'0000-00-00 00:00:00',0,'E','12','L12.png','','30',0,0,0,NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `cd_lms_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_login`
--

DROP TABLE IF EXISTS `cd_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_login` (
  `lo_ip` varchar(100) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lo_location` text NOT NULL,
  `lo_url` text NOT NULL,
  PRIMARY KEY (`lo_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_login`
--

LOCK TABLES `cd_login` WRITE;
/*!40000 ALTER TABLE `cd_login` DISABLE KEYS */;
INSERT INTO `cd_login` VALUES ('58.229.138.43','admin','2022-11-30 01:24:13','회원관리','');
/*!40000 ALTER TABLE `cd_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_mail`
--

DROP TABLE IF EXISTS `cd_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_mail` (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` mediumtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` text NOT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_mail`
--

LOCK TABLES `cd_mail` WRITE;
/*!40000 ALTER TABLE `cd_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_member`
--

DROP TABLE IF EXISTS `cd_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_member` (
  `mb_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint(4) NOT NULL DEFAULT '0',
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` text NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT '0',
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` text NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sms` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` text NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_memo_cnt` int(11) NOT NULL DEFAULT '0',
  `mb_scrap_cnt` int(11) NOT NULL DEFAULT '0',
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_no`),
  UNIQUE KEY `mb_id` (`mb_id`),
  KEY `mb_today_login` (`mb_today_login`),
  KEY `mb_datetime` (`mb_datetime`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_member`
--

LOCK TABLES `cd_member` WRITE;
/*!40000 ALTER TABLE `cd_member` DISABLE KEYS */;
INSERT INTO `cd_member` VALUES (1,'admin','sha256:12000:kt3QGlKh9TfbtVUz9TizTJT/tyASnWcW:PPrIouRgX8TqgrRkiI4OGyrl3Uh96YCS','최고관리자','최고관리자','0000-00-00','admin@domain.com','',10,'','','','','',0,'','','','','','','','','',0,'2022-11-30 01:10:16','58.229.138.43','2021-01-11 01:11:12','1.232.88.175','','','2021-01-11 01:11:12','','','',1,0,1,'0000-00-00','','',0,0,'','','','','','','','','',''),(2,'test00','','테스트00','테스트00','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',80,'2022-08-15 20:19:13','110.12.125.50','2021-02-15 00:45:00','1.232.88.175','','','2021-02-15 00:45:00','','20220927 삭제함\n','',1,0,1,'0000-00-00','','',0,0,'','','','','','','','','',''),(3,'test02','sha256:12000:u4KGtuYWK5067m6XO0Cp9fusVgIAinn9:M9Gxc+gdED5CxYThES3peoqu5Tj4CBwa','테스트02','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-11-29 09:29:01','124.48.253.103','2021-04-04 18:25:52','1.232.88.175','','','2021-04-04 18:25:52','','','',0,0,0,'0000-00-00','','',0,0,'','','','','','','','2022-10-03','2022-10-31',''),(4,'test01','sha256:12000:fLDZK7YiXqbwh5sHiWmg/60lLSjxYPag:qCHKGMoYlwh4N/+ZG84S2ibSpOBmeXa6','테스트01','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-11-30 01:14:46','58.229.138.43','2021-04-04 18:48:05','1.232.88.175','','','2021-04-04 18:48:05','','','',0,0,0,'0000-00-00','','',0,0,'','','','','','','','2022-10-03','2022-10-31',''),(5,'test03','sha256:12000:gPxU3IuFCpNGzwYvw5Zf70ewD+7c/zJw:ijle2v49hhRCv0KTk6PddYisAlYK2EFg','테스트03','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-11-29 09:48:18','124.48.253.103','2021-04-04 18:53:54','1.232.88.175','','','2021-04-04 18:53:54','','','',0,0,0,'0000-00-00','','',0,0,'','','','','','','','2022-10-03','2022-10-31',''),(6,'test04','sha256:12000:A1h42lEcX0Cwn0Lx1HMbQ1ZinLn8wdde:23BaOW+ix0ZGhv7t9RLZxTY0F1BiO3bK','테스트04','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-11-29 22:21:11','124.48.253.103','2021-04-04 18:54:35','1.232.88.175','','','2021-04-04 18:54:35','','','',0,0,0,'0000-00-00','','',0,0,'','','','','','','','2022-10-03','2022-10-31',''),(7,'test05','sha256:12000:bigJkDEq+etNQ7bFN4MZN019WmaOPAJn:vvlp8et1PEiQ1ds9HSvvhvXuCXev2biU','세종 테스트','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-11-29 22:21:30','124.48.253.103','2022-08-12 09:47:40','124.48.253.103','','','2022-08-12 09:47:40','','','',0,0,0,'0000-00-00','','',0,0,'','','','','','','','20220801','20220930',''),(173,'77220601','sha256:12000:4E+J35A2K6vm/EdPaqxkKxwuqZlyEdYE:jsjPZ3tqLGOG6xR5qPvgJdP94uuyJSxD','설정호','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-31 12:37:14','110.12.155.205','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(174,'77220504','sha256:12000:PR6ZyIPj16GPLpciXzkWv69870qg3ogU:vxQXKCXsfCIUzM7KsqEuphwJcbnS/oIe','조경순','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-31 14:23:03','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(175,'77220501','sha256:12000:TCXf6k7BhYjc7A95u+g6E7mET0/lrMMu:+sMVLQZZK7erBr0sawIHK9buX1IKjLRZ','김현선','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-31 14:23:45','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(176,'77220503','sha256:12000:yzhGoH8sC2OZmTFc+jPnnm8H6u+dKGL7:oy4/BILCZHGNTHftz24vzJ7bxGuCXH1W','신명호','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-31 14:37:03','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(177,'77220505','sha256:12000:HOloFLwtX3vwRo8SDarVp6mCBrG50rOg:zVGNrRD+oV7xY5tOcpqWWKM3h/Q/wbsy','김서현','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-11-01 20:33:50','109.221.135.210','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(178,'77220502','sha256:12000:sJiAeScNxQyHAsLGktKvHzrDbphR7V2o:ecMF+NVjtk0cjnHuXHCwHOeNFcYgOJJi','명인식','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-31 15:11:48','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(179,'77220701','sha256:12000:AG5+WH44w/nyVB+1ADNqF8u9JtsAP7fA:aWG0EhRiS9QjLGVCYMKVMaPMyP8EZh+v','박용우','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-06 07:56:21','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(180,'99201904','sha256:12000:Owh342J9P6ggW4wlkQYM0cHHcyPpfbIs:WQ4sSe7rzHinCqkiKs51mub2lRG3W7xr','김대기','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-18 14:23:24','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(181,'99201319','sha256:12000:Y2FgTyvgDKze6jvOrfXSA5C9rrShIBxr:a/scn1CNCgEIFpWLuq+fXVHgJETQ1bg3','이귀남','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-17 11:23:01','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(182,'99290005','sha256:12000:ucvQIV+ySfwiCwCtq2cWPGllLin3N1YF:eDyk8dglXzn/u30rozXJ4FTN0DY81LFV','장우진','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-05 09:28:17','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(183,'99201923','sha256:12000:2U2657DOFl8qxZljGUpT7uFTQ0S8oXqn:KuATwcG51eRYX/mXKilD2IfSHvqVNkyg','김유정','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-19 13:10:31','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(184,'99202204','sha256:12000:AZDyBePFgeWahqauzcRlzHdk22+RaVJS:hl2LWDVtMYasWMwARB38vujGqPxRsYES','김수빈','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-07 10:02:09','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(185,'99201711','sha256:12000:EOVsaZCxR4RFW6lDf3bnpjPcp9VH9URf:xyRC7ujZcWIF4GF6Y5of4TRjQa2AzrVS','조효제','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-19 15:32:45','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(186,'99201508','sha256:12000:JrTUtzFDcBlTKKSdwEfA69FTxc7G+kly:80pfe1EoQRpeui4d/1ckMuc0SwPwT/P/','최진오','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-21 09:08:44','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(187,'99201922','sha256:12000:jDqEFvCpvfCPcZog/bK5AkBil0Nw5bSZ:iNPGTX6Y++FuHB1syRDyaBZ4h0wWWGUg','김말순','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-19 08:35:39','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(188,'99202110','sha256:12000:LiuRi3gfDDJcgKIET9DqxldBvrY9jCXz:PcXhoGrNT2de4lmUYxCCvuJ6g299p9D8','송태일','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-11 12:10:17','58.87.61.252','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(189,'99201717','sha256:12000:b2oBto3MBuDqcB7pIi1HIE+MpgFxvAzP:ZJsP9U+RbaKj/iNEz9aFI+wCldisELUm','송성호','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'0000-00-00 00:00:00','','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(190,'200039','','박재덕','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-07 09:55:22','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(191,'99201010','','김성종','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-11 08:52:07','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(192,'99201009','','남창우','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-26 13:39:57','112.216.125.206','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(193,'99201914','','이상현','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-20 19:32:31','121.158.225.120','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(194,'77220703','','천영봉','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-25 08:55:57','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(195,'77220605','','권지형','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-23 12:45:46','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(196,'77220704','','김경아','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-24 17:40:24','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(197,'77220604','','고현섭','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-20 10:44:55','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(198,'77220802','','권형준','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-05 14:08:19','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(199,'77220602','','김종곤','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-13 08:54:13','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(200,'77220603','','강환희','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-06 13:24:21','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(201,'77220702','','전성기','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'0000-00-00 00:00:00','','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(202,'77220801','','김윤일','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',0,'2022-10-27 08:52:02','211.235.217.129','2022-10-03 06:21:34','58.229.138.43','','','2022-10-03 06:21:34','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'개인','','','','','','','20221003','20221031','2022'),(203,'test001','','test001','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',80,'2022-11-03 16:55:59','124.48.253.103','2022-10-03 23:11:29','124.48.253.103','','','2022-10-03 23:11:29','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'세종교육원','','','','','','','2022-10-01','2022-10-31','2022'),(204,'test002','','테스트002','','0000-00-00','','',1,'','','','','',0,'','','','','','','','','',80,'2022-10-25 17:46:48','124.48.253.103','2022-10-04 13:22:21','124.48.253.103','','','2022-10-04 13:22:21','','20221128 삭제함\n','',0,0,0,'0000-00-00','','',0,0,'세종교육원','','','','','','','2022-10-03','2022-10-31','2022');
/*!40000 ALTER TABLE `cd_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_member_social_profiles`
--

DROP TABLE IF EXISTS `cd_member_social_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_member_social_profiles` (
  `mp_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(50) NOT NULL DEFAULT '',
  `object_sha` varchar(45) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `profileurl` varchar(255) NOT NULL DEFAULT '',
  `photourl` varchar(255) NOT NULL DEFAULT '',
  `displayname` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `mp_register_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mp_latest_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `mp_no` (`mp_no`),
  KEY `mb_id` (`mb_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_member_social_profiles`
--

LOCK TABLES `cd_member_social_profiles` WRITE;
/*!40000 ALTER TABLE `cd_member_social_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_member_social_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_memo`
--

DROP TABLE IF EXISTS `cd_memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_memo` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_read_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_memo` text NOT NULL,
  `me_send_id` int(11) NOT NULL DEFAULT '0',
  `me_type` enum('send','recv') NOT NULL DEFAULT 'recv',
  `me_send_ip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`me_id`),
  KEY `me_recv_mb_id` (`me_recv_mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_memo`
--

LOCK TABLES `cd_memo` WRITE;
/*!40000 ALTER TABLE `cd_memo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_menu`
--

DROP TABLE IF EXISTS `cd_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_menu` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT '0',
  `me_use` tinyint(4) NOT NULL DEFAULT '0',
  `me_mobile_use` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`me_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_menu`
--

LOCK TABLES `cd_menu` WRITE;
/*!40000 ALTER TABLE `cd_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_new_win`
--

DROP TABLE IF EXISTS `cd_new_win`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_new_win` (
  `nw_id` int(11) NOT NULL AUTO_INCREMENT,
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_disable_hours` int(11) NOT NULL DEFAULT '0',
  `nw_left` int(11) NOT NULL DEFAULT '0',
  `nw_top` int(11) NOT NULL DEFAULT '0',
  `nw_height` int(11) NOT NULL DEFAULT '0',
  `nw_width` int(11) NOT NULL DEFAULT '0',
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_new_win`
--

LOCK TABLES `cd_new_win` WRITE;
/*!40000 ALTER TABLE `cd_new_win` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_new_win` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_point`
--

DROP TABLE IF EXISTS `cd_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_point` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_use_point` int(11) NOT NULL DEFAULT '0',
  `po_expired` tinyint(4) NOT NULL DEFAULT '0',
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `po_mb_point` int(11) NOT NULL DEFAULT '0',
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`po_id`),
  KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`),
  KEY `index2` (`po_expire_date`)
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_point`
--

LOCK TABLES `cd_point` WRITE;
/*!40000 ALTER TABLE `cd_point` DISABLE KEYS */;
INSERT INTO `cd_point` VALUES (18,'test003','2022-08-15 21:01:44','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','test003','@1'),(19,'test003','2022-08-15 21:02:08','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','test003','@1'),(20,'test003','2022-08-15 21:02:45','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','test003','@1'),(21,'test004','2022-08-15 21:08:12','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',25,'10','test004','@1'),(22,'test004','2022-08-15 21:20:50','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',50,'11','test004','@1'),(23,'test07','2022-08-16 08:49:08','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','test07','@1'),(24,'2166','2022-08-16 15:40:30','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2166','@1'),(25,'2140','2022-08-16 16:21:17','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2140','@1'),(26,'2140','2022-08-16 16:49:28','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2140','@1'),(27,'2140','2022-08-16 16:54:18','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2140','@1'),(28,'2175','2022-08-16 16:56:05','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2175','@1'),(29,'2151','2022-08-16 17:19:24','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2151','@1'),(30,'2148','2022-08-16 17:22:33','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2148','@1'),(31,'2165','2022-08-16 18:11:35','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2165','@1'),(32,'2108','2022-08-16 20:26:27','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2108','@1'),(33,'2108','2022-08-16 20:54:00','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2108','@1'),(34,'2108','2022-08-16 20:57:09','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2108','@1'),(35,'3070','2022-08-17 08:18:57','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3070','@1'),(36,'2137','2022-08-17 09:03:57','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2137','@1'),(37,'2093','2022-08-17 09:22:42','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2093','@1'),(38,'2195','2022-08-17 09:22:58','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2195','@1'),(39,'2151','2022-08-17 09:26:21','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2151','@1'),(40,'2151','2022-08-17 09:28:14','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2151','@1'),(41,'2120','2022-08-17 09:39:09','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2120','@1'),(42,'2121','2022-08-17 09:56:17','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2121','@1'),(43,'2055','2022-08-17 09:58:16','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2055','@1'),(45,'2055','2022-08-17 10:21:26','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2055','@1'),(46,'2062','2022-08-17 10:25:45','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2062','@1'),(47,'2055','2022-08-17 10:30:17','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2055','@1'),(48,'2183','2022-08-17 10:35:27','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2183','@1'),(50,'2166','2022-08-17 10:43:44','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2166','@1'),(51,'2082','2022-08-17 11:05:06','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2082','@1'),(52,'2093','2022-08-17 11:09:14','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2093','@1'),(53,'2165','2022-08-17 11:11:09','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2165','@1'),(54,'2024','2022-08-17 11:20:25','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2024','@1'),(56,'3070','2022-08-17 11:33:31','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','3070','@1'),(57,'2062','2022-08-17 12:06:48','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2062','@1'),(58,'2062','2022-08-17 12:47:55','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2062','@1'),(59,'test009','2022-08-17 12:50:21','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',25,'10','test009','@1'),(60,'2063','2022-08-17 12:53:08','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2063','@1'),(61,'2120','2022-08-17 13:03:59','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2120','@1'),(62,'2185','2022-08-17 13:08:43','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2185','@1'),(63,'3070','2022-08-17 13:17:39','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','3070','@1'),(64,'2157','2022-08-17 13:23:36','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',25,'11','2157','@1'),(66,'2157','2022-08-17 13:28:19','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',55,'collect','2157','@1'),(67,'2157','2022-08-17 13:30:34','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2157','@1'),(68,'2166','2022-08-17 13:38:52','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2166','@1'),(69,'3069','2022-08-17 13:42:24','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3069','@1'),(70,'2142','2022-08-17 13:49:55','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2142','@1'),(71,'2165','2022-08-17 13:58:47','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2165','@1'),(74,'3038','2022-08-17 14:21:14','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3038','@1'),(76,'2121','2022-08-17 14:45:55','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2121','@1'),(77,'2099','2022-08-17 14:50:19','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2099','@1'),(79,'2034','2022-08-17 15:05:07','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2034','@1'),(80,'2154','2022-08-17 15:18:51','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2154','@1'),(81,'2020','2022-08-17 15:19:24','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2020','@1'),(82,'2063','2022-08-17 15:24:56','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2063','@1'),(83,'2182','2022-08-17 15:32:14','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2182','@1'),(84,'2180','2022-08-17 15:38:10','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2180','@1'),(85,'2082','2022-08-17 15:39:00','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2082','@1'),(86,'2112','2022-08-17 15:50:25','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2112','@1'),(87,'2020','2022-08-17 16:16:53','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2020','@1'),(89,'2034','2022-08-17 16:23:54','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2034','@1'),(90,'2117','2022-08-17 16:26:23','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2117','@1'),(91,'2178','2022-08-17 16:31:49','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2178','@1'),(92,'2026','2022-08-17 16:32:45','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2026','@1'),(93,'3038','2022-08-17 16:34:11','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','3038','@1'),(94,'2185','2022-08-17 16:39:09','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2185','@1'),(95,'2185','2022-08-17 16:39:43','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2185','@1'),(96,'2153','2022-08-17 16:42:48','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2153','@1'),(97,'2063','2022-08-17 16:47:47','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2063','@1'),(98,'2131','2022-08-17 16:52:47','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2131','@1'),(99,'2182','2022-08-17 16:57:35','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2182','@1'),(100,'2042','2022-08-17 16:58:19','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2042','@1'),(101,'2154','2022-08-17 16:58:24','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2154','@1'),(102,'2180','2022-08-17 17:06:52','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2180','@1'),(103,'2082','2022-08-17 17:19:38','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2082','@1'),(104,'2120','2022-08-17 17:28:03','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2120','@1'),(105,'2175','2022-08-17 17:34:07','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2175','@1'),(106,'2020','2022-08-17 17:39:56','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2020','@1'),(107,'2037','2022-08-17 17:42:05','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2037','@1'),(108,'2121','2022-08-17 17:46:17','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2121','@1'),(110,'2195','2022-08-17 17:59:39','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2195','@1'),(112,'3038','2022-08-18 08:17:54','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','3038','@1'),(113,'2038','2022-08-18 08:35:34','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2038','@1'),(114,'2038','2022-08-18 08:39:22','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2038','@1'),(115,'3069','2022-08-18 08:44:44','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','3069','@1'),(116,'2154','2022-08-18 09:05:23','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2154','@1'),(117,'2093','2022-08-18 09:14:26','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2093','@1'),(118,'2182','2022-08-18 09:20:32','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2182','@1'),(120,'2038','2022-08-18 09:38:08','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2038','@1'),(121,'2101','2022-08-18 09:43:27','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2101','@1'),(122,'2153','2022-08-18 09:48:14','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2153','@1'),(123,'2096','2022-08-18 09:51:01','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2096','@1'),(124,'2037','2022-08-18 09:51:04','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2037','@1'),(125,'2026','2022-08-18 10:32:55','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2026','@1'),(126,'2042','2022-08-18 10:38:48','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2042','@1'),(128,'2037','2022-08-18 10:40:34','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2037','@1'),(129,'2193','2022-08-18 10:41:23','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2193','@1'),(130,'2025','2022-08-18 10:58:57','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',25,'10','2025','@1'),(131,'2025','2022-08-18 11:18:17','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',55,'collect','2025','@1'),(132,'2126','2022-08-18 11:27:48','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2126','@1'),(134,'2034','2022-08-18 11:37:17','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2034','@1'),(135,'2125','2022-08-18 12:00:37','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2125','@1'),(136,'2026','2022-08-18 13:19:03','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2026','@1'),(138,'2112','2022-08-18 13:35:42','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2112','@1'),(139,'2112','2022-08-18 13:37:43','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2112','@1'),(140,'2125','2022-08-18 13:38:03','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2125','@1'),(141,'2118','2022-08-18 13:47:22','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2118','@1'),(142,'2142','2022-08-18 14:02:22','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2142','@1'),(143,'2042','2022-08-18 14:04:03','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2042','@1'),(144,'2153','2022-08-18 14:08:45','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2153','@1'),(147,'2056','2022-08-18 14:27:11','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2056','@1'),(148,'2117','2022-08-18 14:30:19','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2117','@1'),(149,'2117','2022-08-18 14:36:09','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2117','@1'),(150,'2193','2022-08-18 14:49:38','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2193','@1'),(151,'2102','2022-08-18 15:34:47','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2102','@1'),(152,'3069','2022-08-18 15:43:00','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','3069','@1'),(153,'2180','2022-08-18 16:07:43','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2180','@1'),(154,'2056','2022-08-18 16:17:54','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2056','@1'),(155,'2195','2022-08-18 16:31:49','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2195','@1'),(156,'2139','2022-08-18 16:38:03','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2139','@1'),(158,'2148','2022-08-18 17:01:38','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2148','@1'),(160,'2072','2022-08-18 17:42:39','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2072','@1'),(161,'2193','2022-08-18 18:26:15','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2193','@1'),(162,'2102','2022-08-19 09:27:03','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2102','@1'),(163,'2152','2022-08-19 09:30:50','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2152','@1'),(164,'2139','2022-08-19 09:32:54','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2139','@1'),(165,'2175','2022-08-19 09:48:47','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2175','@1'),(166,'2025','2022-08-19 09:50:59','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2025','@1'),(167,'2152','2022-08-19 09:55:31','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2152','@1'),(168,'2152','2022-08-19 09:56:40','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2152','@1'),(169,'2096','2022-08-19 10:17:59','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2096','@1'),(170,'2096','2022-08-19 10:18:36','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2096','@1'),(171,'2139','2022-08-19 10:36:02','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2139','@1'),(172,'3075','2022-08-19 10:55:48','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3075','@1'),(173,'2183','2022-08-19 11:13:45','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2183','@1'),(174,'2191','2022-08-19 12:06:39','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2191','@1'),(176,'2083','2022-08-19 14:24:14','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2083','@1'),(177,'2137','2022-08-19 14:34:04','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2137','@1'),(178,'2156','2022-08-19 14:37:00','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2156','@1'),(179,'2137','2022-08-19 15:50:41','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2137','@1'),(180,'3075','2022-08-19 15:53:01','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','3075','@1'),(182,'2129','2022-08-19 16:21:49','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2129','@1'),(183,'2129','2022-08-19 16:23:28','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2129','@1'),(184,'2129','2022-08-19 16:25:26','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2129','@1'),(185,'2156','2022-08-19 16:46:46','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2156','@1'),(186,'2102','2022-08-19 16:47:27','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2102','@1'),(187,'2191','2022-08-19 16:48:11','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2191','@1'),(188,'3071','2022-08-19 17:40:51','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',25,'10','3071','@1'),(189,'2183','2022-08-19 17:41:45','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2183','@1'),(191,'2075','2022-08-19 20:05:03','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2075','@1'),(192,'2015','2022-08-22 08:44:29','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2015','@1'),(193,'2194','2022-08-22 09:15:24','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2194','@1'),(194,'2136','2022-08-22 09:59:57','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2136','@1'),(195,'2015','2022-08-22 10:34:16','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2015','@1'),(196,'2191','2022-08-22 10:36:17','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2191','@1'),(197,'2015','2022-08-22 10:40:43','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2015','@1'),(200,'2148','2022-08-22 11:26:29','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2148','@1'),(201,'2085','2022-08-22 13:04:57','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2085','@1'),(203,'2163','2022-08-22 13:40:35','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2163','@1'),(204,'2136','2022-08-22 15:32:47','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2136','@1'),(205,'2044','2022-08-22 17:25:08','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2044','@1'),(206,'2131','2022-08-22 20:57:45','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2131','@1'),(207,'2131','2022-08-22 20:58:24','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2131','@1'),(208,'2078','2022-08-23 06:55:24','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2078','@1'),(209,'2069','2022-08-23 09:10:30','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2069','@1'),(210,'2044','2022-08-23 09:48:36','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2044','@1'),(211,'2144','2022-08-23 10:05:47','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2144','@1'),(212,'2144','2022-08-23 10:09:17','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2144','@1'),(213,'2144','2022-08-23 10:10:20','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2144','@1'),(214,'2085','2022-08-23 10:24:03','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2085','@1'),(215,'3075','2022-08-23 10:24:59','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','3075','@1'),(216,'2126','2022-08-23 13:21:25','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2126','@1'),(218,'2136','2022-08-23 13:37:28','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2136','@1'),(219,'2194','2022-08-23 14:05:06','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2194','@1'),(220,'2181','2022-08-23 14:41:32','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2181','@1'),(221,'2044','2022-08-23 16:12:35','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2044','@1'),(222,'2181','2022-08-23 17:57:06','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2181','@1'),(223,'2069','2022-08-23 20:10:24','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2069','@1'),(224,'2085','2022-08-23 22:03:19','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2085','@1'),(225,'2078','2022-08-24 10:34:31','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2078','@1'),(226,'2181','2022-08-24 10:47:32','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2181','@1'),(227,'2194','2022-08-24 11:08:13','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2194','@1'),(228,'2109','2022-08-24 12:52:15','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2109','@1'),(229,'2109','2022-08-24 15:24:01','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2109','@1'),(230,'2078','2022-08-24 15:44:39','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2078','@1'),(231,'2069','2022-08-24 16:49:31','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2069','@1'),(232,'2116','2022-08-24 17:20:28','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2116','@1'),(233,'2109','2022-08-25 10:27:33','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2109','@1'),(234,'2099','2022-08-25 13:07:41','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2099','@1'),(235,'2023','2022-08-25 15:01:51','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2023','@1'),(236,'2163','2022-08-25 16:12:49','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2163','@1'),(237,'2023','2022-08-25 17:16:02','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2023','@1'),(238,'2163','2022-08-25 18:01:44','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2163','@1'),(239,'2072','2022-08-26 09:28:12','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2072','@1'),(241,'2075','2022-08-26 12:45:42','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2075','@1'),(246,'2072','2022-08-26 15:46:51','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2072','@1'),(247,'2064','2022-08-27 17:32:42','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2064','@1'),(248,'2064','2022-08-27 18:38:20','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2064','@1'),(249,'2064','2022-08-28 16:01:54','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2064','@1'),(250,'2116','2022-08-29 10:08:43','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2116','@1'),(251,'2158','2022-08-29 16:01:06','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2158','@1'),(252,'2116','2022-08-29 16:29:48','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2116','@1'),(254,'2189','2022-08-30 09:47:19','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2189','@1'),(255,'2098','2022-08-30 15:28:20','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2098','@1'),(256,'2172','2022-08-30 16:29:59','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2172','@1'),(258,'2158','2022-08-30 17:06:27','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2158','@1'),(259,'2098','2022-08-30 17:17:13','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2098','@1'),(260,'2189','2022-08-30 17:34:11','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2189','@1'),(261,'2098','2022-08-30 17:58:03','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2098','@1'),(263,'2083','2022-08-31 15:43:28','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2083','@1'),(264,'3067','2022-08-31 17:09:37','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3067','@1'),(265,'2083','2022-08-31 17:12:48','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2083','@1'),(266,'2052','2022-09-01 15:10:13','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2052','@1'),(267,'2158','2022-09-01 15:35:14','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2158','@1'),(268,'2172','2022-09-01 16:21:27','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2172','@1'),(269,'3040','2022-09-02 10:59:45','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3040','@1'),(270,'2178','2022-09-02 11:30:51','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2178','@1'),(271,'3040','2022-09-02 14:15:12','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','3040','@1'),(272,'2113','2022-09-02 14:42:37','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2113','@1'),(273,'2052','2022-09-02 15:53:02','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2052','@1'),(274,'2113','2022-09-02 16:05:28','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2113','@1'),(275,'2052','2022-09-02 17:42:37','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2052','@1'),(276,'2113','2022-09-02 17:47:50','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2113','@1'),(277,'2162','2022-09-05 10:35:08','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2162','@1'),(278,'2162','2022-09-05 10:37:10','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2162','@1'),(279,'2162','2022-09-05 10:38:18','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2162','@1'),(280,'2172','2022-09-05 10:56:19','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2172','@1'),(281,'2173','2022-09-05 11:03:11','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2173','@1'),(282,'2142','2022-09-05 11:28:14','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2142','@1'),(283,'2186','2022-09-05 11:30:10','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2186','@1'),(284,'2169','2022-09-05 11:58:12','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2169','@1'),(285,'2179','2022-09-05 13:02:37','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2179','@1'),(286,'3040','2022-09-05 14:43:36','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','3040','@1'),(287,'2169','2022-09-05 15:16:08','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2169','@1'),(288,'2173','2022-09-05 15:23:08','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2173','@1'),(289,'3067','2022-09-05 16:04:26','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','3067','@1'),(290,'2169','2022-09-05 16:34:18','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2169','@1'),(291,'3010','2022-09-05 17:01:24','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3010','@1'),(295,'3010','2022-09-06 09:07:27','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','3010','@1'),(296,'3010','2022-09-06 09:09:37','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','3010','@1'),(297,'2126','2022-09-06 10:02:40','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2126','@1'),(298,'2023','2022-09-06 11:08:16','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2023','@1'),(299,'2111','2022-09-06 14:09:47','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2111','@1'),(300,'2173','2022-09-06 15:05:05','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2173','@1'),(301,'2118','2022-09-06 15:17:07','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2118','@1'),(302,'2111','2022-09-06 15:51:41','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2111','@1'),(303,'2178','2022-09-06 15:52:22','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2178','@1'),(304,'2170','2022-09-06 16:10:53','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2170','@1'),(305,'3067','2022-09-06 16:17:16','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','3067','@1'),(306,'2111','2022-09-06 18:02:46','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2111','@1'),(307,'2018','2022-09-07 10:54:57','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2018','@1'),(308,'2170','2022-09-07 10:55:16','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2170','@1'),(309,'2018','2022-09-07 11:29:01','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2018','@1'),(310,'2170','2022-09-07 14:05:24','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2170','@1'),(311,'2118','2022-09-08 15:47:30','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2118','@1'),(312,'2164','2022-09-08 15:56:31','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2164','@1'),(313,'2164','2022-09-08 16:29:59','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2164','@1'),(314,'2164','2022-09-08 17:18:14','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2164','@1'),(315,'2186','2022-09-13 10:36:59','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2186','@1'),(316,'2186','2022-09-13 10:37:52','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2186','@1'),(317,'3045','2022-09-13 10:38:13','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3045','@1'),(318,'2133','2022-09-13 10:48:06','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2133','@1'),(319,'2133','2022-09-13 10:55:33','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2133','@1'),(320,'2143','2022-09-13 10:56:40','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2143','@1'),(321,'2138','2022-09-13 10:57:49','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2138','@1'),(322,'2143','2022-09-13 10:59:34','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2143','@1'),(323,'2133','2022-09-13 10:59:59','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2133','@1'),(324,'2138','2022-09-13 11:00:32','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2138','@1'),(325,'2138','2022-09-13 11:03:56','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2138','@1'),(326,'2143','2022-09-13 11:04:07','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2143','@1'),(327,'2147','2022-09-13 11:05:00','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2147','@1'),(328,'2174','2022-09-13 11:19:42','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2174','@1'),(329,'2176','2022-09-13 12:29:46','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2176','@1'),(330,'2028','2022-09-13 12:36:45','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2028','@1'),(331,'2028','2022-09-13 12:40:28','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2028','@1'),(332,'2028','2022-09-13 12:41:16','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2028','@1'),(333,'2095','2022-09-13 13:15:36','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2095','@1'),(334,'2106','2022-09-13 13:34:09','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2106','@1'),(335,'2075','2022-09-13 14:32:25','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2075','@1'),(336,'3045','2022-09-13 14:34:51','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','3045','@1'),(337,'3045','2022-09-13 14:37:07','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','3045','@1'),(338,'2174','2022-09-13 14:52:06','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2174','@1'),(339,'2147','2022-09-13 14:52:46','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2147','@1'),(340,'2176','2022-09-13 15:15:57','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2176','@1'),(341,'2077','2022-09-13 15:33:49','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2077','@1'),(342,'2095','2022-09-13 15:34:38','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2095','@1'),(343,'2174','2022-09-13 15:51:24','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2174','@1'),(344,'2056','2022-09-13 16:11:33','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2056','@1'),(345,'2147','2022-09-13 16:29:28','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2147','@1'),(346,'2101','2022-09-13 16:30:30','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2101','@1'),(347,'2095','2022-09-13 17:00:18','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2095','@1'),(348,'2176','2022-09-13 18:38:02','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2176','@1'),(349,'3066','2022-09-13 18:44:18','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3066','@1'),(350,'3066','2022-09-13 19:15:36','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','3066','@1'),(351,'3066','2022-09-13 19:16:22','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','3066','@1'),(352,'2097','2022-09-14 08:33:57','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2097','@1'),(353,'2073','2022-09-14 09:12:08','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2073','@1'),(354,'2073','2022-09-14 09:15:38','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2073','@1'),(355,'2073','2022-09-14 09:17:34','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2073','@1'),(356,'2043','2022-09-14 09:44:45','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2043','@1'),(357,'2017','2022-09-14 10:57:35','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2017','@1'),(358,'2196','2022-09-14 11:03:25','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2196','@1'),(359,'2104','2022-09-14 11:10:34','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2104','@1'),(360,'3065','2022-09-14 11:15:19','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3065','@1'),(361,'2187','2022-09-14 11:50:00','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',25,'10','2187','@1'),(362,'2187','2022-09-14 11:51:57','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',50,'11','2187','@1'),(363,'2187','2022-09-14 13:15:18','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',80,'collect','2187','@1'),(364,'2184','2022-09-14 13:59:29','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2184','@1'),(365,'2179','2022-09-14 14:18:57','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2179','@1'),(366,'2179','2022-09-14 14:19:12','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2179','@1'),(367,'2171','2022-09-14 15:04:11','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2171','@1'),(368,'2196','2022-09-14 15:27:33','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2196','@1'),(369,'2017','2022-09-14 15:39:39','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2017','@1'),(370,'2184','2022-09-14 16:25:28','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2184','@1'),(371,'2029','2022-09-14 16:33:50','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2029','@1'),(372,'2171','2022-09-14 16:39:09','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2171','@1'),(373,'2099','2022-09-14 16:55:28','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2099','@1'),(374,'2017','2022-09-14 17:32:07','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2017','@1'),(375,'2024','2022-09-14 18:00:53','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2024','@1'),(376,'2024','2022-09-14 19:39:32','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2024','@1'),(377,'2196','2022-09-15 09:19:41','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2196','@1'),(378,'2059','2022-09-15 09:26:25','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2059','@1'),(379,'2059','2022-09-15 09:31:29','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2059','@1'),(380,'3065','2022-09-15 09:50:28','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','3065','@1'),(381,'2059','2022-09-15 09:52:58','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2059','@1'),(382,'2089','2022-09-15 10:48:56','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2089','@1'),(383,'2039','2022-09-15 11:03:40','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2039','@1'),(384,'2105','2022-09-15 11:22:57','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2105','@1'),(385,'2105','2022-09-15 11:31:40','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2105','@1'),(386,'2105','2022-09-15 11:34:22','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2105','@1'),(387,'2115','2022-09-15 13:04:50','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2115','@1'),(388,'2104','2022-09-15 13:15:49','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2104','@1'),(389,'3068','2022-09-15 13:17:58','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3068','@1'),(390,'2132','2022-09-15 13:37:56','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2132','@1'),(391,'2132','2022-09-15 13:51:14','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2132','@1'),(392,'2132','2022-09-15 13:51:51','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2132','@1'),(393,'3065','2022-09-15 14:08:57','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','3065','@1'),(394,'2101','2022-09-15 14:09:49','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2101','@1'),(395,'2190','2022-09-15 14:12:40','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2190','@1'),(396,'2190','2022-09-15 14:19:54','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2190','@1'),(397,'2039','2022-09-15 14:25:05','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2039','@1'),(398,'3043','2022-09-15 14:33:24','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','3043','@1'),(399,'3043','2022-09-15 14:36:17','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','3043','@1'),(400,'3043','2022-09-15 14:53:18','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','3043','@1'),(401,'2190','2022-09-15 14:57:53','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2190','@1'),(402,'2115','2022-09-15 14:59:41','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2115','@1'),(403,'2155','2022-09-15 15:03:16','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2155','@1'),(404,'2192','2022-09-15 15:14:09','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2192','@1'),(405,'2115','2022-09-15 15:33:36','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2115','@1'),(406,'2039','2022-09-15 16:19:57','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2039','@1'),(407,'2192','2022-09-15 16:45:12','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2192','@1'),(408,'2192','2022-09-15 16:45:28','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2192','@1'),(409,'2104','2022-09-15 16:50:30','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2104','@1'),(410,'2097','2022-09-15 18:03:51','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2097','@1'),(411,'2097','2022-09-15 18:04:12','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2097','@1'),(412,'2155','2022-09-15 20:25:04','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2155','@1'),(413,'2155','2022-09-15 20:50:08','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2155','@1'),(414,'3068','2022-09-16 10:57:42','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','3068','@1'),(415,'2046','2022-09-16 13:39:48','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2046','@1'),(416,'3068','2022-09-16 13:40:07','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','3068','@1'),(417,'2046','2022-09-16 13:40:09','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2046','@1'),(418,'2046','2022-09-16 13:40:37','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2046','@1'),(419,'2087','2022-09-16 20:03:29','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2087','@1'),(420,'2087','2022-09-16 20:04:08','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2087','@1'),(421,'2087','2022-09-16 20:05:22','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2087','@1'),(422,'2145','2022-09-18 11:36:56','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2145','@1'),(423,'2145','2022-09-18 11:39:58','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2145','@1'),(424,'2145','2022-09-18 11:41:59','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2145','@1'),(425,'2110','2022-09-18 15:50:13','공직자의 이해충돌방지법 길라잡이 완료',30,0,0,'9999-12-31',30,'collect','2110','@1'),(426,'2110','2022-09-18 16:46:44','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',55,'11','2110','@1'),(427,'2110','2022-09-18 16:47:30','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',80,'10','2110','@1'),(429,'2029','2022-09-19 14:25:07','카드로 보는 갑질 개선교육 완료',25,0,0,'9999-12-31',55,'10','2029','@1'),(430,'2029','2022-09-19 17:44:39','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2029','@1'),(431,'2184','2022-09-19 18:00:37','직장내 괴롭힘 예방교육 완료',25,0,0,'9999-12-31',80,'11','2184','@1');
/*!40000 ALTER TABLE `cd_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_poll`
--

DROP TABLE IF EXISTS `cd_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_poll` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_cnt1` int(11) NOT NULL DEFAULT '0',
  `po_cnt2` int(11) NOT NULL DEFAULT '0',
  `po_cnt3` int(11) NOT NULL DEFAULT '0',
  `po_cnt4` int(11) NOT NULL DEFAULT '0',
  `po_cnt5` int(11) NOT NULL DEFAULT '0',
  `po_cnt6` int(11) NOT NULL DEFAULT '0',
  `po_cnt7` int(11) NOT NULL DEFAULT '0',
  `po_cnt8` int(11) NOT NULL DEFAULT '0',
  `po_cnt9` int(11) NOT NULL DEFAULT '0',
  `po_etc` varchar(255) NOT NULL DEFAULT '',
  `po_level` tinyint(4) NOT NULL DEFAULT '0',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_date` date NOT NULL DEFAULT '0000-00-00',
  `po_ips` mediumtext NOT NULL,
  `mb_ids` text NOT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_poll`
--

LOCK TABLES `cd_poll` WRITE;
/*!40000 ALTER TABLE `cd_poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_poll_etc`
--

DROP TABLE IF EXISTS `cd_poll_etc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_poll_etc` (
  `pc_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_poll_etc`
--

LOCK TABLES `cd_poll_etc` WRITE;
/*!40000 ALTER TABLE `cd_poll_etc` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_poll_etc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_popular`
--

DROP TABLE IF EXISTS `cd_popular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_popular` (
  `pp_id` int(11) NOT NULL AUTO_INCREMENT,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT '0000-00-00',
  `pp_ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pp_id`),
  UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_popular`
--

LOCK TABLES `cd_popular` WRITE;
/*!40000 ALTER TABLE `cd_popular` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_popular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_qa_config`
--

DROP TABLE IF EXISTS `cd_qa_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_qa_config` (
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_sms` tinyint(4) NOT NULL DEFAULT '0',
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_image_width` int(11) NOT NULL DEFAULT '0',
  `qa_upload_size` int(11) NOT NULL DEFAULT '0',
  `qa_insert_content` text NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` text NOT NULL,
  `qa_content_tail` text NOT NULL,
  `qa_mobile_content_head` text NOT NULL,
  `qa_mobile_content_tail` text NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_qa_config`
--

LOCK TABLES `cd_qa_config` WRITE;
/*!40000 ALTER TABLE `cd_qa_config` DISABLE KEYS */;
INSERT INTO `cd_qa_config` VALUES ('1:1문의','회원|포인트','basic','basic',1,0,1,0,0,'0','','',1,60,30,15,15,600,1048576,'','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `cd_qa_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_qa_content`
--

DROP TABLE IF EXISTS `cd_qa_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_qa_content` (
  `qa_id` int(11) NOT NULL AUTO_INCREMENT,
  `qa_num` int(11) NOT NULL DEFAULT '0',
  `qa_parent` int(11) NOT NULL DEFAULT '0',
  `qa_related` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint(4) NOT NULL DEFAULT '0',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_sms_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_html` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` text NOT NULL,
  `qa_status` tinyint(4) NOT NULL DEFAULT '0',
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`qa_id`),
  KEY `qa_num_parent` (`qa_num`,`qa_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_qa_content`
--

LOCK TABLES `cd_qa_content` WRITE;
/*!40000 ALTER TABLE `cd_qa_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_qa_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_scrap`
--

DROP TABLE IF EXISTS `cd_scrap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_scrap` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ms_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_scrap`
--

LOCK TABLES `cd_scrap` WRITE;
/*!40000 ALTER TABLE `cd_scrap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_scrap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_survey`
--

DROP TABLE IF EXISTS `cd_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_survey` (
  `srvy_code` int(11) NOT NULL AUTO_INCREMENT,
  `srvy_name` varchar(100) NOT NULL DEFAULT '',
  `srvy_sdate` varchar(8) DEFAULT NULL,
  `srvy_edate` varchar(8) DEFAULT NULL,
  `srvy_coord_x` int(11) DEFAULT '0',
  `srvy_coord_y` int(11) DEFAULT '0',
  `srvy_rdate` datetime DEFAULT NULL,
  `srvy_point` int(11) NOT NULL DEFAULT '0',
  `srvy_admin` varchar(30) NOT NULL DEFAULT '',
  `srvy_link` varchar(255) NOT NULL DEFAULT '',
  `srvy_keep` int(11) DEFAULT '0',
  `srvy_status` char(1) NOT NULL DEFAULT 'Y',
  `srvy_type` char(1) NOT NULL DEFAULT '',
  `srvy_1` varchar(255) NOT NULL DEFAULT '',
  `srvy_2` varchar(255) NOT NULL DEFAULT '',
  `srvy_year` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`srvy_code`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_survey`
--

LOCK TABLES `cd_survey` WRITE;
/*!40000 ALTER TABLE `cd_survey` DISABLE KEYS */;
INSERT INTO `cd_survey` VALUES (1,'윤리의식 자가(자율)점검',NULL,NULL,0,0,NULL,0,'','',0,'Y','A','','',2021),(2,'윤리경영 의식수준 진단',NULL,NULL,0,0,NULL,0,'','',0,'Y','B','','',2021),(3,'직장 내 괴롭힘 설문조사',NULL,NULL,0,0,NULL,0,'','',0,'Y','C','','',2021),(4,'인권인식 인식도 설문조사',NULL,NULL,0,0,NULL,0,'','',0,'Y','D','','',2021),(5,'고위직 대상 부패위험성 진단',NULL,NULL,0,0,NULL,0,'','',0,'Y','O','','',2022);
/*!40000 ALTER TABLE `cd_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_survey_data`
--

DROP TABLE IF EXISTS `cd_survey_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_survey_data` (
  `srvd_no` int(11) NOT NULL AUTO_INCREMENT,
  `srvy_code` int(11) NOT NULL DEFAULT '0',
  `srvy_name` varchar(100) NOT NULL DEFAULT '',
  `srvy_point` int(11) NOT NULL DEFAULT '0',
  `srvy_type` char(1) NOT NULL DEFAULT '',
  `srvy_year` smallint(5) NOT NULL DEFAULT '0',
  `srvd_rdate` datetime DEFAULT NULL,
  `srvd_count` smallint(5) NOT NULL DEFAULT '0',
  `srvd_stat` char(1) NOT NULL DEFAULT 'Y',
  `srvd_1` varchar(255) NOT NULL DEFAULT '',
  `srvd_2` varchar(255) NOT NULL DEFAULT '',
  `srvd_uid` varchar(30) NOT NULL,
  `srvd_ex` text,
  PRIMARY KEY (`srvd_no`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_survey_data`
--

LOCK TABLES `cd_survey_data` WRITE;
/*!40000 ALTER TABLE `cd_survey_data` DISABLE KEYS */;
INSERT INTO `cd_survey_data` VALUES (1,1,'윤리의식 자가(자율)점검',0,'',0,'2021-03-21 22:16:39',14,'Y','','','admin','Y#Y#Y#Y#Y#Y#N#N#N#N#N#Y#N#Y'),(2,3,'직장 내 괴롭힘 설문조사',0,'C',2021,'2021-03-22 00:14:15',28,'Y','','','admin','1#2#1#2#2#9#1#2#3#4#1#2#2#3#3#3#2#1#1#3#2#2#1#1#3#3#2#가나다라'),(3,1,'윤리의식 자가(자율)점검',0,'A',2021,'2021-04-05 17:47:41',14,'Y','','','admin','Y#Y#Y#Y#Y#Y#Y#Y#Y#Y#Y#Y#Y#Y'),(4,3,'직장 내 괴롭힘 설문조사',0,'C',2021,'2021-04-05 17:49:59',28,'Y','','','admin','1#1#1#5#3#4#2#3#3#3#2#2#2#2#2#2#2#2#2#2#2#2#2#2#2#2#2#'),(5,5,'고위직 대상 부패위험성 진단',0,'O',2022,'2022-08-07 23:52:46',20,'Y','','','admin','1#2#3#4#6#1-1#2-1#3-1#4-1#5-1#2#3#5#8#11#10#6#4#2#4'),(6,5,'고위직 대상 부패위험성 진단',0,'O',2022,'2022-08-08 09:14:32',20,'Y','','','admin','1#3#4#6#6#2-1#3-1#4-2#5-2#5-2#11#11#11#11#11#11#11#11#11#11');
/*!40000 ALTER TABLE `cd_survey_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_uniqid`
--

DROP TABLE IF EXISTS `cd_uniqid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_uniqid` (
  `uq_id` bigint(20) unsigned NOT NULL,
  `uq_ip` varchar(255) NOT NULL,
  PRIMARY KEY (`uq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_uniqid`
--

LOCK TABLES `cd_uniqid` WRITE;
/*!40000 ALTER TABLE `cd_uniqid` DISABLE KEYS */;
INSERT INTO `cd_uniqid` VALUES (2021021101304177,'1.232.88.175'),(2021021101315791,'1.232.88.175'),(2021021101320316,'1.232.88.175'),(2021021101321311,'1.232.88.175'),(2021021101330596,'1.232.88.175'),(2021021101331015,'1.232.88.175'),(2021021102031345,'1.232.88.175'),(2021021102031990,'1.232.88.175'),(2021021102032853,'1.232.88.175'),(2021021102292773,'1.232.88.175'),(2021021500521313,'1.232.88.175'),(2021021500523793,'1.232.88.175'),(2021021500574144,'1.232.88.175'),(2021021500592691,'1.232.88.175'),(2021021501001371,'1.232.88.175'),(2021021501025000,'1.232.88.175'),(2021021501072135,'1.232.88.175'),(2021021501092545,'1.232.88.175'),(2021021501102584,'1.232.88.175'),(2021021501173657,'1.232.88.175'),(2021021501183860,'1.232.88.175'),(2021021501184867,'1.232.88.175'),(2021053102003092,'1.232.88.175'),(2021053102030600,'1.232.88.175'),(2021100521275009,'124.48.253.103'),(2022081123484990,'124.48.253.103'),(2022081510082872,'124.48.253.103'),(2022081521244248,'61.83.148.229'),(2022081521381668,'61.83.148.229'),(2022081521385380,'61.83.148.229'),(2022081610291365,'220.73.34.1'),(2022092911475600,'124.48.253.103'),(2022100323312041,'124.48.253.103');
/*!40000 ALTER TABLE `cd_uniqid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_visit`
--

DROP TABLE IF EXISTS `cd_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_visit` (
  `vi_id` int(11) NOT NULL DEFAULT '0',
  `vi_ip` varchar(100) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text NOT NULL,
  `vi_agent` varchar(200) NOT NULL DEFAULT '',
  `vi_browser` varchar(255) NOT NULL DEFAULT '',
  `vi_os` varchar(255) NOT NULL DEFAULT '',
  `vi_device` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`vi_id`),
  UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  KEY `index2` (`vi_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_visit`
--

LOCK TABLES `cd_visit` WRITE;
/*!40000 ALTER TABLE `cd_visit` DISABLE KEYS */;
INSERT INTO `cd_visit` VALUES (144,'210.220.74.3','2022-06-03','10:13:21','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(145,'211.249.218.3','2022-06-03','10:13:21','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(146,'210.220.70.253','2022-06-03','10:13:22','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(147,'39.7.58.89','2022-06-03','10:13:55','','Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 KAKAOTALK 9.8.1','','',''),(148,'220.64.100.3','2022-06-03','18:58:54','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(149,'121.133.201.38','2022-06-03','18:59:02','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','','',''),(150,'110.12.125.50','2022-06-04','22:08:55','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36','','',''),(151,'124.48.253.103','2022-06-06','19:35:22','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.151 Whale/3.14.134.62 Safari/537.36','','',''),(152,'211.249.40.28','2022-06-07','11:02:02','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1','','',''),(153,'124.48.253.103','2022-06-08','09:44:25','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.151 Whale/3.14.134.62 Safari/537.36','','',''),(154,'124.48.253.103','2022-06-15','15:57:21','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.108 Whale/3.15.136.18 Safari/537.36','','',''),(155,'124.48.253.103','2022-07-21','13:25:40','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.141 Whale/3.15.136.29 Safari/537.36','','',''),(156,'211.176.125.70','2022-07-23','18:55:03','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),(157,'124.48.253.103','2022-07-26','19:46:16','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.141 Whale/3.15.136.29 Safari/537.36','','',''),(158,'211.249.40.25','2022-07-26','20:03:10','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1','','',''),(159,'218.155.231.37','2022-07-27','16:26:06','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','','',''),(160,'124.48.253.103','2022-08-01','16:19:18','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.141 Whale/3.15.136.29 Safari/537.36','','',''),(161,'110.12.125.50','2022-08-02','11:14:40','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','','',''),(162,'124.48.253.103','2022-08-02','22:17:52','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.141 Whale/3.15.136.29 Safari/537.36','','',''),(163,'220.64.105.1','2022-08-03','09:57:55','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(164,'211.249.218.253','2022-08-03','15:01:35','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(165,'59.12.108.194','2022-08-03','15:01:57','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','','',''),(166,'121.53.80.3','2022-08-03','15:13:06','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(167,'110.12.125.50','2022-08-04','08:50:28','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','','',''),(168,'124.48.253.103','2022-08-04','10:20:21','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.141 Whale/3.15.136.29 Safari/537.36','','',''),(169,'59.12.108.194','2022-08-04','15:14:01','http://cd.sejong21.co.kr/Mileage/mileage01.php','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','','',''),(170,'211.249.218.254','2022-08-04','18:07:59','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(171,'110.12.125.50','2022-08-05','10:59:13','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','','',''),(172,'124.48.253.103','2022-08-06','11:16:17','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.141 Whale/3.15.136.29 Safari/537.36','','',''),(173,'211.176.125.70','2022-08-06','16:41:20','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),(174,'110.12.125.50','2022-08-07','22:51:11','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(175,'124.48.253.103','2022-08-08','09:12:59','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.141 Whale/3.15.136.29 Safari/537.36','','',''),(176,'110.12.125.50','2022-08-09','23:17:13','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(177,'211.176.125.70','2022-08-10','01:41:44','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),(178,'124.48.253.103','2022-08-10','10:51:58','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(179,'116.42.245.70','2022-08-10','13:32:33','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','','',''),(180,'106.244.25.250','2022-08-10','17:07:36','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(181,'124.48.253.103','2022-08-11','11:27:49','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(182,'116.42.245.70','2022-08-11','15:01:07','http://cd.sejong21.co.kr/Test/test05.php','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(183,'220.64.104.253','2022-08-11','22:40:50','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(184,'110.12.125.50','2022-08-12','01:57:37','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(185,'210.220.74.255','2022-08-12','01:58:12','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(186,'211.176.125.70','2022-08-12','02:48:19','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),(187,'121.53.181.249','2022-08-12','11:39:01','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(188,'220.64.106.6','2022-08-12','13:36:29','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(189,'110.70.51.112','2022-08-12','13:36:36','','Mozilla/5.0 (Linux; Android 10; SM-G960N Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/101.0.4951.41 Mobile Safari/537.36;KAKAOTALK 2409890','','',''),(190,'220.73.34.1','2022-08-12','13:46:45','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.47','','',''),(191,'116.42.245.70','2022-08-12','15:34:09','http://cd.sejong21.co.kr/Edu/edu01.php','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(192,'124.48.253.103','2022-08-12','15:38:25','http://cd.sejong21.co.kr/Edu/class.php?lssn=9','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(193,'211.253.121.34','2022-08-13','08:56:01','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.47','','',''),(194,'110.12.125.50','2022-08-14','01:21:25','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(195,'211.176.125.70','2022-08-14','05:09:44','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),(196,'124.48.253.103','2022-08-15','10:05:55','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(197,'110.12.125.50','2022-08-15','18:14:21','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(198,'14.36.76.108','2022-08-15','19:11:46','http://cd.sejong21.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(199,'61.83.148.229','2022-08-15','19:32:38','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(200,'124.48.253.103','2022-08-16','00:41:42','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(201,'211.176.125.70','2022-08-16','03:39:51','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),(202,'220.73.34.1','2022-08-16','08:46:52','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(203,'110.70.51.112','2022-08-16','08:52:51','','Mozilla/5.0 (Linux; Android 10; SM-G960N Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/101.0.4951.41 Mobile Safari/537.36;KAKAOTALK 2409890','','',''),(204,'121.53.80.248','2022-08-16','08:54:35','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(205,'210.103.83.39','2022-08-16','15:02:09','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(206,'1.236.217.200','2022-08-16','15:49:07','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.47','','',''),(207,'218.149.70.197','2022-08-16','17:56:41','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.47','','',''),(208,'220.73.34.1','2022-08-17','07:37:01','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(209,'203.142.217.231','2022-08-17','08:42:42','','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko','','',''),(210,'61.85.118.42','2022-08-17','09:03:50','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(211,'211.229.231.21','2022-08-17','09:04:44','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(212,'121.131.159.157','2022-08-17','09:06:37','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(213,'218.149.70.197','2022-08-17','09:15:15','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(214,'61.83.148.229','2022-08-17','10:27:35','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(215,'211.252.203.12','2022-08-17','11:55:26','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(216,'221.164.174.197','2022-08-17','13:09:58','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(217,'211.184.197.9','2022-08-17','13:29:17','','Mozilla/5.0 (Windows NT 10.0; Win64; x64; ; NCLIENT50_AAP7C2A3F16E2A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(218,'210.99.25.18','2022-08-17','13:49:44','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(219,'218.158.60.40','2022-08-17','14:54:12','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(220,'210.95.187.27','2022-08-17','17:12:09','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(221,'211.176.125.70','2022-08-18','02:20:59','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),(222,'220.73.34.1','2022-08-18','08:05:46','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(223,'124.48.253.103','2022-08-18','08:48:23','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(224,'203.142.217.231','2022-08-18','08:58:09','','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko','','',''),(225,'221.164.174.197','2022-08-18','09:52:57','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(226,'218.149.70.197','2022-08-18','12:55:36','','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko','','',''),(227,'210.103.83.39','2022-08-18','14:00:43','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(228,'220.73.34.1','2022-08-19','07:54:08','','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko','','',''),(229,'218.149.70.197','2022-08-19','09:09:39','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(230,'210.104.250.62','2022-08-19','09:12:07','http://caick.aegislab.co.kr:9588/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(231,'211.176.125.70','2022-08-19','11:24:15','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),(232,'121.162.186.240','2022-08-19','13:03:31','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(233,'211.253.121.34','2022-08-19','13:17:32','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(234,'112.187.107.176','2022-08-19','13:56:27','','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko','','',''),(235,'175.198.2.85','2022-08-19','15:51:08','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(236,'14.47.137.99','2022-08-19','16:17:44','','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko','','',''),(237,'218.158.60.40','2022-08-19','16:39:08','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(238,'220.73.34.1','2022-08-20','14:40:10','http://cd.sejong21.co.kr/Edu/class.php?lssn=11','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(239,'220.73.34.1','2022-08-21','16:37:34','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(240,'220.73.34.1','2022-08-22','07:40:01','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(241,'210.104.250.62','2022-08-22','08:51:26','http://caick.aegislab.co.kr:9588/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(242,'211.253.121.34','2022-08-22','09:52:19','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.54','','',''),(243,'223.38.21.126','2022-08-22','21:21:02','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49','','',''),(244,'220.73.34.1','2022-08-23','06:11:30','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(245,'221.164.174.197','2022-08-23','10:07:13','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(246,'211.184.197.9','2022-08-23','11:26:55','','Mozilla/5.0 (Windows NT 10.0; Win64; x64; ; NCLIENT50_AAP7C2A3F16E2A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(247,'211.253.82.235','2022-08-23','11:39:09','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(248,'220.73.34.1','2022-08-24','08:28:07','http://cd.sejong21.co.kr/Edu/class.php?lssn=11','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(249,'121.153.3.184','2022-08-24','11:24:34','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(250,'211.57.153.114','2022-08-24','15:51:57','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(251,'220.73.34.1','2022-08-25','08:30:41','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(252,'211.184.197.9','2022-08-25','13:44:12','','Mozilla/5.0 (Windows NT 10.0; Win64; x64; ; NCLIENT50_AAP7C2A3F16E2A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(253,'211.253.121.34','2022-08-25','17:56:33','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(254,'220.73.34.1','2022-08-26','08:48:55','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(255,'220.73.34.1','2022-08-27','16:53:37','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(256,'211.57.153.114','2022-08-29','09:02:28','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.63','','',''),(257,'220.73.34.1','2022-08-29','09:13:16','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70','','',''),(258,'218.149.70.197','2022-08-29','10:04:38','','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko','','',''),(259,'211.253.121.34','2022-08-29','13:08:50','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70','','',''),(260,'121.153.3.184','2022-08-29','17:23:45','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(261,'211.253.124.68','2022-08-30','08:04:32','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70','','',''),(262,'211.184.197.9','2022-08-30','08:36:06','','Mozilla/5.0 (Windows NT 10.0; Win64; x64; ; NCLIENT50_AAP7C2A3F16E2A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70','','',''),(263,'220.73.34.1','2022-08-30','09:07:21','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70','','',''),(264,'124.48.253.103','2022-08-30','09:10:02','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(265,'110.12.125.50','2022-08-30','12:56:53','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(266,'211.253.124.68','2022-08-31','08:11:19','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70','','',''),(267,'218.149.70.197','2022-08-31','08:49:46','','Mozilla/5.0 (Windows NT 10.0; Win64; x64; Trident/7.0; rv:11.0) like Gecko','','',''),(268,'220.73.34.1','2022-08-31','09:16:50','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70','','',''),(269,'210.220.86.6','2022-08-31','10:39:27','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(270,'106.101.192.154','2022-09-01','01:13:35','','Mozilla/5.0 (Linux; Android 12; SM-N981N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36','','',''),(271,'220.73.34.1','2022-09-01','10:01:03','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','','',''),(272,'220.73.34.1','2022-09-02','09:15:38','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70','','',''),(273,'218.149.70.197','2022-09-02','10:38:54','','Mozilla/5.0 (Windows NT 10.0; Win64; x64; Trident/7.0; rv:11.0) like Gecko','','',''),(274,'211.253.82.235','2022-09-02','14:09:54','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70','','',''),(275,'218.149.70.197','2022-09-03','10:21:55','','Mozilla/5.0 (Windows NT 10.0; Win64; x64; Trident/7.0; rv:11.0) like Gecko','','',''),(276,'218.149.70.197','2022-09-04','16:21:52','','Mozilla/5.0 (Windows NT 10.0; Win64; x64; Trident/7.0; rv:11.0) like Gecko','','',''),(277,'221.164.174.197','2022-09-05','08:54:18','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70','','',''),(278,'220.73.34.1','2022-09-05','09:19:17','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.27','','',''),(279,'211.253.82.235','2022-09-05','13:48:12','http://106.0.8.16:8888/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70','','',''),(280,'210.99.62.18','2022-09-06','08:29:36','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.27','','',''),(281,'221.164.174.197','2022-09-06','09:04:07','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.27','','',''),(282,'220.73.34.1','2022-09-06','09:29:49','http://cd.sejong21.co.kr/Edu/class.php?lssn=11','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.27','','',''),(283,'218.149.70.197','2022-09-06','14:38:06','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.124 Safari/537.36 Edg/102.0.1245.41','','',''),(284,'124.48.253.103','2022-09-06','15:21:52','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(285,'220.73.34.1','2022-09-07','08:53:14','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.27','','',''),(286,'211.253.124.68','2022-09-07','09:12:19','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.27','','',''),(287,'220.73.34.1','2022-09-08','13:33:52','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.87 Whale/3.16.138.22 Safari/537.36','','',''),(288,'220.73.34.1','2022-09-13','10:03:48','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.33','','',''),(289,'58.231.68.62','2022-09-13','14:47:39','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.33','','',''),(290,'220.73.34.1','2022-09-14','07:54:58','','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko','','',''),(291,'211.229.231.21','2022-09-14','16:54:47','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.27','','',''),(292,'220.73.34.1','2022-09-15','08:15:52','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.33','','',''),(293,'118.235.13.129','2022-09-15','14:18:25','','Mozilla/5.0 (Linux; Android 11; SM-G525N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36','','',''),(294,'218.158.60.46','2022-09-15','15:59:15','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.33','','',''),(295,'124.48.253.103','2022-09-16','10:21:30','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(296,'220.73.34.1','2022-09-16','13:09:50','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.33','','',''),(297,'114.206.174.175','2022-09-18','11:35:28','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36','','',''),(298,'220.73.34.1','2022-09-18','15:13:08','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36','','',''),(299,'58.229.138.43','2022-09-18','22:26:42','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36','','',''),(300,'220.73.34.1','2022-09-19','07:24:46','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.42','','',''),(301,'124.48.253.103','2022-09-19','10:11:12','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(302,'220.73.34.1','2022-09-20','18:06:46','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.42','','',''),(303,'220.73.34.1','2022-09-21','07:35:11','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.42','','',''),(304,'124.48.253.103','2022-09-21','10:10:52','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(305,'124.48.253.103','2022-09-22','10:37:36','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(306,'220.73.34.1','2022-09-22','13:10:49','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.42','','',''),(307,'211.249.40.21','2022-09-23','13:33:05','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1','','',''),(308,'124.48.253.103','2022-09-23','18:10:10','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(309,'210.220.79.7','2022-09-23','18:19:37','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(310,'116.42.245.70','2022-09-23','18:19:41','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36','','',''),(311,'220.73.34.1','2022-09-26','09:51:11','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.50','','',''),(312,'124.48.253.103','2022-09-27','14:27:15','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(313,'220.64.105.249','2022-09-27','21:21:13','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(314,'211.253.121.34','2022-09-29','08:51:27','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(315,'124.48.253.103','2022-09-29','11:46:39','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(316,'220.73.34.1','2022-09-30','10:12:18','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(317,'61.83.148.229','2022-09-30','11:50:25','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(318,'211.198.109.254','2022-10-01','16:27:27','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(319,'58.229.138.43','2022-10-03','06:19:16','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(320,'124.48.253.103','2022-10-03','23:05:06','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(321,'124.48.253.103','2022-10-04','09:35:58','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(322,'116.42.245.70','2022-10-04','12:56:48','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36','','',''),(323,'66.102.6.122','2022-10-04','13:42:37','','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 Google-PageRenderer Google (+https://developers.google.com/+/web/snippet/)','','',''),(324,'61.101.247.210','2022-10-04','13:42:38','','Mozilla/5.0 (Linux; Android 8.0.0; SM-G960N Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36','','',''),(325,'66.249.79.201','2022-10-04','13:42:41','','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)','','',''),(326,'211.235.217.129','2022-10-04','14:08:54','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(327,'210.103.72.129','2022-10-04','14:22:04','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(328,'112.216.125.206','2022-10-04','15:09:51','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(329,'121.53.180.251','2022-10-04','16:27:51','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(330,'220.73.34.1','2022-10-04','19:34:21','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(331,'220.73.34.1','2022-10-05','12:48:48','','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko','','',''),(332,'124.48.253.103','2022-10-05','13:51:45','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(333,'211.235.217.129','2022-10-05','13:55:03','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(334,'112.216.125.206','2022-10-05','16:41:41','','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(335,'106.244.25.250','2022-10-05','20:09:01','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(336,'211.176.125.70','2022-10-06','02:14:07','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),(337,'112.216.125.206','2022-10-06','07:54:51','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(338,'211.235.217.129','2022-10-06','14:01:12','http://cd.sejong21.co.kr/Edu/class.php?lssn=12','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(339,'112.216.125.206','2022-10-07','09:55:07','','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36','','',''),(340,'124.48.253.103','2022-10-07','11:17:10','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(341,'124.48.253.103','2022-10-11','08:10:05','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(342,'112.216.125.206','2022-10-11','08:52:00','','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36','','',''),(343,'58.87.61.252','2022-10-11','12:09:02','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.34','','',''),(344,'220.73.34.1','2022-10-11','17:26:26','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.37','','',''),(345,'210.99.62.18','2022-10-11','17:43:56','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.34','','',''),(346,'104.222.43.23','2022-10-11','17:44:03','','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0','','',''),(347,'205.210.31.135','2022-10-11','18:50:14','','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan','','',''),(348,'220.73.34.1','2022-10-12','14:14:18','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(349,'211.235.217.129','2022-10-12','15:42:55','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.37','','',''),(350,'211.176.125.70','2022-10-13','07:32:15','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),(351,'112.216.125.206','2022-10-13','08:51:30','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(352,'124.48.253.103','2022-10-13','10:00:27','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.122 Whale/3.16.138.27 Safari/537.36','','',''),(353,'211.235.217.129','2022-10-13','15:53:42','http://cd.sejong21.co.kr/Edu/class.php?lssn=12','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','','',''),(354,'112.216.125.206','2022-10-14','08:01:13','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','','',''),(355,'124.48.253.103','2022-10-14','10:34:12','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.11 Safari/537.36','','',''),(356,'220.73.34.1','2022-10-14','14:50:14','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','','',''),(357,'106.244.25.250','2022-10-15','12:09:01','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(358,'205.210.31.170','2022-10-16','00:33:14','','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan','','',''),(359,'198.235.24.31','2022-10-16','05:15:25','','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan','','',''),(360,'211.184.197.9','2022-10-17','08:47:29','','Mozilla/5.0 (Windows NT 10.0; Win64; x64; ; NCLIENT50_AAP7C2A3F16E2A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','','',''),(361,'124.48.253.103','2022-10-17','08:57:14','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(362,'211.57.153.114','2022-10-17','09:06:23','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','','',''),(363,'220.73.34.1','2022-10-17','10:16:47','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(364,'112.216.125.206','2022-10-17','11:22:45','','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; NP02; rv:11.0) like Gecko','','',''),(365,'112.216.125.206','2022-10-18','14:22:46','','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47','','',''),(366,'220.73.34.1','2022-10-18','15:45:34','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47','','',''),(367,'112.216.125.206','2022-10-19','08:34:22','http://gw.diac.co.kr/mail/read_mail.aspx?mpath=inbox&sfiltertype=all&sorderby=ORDER+BY+num+DESC&sfind=%ec%9c%a4%eb%a6%ac&sfindtype=subject&sfindsdate=&sfindedate=&mnum=16221523&isread=True&isErr=0&isattachdel=False&curPage=1&filename=L-221007094938-e28a56f58a5c4391b53df7c18cf4a60c-2720.em','Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; NP02; rv:11.0) like Gecko','','',''),(368,'220.73.34.1','2022-10-19','13:30:23','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47','','',''),(369,'211.235.217.129','2022-10-19','14:57:31','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47','','',''),(370,'118.235.10.240','2022-10-19','15:00:50','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(371,'112.216.124.70','2022-10-19','15:30:00','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47','','',''),(372,'198.235.24.143','2022-10-19','20:09:53','','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan','','',''),(373,'211.176.125.70','2022-10-20','00:30:56','','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)','','',''),(374,'124.48.253.103','2022-10-20','09:41:56','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(375,'211.235.217.129','2022-10-20','10:44:40','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(376,'121.158.225.120','2022-10-20','19:30:39','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(377,'112.216.125.206','2022-10-21','09:08:34','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(378,'205.210.31.5','2022-10-21','23:13:25','','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan','','',''),(379,'205.210.31.19','2022-10-22','08:00:41','','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan','','',''),(380,'211.235.217.129','2022-10-23','12:35:12','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52','','',''),(381,'220.73.34.1','2022-10-24','13:06:21','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47','','',''),(382,'124.48.253.103','2022-10-24','15:31:53','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(383,'211.235.217.129','2022-10-24','17:38:57','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52','','',''),(384,'211.235.217.129','2022-10-25','08:46:50','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52','','',''),(385,'220.73.34.1','2022-10-25','14:42:30','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(386,'124.48.253.103','2022-10-25','17:45:40','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(387,'59.9.155.210','2022-10-25','18:39:26','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(388,'223.38.51.104','2022-10-26','09:04:06','','Mozilla/5.0 (Linux; Android 11; SM-T976N Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/80.0.3987.163 Whale/1.0.0.0 Crosswalk/25.80.14.29 Safari/537.36 NAVER(inap','','',''),(389,'219.255.150.116','2022-10-26','09:11:06','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','','',''),(390,'112.216.125.206','2022-10-26','13:37:49','','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52','','',''),(391,'109.221.135.210','2022-10-27','06:13:11','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52','','',''),(392,'211.235.217.129','2022-10-27','08:51:39','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52','','',''),(393,'220.73.34.1','2022-10-27','10:00:08','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52','','',''),(394,'39.113.63.241','2022-10-28','07:38:08','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52','','',''),(395,'61.83.148.229','2022-10-28','10:33:48','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(396,'109.221.135.210','2022-10-30','06:37:23','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.24','','',''),(397,'109.221.135.210','2022-10-31','08:11:48','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.24','','',''),(398,'220.73.34.1','2022-10-31','10:24:00','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','','',''),(399,'112.217.98.186','2022-10-31','10:29:05','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.53','','',''),(400,'39.113.63.241','2022-10-31','10:57:55','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.24','','',''),(401,'106.101.64.69','2022-10-31','11:05:50','','Mozilla/5.0 (Linux; Android 12; LM-V510N Build/SKQ1.211103.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/103.0.5060.129 Mobile Safari/537.36','','',''),(402,'124.48.253.103','2022-10-31','11:06:46','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(403,'220.64.105.6','2022-10-31','11:06:56','','facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984','','',''),(404,'61.83.148.229','2022-10-31','11:07:06','','Mozilla/5.0 (Linux; Android 12; SM-S908N Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/106.0.5249.126 Mobile Safari/537.36;KAKAOTALK 2409960','','',''),(405,'110.12.155.205','2022-10-31','12:32:17','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.42','','',''),(406,'211.235.217.129','2022-10-31','14:22:11','http://gw.diac.co.kr/','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.52','','',''),(407,'39.119.22.180','2022-10-31','17:53:09','','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26','','',''),(408,'116.42.245.70','2022-11-01','14:00:55','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(409,'124.48.253.103','2022-11-01','14:16:43','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(410,'124.194.144.186','2022-11-01','15:07:51','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','','',''),(411,'109.221.135.210','2022-11-01','20:33:17','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26','','',''),(412,'35.187.232.113','2022-11-02','08:56:13','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.121 Safari/537.36 NetHelper70','','',''),(413,'14.35.201.1','2022-11-02','08:56:17','','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.121 Safari/537.36 NetHelper70','','',''),(414,'220.73.34.1','2022-11-02','10:59:00','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26','','',''),(415,'124.48.253.103','2022-11-03','09:44:33','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(416,'220.73.34.1','2022-11-03','16:12:33','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26','','',''),(417,'211.249.40.19','2022-11-03','16:23:29','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1','','',''),(418,'58.229.138.43','2022-11-04','10:50:43','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','','',''),(419,'221.164.174.197','2022-11-04','14:12:10','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','','',''),(420,'220.73.34.1','2022-11-04','15:58:44','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26','','',''),(421,'58.229.138.43','2022-11-06','22:08:52','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','','',''),(422,'124.48.253.103','2022-11-08','14:58:37','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(423,'59.15.130.135','2022-11-08','15:23:59','','Mozilla/5.0 (Linux; Android 11; SM-G996N Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.232 Whale/1.0.0.0 Crosswalk/26.90.3.29 Mobile Safari/537.36 NAVE','','',''),(424,'220.73.34.1','2022-11-11','10:41:49','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35','','',''),(425,'220.82.80.72','2022-11-14','15:23:19','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.35','','',''),(426,'211.253.124.68','2022-11-15','09:25:52','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42','','',''),(427,'220.73.34.1','2022-11-15','13:13:47','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42','','',''),(428,'58.229.138.43','2022-11-17','22:46:57','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','','',''),(429,'220.73.34.1','2022-11-18','13:40:51','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.42','','',''),(430,'112.221.119.189','2022-11-18','14:18:03','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','','',''),(431,'124.48.253.103','2022-11-21','07:09:30','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(432,'61.83.148.229','2022-11-21','13:12:32','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(433,'203.142.217.231','2022-11-22','09:16:26','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','','',''),(434,'203.228.64.23','2022-11-23','15:19:44','','SCMGUARD','','',''),(435,'203.228.64.23','2022-11-24','15:14:13','','SCMGUARD','','',''),(436,'220.73.34.1','2022-11-25','11:39:54','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','','',''),(437,'124.48.253.103','2022-11-28','10:01:57','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(438,'220.73.34.1','2022-11-28','10:17:19','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.56','','',''),(439,'124.48.253.103','2022-11-29','09:42:49','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(440,'203.228.64.23','2022-11-29','09:53:29','','SCMGUARD','','',''),(441,'220.88.76.253','2022-11-29','09:57:38','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.5249.114 Whale/3.17.145.12 Safari/537.36','','',''),(442,'58.229.138.43','2022-11-30','01:10:13','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','','','');
/*!40000 ALTER TABLE `cd_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_visit_sum`
--

DROP TABLE IF EXISTS `cd_visit_sum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_visit_sum` (
  `vs_date` date NOT NULL DEFAULT '0000-00-00',
  `vs_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vs_date`),
  KEY `index1` (`vs_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_visit_sum`
--

LOCK TABLES `cd_visit_sum` WRITE;
/*!40000 ALTER TABLE `cd_visit_sum` DISABLE KEYS */;
INSERT INTO `cd_visit_sum` VALUES ('2021-01-20',1),('2021-01-25',1),('2021-01-27',1),('2021-01-28',1),('2021-02-02',1),('2021-02-04',1),('2021-02-07',1),('2021-02-08',1),('2021-02-09',1),('2021-02-11',1),('2021-02-16',1),('2021-02-23',1),('2021-03-01',1),('2021-03-16',1),('2021-03-19',1),('2021-04-11',1),('2021-04-18',1),('2021-04-19',1),('2021-04-20',1),('2021-04-25',1),('2021-04-28',1),('2021-05-07',1),('2021-05-24',1),('2021-05-30',1),('2021-06-01',1),('2021-06-03',1),('2021-06-06',1),('2021-06-07',1),('2021-06-18',1),('2021-07-05',1),('2021-07-07',1),('2021-07-26',1),('2021-08-08',1),('2021-08-22',1),('2021-09-13',1),('2021-09-24',1),('2021-10-05',1),('2021-10-06',1),('2021-10-09',1),('2021-10-12',1),('2021-10-18',1),('2021-11-09',1),('2021-11-11',1),('2021-12-05',1),('2021-12-07',1),('2021-12-08',1),('2021-12-15',1),('2021-12-27',1),('2022-01-12',1),('2022-01-14',1),('2022-02-10',1),('2022-03-07',1),('2022-03-09',1),('2022-03-16',1),('2022-03-18',1),('2022-03-20',1),('2022-03-21',1),('2022-03-22',1),('2022-03-25',1),('2022-03-27',1),('2022-03-30',1),('2022-04-01',1),('2022-04-04',1),('2022-04-08',1),('2022-04-13',1),('2022-04-17',1),('2022-04-20',1),('2022-04-29',1),('2022-05-29',1),('2022-06-02',1),('2022-06-04',1),('2022-06-06',1),('2022-06-07',1),('2022-06-08',1),('2022-06-15',1),('2022-07-21',1),('2022-07-23',1),('2022-07-27',1),('2022-08-01',1),('2022-08-05',1),('2022-08-07',1),('2022-08-08',1),('2022-08-09',1),('2022-08-13',1),('2022-08-20',1),('2022-08-21',1),('2022-08-26',1),('2022-08-27',1),('2022-09-03',1),('2022-09-04',1),('2022-09-08',1),('2022-09-20',1),('2022-09-26',1),('2022-10-01',1),('2022-10-15',1),('2022-10-22',1),('2022-10-23',1),('2022-10-30',1),('2022-11-06',1),('2022-11-11',1),('2022-11-14',1),('2022-11-17',1),('2022-11-22',1),('2022-11-23',1),('2022-11-24',1),('2022-11-25',1),('2022-11-30',1),('2021-01-11',2),('2021-01-18',2),('2021-01-31',2),('2021-02-10',2),('2021-02-15',2),('2021-02-21',2),('2021-02-24',2),('2021-03-08',2),('2021-03-21',2),('2021-03-22',2),('2021-04-04',2),('2021-04-05',2),('2021-04-13',2),('2021-08-18',2),('2021-08-20',2),('2021-11-08',2),('2022-03-19',2),('2022-07-26',2),('2022-08-02',2),('2022-08-06',2),('2022-08-14',2),('2022-09-01',2),('2022-09-07',2),('2022-09-13',2),('2022-09-14',2),('2022-09-16',2),('2022-09-19',2),('2022-09-21',2),('2022-09-22',2),('2022-09-27',2),('2022-09-29',2),('2022-09-30',2),('2022-10-03',2),('2022-10-07',2),('2022-10-12',2),('2022-10-16',2),('2022-10-18',2),('2022-10-21',2),('2022-10-28',2),('2022-11-08',2),('2022-11-15',2),('2022-11-18',2),('2022-11-21',2),('2022-11-28',2),('2021-04-29',3),('2021-05-04',3),('2021-05-10',3),('2021-08-16',3),('2022-08-11',3),('2022-08-24',3),('2022-08-25',3),('2022-09-02',3),('2022-09-05',3),('2022-09-15',3),('2022-09-18',3),('2022-10-06',3),('2022-10-14',3),('2022-10-24',3),('2022-10-26',3),('2022-10-27',3),('2022-11-02',3),('2022-11-03',3),('2022-11-04',3),('2022-11-29',3),('2021-02-01',4),('2021-03-15',4),('2021-04-12',4),('2022-03-15',4),('2022-08-03',4),('2022-08-04',4),('2022-08-10',4),('2022-08-15',4),('2022-08-22',4),('2022-08-23',4),('2022-08-31',4),('2022-09-23',4),('2022-10-13',4),('2022-10-20',4),('2022-10-25',4),('2022-11-01',4),('2021-08-30',5),('2022-08-29',5),('2022-08-30',5),('2022-09-06',5),('2022-10-05',5),('2022-10-17',5),('2021-04-30',6),('2022-06-03',6),('2022-10-19',6),('2022-08-18',7),('2022-10-11',7),('2022-08-16',8),('2022-08-12',9),('2022-08-19',10),('2022-10-04',10),('2022-10-31',11),('2022-08-17',13);
/*!40000 ALTER TABLE `cd_visit_sum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_write_archv`
--

DROP TABLE IF EXISTS `cd_write_archv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_write_archv` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_write_archv`
--

LOCK TABLES `cd_write_archv` WRITE;
/*!40000 ALTER TABLE `cd_write_archv` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_write_archv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_write_free`
--

DROP TABLE IF EXISTS `cd_write_free`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_write_free` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_write_free`
--

LOCK TABLES `cd_write_free` WRITE;
/*!40000 ALTER TABLE `cd_write_free` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_write_free` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_write_gallery`
--

DROP TABLE IF EXISTS `cd_write_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_write_gallery` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_write_gallery`
--

LOCK TABLES `cd_write_gallery` WRITE;
/*!40000 ALTER TABLE `cd_write_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_write_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_write_notice`
--

DROP TABLE IF EXISTS `cd_write_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_write_notice` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_write_notice`
--

LOCK TABLES `cd_write_notice` WRITE;
/*!40000 ALTER TABLE `cd_write_notice` DISABLE KEYS */;
INSERT INTO `cd_write_notice` VALUES (6,-6,'',6,0,0,'','','html1','사이버 교육 학습시 숙지사항','<p><b>사이버 교육 학습 시 숙지사항</b></p><p><br></p><p>1. 학습 종료 후 다음 진행&nbsp; \"<b><span style=\"color: rgb(255, 0, 0);\">&gt;</span></b>\" 버튼을 한번더 클릭합니다.</p><p>2. \"마지막 페이지 입니다\" 메시지 창에서 \"<b>확인</b>\" 버튼을 클릭합니다.</p><p>3. 상단 제일 우측 \" <b><span style=\"color: rgb(255, 0, 0);\">X</span></b> \" 클릭하여 학습 창을 닫습니다.</p><p>4. 사이버 교육 과정 목록을 보기 위하여 좌측 \"<b>사이버 교육</b>\" 메뉴를 클릭합니다.</p>','사이버-교육-학습시-숙지사항','','',0,0,71,0,0,'admin','sha256:12000:kt3QGlKh9TfbtVUz9TizTJT/tyASnWcW:PPrIouRgX8TqgrRkiI4OGyrl3Uh96YCS','관리자','admin@domain.com','','2022-08-15 21:36:58',1,'2022-08-15 21:36:58','61.83.148.229','','','','','','','','','','','','');
/*!40000 ALTER TABLE `cd_write_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_write_qa`
--

DROP TABLE IF EXISTS `cd_write_qa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cd_write_qa` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_write_qa`
--

LOCK TABLES `cd_write_qa` WRITE;
/*!40000 ALTER TABLE `cd_write_qa` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_write_qa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-30  1:27:06
