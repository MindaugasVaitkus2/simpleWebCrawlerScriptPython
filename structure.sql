-- MySQL dump 10.13  Distrib 5.6.19, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: reporting
-- ------------------------------------------------------
-- Server version	5.6.19-0ubuntu0.14.04.1

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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract` (
  `ext_vertragnr` int(11) NOT NULL,
  `techauftrag_id` int(11) NOT NULL,
  `bz_id` int(11) NOT NULL,
  `tariff_id` int(11) NOT NULL,
  PRIMARY KEY (`techauftrag_id`),
  UNIQUE KEY `unique_techauftrag_id` (`techauftrag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `ext_kdnr` int(11) DEFAULT NULL,
  `ext_vertragnr` int(11) DEFAULT NULL,
  UNIQUE KEY `unique_ext_kdnr` (`ext_kdnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `techauftrag_id` int(11) DEFAULT NULL,
  `wsc_id` varchar(255) DEFAULT NULL,
  `wsb_id` varchar(255) DEFAULT NULL,
  `dsc_id` varchar(255) DEFAULT NULL,
  `page_count` int(11) DEFAULT NULL,
  `theme` varchar(255) NOT NULL,
  `domain_name` varchar(255) DEFAULT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `is_currently_wsc` tinyint(1) DEFAULT NULL,
  `has_wsc_intro` tinyint(1) NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `is_currently_wsb` tinyint(1) DEFAULT NULL,
  `error` varchar(255) NOT NULL,
  `timestamp` DATE DEFAULT NULL,
  `is_currently_dsc` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `techauftrag_id_index` (`techauftrag_id`),
  KEY `wsb_id_index` (`wsb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41007912 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tariff`
--

DROP TABLE IF EXISTS `tariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff` (
  `tariff_id` int(11) NOT NULL,
  `tariff_name` varchar(255) DEFAULT NULL,
  `market` varchar(10) DEFAULT NULL,
  `is_access` tinyint(1) NOT NULL,
  `has_wsc` tinyint(1) NOT NULL,
  `has_wsb` tinyint(1) NOT NULL,
  `is_windows` tinyint(1) NOT NULL,
  `tariff_family` varchar(255) NOT NULL,
  `has_mws` tinyint(1) NOT NULL,
  PRIMARY KEY (`tariff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `testdata`
--

DROP TABLE IF EXISTS `testdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testdata` (
  `techauftrag_id` int(11) DEFAULT NULL,
  `wsc_id` varchar(255) DEFAULT NULL,
  `wsb_id` varchar(255) DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `is_currently_wsc` tinyint(1) DEFAULT NULL,
  `is_currently_wsb` tinyint(1) DEFAULT NULL,
  `status_code` int(11) DEFAULT NULL,
  `error` varchar(255) NOT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`wsb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41007912 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-14 16:33:58
