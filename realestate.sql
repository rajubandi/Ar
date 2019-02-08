/*
SQLyog Community Edition- MySQL GUI v8.02 
MySQL - 5.5.27 : Database - realestate
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`realestate` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `realestate`;

/*Table structure for table `otp_details` */

DROP TABLE IF EXISTS `otp_details`;

CREATE TABLE `otp_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otpnumber` varchar(255) DEFAULT NULL,
  `otpstatus` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `mobileno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `otp_details` */

insert  into `otp_details`(`id`,`otpnumber`,`otpstatus`,`created_time`,`mobileno`) values (1,'5313',NULL,'2018-12-12 14:49:22','8555863691'),(2,'0177',NULL,'2019-01-02 12:34:49','9059393937');

/*Table structure for table `price_trends` */

DROP TABLE IF EXISTS `price_trends`;

CREATE TABLE `price_trends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `max_amount` double DEFAULT NULL,
  `min_amount` double DEFAULT NULL,
  `price_trend_time` date DEFAULT NULL,
  `property_type` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `village_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7l2ae23kk6bj6dssb9ww3chw1` (`village_id`),
  CONSTRAINT `FK7l2ae23kk6bj6dssb9ww3chw1` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `price_trends` */

insert  into `price_trends`(`id`,`created_date`,`max_amount`,`min_amount`,`price_trend_time`,`property_type`,`updated_date`,`village_id`) values (1,'2019-01-08 17:08:51',30000,20000,'2019-01-21','Commercial','2019-01-08 17:08:51',1),(2,'2019-01-08 17:17:34',100000,90000,'2019-01-21','Residential','2019-01-08 17:17:34',2),(3,'2019-01-08 17:18:22',30000,20000,'2019-01-21','Residential','2019-01-08 17:18:22',3),(4,'2019-01-08 17:30:30',100000,90000,'2019-01-21','Residential','2019-01-08 17:30:30',3),(5,'2019-01-08 17:31:47',30000,20000,'2019-01-21','Commercial','2019-01-08 17:31:47',1),(6,'2019-01-09 14:38:04',3000,2000,'2019-01-30','Commercial','2019-01-09 14:38:04',9),(7,'2019-01-09 14:51:01',100000,90000,'2019-01-14','Commercial','2019-01-09 14:51:01',10);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designationid` varchar(255) DEFAULT NULL,
  `desigrole` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `roles` */

insert  into `roles`(`id`,`designationid`,`desigrole`) values (1,'1','ROLE_ADMIN'),(2,'2','ROLE_ADMIN'),(3,'3','ROLE_USER'),(4,'4','ROLE_USER'),(5,'1','ROLE_MASTERADMIN'),(6,'9','ROLE_CUSTOMER');

/*Table structure for table `site` */

DROP TABLE IF EXISTS `site`;

CREATE TABLE `site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updated_time` datetime DEFAULT NULL,
  `colony` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `listing_id` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `property_type` varchar(255) DEFAULT NULL,
  `sq_yd` varchar(255) DEFAULT NULL,
  `valid_date` datetime DEFAULT NULL,
  `village_id` int(11) DEFAULT NULL,
  `road_dimensions` varchar(255) DEFAULT NULL,
  `road_facing` varchar(255) DEFAULT NULL,
  `site_dimensions` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `site_facing` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhxo7db6dp40xx8leefnb8db8u` (`village_id`),
  CONSTRAINT `FKhxo7db6dp40xx8leefnb8db8u` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `site` */

insert  into `site`(`id`,`updated_time`,`colony`,`created_time`,`listing_id`,`price`,`property_type`,`sq_yd`,`valid_date`,`village_id`,`road_dimensions`,`road_facing`,`site_dimensions`,`status`,`site_facing`) values (1,'2018-10-31 17:03:12','Hanuman Temple','2018-10-31 17:03:12','12212','1','Commercial','2000',NULL,2,'1','2','200x200',1,'North'),(2,'2018-10-31 18:36:53','Hanuman Temple','2018-10-31 18:36:53','456313','2','Residential','2000',NULL,2,'2','2','200x200',1,'South'),(3,'2018-10-31 19:48:07','Hanuman Temple','2018-10-31 19:48:07','52525','3','Residential','2000',NULL,2,'1','1','200x200',1,'West'),(4,'2018-10-31 19:52:39','Hanuman Temple','2018-10-31 19:52:39','6868','4','Commercial','2000',NULL,2,'2','2','200x200',1,'South'),(5,'2018-10-31 20:08:26','Hanuman Temple','2018-10-31 20:08:26','8888','5','Residential','2000',NULL,1,'2','1','200x200',1,'West'),(6,'2018-10-31 20:10:37','Hanuman Temple','2018-10-31 20:10:37','6666','6','Commercial','2000',NULL,2,'1','2','200x200',1,'South'),(7,'2018-10-31 20:16:05','Hanuman Temple','2018-10-31 20:16:05','9999','7','Residential','2000',NULL,1,'1','1','200x200',1,'West'),(8,'2019-02-08 16:43:53','Hanuman Temple',NULL,'147231','8','Commercial','2000',NULL,2,'2','2','800X800',1,'South'),(9,'2018-10-31 20:20:58','Hanuman Temple','2018-10-31 20:20:58','8884','9','Commercial','2000',NULL,1,'1','1','200x200',1,'West'),(10,'2018-10-31 20:58:10','Hanuman Temple','2018-10-31 20:58:10','5555','10','Residential','2000',NULL,1,'2','1','200x200',1,'North'),(11,'2018-10-31 21:57:59','Hanuman Temple','2018-10-31 21:57:59','12126','11','Commercial','2000',NULL,1,'1','2','200x200',1,'West'),(12,'2018-10-31 22:00:07','Hanuman Temple','2018-10-31 22:00:07','2828','12','Residential','2000',NULL,2,'2','1','200x200',1,'West'),(13,'2018-10-31 22:02:13','Hanuman Temple','2018-10-31 22:02:13','14723145','13','Commercial','2000',NULL,1,'2','2','200x200',1,'North'),(14,'2018-10-31 22:25:08','Hanuman Temple','2018-10-31 22:25:08','147231','14','Residential','2000',NULL,1,'1','1','200x200',0,'West'),(15,'2018-11-03 11:06:27','Hanuman Temple','2018-11-03 11:06:27','786','15','Commercial','2000',NULL,1,'1','2','200x200',1,'West'),(16,'2018-12-01 14:15:57','MiddiCenter','2018-12-01 14:15:57','65665','16','Commercial','2000',NULL,1,'1','1','200x200',1,'North'),(17,'2018-12-01 14:24:38','Hanuman Temple','2018-12-01 14:24:38','8888','17','Commercial','1010',NULL,4,'2','2','300 X 300',0,'North'),(18,'2018-12-01 14:49:45','Benzcercle','2018-12-01 14:49:45','55555','18','Commercial','500',NULL,3,'1','1','666X555',1,'East'),(19,'2018-12-01 14:53:14','Benzcercle','2018-12-01 14:53:14','55555','19','Commercial','500',NULL,3,'1','1','666X555',1,'East'),(20,'2019-01-09 14:36:12','gudivada','2019-01-09 14:36:12','456123','20000','Commercial','1000',NULL,10,'1','1','500X500',1,'South'),(21,'2019-01-09 14:37:37','Hanuman Temple','2019-01-09 14:37:37','36544','50000','Residential','1010',NULL,8,'1','1','200x200',1,'North');

/*Table structure for table `submitproperty` */

DROP TABLE IF EXISTS `submitproperty`;

CREATE TABLE `submitproperty` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `additional_info` varchar(255) DEFAULT NULL,
  `buyer_rbuilder` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `expect_price` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `submitproperty` */

/*Table structure for table `user_intrested_sites` */

DROP TABLE IF EXISTS `user_intrested_sites`;

CREATE TABLE `user_intrested_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6klt7d3r2wk059rqh5cd1q0ur` (`site_id`),
  KEY `FK4i9ectibeajqk1jwbqpiyo3tm` (`user_id`),
  CONSTRAINT `FK4i9ectibeajqk1jwbqpiyo3tm` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK6klt7d3r2wk059rqh5cd1q0ur` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `user_intrested_sites` */

insert  into `user_intrested_sites`(`id`,`created_date`,`updated_date`,`site_id`,`user_id`,`status`) values (1,'2018-11-20 19:43:26','2018-11-20 19:43:26',1,1,1),(2,'2018-12-08 20:58:28','2018-12-08 20:58:28',1,2,1),(3,'2018-12-19 12:55:50','2018-12-19 12:55:50',7,2,1),(4,'2018-12-19 14:03:40','2018-12-19 14:03:40',13,2,1),(5,'2018-12-19 14:08:16','2018-12-19 14:08:16',5,2,1),(6,'2018-12-19 14:09:08','2018-12-19 14:09:08',10,2,1),(7,'2018-12-19 14:11:47','2018-12-19 14:11:47',2,2,1),(8,'2018-12-19 14:12:26','2018-12-19 14:12:26',1,2,1),(9,'2018-12-20 11:51:36','2018-12-20 11:51:36',10,2,1),(10,'2018-12-21 18:39:57','2018-12-21 18:39:57',5,1,1),(11,'2018-12-21 18:39:59','2018-12-21 18:39:59',5,1,1),(12,'2018-12-21 18:40:02','2018-12-21 18:40:02',9,1,1),(13,'2018-12-21 18:40:03','2018-12-21 18:40:03',9,1,1),(14,'2018-12-21 18:40:03','2018-12-21 18:40:03',9,1,1),(15,'2018-12-21 18:40:04','2018-12-21 18:40:04',10,1,1),(16,'2019-01-04 10:46:49','2019-01-04 10:46:49',9,2,1),(17,'2019-01-05 17:08:47','2019-01-05 17:08:47',11,2,1),(18,'2019-01-05 17:17:34','2019-01-05 17:17:34',15,2,1),(19,'2019-01-05 17:19:28','2019-01-05 17:19:28',16,2,1),(20,'2019-01-05 17:25:56','2019-01-05 17:25:56',3,2,1),(21,'2019-01-05 17:26:49','2019-01-05 17:26:49',8,2,1),(22,'2019-01-05 17:28:32','2019-01-05 17:28:32',3,2,1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updated_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `enabled` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`updated_time`,`created_time`,`email`,`first_name`,`last_name`,`mobile_number`,`user_name`,`designation`,`password`,`enabled`) values (1,'2018-07-05 14:51:27','2018-07-05 14:51:27','rjrv.143@gmail.com','raju','bandi','8555863691','admin','1','1234','1'),(2,'2018-07-05 14:51:27','2018-07-05 14:51:27','rjrv.143@gmail.com','prasad','rao','9494630624','prasad','3','1234','1'),(3,'2019-01-02 12:35:02','2019-01-02 12:35:02','rjrv.143@gmail.com','Purnima','Gopika','9059393937','GOPIKA','3','1234','1');

/*Table structure for table `villages` */

DROP TABLE IF EXISTS `villages`;

CREATE TABLE `villages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `v_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `villages` */

insert  into `villages`(`id`,`created_date`,`pin_code`,`updated_date`,`v_name`) values (1,'2019-02-07 18:24:47','522503','2019-02-07 18:24:47','mangalgiri'),(2,'2019-02-08 15:55:13','505405','2019-02-08 15:55:13','tgp12'),(3,'2019-02-08 16:14:12','505405','2019-02-08 16:14:12','Vijayawada'),(4,'2019-02-08 16:14:40','888888','2019-02-08 16:14:40','Guntur12'),(5,'2019-01-09 11:58:02','500025','2019-01-09 11:58:02','Tirupati'),(6,'2019-01-09 12:15:02','132123','2019-01-09 12:15:02','Visakhapatnam'),(7,'2019-01-09 12:30:07','132156','2019-01-09 12:30:07','Amaravati'),(8,'2019-01-09 12:37:29','456123','2019-01-09 12:37:29','Kaavali'),(9,'2019-01-09 12:40:38','500004','2019-01-09 12:40:38','Hyderabad'),(10,'2019-01-09 12:50:11','522307','2019-01-09 12:50:11','Gudivada'),(11,'2019-01-09 12:52:13','789456','2019-01-09 12:52:13','Bapatla');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;