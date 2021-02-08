-- MySQL dump 10.13  Distrib 5.6.49, for Linux (x86_64)
--
-- Host: localhost    Database: jaemulsin
-- ------------------------------------------------------
-- Server version	5.6.49

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
-- Table structure for table `app_resources`
--

DROP TABLE IF EXISTS `app_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_resources`
--

LOCK TABLES `app_resources` WRITE;
/*!40000 ALTER TABLE `app_resources` DISABLE KEYS */;
INSERT INTO `app_resources` VALUES (1,1,1,'2020-10-03 18:37:39','2020-11-14 06:42:52'),(10,10,1,'2020-10-03 18:39:40','2020-11-14 06:44:03'),(22,22,1,'2020-10-03 18:42:13','2020-11-14 06:46:52'),(28,28,1,'2020-10-03 18:43:49','2020-11-20 11:58:15'),(35,35,1,'2020-10-03 18:40:38','2021-01-07 08:44:29'),(51,51,1,'2020-08-30 01:57:34','2021-02-02 17:28:52'),(53,52,1,'2020-10-31 14:36:03','2021-02-02 17:29:36'),(54,54,1,'2020-11-15 22:07:10','2021-02-03 20:51:00'),(55,50,1,'2020-11-15 22:07:43','2021-02-02 15:42:04'),(56,55,1,'2020-11-15 23:57:35','2021-02-03 20:51:24'),(57,53,1,'2020-11-15 23:57:56','2021-02-03 17:51:07'),(58,45,1,'2020-12-20 09:38:52','2020-12-20 09:38:52'),(59,46,1,'2020-12-20 09:39:13','2020-12-20 09:39:13'),(60,51,4,'2020-12-20 12:35:41','2021-01-11 05:17:04'),(61,56,1,'2020-12-24 02:46:23','2021-02-03 20:51:39'),(62,57,1,'2020-12-24 04:06:24','2021-02-03 21:40:24'),(63,60,1,'2020-12-24 06:06:32','2021-02-03 21:41:00'),(64,61,1,'2020-12-24 08:22:05','2021-02-03 21:41:13'),(65,62,1,'2020-12-24 12:12:17','2021-02-03 21:41:36'),(66,64,1,'2020-12-24 15:16:03','2021-02-03 21:51:37'),(67,65,1,'2020-12-24 16:35:37','2021-02-03 21:51:56'),(68,66,1,'2020-12-24 17:14:03','2021-02-03 21:52:46'),(69,67,1,'2020-12-24 17:14:17','2021-02-03 21:53:08'),(71,63,1,'2020-12-24 18:47:29','2021-02-03 21:41:54'),(72,50,4,'2020-12-30 02:34:19','2021-01-14 05:00:26'),(73,53,4,'2020-12-30 02:34:48','2021-01-11 05:20:10'),(74,54,4,'2020-12-30 02:35:12','2021-01-11 05:20:17'),(75,55,4,'2020-12-30 02:35:32','2021-01-11 05:20:24'),(76,56,4,'2020-12-30 02:35:53','2021-01-11 05:20:31'),(77,57,4,'2020-12-30 02:44:56','2021-01-11 05:20:39'),(78,60,4,'2020-12-30 02:45:11','2021-01-11 05:21:07'),(79,61,4,'2020-12-30 02:45:25','2021-01-11 05:21:16'),(80,62,4,'2020-12-30 02:45:44','2021-01-11 05:21:26'),(81,59,1,'2020-12-31 00:00:04','2021-02-03 21:40:45'),(82,68,1,'2020-12-31 00:00:19','2021-02-03 21:53:20'),(83,69,1,'2020-12-31 00:00:31','2021-02-03 21:53:33'),(84,70,1,'2020-12-31 00:00:44','2021-02-03 21:53:44'),(87,59,4,'2020-12-31 00:01:58','2021-01-11 05:20:56'),(88,63,4,'2020-12-31 00:02:21','2021-01-11 05:21:36'),(89,64,4,'2020-12-31 00:02:33','2021-01-11 05:21:44'),(90,65,4,'2020-12-31 00:03:03','2021-01-11 05:21:53'),(91,66,4,'2020-12-31 00:04:12','2021-01-11 05:22:05'),(92,67,4,'2021-01-07 18:34:07','2021-01-11 05:22:16'),(93,68,4,'2021-01-07 18:34:23','2021-01-11 05:22:24'),(94,69,4,'2021-01-07 18:34:34','2021-01-11 05:23:27'),(95,70,4,'2021-01-07 18:34:46','2021-01-11 05:22:52'),(97,50,6,'2021-01-07 18:35:39','2021-01-07 18:35:39'),(98,51,6,'2021-01-07 18:35:51','2021-01-07 18:35:51'),(99,53,6,'2021-01-07 18:36:18','2021-01-07 18:36:18'),(100,54,6,'2021-01-07 18:37:20','2021-01-07 18:37:20'),(101,55,6,'2021-01-07 18:37:36','2021-01-07 18:37:36'),(102,56,6,'2021-01-07 18:37:56','2021-01-07 18:37:56'),(103,57,6,'2021-01-07 18:38:18','2021-01-07 18:38:18'),(104,59,6,'2021-01-07 18:38:45','2021-01-07 18:38:45'),(105,60,6,'2021-01-07 18:39:31','2021-01-07 18:39:31'),(106,61,6,'2021-01-07 18:39:50','2021-01-07 18:39:50'),(107,62,6,'2021-01-07 18:40:10','2021-01-07 18:40:10'),(108,63,6,'2021-01-07 18:40:26','2021-01-07 18:40:26'),(109,64,6,'2021-01-07 18:40:58','2021-01-07 18:40:58'),(110,65,6,'2021-01-07 18:41:13','2021-01-07 18:41:13'),(111,66,6,'2021-01-07 18:41:26','2021-01-07 18:41:26'),(112,67,6,'2021-01-07 18:41:40','2021-01-07 18:41:40'),(113,68,6,'2021-01-07 18:41:54','2021-01-07 18:41:54'),(114,69,6,'2021-01-07 18:42:14','2021-01-07 18:42:14'),(115,70,6,'2021-01-07 18:42:30','2021-01-07 18:42:30'),(117,61,5,'2021-01-08 05:29:15','2021-01-08 05:29:15'),(118,59,5,'2021-01-08 05:45:55','2021-01-08 05:45:55'),(119,65,5,'2021-01-08 05:47:44','2021-01-08 05:47:44'),(120,72,1,'2021-02-03 21:54:00','2021-02-03 21:54:00'),(121,73,1,'2021-02-03 21:54:17','2021-02-03 21:54:17'),(122,74,1,'2021-02-03 21:56:42','2021-02-03 21:56:42'),(123,75,1,'2021-02-04 00:50:01','2021-02-04 00:50:01');
/*!40000 ALTER TABLE `app_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `download_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_download` int(20) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps`
--

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;
INSERT INTO `apps` VALUES (1,'天音短视频','com.androidapp.mibo','1.1.6','http://file.biummtv.cn/tianyin_v1.1.6.apk',0,0,'2020-10-03 09:56:02','2021-01-06 15:30:29'),(2,'凹音短视频','com.aoyindsptv.phonelive','75','http://39.96.17.201/storage/app/2.apk',0,1,'2020-10-03 09:56:54','2020-11-15 05:48:36'),(3,'CHMV','com.hkprchmv.youyouvideo','1.1.9','http://chmvmasterapk.chmc.top/chmv1.1.9.apk',0,1,'2020-10-03 10:14:22','2021-01-04 12:15:52'),(4,'本色世界','com.hr.bswdyyyluck','1.7.5','https://d2-bensew-cn.oss-cn-hangzhou.aliyuncs.com/app/bsw1.7.5.apk',0,1,'2020-10-03 10:34:09','2021-01-04 12:15:55'),(5,'欢乐兑U','com.p605169474.pno','1.2.2','http://down.yphnet.com/hld.apk',0,1,'2020-10-03 10:55:52','2021-01-04 12:15:58'),(6,'秘乐短视频','com.milecn.milevideo','2.2.7','https://mile-oss-download.fintechzh.com/mile-download/android/app-release-2.2.3.apk',0,1,'2020-10-03 11:22:29','2020-11-15 05:48:48'),(7,'玩乐喵','com.mz.wlm','1.3.66','https://wanlemiao.oss-cn-hangzhou.aliyuncs.com/androidapk_release/wlm.apk',0,1,'2020-10-03 12:00:53','2021-01-04 12:16:01'),(8,'芝嫲视频','com.ss.sesame','1.3.3','http://111.40.180.35/imtt.dd.qq.com/16891/apk/1F9CF3234C0C31D77E22011DF4B37740.apk',0,1,'2020-10-03 12:04:32','2021-01-04 12:16:11'),(9,'拉手','com.stwlkj.lashou','1.3.2','https://lalaha.oss-cn-zhangjiakou.aliyuncs.com/images/upload/laso-1.3.2.apk',0,1,'2020-10-03 12:27:23','2021-01-04 12:16:14'),(10,'优贝','com.ubei365.youbei','2.0.0','http://imtt.dd.qq.com/16891/apk/68B64348393FB6875A72C603328412A6.apk?fsname=com.ubei365.youbei_2.0.0_61.apk',0,0,'2020-10-03 12:38:35','2020-10-12 15:30:16'),(11,'趣充','com.whwy.equchong','2.1.4','https://overseas.equchong.com/quchong.apk',0,1,'2020-10-03 12:40:47','2021-01-04 12:16:19'),(12,'影粉世家极速版','com.yfsj.mh','3.1.4','https://yfsjapp.oss-cn-hangzhou.aliyuncs.com/app/yfjsb-3.1.4.apk',0,1,'2020-10-03 12:43:02','2020-11-15 05:48:58'),(13,'U比生活','uni.UNI63344FD','3.03','http://39.96.17.201/storage/app/13.apk',0,1,'2020-10-03 12:50:06','2021-01-04 12:16:27'),(14,'侏罗纪','com.art.dinosaur','1.0.0','https://land512.oss-cn-hongkong.aliyuncs.com/download/apk/dinosaur/app-releaseV1.1.3.apk',0,1,'2020-10-03 13:08:15','2020-11-15 05:50:02'),(15,'云度极速版','com.xl.yundu','1.2.0','http://yundu-app.oss-cn-shanghai.aliyuncs.com/1.2.0_bulid.apk',0,1,'2020-10-03 13:16:21','2021-01-04 12:16:35'),(16,'必选','com.happy.requires','2.0.6','http://39.96.17.201/storage/app/16.apk',0,1,'2020-10-03 13:22:53','2021-01-04 12:16:39'),(17,'花生世界','uni.UNI35F9810','1.1.3','http://39.96.17.201/storage/app/17.apk',0,1,'2020-10-03 14:07:08','2021-01-04 12:16:43'),(18,'同城世界团购','io.dcloud.H5A5058E5','1.4','http://39.96.17.201/storage/app/18.apk',0,1,'2020-10-03 14:08:40','2021-01-04 12:16:49'),(19,'多彩世界','com.f365','4.1','http://video.duocai99.vip/resource/app/f365.4.1.apk',0,1,'2020-10-03 14:12:02','2021-01-04 12:16:53'),(20,'天天赚','com.day.earn','1.0.35','https://ttz-test.oss-cn-beijing.aliyuncs.com/app/ttz.apk',0,1,'2020-10-03 14:16:34','2021-01-04 12:16:56'),(21,'耀健康','com.yunshangjiankang.app','2.9.0-release','https://dl.yunshangjiankang.com/prod-android/app_update/yaohealth.apk',0,1,'2020-10-03 14:20:06','2021-01-04 12:17:00'),(22,'城市链人','plus.H589B5563','1.2.4','http://39.96.17.201/storage/app/22.apk',0,0,'2020-10-03 14:22:03','2020-11-04 14:55:20'),(23,'乡拍','com.dcloud.KEUFWJUZKIO','1.2.2','http://app.xpdsp.com/xiangpai_1.2.2_20201111_1405.apk',0,1,'2020-10-03 14:22:53','2020-11-15 05:50:24'),(24,'PickTa','vip.pickta.md','2.1.1','https://oss.pickta.vip/pickta-release-2.1.1.apk',0,1,'2020-10-03 14:30:59','2021-01-04 12:17:06'),(25,'I链','com.hizhg.vigo','1.1.2','https://zhg-wec-online.oss-cn-shenzhen.aliyuncs.com/pkg/android/vigo/release_vigo_v1.1.2_10131625.apk',0,1,'2020-10-03 14:34:40','2021-01-04 12:17:09'),(26,'链淘','com.liantaoapp.liantao','1.9.38','http://39.96.17.201/storage/app/26.apk',0,1,'2020-10-03 14:38:24','2021-01-04 12:17:13'),(27,'缔星','com.dixingapp.cn','1.1.6','http://39.96.17.201/storage/app/37.apk',0,1,'2020-10-03 14:54:15','2020-11-09 12:57:13'),(28,'猫爪','cn.enruscience.catclaw','1.3.6','https://static.catspawvideo.com/apk/1.3.6.apk',0,0,'2020-10-03 14:58:18','2021-01-06 15:33:33'),(29,'云逗短速版','com.yuxing.tiktok','1.2.32','http://oss.yundouv.com/apk/yundou.1.2.32.apk',0,1,'2020-10-03 15:12:39','2021-01-04 12:17:22'),(30,'同城公园','uni.UNI56A934B','1.0.0','http://39.96.17.201/storage/app/41.apk',0,1,'2020-10-03 15:17:16','2021-01-04 12:17:28'),(31,'链摊','com.liantan.qc','1.0.7','http://39.96.17.201/storage/app/31.apk',0,1,'2020-10-03 15:23:17','2021-01-04 12:17:33'),(32,'火爆乐园','com.myth.pokemon','2.1.8','https://cdn.huobaowangluo.com/apk/huobao-2.1.8.apk',0,1,'2020-10-03 11:43:24','2021-01-04 12:17:37'),(33,'众赢时空','com.mz.cjjz','2.6.2','http://www.apk.anzhi.com/data5/apk/202012/01/8de1292a76a75b4890bbed2b59c55835_44952900.apk',0,1,'2020-10-03 11:45:35','2021-01-04 12:17:40'),(34,'趣约惠','com.quyuehui.cn','2.3.2','https://quyuehui.oss-cn-hangzhou.aliyuncs.com/apk/app-release.apk',0,1,'2020-10-03 12:45:50','2020-10-24 17:50:06'),(35,'智天下','com.zhitianxia.app','1.53','http://39.96.17.201/storage/app/35.apk',0,0,'2020-10-03 13:10:05','2021-01-04 15:32:31'),(36,'指间短视频','com.netease.nim.zjdsp','V5.0','https://zjdspupload.oss-cn-hangzhou.aliyuncs.com/download/ZJDSP.apk',0,1,'2020-10-03 13:21:51','2021-01-04 12:17:49'),(37,'鲜绿有品','com.lianshi.xianlvyoushi','1.2.8','https://download.xlyp.shop/xld_1.2.8.apk',0,1,'2020-10-03 14:24:25','2021-01-04 12:17:55'),(38,'善盾','uni.UNIA600CD7','1.3.4','http://fenfawenjian.oss-cn-shenzhen.aliyuncs.com/328-1597313530.apk',0,1,'2020-10-03 14:27:43','2021-01-04 12:17:52'),(39,'IPFS','plus.H589005B8','1.7.7.8','https://www.ipfs19.com/IPFS-1.7.7.8.apk',0,1,'2020-10-03 14:42:23','2021-01-04 12:17:59'),(40,'OAC','plus.H58098D01','115','http://47.242.90.46:8082/oac.apk',0,1,'2020-10-03 14:45:50','2020-11-15 05:50:33'),(41,'火山极速版','com.ss.android.ugc.livelite','8.1.0','https://s9.pstatp.com/package/apk/live_stream_lite/810/live_stream_lite_huoshan_lite_hb_other250_v810_34e5_1602471763.apk?v=1602471763',0,1,'2020-10-03 14:51:13','2021-01-04 12:18:07'),(42,'有声有色','com.taoke.youshengyouse','1.0.7','http://39.96.17.201/storage/app/39.apk',0,1,'2020-10-03 15:08:01','2020-10-24 17:51:03'),(43,'智链视界','app.zlsjchain.cn','50.0.1','https://oss2-1302931260.cos.ap-guangzhou.myqcloud.com/app/%E6%99%BA%E9%93%BE%E8%A7%86%E7%95%8C.apk',0,1,'2020-10-03 15:21:44','2021-01-04 12:18:16'),(44,'蚂蚁短视频','com.lnkj.antvideo','3.2','http://39.96.17.201/storage/app/44.apk',0,1,'2020-10-15 22:05:00','2020-11-15 05:50:44'),(45,'赞丽生话','com.ninesixshop.say','1.1.2','https://app.5296live.com/zanli_android_1.1.2.apk',0,0,'2020-10-24 17:07:52','2020-11-30 16:19:29'),(46,'链尚微淘','com.lianshangweitao','0.3.2','http://imtt.dd.qq.com/16891/apk/51CC46AE6A3F063AF6A0C3576456E2CC.apk?fsname=com.lianshangweitao_0.3.2_124.apk&hsr=4d5s',0,0,'2020-10-24 17:23:22','2021-01-04 15:38:42'),(47,'GES全球节能','com.yunfei.ges','1.4.1','https://ges-new.oss-cn-hangzhou.aliyuncs.com/app/ges1.4.1.apk',0,1,'2020-10-24 17:26:43','2020-11-15 05:50:55'),(48,'XCSTAOT','uni.UNI3F710A6','2.0.2.8','http://39.96.17.201/storage/app/48.apk',0,1,'2020-10-24 17:31:46','2021-01-04 12:18:23'),(49,'好逗短视频','uni.UNIB779857','2.2.0','http://39.96.17.201/storage/app/49.apk',0,1,'2020-10-24 17:46:28','2021-01-04 12:18:29'),(50,'抖音极速版','com.ss.android.ugc.aweme.lite','13.3.1','http://39.96.17.201/storage/app/50.apk',0,0,'2020-10-26 22:10:54','2021-02-02 06:00:07'),(51,'快手极速版','com.kuaishou.nebula','9.0.40.992','http://39.96.17.201/storage/app/51.apk',0,0,'2020-10-28 02:14:47','2021-02-02 11:38:12'),(52,'抖音','com.ss.android.ugc.aweme','14.6.1','http://39.96.17.201/storage/app/52.apk',0,0,'2020-10-31 14:35:35','2021-02-02 11:37:42'),(53,'百度极速版','com.baidu.searchbox.lite','5.1.6.10','http://39.96.17.201/storage/app/53.apk',0,0,'2020-11-15 21:31:35','2021-02-02 11:37:21'),(54,'陌陌极速版','com.immomo.young','8.21.28_fast','http://39.96.17.201/storage/app/54.apk',0,0,'2020-11-15 21:33:20','2021-02-02 11:45:06'),(55,'今日头条极速版','com.ss.android.article.lite','8.1.3.0','http://39.96.17.201/storage/app/55.apk',0,0,'2020-11-15 21:34:10','2021-02-02 11:43:58'),(56,'抖音火山版','com.ss.android.ugc.live','10.9.0','http://39.96.17.201/storage/app/56.apk',0,0,'2020-12-24 02:45:52','2021-02-02 17:25:20'),(57,'刷宝短视频','com.jm.video','2.951','http://39.96.17.201/storage/app/57.apk',0,0,'2020-12-24 04:06:07','2021-02-02 17:25:36'),(58,'妙看赚钱','com.taige.mygold','3.7.3.210116','http://39.96.17.201/storage/app/58.apk',0,0,'2020-12-24 05:59:33','2021-01-27 05:30:16'),(59,'天天短视频','com.tiantian.video','1.1.4','http://39.96.17.201/storage/app/59.apk',0,0,'2020-12-24 06:04:47','2020-12-24 06:04:47'),(60,'赚钱小视频','com.sljh.zqxsp','1.9.3','http://39.96.17.201/storage/app/60.apk',0,0,'2020-12-24 06:06:13','2021-01-13 21:18:22'),(61,'趣头条','com.jifen.qukan','3.10.28.000.0127.1448','http://39.96.17.201/storage/app/61.apk',0,0,'2020-12-24 08:21:41','2021-02-02 17:25:53'),(62,'趣刷领红包','com.wetimetech.video','1.7.3','http://39.96.17.201/storage/app/62.apk',0,0,'2020-12-24 11:50:58','2021-01-09 11:52:06'),(63,'米赚头条','me.toutiaoapp','2.92','http://39.96.17.201/storage/app/63.apk',0,0,'2020-12-24 12:14:40','2021-02-02 17:26:08'),(64,'火火视频极速版','com.jt.hanhan.video','4.1.5.0.1','http://39.96.17.201/storage/app/64.apk',0,0,'2020-12-24 12:16:00','2021-01-27 05:42:05'),(65,'中青看点','cn.youth.news','2.8.8','http://39.96.17.201/storage/app/65.apk',0,0,'2020-12-24 12:17:57','2021-02-02 17:26:19'),(66,'长豆短视频','com.zf.shuashua','2.0.8','http://39.96.17.201/storage/app/66.apk',0,0,'2020-12-24 17:11:48','2020-12-24 17:11:48'),(67,'映客直播极速版','com.ingkee.lite','8.1.76','http://39.96.17.201/storage/app/67.apk',0,0,'2020-12-24 17:13:43','2021-02-02 17:26:37'),(68,'热火视频极速版','com.jt.rhjs.video','4.1.5.3','http://39.96.17.201/storage/app/68.apk',0,0,'2020-12-30 23:55:00','2021-02-02 17:26:49'),(69,'红包短视频','com.jxbz.hbdsp','1.1.5','http://39.96.17.201/storage/app/69.apk',0,0,'2020-12-30 23:55:59','2020-12-30 23:55:59'),(70,'闪电盒子极速版','c.l.b','5.6.5.8','http://39.96.17.201/storage/app/70.apk',0,0,'2020-12-30 23:58:48','2020-12-30 23:58:48'),(71,'多看点','com.duoyou.duokandian','3.1.0','http://39.96.17.201/storage/app/71.apk',0,0,'2020-12-30 23:59:33','2021-01-27 06:56:19'),(72,'点淘','com.taobao.live','2.0.3','http://39.96.17.201/storage/app/72.apk',0,0,'2021-02-03 09:03:58','2021-02-04 04:54:20'),(73,'波波浏览器极速版','com.lxkj.brobo','2.0.12','http://39.96.17.201/storage/app/73.apk',0,0,'2021-02-03 10:51:37','2021-02-03 10:51:37'),(74,'番柚短视频','com.qinglan.fanyou','1.0.4','http://39.96.17.201/storage/app/74.apk',0,0,'2021-02-03 16:58:42','2021-02-03 16:58:42'),(75,'微视','com.tencent.weishi','8.10.1.588','http://39.96.17.201/storage/app/75.apk',0,0,'2021-02-04 00:43:13','2021-02-04 00:43:13');
/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL DEFAULT '1',
  `note` text COLLATE utf8mb4_unicode_ci,
  `province` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` timestamp NULL DEFAULT NULL,
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`),
  UNIQUE KEY `customers_user_name_unique` (`user_name`),
  UNIQUE KEY `customers_device_id_unique` (`device_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'XCS00001','pch123@gmail.com','15166066446','pch','1',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pch878','2022-10-06 16:00:00',0,NULL,'2020-10-03 09:09:43','2021-01-06 21:32:24'),(2,'XCS00002','bjyjdwit@126.com','13354159770','rcjms','30',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rcjms74','2022-06-06 16:00:00',0,NULL,'2020-10-03 14:05:44','2020-12-29 01:36:38'),(3,'XCS00003','36239414@qq.com','15304156350','yuliyuan','10',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aa123456','2023-01-01 16:00:00',0,NULL,'2020-10-03 16:05:49','2020-12-28 20:10:38'),(4,'XCS00004','ldy2184360@126.com','13942517966','吕德元','4',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ldy424123','2021-01-01 16:35:05',0,NULL,'2020-10-03 16:35:05','2020-10-03 16:35:05'),(5,'XCS00005','2967672632@qq.com','18240179839','jina001','11',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tt141242','2021-01-01 16:40:58',0,NULL,'2020-10-03 16:40:58','2020-10-03 16:40:58'),(6,'XCS00006','1146301895@qq.com','136744284973','yangyang','8',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'yy123456','2023-01-30 16:00:00',0,NULL,'2020-10-03 16:49:21','2020-12-30 19:10:22'),(7,'XCS00007','happy_dxj@126.com','17744488775','tester-zou','6',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'zx123456','2023-01-01 16:00:00',0,NULL,'2020-10-04 01:59:05','2020-12-28 20:11:03'),(8,'XCS00008','pingjin920@outlook.con','1234567890','honor6a','14',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aa123456','2021-01-02 17:12:20',0,NULL,'2020-10-04 17:12:20','2020-10-04 17:12:20'),(9,'XCS00009','pch@mail.china.com','321321','Redmi6','13',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pchppp','2021-04-27 16:00:00',0,NULL,'2020-10-04 17:25:44','2021-01-27 12:55:59'),(16,'XCS00010','543053666@qq.com','15841581001','zhb699','12',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'z5841581001','2021-02-04 16:00:00',0,NULL,'2020-10-05 00:44:24','2021-01-04 18:41:53'),(17,'XCS00011','tiancaiwesley@163.com','13358786800','happy','7',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'zx123456','2023-01-28 16:00:00',0,NULL,'2020-10-05 04:55:10','2020-12-28 20:11:31'),(19,'XCS00012','xianmomofang@163.com','17343119784','WANWAN','3',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a12345678','2021-01-06 18:43:15',0,NULL,'2020-10-08 18:43:15','2020-10-08 18:43:15'),(20,'XCS00013','s15641591276@163.com','18242406669','baba123','5',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'456456852','2021-01-10 02:20:39',0,NULL,'2020-10-12 02:20:39','2020-10-12 02:20:39'),(21,'XCS00014','xiaomage686@sina.com','13042662892','毕建华','21',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mxc730915','2021-01-11 18:18:05',0,NULL,'2020-10-13 18:18:05','2020-10-13 18:18:05'),(22,'XCS00015','117068302@qq.com','18242511121','huijun','23',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hj2150086','2021-01-15 17:20:50',0,NULL,'2020-10-17 17:20:50','2020-10-17 17:20:50'),(23,'XCS00016','1126744899@qq.com','18241949337','liyang','24',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ly123456','2021-01-16 16:53:45',0,NULL,'2020-10-18 16:53:45','2020-10-18 16:53:45'),(24,'XCS00017','39902572@qq.com','13841530772','jish001','25',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123456abc','2021-01-16 22:32:25',0,NULL,'2020-10-18 22:32:25','2020-10-18 22:32:25'),(25,'XCS00018','457665150@qq.com','13050308000','向日葵','26',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2830900na512','2021-02-25 16:00:00',0,NULL,'2020-10-25 17:46:16','2021-01-26 05:08:02'),(26,'XCS00019','13941554268@126.com','18341571660','自由自在','28',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'168798aaa','2021-02-01 22:59:06',0,NULL,'2020-11-03 22:59:06','2020-11-03 22:59:06'),(27,'XCS00020','15104158447@126.com','15104158447','吕四','29',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'825825','2021-02-01 22:59:11',0,NULL,'2020-11-03 22:59:11','2020-11-03 22:59:11'),(28,'XCS00021','13941554268@163.com','15141502660','快快乐乐','31',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'168798aaa','2021-02-01 23:57:24',0,NULL,'2020-11-03 23:57:24','2020-11-03 23:57:24'),(29,'XCS00022','187654321@163.com','18341526638','吕勇','2',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'825825','2022-02-03 16:00:00',0,NULL,'2020-11-04 21:53:20','2021-02-03 23:07:51'),(30,'XCS00023','13188625300@126.com','13188625300','13188625300','32',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Aa123456','2020-12-18 16:00:00',0,NULL,'2020-11-07 19:12:31','2020-11-18 18:49:39'),(31,'XCS00024','18611999442@163.com','118611999442','test-9A','33',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aa123456','2021-02-06 00:58:32',0,NULL,'2020-11-08 00:58:32','2020-11-08 00:58:32'),(32,'XCS00025','13609860418@1163.com','13609860418','13609860418','27',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'232047','2021-02-06 20:40:02',0,NULL,'2020-11-08 20:40:02','2020-11-08 20:40:02'),(33,'XCS00026','523412223@qq.com','15940530845','谷春雷','35',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aa123456','2020-12-18 16:00:00',0,NULL,'2020-11-12 01:01:21','2020-11-18 18:48:35'),(34,'XCS00027','2462444325@qq.com','18704061393','冯雷','34',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aa123456','2020-12-18 16:00:00',0,NULL,'2020-11-12 01:03:16','2020-11-18 18:48:14'),(35,'XCS00028','2462445325@qq.com','17602442691','郭大龙','36',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aa123456','2020-12-18 16:00:00',0,NULL,'2020-11-12 02:12:31','2020-11-18 18:48:57'),(36,'XCS00029','2462444456@qq.com','13840491249','孙晶','37',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aa123456','2020-12-18 16:00:00',0,NULL,'2020-11-12 02:16:51','2020-11-18 18:49:21'),(37,'XCS00030','naya@gmail.com','13324283290','naya','41',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1991225sr','2020-12-17 06:34:33',0,NULL,'2020-11-17 06:34:33','2020-11-17 06:34:33'),(38,'XCS00031','naya2@gmail.com','13042661581','naya2','42',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1991225sr','2020-12-17 07:11:24',0,NULL,'2020-11-17 07:11:24','2020-11-17 07:11:24'),(39,'XCS00032','905805027@qq.com','13304444969','lbca','44',1,'JIRIN',NULL,NULL,NULL,NULL,NULL,NULL,'lbc12345','2021-02-04 16:00:00',0,NULL,'2020-11-17 20:13:03','2021-01-04 18:42:29'),(40,'XCS00033','hw5gzy@163.com','13080806281','yuan8888','43',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'xy888119','2022-01-26 16:00:00',0,NULL,'2020-11-17 21:09:18','2021-01-27 05:20:21'),(41,'XCS00034','naya3@gamil.com','123243453534','naya3','46',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1991225sr','2020-12-18 01:30:19',0,NULL,'2020-11-18 01:30:19','2020-11-18 01:30:19'),(42,'XCS00035','naya4@gmail.com','123444','naya4','45',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1991225sr','2020-12-18 01:54:56',0,NULL,'2020-11-18 01:54:56','2020-11-18 01:54:56'),(43,'XCS00036','1371437125@qq.com','19905171907','中','47',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'blq520','2020-12-19 17:40:22',0,NULL,'2020-11-19 17:40:22','2020-11-19 17:40:22'),(44,'XCS00037','1255582136@qq.com','15104156350','yuan','20',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2278143344','2023-01-28 16:00:00',0,NULL,'2020-12-06 23:24:22','2020-12-28 20:12:46'),(50,'XCS00038','43916311@qq.com','18241574888','test888888','50',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'zx123456','2021-01-07 03:25:32',0,NULL,'2020-12-08 03:25:32','2020-12-08 03:25:32'),(51,'XCS00039','15801399456@163.com','15801399456','test666666','49',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'zx123456','2021-02-09 16:00:00',0,NULL,'2020-12-08 03:27:35','2021-01-09 18:41:45'),(52,'XCS00040','pch@mail.com','123456','pch123','51',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pch123','2021-01-12 15:11:09',0,NULL,'2020-12-13 15:11:09','2020-12-13 15:11:09'),(53,'XCS00041','chi1@163.com','13238157334','chi1','52',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'asdf1234','2021-03-19 16:00:00',0,NULL,'2020-12-20 12:06:37','2021-01-19 15:21:18'),(54,'XCS00042','chi2@163.com','13238157604','chi2','53',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'asdf1234','2021-03-19 16:00:00',0,NULL,'2020-12-20 12:31:31','2021-01-19 15:23:25'),(55,'XCS00043','testaa@gma.com','17341157781','Redmi6AA','54',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asdf1234','2021-02-03 16:04:52',0,NULL,'2021-01-04 16:04:52','2021-01-04 16:04:52'),(56,'XCS00044','hkmfr2009@163.com','13380895485','Korea','59',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HK80895485','2021-02-06 18:32:15',0,NULL,'2021-01-07 18:32:15','2021-01-07 18:32:15'),(57,'XCS00045','chi3@163.com','13238157335','chi3','57',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'asdf1234','2021-02-10 07:03:29',0,NULL,'2021-01-11 07:03:29','2021-01-11 07:03:29'),(60,'XCS00046','649203186@qq.com','15326210306','吕那1','60',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lvna00209786','2021-02-04 16:00:00',0,NULL,'2021-01-18 22:07:31','2021-01-26 05:05:39'),(61,'XCS00047','6492031862@qq.com','13125580306','吕那3','61',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lvna00209786','2021-02-04 16:00:00',0,NULL,'2021-01-18 22:10:45','2021-01-26 05:06:36'),(62,'XCS00048','6482038161@qq.com','13125580367','吕那2','62',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lvna00209786','2021-02-25 16:00:00',0,NULL,'2021-01-18 22:12:26','2021-02-02 15:33:13'),(66,'XCS00049','2723546922@qq.com','13066762481','zh2021888','63',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Xy888119','2021-02-22 02:05:29',0,NULL,'2021-01-23 02:05:29','2021-01-23 02:05:29'),(67,'XCS00050','admin@163.com','13352162222','admin','64',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123456789','2021-02-23 17:21:54',0,NULL,'2021-01-24 17:21:54','2021-01-24 17:21:54'),(68,'XCS00051','13352162@163.com','13352162221','asdf','67',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a123456789','2021-02-27 00:37:48',0,NULL,'2021-01-28 00:37:48','2021-01-28 00:37:48'),(69,'XCS00052','1335216@163.com','13352162223','asdfg','68',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a123456789','2021-02-27 00:59:03',0,NULL,'2021-01-28 00:59:03','2021-01-28 00:59:03'),(73,'XCS00053','1333@163.com','133521622222','asdfgh','69',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a123456789','2021-02-27 01:13:39',0,NULL,'2021-01-28 01:13:39','2021-01-28 01:13:39');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_types`
--

DROP TABLE IF EXISTS `device_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_types_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_types`
--

LOCK TABLES `device_types` WRITE;
/*!40000 ALTER TABLE `device_types` DISABLE KEYS */;
INSERT INTO `device_types` VALUES (1,'Redmi','Redmi','2020-08-30 09:57:13','2020-08-30 09:57:13'),(2,'Honor6x',NULL,'2020-08-30 17:34:15','2020-08-30 17:34:15'),(3,'Redmi Note 8',NULL,'2020-10-22 19:50:30','2020-10-22 19:50:30'),(4,'Chi',NULL,'2020-12-20 11:56:53','2020-12-20 11:56:53'),(5,'Our',NULL,'2021-01-04 16:03:10','2021-01-04 16:03:10'),(6,'Zhu',NULL,'2021-01-07 18:30:54','2021-01-07 18:30:54'),(7,'Wu',NULL,'2021-01-24 05:42:12','2021-01-24 05:42:12');
/*!40000 ALTER TABLE `device_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imei` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `devices_emei_unique` (`imei`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,'863938050707766','e30edf2298da9d81',1,'2020-10-03 07:40:19','2020-10-03 07:40:19'),(2,'861598053896875','9050d8b9d6560c5a',1,'2020-10-03 07:48:53','2020-10-03 07:48:53'),(3,'860300051220443','a72e77053a844795',1,'2020-10-03 07:59:27','2020-10-03 07:59:27'),(4,'862669049863888','979e733bf422ebc0',1,'2020-10-03 08:01:17','2020-10-03 08:01:17'),(5,'862669049812521','e47fabf3495bfbdc',1,'2020-10-03 08:03:26','2020-10-03 08:03:26'),(6,'868997054613821','868997054613821',1,'2020-10-03 08:09:25','2020-10-03 08:09:25'),(7,'863938054424335','863938054424335',1,'2020-10-03 08:10:17','2020-10-03 08:10:17'),(8,'861598053691920','aa7a95f92f287096',1,'2020-10-03 08:12:01','2020-10-03 08:12:01'),(10,'861598053234200','861598053234200',1,'2020-10-03 08:15:46','2020-10-03 08:15:46'),(11,'862669044916863','862669044916863',1,'2020-10-03 08:17:40','2020-10-03 08:17:40'),(12,'860300050435224','860300050435224',1,'2020-10-03 08:18:59','2020-10-03 08:18:59'),(13,'864695048076360','864695048076360',2,'2020-10-04 16:52:09','2020-10-04 16:52:09'),(14,'864597937555217','864597937555217',2,'2020-10-04 17:12:17','2020-10-04 17:12:17'),(15,'353418119122726','353418119122726',2,'2020-10-04 22:20:20','2020-10-04 22:20:20'),(20,'869807030767659','6cea0108341c645d',1,'2020-10-05 23:15:24','2020-10-05 23:15:24'),(21,'860300051285545','f9ec7aa6257402b4',1,'2020-10-13 02:53:34','2020-10-13 02:53:34'),(23,'860300051234048','860300051234048',1,'2020-10-17 00:02:36','2020-10-17 00:02:36'),(24,'860300051256843','860300051256843',1,'2020-10-17 00:03:54','2020-10-17 00:03:54'),(25,'860300051254525','99001619562726',1,'2020-10-17 00:04:40','2020-10-17 00:04:40'),(26,'869878040305095','869878040305095',1,'2020-10-22 22:11:45','2020-10-22 22:11:45'),(27,'863938057597756','863938057597756',1,'2020-10-30 22:03:59','2020-10-30 22:03:59'),(28,'862669047387724','862669047387724',1,'2020-11-03 22:44:11','2020-11-03 22:44:11'),(29,'862669047371108','99001619428555',1,'2020-11-03 22:48:25','2020-11-03 22:48:25'),(30,'869445049414797','6e923f9dfa05acc1',1,'2020-11-03 22:51:26','2020-11-03 22:51:26'),(31,'862669047384622','862669047384622',1,'2020-11-03 22:54:23','2020-11-03 22:54:23'),(32,'868997054597362','868997054597362',1,'2020-11-07 19:08:02','2020-11-07 19:08:02'),(33,'862192051942417','c3b36cc77e2a5277',1,'2020-11-08 00:56:19','2020-11-08 00:56:19'),(34,'868997057800409','868997057800409',1,'2020-11-12 00:57:51','2020-11-12 00:57:51'),(35,'868997057506659','868997057506659',1,'2020-11-12 00:58:31','2020-11-12 00:58:31'),(36,'869878048680523','869878048680523',1,'2020-11-12 02:08:17','2020-11-12 02:08:17'),(37,'868997057102764','868997057102764',1,'2020-11-12 02:09:00','2020-11-12 02:09:00'),(38,'862192053864155','8dd8258fb8ca921b',1,'2020-11-16 02:17:06','2020-11-16 02:17:06'),(39,'862192053838332','753d81a35e5674a8',1,'2020-11-16 02:19:10','2020-11-16 02:19:10'),(40,'862192053819852','938279f0ea1fcda0',1,'2020-11-16 02:20:40','2020-11-16 02:20:40'),(41,'861785049896909','16cb8eb7b74ba5b5',1,'2020-11-17 06:14:24','2020-11-17 06:14:24'),(42,'865875040425679','29a4248fa1d30e29',1,'2020-11-17 06:47:03','2020-11-17 06:47:03'),(43,'869166059270750','fbd4074b6afa4339',1,'2020-11-17 20:03:06','2020-11-17 20:03:06'),(44,'862192050016353','dc4ae86d56af7117',1,'2020-11-17 20:10:03','2020-11-17 20:10:03'),(45,'865166022133055','865166022133055',1,'2020-11-18 01:23:56','2020-11-18 01:23:56'),(46,'865166021789626','865166021789626',1,'2020-11-18 01:24:23','2020-11-18 01:24:23'),(47,'861732044702104','861732044702104',1,'2020-11-19 04:18:00','2020-11-19 04:18:00'),(49,'863604034768031','863604034768031',1,'2020-12-07 21:55:29','2020-12-07 21:55:29'),(50,'861413037944579','861413037944579',1,'2020-12-07 21:57:22','2020-12-07 21:57:22'),(51,'864695046948743','864695046948743',1,'2020-12-13 15:09:56','2020-12-13 15:09:56'),(52,'863604039313098','863604039313098',4,'2020-12-20 11:56:53','2020-12-20 11:56:53'),(53,'352562072729273','352562072729273',4,'2020-12-20 12:27:48','2020-12-20 12:27:48'),(54,'860036045013805','860036045013805',5,'2021-01-04 16:03:10','2021-01-04 16:03:10'),(55,'866921036500890','A000007378D56B',6,'2021-01-07 18:30:54','2021-01-07 18:30:54'),(57,'862620027279159','862620027279159',4,'2021-01-11 07:01:49','2021-01-11 07:01:49'),(58,'864078039180972','A00000645F2667',6,'2021-01-13 18:00:08','2021-01-13 18:00:08'),(59,'864589048598491','864589048598491',6,'2021-01-14 04:17:28','2021-01-14 04:17:28'),(60,'868133032745374','868133032745374',1,'2021-01-18 20:38:35','2021-01-18 20:38:35'),(61,'867183048879437','867183048879437',1,'2021-01-18 20:42:03','2021-01-18 20:42:03'),(62,'862976036057709','862976036057709',1,'2021-01-18 20:45:56','2021-01-18 20:45:56'),(63,'863667041995517','863667041995517',1,'2021-01-21 23:45:11','2021-01-21 23:45:11'),(64,'355905070876843','355905070876843',7,'2021-01-24 05:42:12','2021-01-24 05:42:12'),(67,'359596062399609','359596062399609',7,'2021-01-28 00:36:30','2021-01-28 00:36:30'),(68,'359942071771695','359942071771695',7,'2021-01-28 00:51:06','2021-01-28 00:51:06'),(69,'868173036972822','A0000091155D21',7,'2021-01-28 01:09:14','2021-01-28 01:09:14');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (13,'2014_10_12_000000_create_users_table',1),(14,'2014_10_12_100000_create_password_resets_table',1),(16,'2020_08_20_082646_create_apps_table',1),(17,'2020_08_25_002909_create_device_types_table',2),(18,'2020_08_25_013011_create_devices_table',3),(19,'2020_08_20_082632_create_customers_table',4),(20,'2020_08_26_154722_create_app_resources_table',5),(21,'2020_08_29_100616_create_news_table',6),(22,'2020_09_03_013148_create_myapps_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapps`
--

DROP TABLE IF EXISTS `myapps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myapps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapps`
--

LOCK TABLES `myapps` WRITE;
/*!40000 ALTER TABLE `myapps` DISABLE KEYS */;
INSERT INTO `myapps` VALUES (9,'小财神','1.0.8','org.autojs.caishen','2020-09-02 19:35:14','2020-09-02 19:35:14'),(10,'小财神','1.1.0','org.autojs.caishen','2020-10-15 17:23:15','2020-10-15 17:23:15'),(11,'小财神','1.1.1','org.autojs.caishen','2020-10-17 19:28:32','2020-10-17 19:28:32'),(12,'小财神','1.1.2','org.autojs.caishen','2020-10-20 15:17:57','2020-10-20 15:17:57'),(13,'小财神','1.1.3','org.autojs.caishen','2020-10-30 13:57:42','2020-10-30 13:57:42'),(14,'小财神','1.1.4','org.autojs.caishen','2020-11-01 05:35:00','2020-11-01 05:35:00'),(15,'小财神','1.1.5','org.autojs.caishen','2020-11-14 17:07:07','2020-11-14 17:07:07'),(16,'小财神','1.1.6','org.autojs.caishen','2020-11-19 15:05:32','2020-11-19 15:05:32'),(17,'小财神','1.1.7','org.autojs.caishen','2020-12-31 00:22:39','2020-12-31 00:22:39'),(18,'小财神','1.1.8','org.autojs.caishen','2020-12-31 02:39:32','2020-12-31 02:39:32'),(19,'小财神','1.1.9','org.autojs.caishen','2021-01-19 04:41:54','2021-01-19 04:41:54');
/*!40000 ALTER TABLE `myapps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Test','This is the test.','2020-09-03 15:12:11','2020-09-03 15:12:11'),(2,'更新通知','1. 趣充已更新至2.1.2\r\n2. 指间短视频已更新至V4.9\r\n3. 抖音极速版已更新至12.3.0\r\n\r\n请前往 “应用安装” 下载更新','2020-11-18 15:44:24','2020-11-18 15:44:24'),(3,'更新通知','1. 芝麻视频已更新至1.3.3\r\n2. 众赢时空已更新至2.6.1\r\n3. 链尚微淘已更新至0.0.90\r\n\r\n请前往 “应用安装” 下载更新。','2020-11-19 15:01:18','2020-11-19 15:01:18'),(4,'更新通知','1. 智天下已更新至1.50 \r\n2. 鲜绿有品已更新至1.2.6 \r\n\r\n请前往 “应用安装” 下载更新','2020-11-20 16:23:48','2020-11-20 16:23:48'),(5,'更新通知','1. 链淘已更新至1.9.37\r\n\r\n请前往 “应用安装” 下载更新','2020-11-21 15:17:54','2020-11-21 15:17:54'),(6,'更新通知','1. 趣充已更新至2.1.3 2.\r\n\r\n请前往 “应用安装” 下载更新','2020-11-22 16:07:46','2020-11-22 16:07:46'),(7,'更新通知','1. 链尚微淘已更新至0.0.93 \r\n2. XCSTAOT已更新至2.0.2.8\r\n \r\n请前往 “应用安装” 下载更新','2020-11-23 15:40:20','2020-11-23 15:40:20'),(8,'更新通知','1. 火爆乐园已更新至0.0.93 \r\n\r\n请前往 “应用安装” 下载更新','2020-11-24 15:33:21','2020-11-24 15:33:21'),(9,'更新通知','1. 天音短视频已更新至1.1.2\r\n2. 玩乐喵已更新至1.3.6.6\r\n3. 趣充已更新至2.1.4 \r\n4. 耀健康更新至2.9.0-release\r\n5. PickTa更新至2.0.11\r\n\r\n请前往 “应用安装” 下载更新','2020-11-30 16:56:29','2020-11-30 16:56:29'),(10,'更新通知','1. 链淘更新至1.9.38\r\n2. 猫爪更新至1.3.3\r\n3. 指间短视频已更新至V5.0\r\n4. 赞丽生话已更新至1.1.2\r\n5. 链尚微淘已更新至0.0.97\r\n\r\n请前往 “应用安装” 下载更新','2020-11-30 17:03:10','2020-11-30 17:03:10'),(11,'更新通知','1. Pickta已更新至2.1.1\r\n2.猫爪已更新至1.3.4\r\n3.火爆乐园更新至2.1.8\r\n4.众赢兼职更新至2.6.2\r\n\r\n请前往“应用安装” 下载更新','2020-12-02 17:12:02','2020-12-02 17:12:02'),(12,'更新通知','1. 必选已更新至2.0.6\r\n2. 鲜绿有品已更新至1.2.7\r\n\r\n请前往“应用安装”下载更新','2020-12-03 16:36:01','2020-12-03 16:36:01'),(13,'更新通知','1. 鲜绿有品已更新至1.2.8 \r\n2.抖音极速版已更新至12.5.0 \r\n3.快手极速版已更新至3.2.40.753 \r\n4.陌陌极速版已更新至8.21.25_fast \r\n5.今日头条极速版已更新至7.7.1.0\r\n\r\n请前往“应用安装” 下载更新','2020-12-04 16:34:57','2020-12-04 16:34:57');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'admin','admin@gmail.com',NULL,'$2y$10$NUWLA6giupS6sYRmGR968eE/h0tVtLria2SKhIwfoJhK4iV53FC.K','RMBwzQ1yRZa1rV44J3AIN088wRUat6BypWQdNuudhrJ6BI6JNhLTHYA4EtoK','2020-08-30 17:47:54','2020-08-30 17:47:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-05 15:44:53
