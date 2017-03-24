/*
SQLyog Professional v12.09 (64 bit)
MySQL - 10.1.19-MariaDB : Database - pls
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `asn` */

DROP TABLE IF EXISTS `asn`;

CREATE TABLE `asn` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `asn_no` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `is_shipment` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `asn` */

insert  into `asn`(`id`,`asn_no`,`create_date`,`user_id`,`vendor_id`,`is_shipment`) values (12,'001','2017-01-23 00:03:00',4,2,1),(14,'002','2017-01-24 00:03:00',4,2,1),(15,'005','2017-01-24 00:03:00',4,2,1),(16,NULL,NULL,4,2,1),(17,NULL,NULL,4,2,1),(18,'201','2017-01-24 00:03:00',4,2,1),(19,'111','2017-01-24 00:03:00',4,2,1),(20,'111','2017-01-24 00:03:00',4,2,1),(21,NULL,NULL,4,2,1),(22,NULL,NULL,4,2,1),(23,'001','2017-01-24 00:03:00',4,2,0);

/*Table structure for table `asn_detail` */

DROP TABLE IF EXISTS `asn_detail`;

CREATE TABLE `asn_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` double NOT NULL,
  `material_id` bigint(20) DEFAULT NULL,
  `material_order_id` bigint(20) DEFAULT NULL,
  `asn_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3t49yv5waobpukyv34xitqjha` (`material_id`),
  KEY `FKi4lgt3tl6l0hyc24ky2tj4sfx` (`material_order_id`),
  KEY `FKd48ympp2l7kru12jhio0oqqi7` (`asn_id`),
  CONSTRAINT `FK3t49yv5waobpukyv34xitqjha` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`),
  CONSTRAINT `FKd48ympp2l7kru12jhio0oqqi7` FOREIGN KEY (`asn_id`) REFERENCES `asn` (`id`),
  CONSTRAINT `FKi4lgt3tl6l0hyc24ky2tj4sfx` FOREIGN KEY (`material_order_id`) REFERENCES `material_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `asn_detail` */

insert  into `asn_detail`(`id`,`quantity`,`material_id`,`material_order_id`,`asn_id`) values (3,1,1,3,12),(4,2,4,6,12),(5,3,5,9,12),(6,12,1,3,14),(7,12,4,6,14),(8,12,4,8,14),(9,1,1,3,15),(10,2,1,6,15),(11,4,1,8,15),(12,86,1,3,16),(13,10,1,4,16),(14,10,NULL,3,17),(15,20,NULL,6,17),(16,30,NULL,8,17),(17,12,NULL,11,18),(18,12,NULL,10,18),(19,1,NULL,3,19),(20,1,NULL,6,20),(21,20,NULL,7,21),(22,1,NULL,8,21),(23,2,NULL,9,21),(24,1,NULL,10,21),(25,28,NULL,9,22),(26,90,NULL,4,22),(27,1,NULL,11,22),(28,90,NULL,14,23),(29,100,NULL,15,23);

/*Table structure for table `doc_asn_details` */

DROP TABLE IF EXISTS `doc_asn_details`;

CREATE TABLE `doc_asn_details` (
  `asnno` varchar(20) NOT NULL,
  `asnlineno` int(11) NOT NULL,
  `customerid` varchar(30) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `skudescrc` varchar(200) DEFAULT NULL,
  `skudescre` varchar(200) DEFAULT NULL,
  `pono` varchar(20) DEFAULT NULL,
  `linestatus` varchar(2) NOT NULL,
  `receivedtime` date DEFAULT NULL,
  `expectedqty` decimal(18,8) DEFAULT NULL,
  `expectedqty_each` decimal(18,8) DEFAULT NULL,
  `rejectedqty` decimal(18,8) DEFAULT NULL,
  `rejectedqty_each` decimal(18,8) DEFAULT NULL,
  `receivedqty` decimal(18,8) DEFAULT NULL,
  `receivedqty_each` decimal(18,8) DEFAULT NULL,
  `uom` varchar(10) NOT NULL,
  `packid` varchar(40) NOT NULL,
  `holdrejectcode` varchar(2) DEFAULT NULL,
  `holdrejectreason` varchar(60) DEFAULT NULL,
  `containerid` varchar(30) DEFAULT NULL,
  `receivinglocation` varchar(20) DEFAULT NULL,
  `lotatt01` varchar(20) DEFAULT NULL,
  `lotatt02` varchar(20) DEFAULT NULL,
  `lotatt03` varchar(20) DEFAULT NULL,
  `lotatt04` varchar(100) DEFAULT NULL,
  `lotatt05` varchar(100) DEFAULT NULL,
  `lotatt06` varchar(100) DEFAULT NULL,
  `lotatt07` varchar(100) DEFAULT NULL,
  `lotatt08` varchar(100) DEFAULT NULL,
  `lotatt09` varchar(100) DEFAULT NULL,
  `lotatt10` varchar(100) DEFAULT NULL,
  `lotatt11` varchar(100) DEFAULT NULL,
  `lotatt12` varchar(100) DEFAULT NULL,
  `productstatus` varchar(2) DEFAULT NULL,
  `productstatus_descr` varchar(60) DEFAULT NULL,
  `totalcubic` decimal(18,8) NOT NULL,
  `totalgrossweight` decimal(18,8) NOT NULL,
  `totalnetweight` decimal(18,8) NOT NULL,
  `totalprice` decimal(18,4) NOT NULL,
  `userdefine1` varchar(200) DEFAULT NULL,
  `userdefine2` varchar(200) DEFAULT NULL,
  `userdefine3` varchar(200) DEFAULT NULL,
  `userdefine4` varchar(200) DEFAULT NULL,
  `userdefine5` varchar(200) DEFAULT NULL,
  `notes` varchar(4000) DEFAULT NULL,
  `addtime` date NOT NULL,
  `addwho` varchar(35) DEFAULT NULL,
  `edittime` date NOT NULL,
  `editwho` varchar(35) DEFAULT NULL,
  `createsource` varchar(35) DEFAULT NULL,
  `palletizeqty_each` decimal(18,8) DEFAULT NULL,
  `palletizemethod` varchar(8) DEFAULT NULL,
  `plantoloc` varchar(20) DEFAULT NULL,
  `polineno` int(11) DEFAULT NULL,
  `reserve_flag` varchar(1) NOT NULL DEFAULT 'N',
  `d_edi_01` varchar(200) DEFAULT NULL,
  `d_edi_02` varchar(200) DEFAULT NULL,
  `d_edi_03` varchar(200) DEFAULT NULL,
  `d_edi_04` varchar(200) DEFAULT NULL,
  `d_edi_05` varchar(200) DEFAULT NULL,
  `d_edi_06` varchar(200) DEFAULT NULL,
  `d_edi_07` varchar(200) DEFAULT NULL,
  `d_edi_08` varchar(200) DEFAULT NULL,
  `alternativesku` varchar(100) DEFAULT NULL,
  `alternativedescr_c` varchar(200) DEFAULT NULL,
  `printlabel` varchar(1) DEFAULT NULL,
  `damagedqty_each` decimal(18,8) DEFAULT NULL,
  `d_edi_09` decimal(18,8) DEFAULT NULL,
  `d_edi_10` decimal(18,8) DEFAULT NULL,
  `qcstatus` varchar(2) DEFAULT NULL,
  `d_edi_11` varchar(200) DEFAULT NULL,
  `d_edi_12` varchar(200) DEFAULT NULL,
  `d_edi_13` varchar(200) DEFAULT NULL,
  `d_edi_14` varchar(200) DEFAULT NULL,
  `d_edi_15` varchar(200) DEFAULT NULL,
  `d_edi_16` varchar(200) DEFAULT NULL,
  `d_edi_17` varchar(200) DEFAULT NULL,
  `d_edi_18` varchar(200) DEFAULT NULL,
  `d_edi_19` varchar(200) DEFAULT NULL,
  `d_edi_20` varchar(200) DEFAULT NULL,
  `userdefine6` varchar(200) DEFAULT NULL,
  `prereceivedqty_each` decimal(18,8) DEFAULT '0.00000000',
  `overrcvpercentage` decimal(18,8) DEFAULT NULL,
  `referencelineno` int(11) DEFAULT NULL,
  `asnlinefilter` varchar(100) DEFAULT NULL,
  `operator` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `doc_asn_details` */

/*Table structure for table `doc_asn_header` */

DROP TABLE IF EXISTS `doc_asn_header`;

CREATE TABLE `doc_asn_header` (
  `asnno` varchar(20) NOT NULL,
  `asncreationtime` date NOT NULL,
  `carrierid` varchar(30) DEFAULT NULL,
  `asnreference1` varchar(50) DEFAULT NULL,
  `carriername` varchar(200) DEFAULT NULL,
  `expectedarrivetime1` date DEFAULT NULL,
  `expectedarrivetime2` date DEFAULT NULL,
  `carrieraddress1` varchar(200) DEFAULT NULL,
  `carrieraddress3` varchar(100) DEFAULT NULL,
  `asnreference3` varchar(50) DEFAULT NULL,
  `carrieraddress2` varchar(100) DEFAULT NULL,
  `carrieraddress4` varchar(100) DEFAULT NULL,
  `door` varchar(50) DEFAULT NULL,
  `carriercity` varchar(50) DEFAULT NULL,
  `carrierprovince` varchar(50) DEFAULT NULL,
  `carrierzip` varchar(10) DEFAULT NULL,
  `asnreference4` varchar(50) DEFAULT NULL,
  `countryoforigin` varchar(2) DEFAULT NULL,
  `countryofdestination` varchar(2) DEFAULT NULL,
  `deliveryvehicleno` varchar(20) DEFAULT NULL,
  `carriercountry` varchar(20) DEFAULT NULL,
  `asnreference5` varchar(50) DEFAULT NULL,
  `placeofloading` varchar(60) DEFAULT NULL,
  `placeofdischarge` varchar(60) DEFAULT NULL,
  `placeofdelivery` varchar(60) DEFAULT NULL,
  `paymentterms` varchar(4) DEFAULT NULL,
  `paymenttermsdescr` varchar(100) DEFAULT NULL,
  `userdefine5` varchar(200) DEFAULT NULL,
  `asnstatus` varchar(2) NOT NULL,
  `userdefine1` varchar(200) DEFAULT NULL,
  `userdefine2` varchar(200) DEFAULT NULL,
  `userdefine3` varchar(200) DEFAULT NULL,
  `userdefine4` varchar(200) DEFAULT NULL,
  `asntype` varchar(20) DEFAULT NULL,
  `asnreference2` varchar(50) DEFAULT NULL,
  `addtime` date NOT NULL,
  `pono` varchar(20) DEFAULT NULL,
  `addwho` varchar(35) DEFAULT NULL,
  `edittime` date NOT NULL,
  `editwho` varchar(35) DEFAULT NULL,
  `deliveryterms` varchar(10) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `deliverytermsdescr` varchar(100) DEFAULT NULL,
  `customerid` varchar(30) NOT NULL,
  `createsource` varchar(35) DEFAULT NULL,
  `bytrace_flag` varchar(1) DEFAULT 'N',
  `supplierid` varchar(30) DEFAULT NULL,
  `reserve_flag` varchar(1) NOT NULL DEFAULT 'N',
  `edisendtime` date DEFAULT NULL,
  `receiveid` float DEFAULT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `supplier_address1` varchar(200) DEFAULT NULL,
  `supplier_address2` varchar(100) DEFAULT NULL,
  `supplier_address3` varchar(100) DEFAULT NULL,
  `supplier_address4` varchar(100) DEFAULT NULL,
  `supplier_city` varchar(50) DEFAULT NULL,
  `supplier_province` varchar(50) DEFAULT NULL,
  `supplier_zip` varchar(10) DEFAULT NULL,
  `supplier_country` varchar(2) DEFAULT NULL,
  `supplier_tel1` varchar(50) DEFAULT NULL,
  `supplier_fax` varchar(50) DEFAULT NULL,
  `supplier_tel2` varchar(40) DEFAULT NULL,
  `issuepartyid` varchar(30) DEFAULT NULL,
  `issuepartyname` varchar(200) DEFAULT NULL,
  `i_address1` varchar(200) DEFAULT NULL,
  `i_address2` varchar(100) DEFAULT NULL,
  `i_address3` varchar(100) DEFAULT NULL,
  `i_address4` varchar(100) DEFAULT NULL,
  `i_city` varchar(50) DEFAULT NULL,
  `i_province` varchar(50) DEFAULT NULL,
  `i_country` varchar(2) DEFAULT NULL,
  `i_zip` varchar(10) DEFAULT NULL,
  `deliveryvehicletype` varchar(10) DEFAULT NULL,
  `lastreceivingtime` date DEFAULT NULL,
  `edisendflag` char(1) NOT NULL DEFAULT 'N',
  `billingid` varchar(30) DEFAULT NULL,
  `billingname` varchar(200) DEFAULT NULL,
  `b_address1` varchar(200) DEFAULT NULL,
  `b_address2` varchar(100) DEFAULT NULL,
  `b_address3` varchar(100) DEFAULT NULL,
  `b_address4` varchar(100) DEFAULT NULL,
  `b_city` varchar(50) DEFAULT NULL,
  `b_province` varchar(50) DEFAULT NULL,
  `b_country` varchar(2) DEFAULT NULL,
  `b_zip` varchar(10) DEFAULT NULL,
  `billingclass_group` varchar(10) DEFAULT NULL,
  `driver` varchar(50) DEFAULT NULL,
  `carriercontact` varchar(200) DEFAULT NULL,
  `carriertel1` varchar(50) DEFAULT NULL,
  `supplier_contact` varchar(200) DEFAULT NULL,
  `supplier_mail` varchar(100) DEFAULT NULL,
  `carriertel2` varchar(40) DEFAULT NULL,
  `carrierfax` varchar(50) DEFAULT NULL,
  `carriermail` varchar(100) DEFAULT NULL,
  `edisendtime2` date DEFAULT NULL,
  `edisendtime3` date DEFAULT NULL,
  `edisendtime4` date DEFAULT NULL,
  `edisendtime5` date DEFAULT NULL,
  `b_contact` varchar(20) DEFAULT NULL,
  `b_mail` varchar(100) DEFAULT NULL,
  `b_fax` varchar(20) DEFAULT NULL,
  `b_tel1` varchar(40) DEFAULT NULL,
  `b_tel2` varchar(40) DEFAULT NULL,
  `i_contact` varchar(20) DEFAULT NULL,
  `i_mail` varchar(100) DEFAULT NULL,
  `i_fax` varchar(20) DEFAULT NULL,
  `i_tel1` varchar(40) DEFAULT NULL,
  `i_tel2` varchar(40) DEFAULT NULL,
  `h_edi_01` varchar(200) DEFAULT NULL,
  `h_edi_02` varchar(200) DEFAULT NULL,
  `h_edi_03` varchar(200) DEFAULT NULL,
  `h_edi_04` varchar(200) DEFAULT NULL,
  `h_edi_05` varchar(200) DEFAULT NULL,
  `h_edi_06` varchar(200) DEFAULT NULL,
  `h_edi_07` varchar(200) DEFAULT NULL,
  `h_edi_08` varchar(200) DEFAULT NULL,
  `h_edi_09` decimal(18,8) DEFAULT NULL,
  `h_edi_10` decimal(18,8) DEFAULT NULL,
  `userdefine6` varchar(200) DEFAULT NULL,
  `asn_print_flag` varchar(1) DEFAULT 'N',
  `qcstatus` varchar(2) DEFAULT NULL,
  `return_print_flag` char(1) DEFAULT 'N',
  `warehouseid` varchar(30) DEFAULT NULL,
  `priority` char(1) DEFAULT NULL,
  `zonegroup` varchar(10) DEFAULT NULL,
  `releasestatus` char(1) DEFAULT NULL,
  `packmaterialconsume` char(1) DEFAULT NULL,
  `medicalxmltime` date DEFAULT NULL,
  `serialnocatch` char(1) DEFAULT 'Y',
  `followup` varchar(20) DEFAULT NULL,
  `userdefinea` varchar(20) DEFAULT NULL,
  `userdefineb` varchar(20) DEFAULT NULL,
  `archiveflag` char(1) NOT NULL DEFAULT 'N',
  `actualarrivetime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `doc_asn_header` */

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `event` */

insert  into `event`(`id`,`description`,`user_id`,`create_time`) values (14,'权限控制',NULL,NULL),(15,'菜单和导航栏设计',NULL,NULL),(16,'产品以及bom',NULL,NULL),(17,'框架',NULL,NULL),(18,'IDEA',NULL,NULL);

/*Table structure for table `event_detail` */

DROP TABLE IF EXISTS `event_detail`;

CREATE TABLE `event_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `event_detail` */

insert  into `event_detail`(`id`,`description`,`end_time`,`event_id`,`start_time`,`user_id`) values (1,'如何验证密码',NULL,14,NULL,1),(2,'角色的多个内容',NULL,14,NULL,1),(3,'分离模块？',NULL,14,NULL,1),(4,'动态加载菜单',NULL,15,NULL,1),(5,'菜单的管理',NULL,15,NULL,1),(6,'用户和菜单的关联',NULL,15,NULL,1),(7,'产品字典表的设计',NULL,16,NULL,1),(8,'bom的分解',NULL,16,NULL,1),(9,'分页的设计',NULL,17,NULL,1),(10,'UI研究',NULL,17,NULL,1),(11,'如何保存即可用？',NULL,18,NULL,1),(12,'自动部署研究',NULL,17,NULL,1),(13,'docker方式部署',NULL,17,NULL,1),(14,'如何处理缓存',NULL,17,NULL,0);

/*Table structure for table `material` */

DROP TABLE IF EXISTS `material`;

CREATE TABLE `material` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `specific` varchar(2000) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `width` decimal(10,0) DEFAULT NULL,
  `height` decimal(10,0) DEFAULT NULL,
  `length` decimal(10,0) DEFAULT NULL,
  `weight` decimal(10,0) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `material` */

insert  into `material`(`id`,`name`,`description`,`specific`,`unit`,`width`,`height`,`length`,`weight`,`note`,`sku`) values (1,'螺丝','test 1 description',NULL,'ge','1','1','2','1','give me a note','101010'),(3,'灯泡','desc','specfic','ge','2','3','1','0','this is note.','1002'),(4,'风扇','des','spec','ge','1','2','0','0','note','1003'),(5,'鼠标','des','spec','ge','1','2','0','0','note','1004'),(6,'面板','des','spec','ge','1','2','0','0','note','1005'),(7,'钢圈','des','spec','ge','1','2','0','0','note','1005'),(8,'杯子','de',NULL,NULL,'1','0','2','0',NULL,'1006'),(9,'花盆','de',NULL,NULL,'1','0','2','0',NULL,'1007'),(10,'其他','de',NULL,NULL,'1','0','2','0',NULL,'1008'),(11,'电线','de',NULL,NULL,'1','0','2','0',NULL,'1009'),(12,'手机','de',NULL,NULL,'1','0','2','0',NULL,'1010'),(13,'测试2','de',NULL,NULL,'1','0','2','0',NULL,'1010'),(14,'特殊物料','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(16,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(17,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(18,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(19,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(20,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(21,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(22,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(23,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011');

/*Table structure for table `material_order` */

DROP TABLE IF EXISTS `material_order`;

CREATE TABLE `material_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `quantity` double NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `material_id` bigint(20) DEFAULT NULL,
  `order_plan_id` bigint(20) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `is_done` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmj1ru6q9gdmnlns9dan0nc1t` (`material_id`),
  KEY `FKayhyo03an6xoipuyqmuhcq495` (`order_plan_id`),
  KEY `FKc82ais0tib8m8hi4g8yl8c51k` (`vendor_id`),
  CONSTRAINT `FKayhyo03an6xoipuyqmuhcq495` FOREIGN KEY (`order_plan_id`) REFERENCES `order_plan` (`id`),
  CONSTRAINT `FKc82ais0tib8m8hi4g8yl8c51k` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`),
  CONSTRAINT `FKmj1ru6q9gdmnlns9dan0nc1t` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `material_order` */

insert  into `material_order`(`id`,`create_date`,`delivery_date`,`order_no`,`quantity`,`user_id`,`material_id`,`order_plan_id`,`vendor_id`,`is_done`) values (3,NULL,'2017-01-28 00:03:00','001',100,0,1,1,2,1),(4,'2017-03-21 14:31:32','2017-01-28 00:03:00','001',100,1,1,1,2,1),(5,'2017-03-21 14:33:01','2017-01-27 00:03:00','002',20,1,9,4,1,0),(6,'2017-03-21 14:33:41','2017-01-28 00:03:00','003',12,1,5,2,2,1),(7,'2017-03-21 14:36:16','2017-01-28 00:03:00','004',20,1,4,3,2,1),(8,'2017-03-21 14:50:39','2017-01-28 00:03:00','006',33,1,13,3,2,1),(9,'2017-03-21 15:11:51','2017-01-28 00:03:00','006',33,1,13,3,2,1),(10,'2017-03-21 15:17:51','2017-01-29 00:03:00','007',12,1,17,2,2,1),(11,'2017-03-21 15:18:21','2017-01-29 00:03:00','007',12,1,17,2,2,1),(14,'2017-03-23 16:13:21','2017-01-31 00:03:00','201',100,1,1,7,2,0),(15,'2017-03-23 16:13:42','2017-01-31 00:03:00','202',200,1,4,8,2,0);

/*Table structure for table `material_plan` */

DROP TABLE IF EXISTS `material_plan`;

CREATE TABLE `material_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_date` datetime DEFAULT NULL,
  `material_plan_no` varchar(255) DEFAULT NULL,
  `min_quantity` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `plan_no` varchar(255) DEFAULT NULL,
  `production_sku` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `material_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi2rnxtse90efqpifkfvm6kfxl` (`material_id`),
  CONSTRAINT `FKi2rnxtse90efqpifkfvm6kfxl` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`),
  CONSTRAINT `fk_material` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `material_plan` */

insert  into `material_plan`(`id`,`end_date`,`material_plan_no`,`min_quantity`,`note`,`plan_no`,`production_sku`,`quantity`,`material_id`) values (1,'2017-03-01 00:00:00','mmm','10','color;specific','planno','sku','10',1),(3,'2017-03-01 00:00:00','mmm','10','color;specific','planno','sku','10',3),(4,'2017-03-01 00:00:00','mmm','10','color;specific','planno','sku','10',4),(5,'2017-03-01 00:00:00','mmm','10','color;specific','planno','sku','10',5),(6,'2017-03-01 00:00:00','mmm','10','color;specific','planno','sku','10',6);

/*Table structure for table `material_vendor` */

DROP TABLE IF EXISTS `material_vendor`;

CREATE TABLE `material_vendor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_date` datetime DEFAULT NULL,
  `max_price` double NOT NULL,
  `max_quantity` double NOT NULL,
  `min_price` double NOT NULL,
  `min_quantity` double NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `material_id` bigint(20) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK45fmf40wyxmmtgoy1vvs77ws2` (`material_id`),
  KEY `FKlol9kb48apm4u9aaqdyxfcjyf` (`vendor_id`),
  CONSTRAINT `FK45fmf40wyxmmtgoy1vvs77ws2` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`),
  CONSTRAINT `FKlol9kb48apm4u9aaqdyxfcjyf` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `material_vendor` */

insert  into `material_vendor`(`id`,`end_date`,`max_price`,`max_quantity`,`min_price`,`min_quantity`,`start_date`,`material_id`,`vendor_id`) values (1,'2017-03-01 00:00:00',100,10,20,20,'2017-01-24 00:00:00',1,2),(2,'2017-03-22 17:48:13',200,1,1,1,'2017-03-15 17:48:24',4,2),(3,'2017-02-01 00:00:00',10,10,10,10,'2016-12-15 00:00:00',5,2);

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `vendor` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FKgeupubdqncc1lpgf2cn4fqwbc` (`parent_id`),
  CONSTRAINT `FKgeupubdqncc1lpgf2cn4fqwbc` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`name`,`description`,`url`,`icon`,`parent_id`,`order`,`vendor`) values (1,'生产计划',NULL,'/manage/plan/production',NULL,NULL,1,0),(2,'物料需求计划',NULL,'/manage/plan/material',NULL,NULL,2,0),(3,'采购计划',NULL,'/manage/plan/order',NULL,NULL,3,0),(4,'采购订单',NULL,'/manage/order/material',NULL,NULL,4,0),(5,'发货',NULL,'/vendor_asn',NULL,NULL,5,0),(6,'收货',NULL,'/confirm_asn',NULL,NULL,6,0),(7,'基础管理',NULL,NULL,NULL,NULL,7,0),(8,'物料SKU管理',NULL,'/manage/sku',NULL,7,8,0),(9,'供应商管理',NULL,'/manage/vendor',NULL,7,9,0),(10,'价格协议',NULL,'/manage/material_vendor',NULL,7,10,0),(11,'产品管理',NULL,'/manage/production',NULL,7,NULL,0),(13,'主页',NULL,'/portal/vendor/index',NULL,NULL,1,1),(14,'订单',NULL,'/portal/vendor/order',NULL,NULL,2,1),(15,'ASN',NULL,'/portal/vendor/asn',NULL,NULL,3,1);

/*Table structure for table `order_plan` */

DROP TABLE IF EXISTS `order_plan`;

CREATE TABLE `order_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_date` datetime DEFAULT NULL,
  `order_plan_no` varchar(255) DEFAULT NULL,
  `quantity` double NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `material_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5f3psen2qpej2ghvh4aq5ionh` (`material_id`),
  CONSTRAINT `FK5f3psen2qpej2ghvh4aq5ionh` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `order_plan` */

insert  into `order_plan`(`id`,`end_date`,`order_plan_no`,`quantity`,`sku`,`material_id`) values (1,'2017-01-01 00:00:00','1021',100,'221',1),(2,'2017-01-01 00:00:00','1021',100,'221',3),(3,'2017-01-01 00:00:00','1021',100,'221',4),(4,'2017-05-08 00:00:00','sdf',23,'232323a',14),(5,'2017-09-10 00:00:00','sdfa',10,'sdf',17),(6,'2017-03-22 00:00:00','002',10,'20',19),(7,'2017-03-31 00:00:00','101011',100,'100LS',1),(8,'2017-03-31 00:00:00','101012',200,'100FS',4);

/*Table structure for table `order_status` */

DROP TABLE IF EXISTS `order_status`;

CREATE TABLE `order_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `asn_id` bigint(20) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `detail_id` bigint(20) NOT NULL,
  `event` varchar(255) DEFAULT NULL,
  `material_order_id` bigint(20) NOT NULL,
  `quantity` double NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

/*Data for the table `order_status` */

insert  into `order_status`(`id`,`asn_id`,`create_date`,`detail_id`,`event`,`material_order_id`,`quantity`,`user_id`) values (4,12,'2017-03-23 09:27:39',3,'create_asn',3,1,4),(5,12,'2017-03-23 09:27:39',4,'create_asn',6,2,4),(6,12,'2017-03-23 09:27:39',5,'create_asn',9,3,4),(7,0,'2017-03-23 09:28:33',0,'confirm',3,0,4),(8,0,'2017-03-23 09:28:34',0,'confirm',4,0,4),(9,0,'2017-03-23 09:28:34',0,'confirm',6,0,4),(10,0,'2017-03-23 09:28:35',0,'confirm',7,0,4),(11,0,'2017-03-23 09:28:35',0,'confirm',8,0,4),(12,0,'2017-03-23 09:28:36',0,'confirm',9,0,4),(13,0,'2017-03-23 09:28:36',0,'confirm',10,0,4),(14,0,'2017-03-23 09:28:37',0,'confirm',11,0,4),(15,14,'2017-03-23 14:15:56',6,'create_asn',3,12,4),(16,14,'2017-03-23 14:15:56',7,'create_asn',6,12,4),(17,14,'2017-03-23 14:15:56',8,'create_asn',8,12,4),(18,12,'2017-03-23 14:23:02',3,'shipping',3,1,4),(19,12,'2017-03-23 14:23:02',4,'shipping',6,2,4),(20,12,'2017-03-23 14:23:02',5,'shipping',9,3,4),(21,15,'2017-03-23 15:24:21',9,'create_asn',3,1,4),(22,15,'2017-03-23 15:24:21',10,'create_asn',6,2,4),(23,15,'2017-03-23 15:24:21',11,'create_asn',8,4,4),(24,16,'2017-03-23 15:25:03',12,'create_asn',3,86,4),(25,16,'2017-03-23 15:25:03',13,'create_asn',4,10,4),(26,17,'2017-03-23 15:44:11',14,'create_asn',3,10,4),(27,17,'2017-03-23 15:44:11',15,'create_asn',6,20,4),(28,17,'2017-03-23 15:44:11',16,'create_asn',8,30,4),(29,18,'2017-03-23 15:50:42',17,'create_asn',11,12,4),(30,18,'2017-03-23 15:50:42',18,'create_asn',10,12,4),(31,18,'2017-03-23 15:50:49',17,'shipment',11,12,4),(32,18,'2017-03-23 15:50:49',18,'shipment',10,12,4),(33,12,'2017-03-23 15:54:33',3,'shipment',3,1,4),(34,12,'2017-03-23 15:54:33',4,'shipment',6,2,4),(35,12,'2017-03-23 15:54:33',5,'shipment',9,3,4),(36,19,'2017-03-23 16:05:09',19,'create_asn',3,1,4),(37,19,'2017-03-23 16:05:17',19,'shipment',3,1,4),(38,20,'2017-03-23 16:07:02',20,'create_asn',6,1,4),(39,20,'2017-03-23 16:07:11',20,'shipment',6,1,4),(40,21,'2017-03-23 16:07:47',21,'create_asn',7,20,4),(41,21,'2017-03-23 16:07:47',22,'create_asn',8,1,4),(42,21,'2017-03-23 16:07:47',23,'create_asn',9,2,4),(43,21,'2017-03-23 16:07:47',24,'create_asn',10,1,4),(44,21,'2017-03-23 16:07:52',21,'shipment',7,20,4),(45,21,'2017-03-23 16:07:52',22,'shipment',8,1,4),(46,21,'2017-03-23 16:07:52',23,'shipment',9,2,4),(47,21,'2017-03-23 16:07:52',24,'shipment',10,1,4),(48,22,'2017-03-23 16:08:21',25,'create_asn',9,28,4),(49,22,'2017-03-23 16:08:21',26,'create_asn',4,90,4),(50,22,'2017-03-23 16:08:21',27,'create_asn',11,1,4),(51,22,'2017-03-23 16:08:26',25,'shipment',9,28,4),(52,22,'2017-03-23 16:08:26',26,'shipment',4,90,4),(53,22,'2017-03-23 16:08:26',27,'shipment',11,1,4),(54,14,'2017-03-23 16:08:40',6,'shipment',3,12,4),(55,14,'2017-03-23 16:08:40',7,'shipment',6,12,4),(56,14,'2017-03-23 16:08:40',8,'shipment',8,12,4),(57,15,'2017-03-23 16:08:42',9,'shipment',3,1,4),(58,15,'2017-03-23 16:08:42',10,'shipment',6,2,4),(59,15,'2017-03-23 16:08:42',11,'shipment',8,4,4),(60,16,'2017-03-23 16:08:44',12,'shipment',3,86,4),(61,16,'2017-03-23 16:08:44',13,'shipment',4,10,4),(62,17,'2017-03-23 16:08:46',14,'shipment',3,10,4),(63,17,'2017-03-23 16:08:46',15,'shipment',6,20,4),(64,17,'2017-03-23 16:08:46',16,'shipment',8,30,4),(65,23,'2017-03-23 16:15:03',28,'create_asn',14,90,4),(66,23,'2017-03-23 16:15:03',29,'create_asn',15,100,4);

/*Table structure for table `production` */

DROP TABLE IF EXISTS `production`;

CREATE TABLE `production` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active_date` datetime DEFAULT NULL,
  `band` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `production` */

insert  into `production`(`id`,`active_date`,`band`,`description`,`name`,`no`) values (1,'2017-03-01 12:07:31','hisense','tv','tv','001'),(2,'2017-03-01 12:07:55','haier','tv','tv','002');

/*Table structure for table `production_plan` */

DROP TABLE IF EXISTS `production_plan`;

CREATE TABLE `production_plan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `delivery_date` datetime DEFAULT NULL,
  `line_no` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `plan_no` varchar(255) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `production_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc7tklsvbshcktyhjs5gnh14yo` (`production_id`),
  CONSTRAINT `FKc7tklsvbshcktyhjs5gnh14yo` FOREIGN KEY (`production_id`) REFERENCES `production` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `production_plan` */

insert  into `production_plan`(`id`,`delivery_date`,`line_no`,`num`,`order_no`,`plan_no`,`serial_no`,`production_id`) values (3,'2017-01-02 00:00:00','lineno','100','orderno','planno','serialno',1),(4,'2017-03-28 00:00:00','xxxx','10','oooo','pppp','ssss',1);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`) values (6,'admin'),(7,'user'),(8,'vendor');

/*Table structure for table `spring_session` */

DROP TABLE IF EXISTS `spring_session`;

CREATE TABLE `spring_session` (
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SESSION_ID`),
  KEY `SPRING_SESSION_IX1` (`LAST_ACCESS_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `spring_session` */

/*Table structure for table `spring_session_attributes` */

DROP TABLE IF EXISTS `spring_session_attributes`;

CREATE TABLE `spring_session_attributes` (
  `SESSION_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob,
  PRIMARY KEY (`SESSION_ID`,`ATTRIBUTE_NAME`),
  KEY `SPRING_SESSION_ATTRIBUTES_IX1` (`SESSION_ID`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_ID`) REFERENCES `spring_session` (`SESSION_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `spring_session_attributes` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`) values (1,'admin','admin'),(2,'user','user'),(3,'vendor','vendor'),(4,'13953253109','13953253109');

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  KEY `FKj9553ass9uctjrmh0gkqsmv0d` (`roles_id`),
  KEY `FK55itppkw3i07do3h7qoclqd4k` (`user_id`),
  CONSTRAINT `FK55itppkw3i07do3h7qoclqd4k` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKj9553ass9uctjrmh0gkqsmv0d` FOREIGN KEY (`roles_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_roles` */

/*Table structure for table `vendor` */

DROP TABLE IF EXISTS `vendor`;

CREATE TABLE `vendor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contact_cellphone` varchar(255) DEFAULT NULL,
  `contact_firstname` varchar(255) DEFAULT NULL,
  `contact_lastname` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `vendor` */

insert  into `vendor`(`id`,`address1`,`address2`,`city`,`contact_cellphone`,`contact_firstname`,`contact_lastname`,`country`,`fax`,`name`,`phone`,`postal`,`province`,`website`) values (1,NULL,NULL,'ss',NULL,NULL,NULL,'ss','ss','aa','s',NULL,'s',NULL),(2,NULL,NULL,'青岛',NULL,NULL,NULL,'中国','343323','青岛海信包装箱公司','33221123',NULL,'山东',NULL),(3,NULL,NULL,'青岛',NULL,NULL,NULL,'中国','323','qdjm','333',NULL,'山东',NULL);

/*Table structure for table `vendor_contact` */

DROP TABLE IF EXISTS `vendor_contact`;

CREATE TABLE `vendor_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cellphone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeyy9iqce8j8pmm74ovxuvp3t3` (`vendor_id`),
  CONSTRAINT `FKeyy9iqce8j8pmm74ovxuvp3t3` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `vendor_contact` */

insert  into `vendor_contact`(`id`,`cellphone`,`email`,`name`,`phone`,`user_id`,`vendor_id`) values (1,'13953253109','a@a.com','michael','4343',4,2),(2,'110','b@b.com','police','1122',3,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
