/*
SQLyog Community Edition- MySQL GUI v8.02 
MySQL - 5.5.27 : Database - realestate
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`realestate` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `realestate`;

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
  PRIMARY KEY (`id`),
  KEY `FKhxo7db6dp40xx8leefnb8db8u` (`village_id`),
  CONSTRAINT `FKhxo7db6dp40xx8leefnb8db8u` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `site` */

insert  into `site`(`id`,`updated_time`,`colony`,`created_time`,`listing_id`,`price`,`property_type`,`sq_yd`,`valid_date`,`village_id`) values (1,'2018-10-31 17:03:12','Hanuman Temple','2018-10-31 17:03:12','12212','1002001000','East Facing','2000',NULL,2),(2,'2018-10-31 18:36:53','Hanuman Temple','2018-10-31 18:36:53','456313','1002001000','West Facing','2000',NULL,2),(3,'2018-10-31 19:48:07','Hanuman Temple','2018-10-31 19:48:07','52525','1002001000','West Facing','2000',NULL,2),(4,'2018-10-31 19:52:39','Hanuman Temple','2018-10-31 19:52:39','6868','1002001000','North Facing','2000',NULL,2),(5,'2018-10-31 20:08:26','Hanuman Temple','2018-10-31 20:08:26','8888','1002001000','NorthEast Facing','2000',NULL,1),(6,'2018-10-31 20:10:37','Hanuman Temple','2018-10-31 20:10:37','6666','1002001000','NorthEast Facing','2000',NULL,2),(7,'2018-10-31 20:16:05','Hanuman Temple','2018-10-31 20:16:05','9999','1002001000','NorthEast Facing','2000',NULL,1),(8,'2018-10-31 20:18:34','Hanuman Temple','2018-10-31 20:18:34','147231','1002001000','NorthEast Facing','2000',NULL,2),(9,'2018-10-31 20:20:58','Hanuman Temple','2018-10-31 20:20:58','8884','1002001000','NorthEast Facing','2000',NULL,1),(10,'2018-10-31 20:58:10','Hanuman Temple','2018-10-31 20:58:10','5555','1002001000','NorthEast Facing','2000',NULL,1),(11,'2018-10-31 21:57:59','Hanuman Temple','2018-10-31 21:57:59','12126','1002001000','NorthEast Facing','2000',NULL,1),(12,'2018-10-31 22:00:07','Hanuman Temple','2018-10-31 22:00:07','2828','1002001000','NorthEast Facing','2000',NULL,2),(13,'2018-10-31 22:02:13','Hanuman Temple','2018-10-31 22:02:13','14723145','1002001000','NorthEast Facing','2000',NULL,1),(14,'2018-10-31 22:25:08','Hanuman Temple','2018-10-31 22:25:08','147231','1002001000','NorthEast Facing','2000',NULL,1),(15,'2018-11-03 11:06:27','Hanuman Temple','2018-11-03 11:06:27','786','1002001000','NorthEast Facing','2000',NULL,1);

/*Table structure for table `user_intrested_sites` */

DROP TABLE IF EXISTS `user_intrested_sites`;

CREATE TABLE `user_intrested_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6klt7d3r2wk059rqh5cd1q0ur` (`site_id`),
  KEY `FK4i9ectibeajqk1jwbqpiyo3tm` (`user_id`),
  CONSTRAINT `FK4i9ectibeajqk1jwbqpiyo3tm` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK6klt7d3r2wk059rqh5cd1q0ur` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_intrested_sites` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`updated_time`,`created_time`,`email`,`first_name`,`last_name`,`mobile_number`,`user_name`,`designation`,`password`,`enabled`) values (1,'2018-07-05 14:51:27','2018-07-05 14:51:27','rjrv.143@gmail.com','raju','bandi','8555863691','admin','1','admin','1'),(2,'2018-07-05 14:51:27','2018-07-05 14:51:27','rjrv.143@gmail.com','bandi','123','8555863691','user','3','user','1');

/*Table structure for table `villages` */

DROP TABLE IF EXISTS `villages`;

CREATE TABLE `villages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `v_name` varchar(255) DEFAULT NULL,
  `listing_id` varchar(255) DEFAULT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `villages` */

insert  into `villages`(`id`,`created_date`,`pin_code`,`updated_date`,`v_name`,`listing_id`,`site_id`,`user_id`) values (1,'2018-10-27 20:58:11','522503','2018-10-27 20:58:11','mangalgiri',NULL,NULL,0),(2,'2018-10-27 21:49:32','505405','2018-10-27 21:49:32','tgp',NULL,NULL,0),(3,'2018-10-31 22:20:22','505405','2018-10-31 22:20:22','Vijayawada',NULL,NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
