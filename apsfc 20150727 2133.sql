-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.21-log



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema apsfc1
--

CREATE DATABASE IF NOT EXISTS apsfc;
USE apsfc;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `authority` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`name`,`pwd`,`authority`) VALUES 
 (1,'sa','123','0'),
 (2,'θ','123','0');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `typeid` int(4) unsigned DEFAULT NULL,
  `burden` varchar(50) DEFAULT NULL,
  `brief` varchar(500) DEFAULT NULL,
  `price` float unsigned DEFAULT NULL,
  `sums` int(4) unsigned DEFAULT '0',
  `price1` float unsigned DEFAULT NULL,
  `sums1` int(4) unsigned DEFAULT '0',
  `imgpath` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`,`name`,`typeid`,`burden`,`brief`,`price`,`sums`,`price1`,`sums1`,`imgpath`) VALUES 
 (12,'η²θΈθ',10,'η±³η²γδΊθ±θ','ζζ ',26,0,23,0,'img/m_fenzhengrou.gif'),
 (14,'η³ιζιͺ¨',2,'ζιͺ¨γη³γι','ζζ ',26,0,24,4,'img/m_tangcupaigu.gif'),
 (15,'εΈθθι₯­',1,'εΈθγη±³ι₯­','ζζ ',15,0,12,4,'img/m_xianroucaifan.gif'),
 (17,'δΊι¦ι©΄θ',1,'ι©΄θ','ζζ ',25,0,21,1,'img/m_wuxianglvrou.gif'),
 (18,'ι»ηζη?',1,'ι»ηγζη?','ζζ ',8,0,6,1,'img/m_huanggualapi.gif'),
 (19,'ζ°΄η?ι±Ό',11,'ι±ΌοΌθΎ£ζ€','ζζ ',38,0,32,1,'img/m_shuizhuyu.gif');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;


--
-- Definition of table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `times` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice`
--

/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` (`id`,`name`,`content`,`times`) VALUES 
 (6,'ζ°ε’θεγη³ιζιͺ¨γ','η³ιζιͺ¨θΆηΊ§ε₯½εγεζι£ηε°ζει½ζ ζ³ζη»ιΈηηε£ε³οΌεεζιͺ¨οΌεη¨η³ιζ±ζη±³ι₯­οΌδ»ε€©ηι₯­ιθ§ιΏγ','2015-02-28 13:49:40'),
 (7,'ζ¬εΊηΉθ²γεΈθθι₯­γ','θ?°εΎε°ζΆεζ―ζ―ε¦ε¦εεΈθθι₯­οΌζι½θ¦εδΈδΊε€§η’οΌι£δΈͺι¦ει£δΈͺε₯½εεοΌηηδΈη₯ιζζ ·ζ₯ε½’ε?ΉγεθΏηζεοΌε€§ε?Άι½ζηοΌε΅ε΅!11','2015-02-28 13:53:39');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;


--
-- Definition of table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `userid` int(4) unsigned DEFAULT NULL,
  `menuid` int(4) unsigned DEFAULT NULL,
  `menusum` int(4) unsigned DEFAULT NULL,
  `times` varchar(20) DEFAULT NULL,
  `delivery` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`,`userid`,`menuid`,`menusum`,`times`,`delivery`) VALUES 
 (16,2,12,2,'2015-07-26 13:16:28',1),
 (17,1,14,1,'2015-07-26 13:23:30',1),
 (19,4,15,2,'2015-07-26 23:26:20',1),
 (23,4,14,1,'2015-07-27 00:35:09',1),
 (24,4,17,1,'2015-07-27 00:35:09',1),
 (25,2,15,1,'2015-07-27 20:14:23',1),
 (27,2,18,1,'2015-07-27 20:31:56',1),
 (28,2,19,1,'2015-07-27 20:31:56',0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


--
-- Definition of table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` (`id`,`name`) VALUES 
 (1,'εζθ'),
 (2,'ηθ'),
 (6,'ηι₯­'),
 (10,'θΈθ'),
 (11,'ε·θ');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(4) unsigned DEFAULT NULL,
  `card` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `type` int(4) unsigned DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`pwd`,`realname`,`sex`,`age`,`card`,`address`,`phone`,`email`,`code`,`type`) VALUES 
 (2,'222','222','2221','ε₯³',241,'211111111111111111','ε€©ζ΄₯εΈ','13988888888','123@163.com','110044',0),
 (3,'sunday','123','εΌ δΈ','η·',26,'4222222222222222','εδΊ¬εΈζ΅·ζ·εΊ','13901001111','13901001111@139.com','101000',0),
 (4,'1','1','1','η·',1,'1','1','1','1','1',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
