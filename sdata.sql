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

/*Data for the table `currency_account` */

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (25);

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`created`,`currency_amount`,`currency_type`,`processed`,`source_user_id`,`state`,`target_user_id`,`status`) values (1,'2019-09-29 13:27:18',54667.00,'USD ','2019-09-29 13:27:37',19,'Completed',24,'\0'),(10,'2019-09-29 13:27:18',67880.00,'USD ','2019-09-29 13:27:37',20,'Completed',23,''),(11,'2019-09-29 16:28:01',23614.00,'USD ','2019-09-29 16:28:01',21,'Pending',22,''),(12,'2019-09-29 16:30:52',98564.23,'USD ','2019-09-29 16:30:52',22,'Completed',21,''),(13,'2019-09-29 16:34:43',12311.55,'EUR','2019-09-29 16:34:43',23,'Pending',20,''),(14,'2019-09-29 16:36:28',22313.00,'EUR','2019-09-29 16:36:28',24,'Completed',19,''),(15,'2019-09-29 16:39:02',42315.00,'EUR','2019-09-29 16:39:02',19,'Pending',24,''),(16,'2019-09-29 16:39:13',23816.23,'EUR','2019-09-29 16:39:13',20,'Completed',23,''),(17,'2019-09-29 17:10:05',1231111.00,'EUR','2019-09-29 17:10:05',21,'Pending',22,'');

/*Data for the table `user` */

insert  into `user`(`id`,`bitcoin_wallet_balance`,`bitcoin_wallet_id`,`description`,`email`,`ethereum_wallet_balance`,`ethereum_wallet_id`,`max_amount`,`name`) values (19,989990.00,'bit1001','description','john@gmail.com',900000.00,'eth1001',NULL,'John'),(20,600000.00,'bit1002','sam desc','sam@gmail.com',7770000.00,'eth1002',NULL,'Sam'),(21,650000.00,'bit1003','andy desc','andy@gmail.com',450000.00,'eth1003',NULL,'Andy'),(22,220000.00,'bit1004','amy desc','amy@gmail.com',880000.00,'eth1004',NULL,'Amy'),(23,890000.00,'bit1005','joe desc','joe@gmail.com',8700000.00,'eth1005',NULL,'Joe'),(24,1090384.00,'bit1006','sandy Desc','sandy@gmail.com',34162634.00,'eth1006',NULL,'Sandy');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
