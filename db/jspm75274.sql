-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm75274
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm75274/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm75274/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm75274/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (11,'2021-02-22 06:50:03','公告标题1','http://localhost:8080/jspm75274/upload/gonggaoxinxi_tupian1.jpg','内容1','2021-02-22'),(12,'2021-02-22 06:50:03','公告标题2','http://localhost:8080/jspm75274/upload/gonggaoxinxi_tupian2.jpg','内容2','2021-02-22'),(13,'2021-02-22 06:50:03','公告标题3','http://localhost:8080/jspm75274/upload/gonggaoxinxi_tupian3.jpg','内容3','2021-02-22'),(14,'2021-02-22 06:50:03','公告标题4','http://localhost:8080/jspm75274/upload/gonggaoxinxi_tupian4.jpg','内容4','2021-02-22'),(15,'2021-02-22 06:50:03','公告标题5','http://localhost:8080/jspm75274/upload/gonggaoxinxi_tupian5.jpg','内容5','2021-02-22'),(16,'2021-02-22 06:50:03','公告标题6','http://localhost:8080/jspm75274/upload/gonggaoxinxi_tupian6.jpg','内容6','2021-02-22');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshang`
--

DROP TABLE IF EXISTS `gongyingshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangzhanghao` varchar(200) NOT NULL COMMENT '供应商账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `gongyingshangmingcheng` varchar(200) NOT NULL COMMENT '供应商名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxiren` varchar(200) NOT NULL COMMENT '联系人',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxidizhi` varchar(200) DEFAULT NULL COMMENT '联系地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyingshangzhanghao` (`gongyingshangzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (31,'2021-02-22 06:50:03','供应商1','123456','供应商名称1','http://localhost:8080/jspm75274/upload/gongyingshang_tupian1.jpg','联系人1','职务1','13823888881','联系地址1'),(32,'2021-02-22 06:50:03','供应商2','123456','供应商名称2','http://localhost:8080/jspm75274/upload/gongyingshang_tupian2.jpg','联系人2','职务2','13823888882','联系地址2'),(33,'2021-02-22 06:50:03','供应商3','123456','供应商名称3','http://localhost:8080/jspm75274/upload/gongyingshang_tupian3.jpg','联系人3','职务3','13823888883','联系地址3'),(34,'2021-02-22 06:50:03','供应商4','123456','供应商名称4','http://localhost:8080/jspm75274/upload/gongyingshang_tupian4.jpg','联系人4','职务4','13823888884','联系地址4'),(35,'2021-02-22 06:50:03','供应商5','123456','供应商名称5','http://localhost:8080/jspm75274/upload/gongyingshang_tupian5.jpg','联系人5','职务5','13823888885','联系地址5'),(36,'2021-02-22 06:50:03','供应商6','123456','供应商名称6','http://localhost:8080/jspm75274/upload/gongyingshang_tupian6.jpg','联系人6','职务6','13823888886','联系地址6');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshanghuowu`
--

DROP TABLE IF EXISTS `gongyingshanghuowu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshanghuowu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `gongyingshangzhanghao` varchar(200) DEFAULT NULL COMMENT '供应商账号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='供应商货物';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshanghuowu`
--

LOCK TABLES `gongyingshanghuowu` WRITE;
/*!40000 ALTER TABLE `gongyingshanghuowu` DISABLE KEYS */;
INSERT INTO `gongyingshanghuowu` VALUES (51,'2021-02-22 06:50:03','商品名称1','分类1','http://localhost:8080/jspm75274/upload/gongyingshanghuowu_tupian1.jpg','规格1',1,1,'供应商账号1','供应商名称1','联系人1','联系电话1'),(52,'2021-02-22 06:50:03','商品名称2','分类2','http://localhost:8080/jspm75274/upload/gongyingshanghuowu_tupian2.jpg','规格2',2,2,'供应商账号2','供应商名称2','联系人2','联系电话2'),(53,'2021-02-22 06:50:03','商品名称3','分类3','http://localhost:8080/jspm75274/upload/gongyingshanghuowu_tupian3.jpg','规格3',3,3,'供应商账号3','供应商名称3','联系人3','联系电话3'),(54,'2021-02-22 06:50:03','商品名称4','分类4','http://localhost:8080/jspm75274/upload/gongyingshanghuowu_tupian4.jpg','规格4',4,4,'供应商账号4','供应商名称4','联系人4','联系电话4'),(55,'2021-02-22 06:50:03','商品名称5','分类5','http://localhost:8080/jspm75274/upload/gongyingshanghuowu_tupian5.jpg','规格5',5,5,'供应商账号5','供应商名称5','联系人5','联系电话5'),(56,'2021-02-22 06:50:03','商品名称6','分类6','http://localhost:8080/jspm75274/upload/gongyingshanghuowu_tupian6.jpg','规格6',6,6,'供应商账号6','供应商名称6','联系人6','联系电话6');
/*!40000 ALTER TABLE `gongyingshanghuowu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huowucaigou`
--

DROP TABLE IF EXISTS `huowucaigou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huowucaigou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `caigoujine` int(11) DEFAULT NULL COMMENT '采购金额',
  `gongyingshangzhanghao` varchar(200) DEFAULT NULL COMMENT '供应商账号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `caigouriqi` date DEFAULT NULL COMMENT '采购日期',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='货物采购';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huowucaigou`
--

LOCK TABLES `huowucaigou` WRITE;
/*!40000 ALTER TABLE `huowucaigou` DISABLE KEYS */;
INSERT INTO `huowucaigou` VALUES (61,'2021-02-22 06:50:03','商品名称1','分类1','http://localhost:8080/jspm75274/upload/huowucaigou_tupian1.jpg','规格1',1,1,1,'供应商账号1','供应商名称1','2021-02-22','员工工号1','员工姓名1','是',''),(62,'2021-02-22 06:50:03','商品名称2','分类2','http://localhost:8080/jspm75274/upload/huowucaigou_tupian2.jpg','规格2',2,2,2,'供应商账号2','供应商名称2','2021-02-22','员工工号2','员工姓名2','是',''),(63,'2021-02-22 06:50:03','商品名称3','分类3','http://localhost:8080/jspm75274/upload/huowucaigou_tupian3.jpg','规格3',3,3,3,'供应商账号3','供应商名称3','2021-02-22','员工工号3','员工姓名3','是',''),(64,'2021-02-22 06:50:03','商品名称4','分类4','http://localhost:8080/jspm75274/upload/huowucaigou_tupian4.jpg','规格4',4,4,4,'供应商账号4','供应商名称4','2021-02-22','员工工号4','员工姓名4','是',''),(65,'2021-02-22 06:50:03','商品名称5','分类5','http://localhost:8080/jspm75274/upload/huowucaigou_tupian5.jpg','规格5',5,5,5,'供应商账号5','供应商名称5','2021-02-22','员工工号5','员工姓名5','是',''),(66,'2021-02-22 06:50:03','商品名称6','分类6','http://localhost:8080/jspm75274/upload/huowucaigou_tupian6.jpg','规格6',6,6,6,'供应商账号6','供应商名称6','2021-02-22','员工工号6','员工姓名6','是','');
/*!40000 ALTER TABLE `huowucaigou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huowupandian`
--

DROP TABLE IF EXISTS `huowupandian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huowupandian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `pandianyuefen` varchar(200) DEFAULT NULL COMMENT '盘点月份',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `pandianshuliang` int(11) DEFAULT NULL COMMENT '盘点数量',
  `chayishuliang` varchar(200) DEFAULT NULL COMMENT '差异数量',
  `chayishuoming` varchar(200) DEFAULT NULL COMMENT '差异说明',
  `pandianriqi` date DEFAULT NULL COMMENT '盘点日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='货物盘点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huowupandian`
--

LOCK TABLES `huowupandian` WRITE;
/*!40000 ALTER TABLE `huowupandian` DISABLE KEYS */;
INSERT INTO `huowupandian` VALUES (111,'2021-02-22 06:50:03','商品名称1','盘点月份1',1,1,'差异数量1','差异说明1','2021-02-22'),(112,'2021-02-22 06:50:03','商品名称2','盘点月份2',2,2,'差异数量2','差异说明2','2021-02-22'),(113,'2021-02-22 06:50:03','商品名称3','盘点月份3',3,3,'差异数量3','差异说明3','2021-02-22'),(114,'2021-02-22 06:50:03','商品名称4','盘点月份4',4,4,'差异数量4','差异说明4','2021-02-22'),(115,'2021-02-22 06:50:03','商品名称5','盘点月份5',5,5,'差异数量5','差异说明5','2021-02-22'),(116,'2021-02-22 06:50:03','商品名称6','盘点月份6',6,6,'差异数量6','差异说明6','2021-02-22');
/*!40000 ALTER TABLE `huowupandian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinchuku`
--

DROP TABLE IF EXISTS `shangpinchuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shoujia` int(11) DEFAULT NULL COMMENT '售价',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='商品出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinchuku`
--

LOCK TABLES `shangpinchuku` WRITE;
/*!40000 ALTER TABLE `shangpinchuku` DISABLE KEYS */;
INSERT INTO `shangpinchuku` VALUES (91,'2021-02-22 06:50:03','商品名称1','分类1','品牌1','规格1',1,1,1,'备注1','2021-02-22','员工工号1','员工姓名1'),(92,'2021-02-22 06:50:03','商品名称2','分类2','品牌2','规格2',2,2,2,'备注2','2021-02-22','员工工号2','员工姓名2'),(93,'2021-02-22 06:50:03','商品名称3','分类3','品牌3','规格3',3,3,3,'备注3','2021-02-22','员工工号3','员工姓名3'),(94,'2021-02-22 06:50:03','商品名称4','分类4','品牌4','规格4',4,4,4,'备注4','2021-02-22','员工工号4','员工姓名4'),(95,'2021-02-22 06:50:03','商品名称5','分类5','品牌5','规格5',5,5,5,'备注5','2021-02-22','员工工号5','员工姓名5'),(96,'2021-02-22 06:50:03','商品名称6','分类6','品牌6','规格6',6,6,6,'备注6','2021-02-22','员工工号6','员工姓名6');
/*!40000 ALTER TABLE `shangpinchuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (41,'2021-02-22 06:50:03','分类1'),(42,'2021-02-22 06:50:03','分类2'),(43,'2021-02-22 06:50:03','分类3'),(44,'2021-02-22 06:50:03','分类4'),(45,'2021-02-22 06:50:03','分类5'),(46,'2021-02-22 06:50:03','分类6');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinruku`
--

DROP TABLE IF EXISTS `shangpinruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jinjia` int(11) DEFAULT NULL COMMENT '进价',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='商品入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinruku`
--

LOCK TABLES `shangpinruku` WRITE;
/*!40000 ALTER TABLE `shangpinruku` DISABLE KEYS */;
INSERT INTO `shangpinruku` VALUES (81,'2021-02-22 06:50:03','商品名称1','分类1','品牌1','规格1',1,1,1,'备注1','2021-02-22','员工工号1','员工姓名1'),(82,'2021-02-22 06:50:03','商品名称2','分类2','品牌2','规格2',2,2,2,'备注2','2021-02-22','员工工号2','员工姓名2'),(83,'2021-02-22 06:50:03','商品名称3','分类3','品牌3','规格3',3,3,3,'备注3','2021-02-22','员工工号3','员工姓名3'),(84,'2021-02-22 06:50:03','商品名称4','分类4','品牌4','规格4',4,4,4,'备注4','2021-02-22','员工工号4','员工姓名4'),(85,'2021-02-22 06:50:03','商品名称5','分类5','品牌5','规格5',5,5,5,'备注5','2021-02-22','员工工号5','员工姓名5'),(86,'2021-02-22 06:50:03','商品名称6','分类6','品牌6','规格6',6,6,6,'备注6','2021-02-22','员工工号6','员工姓名6');
/*!40000 ALTER TABLE `shangpinruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `jinjia` int(11) DEFAULT NULL COMMENT '进价',
  `shoujia` int(11) DEFAULT NULL COMMENT '售价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (71,'2021-02-22 06:50:03','商品名称1','分类1','http://localhost:8080/jspm75274/upload/shangpinxinxi_tupian1.jpg',1,'品牌1','规格1',1,1),(72,'2021-02-22 06:50:03','商品名称2','分类2','http://localhost:8080/jspm75274/upload/shangpinxinxi_tupian2.jpg',2,'品牌2','规格2',2,2),(73,'2021-02-22 06:50:03','商品名称3','分类3','http://localhost:8080/jspm75274/upload/shangpinxinxi_tupian3.jpg',3,'品牌3','规格3',3,3),(74,'2021-02-22 06:50:03','商品名称4','分类4','http://localhost:8080/jspm75274/upload/shangpinxinxi_tupian4.jpg',4,'品牌4','规格4',4,4),(75,'2021-02-22 06:50:03','商品名称5','分类5','http://localhost:8080/jspm75274/upload/shangpinxinxi_tupian5.jpg',5,'品牌5','规格5',5,5),(76,'2021-02-22 06:50:03','商品名称6','分类6','http://localhost:8080/jspm75274/upload/shangpinxinxi_tupian6.jpg',6,'品牌6','规格6',6,6);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-22 06:50:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (21,'2021-02-22 06:50:03','员工1','123456','员工姓名1','男','http://localhost:8080/jspm75274/upload/yuangong_touxiang1.jpg','13823888881','773890001@qq.com'),(22,'2021-02-22 06:50:03','员工2','123456','员工姓名2','男','http://localhost:8080/jspm75274/upload/yuangong_touxiang2.jpg','13823888882','773890002@qq.com'),(23,'2021-02-22 06:50:03','员工3','123456','员工姓名3','男','http://localhost:8080/jspm75274/upload/yuangong_touxiang3.jpg','13823888883','773890003@qq.com'),(24,'2021-02-22 06:50:03','员工4','123456','员工姓名4','男','http://localhost:8080/jspm75274/upload/yuangong_touxiang4.jpg','13823888884','773890004@qq.com'),(25,'2021-02-22 06:50:03','员工5','123456','员工姓名5','男','http://localhost:8080/jspm75274/upload/yuangong_touxiang5.jpg','13823888885','773890005@qq.com'),(26,'2021-02-22 06:50:03','员工6','123456','员工姓名6','男','http://localhost:8080/jspm75274/upload/yuangong_touxiang6.jpg','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixiangoutong`
--

DROP TABLE IF EXISTS `zaixiangoutong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixiangoutong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `goutongneirong` longtext COMMENT '沟通内容',
  `goutongshijian` datetime DEFAULT NULL COMMENT '沟通时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `gongyingshangzhanghao` varchar(200) DEFAULT NULL COMMENT '供应商账号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='在线沟通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixiangoutong`
--

LOCK TABLES `zaixiangoutong` WRITE;
/*!40000 ALTER TABLE `zaixiangoutong` DISABLE KEYS */;
INSERT INTO `zaixiangoutong` VALUES (101,'2021-02-22 06:50:03','标题1','沟通内容1','2021-02-22 14:50:03','员工工号1','员工姓名1','供应商账号1','供应商名称1','是',''),(102,'2021-02-22 06:50:03','标题2','沟通内容2','2021-02-22 14:50:03','员工工号2','员工姓名2','供应商账号2','供应商名称2','是',''),(103,'2021-02-22 06:50:03','标题3','沟通内容3','2021-02-22 14:50:03','员工工号3','员工姓名3','供应商账号3','供应商名称3','是',''),(104,'2021-02-22 06:50:03','标题4','沟通内容4','2021-02-22 14:50:03','员工工号4','员工姓名4','供应商账号4','供应商名称4','是',''),(105,'2021-02-22 06:50:03','标题5','沟通内容5','2021-02-22 14:50:03','员工工号5','员工姓名5','供应商账号5','供应商名称5','是',''),(106,'2021-02-22 06:50:03','标题6','沟通内容6','2021-02-22 14:50:03','员工工号6','员工姓名6','供应商账号6','供应商名称6','是','');
/*!40000 ALTER TABLE `zaixiangoutong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-22 14:58:08
