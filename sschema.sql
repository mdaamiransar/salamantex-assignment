/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.13-log : Database - salamantex
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`salamantex` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `salamantex`;

/*Table structure for table `currency_account` */

DROP TABLE IF EXISTS `currency_account`;

CREATE TABLE `currency_account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `currency_amount` decimal(19,2) DEFAULT NULL,
  `currency_type` varchar(255) DEFAULT NULL,
  `processed` datetime DEFAULT NULL,
  `source_user_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `target_user_id` int(11) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bitcoin_wallet_balance` decimal(19,2) DEFAULT NULL,
  `bitcoin_wallet_id` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `ethereum_wallet_balance` decimal(19,2) DEFAULT NULL,
  `ethereum_wallet_id` varchar(255) DEFAULT NULL,
  `max_amount` varchar(255) DEFAULT NULL,
  `name` varchar(152) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
