--CREATE INITAL DB Innovative Web
-- version: 0.1
-- date: 07/12/2009

CREATE DATABASE IF NOT EXISTS innovative_web_db;
USE innovative_web_db;

GRANT all ON innovative_web_db.* TO 'innovative_web'@'localhost' IDENTIFIED BY 'java1234';

DROP TABLE IF EXISTS `web_user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `web_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `version` bigint(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `medical_centre` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `interests` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `speciality` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;