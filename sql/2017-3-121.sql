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
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pls` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pls`;

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

insert  into `material`(`id`,`name`,`description`,`specific`,`unit`,`width`,`height`,`length`,`weight`,`note`,`sku`) values (1,'test1','test 1 description',NULL,'ge','1','1','2','1','give me a note','101010'),(3,'name','desc','specfic','ge','2','3','1','0','this is note.','1002'),(4,'name','des','spec','ge','1','2','0','0','note','1003'),(5,'name','des','spec','ge','1','2','0','0','note','1004'),(6,'name','des','spec','ge','1','2','0','0','note','1005'),(7,'name','des','spec','ge','1','2','0','0','note','1005'),(8,'name','de',NULL,NULL,'1','0','2','0',NULL,'1006'),(9,'name','de',NULL,NULL,'1','0','2','0',NULL,'1007'),(10,'测试','de',NULL,NULL,'1','0','2','0',NULL,'1008'),(11,'测试2','de',NULL,NULL,'1','0','2','0',NULL,'1009'),(12,'测试2','de',NULL,NULL,'1','0','2','0',NULL,'1010'),(13,'测试2','de',NULL,NULL,'1','0','2','0',NULL,'1010'),(14,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(16,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(17,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(18,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(19,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(20,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(21,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(22,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011'),(23,'名称','描述','规格',NULL,'2','3','1','0',NULL,'1011');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `material_plan` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `material_vendor` */

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
  PRIMARY KEY (`id`),
  KEY `FKgeupubdqncc1lpgf2cn4fqwbc` (`parent_id`),
  CONSTRAINT `FKgeupubdqncc1lpgf2cn4fqwbc` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`name`,`description`,`url`,`icon`,`parent_id`,`order`) values (1,'生产计划',NULL,'/manage/plan/production',NULL,NULL,1),(2,'物料需求计划',NULL,'/manage/plan/material',NULL,NULL,2),(3,'采购计划',NULL,'/manage/plan/order',NULL,NULL,3),(4,'采购订单',NULL,'/order',NULL,NULL,4),(5,'发货',NULL,'/vendor_asn',NULL,NULL,5),(6,'收货',NULL,'/confirm_asn',NULL,NULL,6),(7,'基础管理',NULL,NULL,NULL,NULL,7),(8,'物料SKU管理',NULL,'/manage/sku',NULL,7,8),(9,'供应商管理',NULL,'/manage/vendor',NULL,7,9),(10,'价格协议',NULL,'/manage/material_vendor',NULL,7,10),(11,'产品管理',NULL,'/manage/production',NULL,7,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `production_plan` */

insert  into `production_plan`(`id`,`delivery_date`,`line_no`,`num`,`order_no`,`plan_no`,`serial_no`,`production_id`) values (3,'2017-01-02 00:00:00','lineno','100','orderno','planno','serialno',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`) values (1,'admin','admin'),(2,'user','user'),(3,'vendor','vendor');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `vendor` */

insert  into `vendor`(`id`,`address1`,`address2`,`city`,`contact_cellphone`,`contact_firstname`,`contact_lastname`,`country`,`fax`,`name`,`phone`,`postal`,`province`,`website`) values (1,NULL,NULL,'ss',NULL,NULL,NULL,'ss','ss','aa','s',NULL,'s',NULL),(2,NULL,NULL,'青岛',NULL,NULL,NULL,'中国','343323','青岛海信包装箱公司','33221123',NULL,'山东',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
