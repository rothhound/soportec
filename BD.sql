-- MySQL dump 10.10
--
-- Host: localhost    Database: soportec
-- ------------------------------------------------------
-- Server version	5.0.16-nt

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--


/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
LOCK TABLES `categories` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

--
-- Table structure for table `computers`
--

DROP TABLE IF EXISTS `computers`;
CREATE TABLE `computers` (
  `id` int(11) NOT NULL auto_increment,
  `ram` varchar(255) default NULL,
  `processor` varchar(255) default NULL,
  `motherboard` varchar(255) default NULL,
  `display` varchar(255) default NULL,
  `mouse` varchar(255) default NULL,
  `keyboard` varchar(255) default NULL,
  `videocard` varchar(255) default NULL,
  `laboratory_id` int(11) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `computers`
--


/*!40000 ALTER TABLE `computers` DISABLE KEYS */;
LOCK TABLES `computers` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `computers` ENABLE KEYS */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `eap_id` int(11) default NULL,
  `group_id` int(11) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--


/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
LOCK TABLES `courses` WRITE;
INSERT INTO `courses` VALUES (1,'201001','Algoritmica I',1,NULL,'2013-06-26 17:49:08','2013-06-26 17:49:08'),(2,'201008','Computación Informática',1,NULL,'2013-06-26 17:49:29','2013-06-26 17:49:29'),(3,'201201','Diseño Web',1,NULL,'2013-06-26 17:49:44','2013-06-26 17:49:44'),(4,'201203','Datawarehouse',1,NULL,'2013-06-26 17:50:22','2013-06-26 17:50:22'),(5,'201204','Sistemas Inteligentes',1,NULL,'2013-06-26 17:50:49','2013-06-26 17:50:49'),(6,'201205','E-Bussiness',1,NULL,'2013-06-26 17:51:13','2013-06-26 17:51:13'),(7,'201209','Robotica',1,NULL,'2013-06-26 17:51:28','2013-06-26 17:51:28'),(8,'202001','Algoritmica II',1,NULL,'2013-06-26 17:51:48','2013-06-26 17:51:48'),(9,'202008','Estructura de Datos',1,NULL,'2013-06-26 17:52:02','2013-06-26 17:52:02'),(10,'203001','Algoritmica IIi',1,NULL,'2013-06-26 17:52:15','2013-06-26 17:52:15'),(11,'203006','Diseño Grafico',1,NULL,'2013-06-26 17:52:32','2013-06-26 17:52:32'),(12,'204001','Tecnicas de Modelamiento',1,NULL,'2013-06-26 17:55:57','2013-06-26 17:55:57'),(13,'204002','Computacion Grafica',1,NULL,'2013-06-26 17:56:19','2013-06-26 17:56:19'),(14,'204008','Circuitos Digitales',1,NULL,'2013-06-26 17:56:37','2013-06-26 17:56:37'),(15,'205001','Base de Datos',1,NULL,'2013-06-26 17:56:58','2013-06-26 17:56:58'),(16,'205008','Sistemas Digitales',1,NULL,'2013-06-26 17:57:24','2013-06-26 17:57:24'),(17,'206001','Sistemas Operativos',1,NULL,'2013-06-26 17:57:44','2013-06-26 17:57:44'),(18,'206007','Diseño de Interfaces de Usuario',1,NULL,'2013-06-26 17:58:11','2013-06-26 17:58:11'),(19,'206009','Transmision de Datos',1,NULL,'2013-06-26 17:58:37','2013-06-26 17:58:37'),(20,'206010','Arquitectura de Computadoras',1,NULL,'2013-06-26 17:59:04','2013-06-26 17:59:04'),(21,'206011','Taller de Proyectos I',1,NULL,'2013-06-26 17:59:19','2013-06-26 17:59:19'),(22,'207002','Redes de Computadoras',1,NULL,'2013-06-26 17:59:39','2013-06-26 17:59:39'),(23,'207003','Diseño de Sistemas',1,NULL,'2013-06-26 17:59:56','2013-06-26 17:59:56'),(24,'207008','Inteligencia Artificial',1,NULL,'2013-06-26 18:00:16','2013-06-26 18:00:16'),(25,'207009','Modelos y Simulacion',1,NULL,'2013-06-26 18:00:31','2013-06-26 18:00:37'),(26,'208002','Sistemas Distribuidos',1,NULL,'2013-06-26 18:00:54','2013-06-26 18:00:54'),(27,'208007','Ingenieria de Software',1,NULL,'2013-06-26 18:01:13','2013-06-26 18:01:13'),(28,'208009','Taller de Proyectos II',1,NULL,'2013-06-26 18:01:28','2013-06-26 18:01:28'),(29,'208010','Ingenieria de Control',1,NULL,'2013-06-26 18:01:42','2013-06-26 18:01:42'),(30,'2020102','Introduccion a la computacion e Ingenieria de Software',2,NULL,'2013-06-26 18:02:06','2013-06-26 18:02:06'),(31,'2020201','Programacion I',2,NULL,'2013-06-26 18:02:25','2013-06-26 18:02:25'),(32,'2020301','Programacion II',2,NULL,'2013-06-26 18:02:42','2013-06-26 18:02:42'),(33,'2020401','Analisis y Diseño de Algoritmos',2,NULL,'2013-06-26 18:03:05','2013-06-26 18:03:05'),(34,'2020402','Estructura de Datos I',2,NULL,'2013-06-26 18:03:20','2013-06-26 18:03:20'),(35,'2020404','Sistemas Digitales',2,NULL,'2013-06-26 18:03:36','2013-06-26 18:03:36'),(36,'2020501','Base de Datos I',2,NULL,'2013-06-26 18:03:54','2013-06-26 18:03:54'),(37,'2020502','Estructura de Datos II',2,NULL,'2013-06-26 18:04:16','2013-06-26 18:04:16'),(38,'2020503','Arquitectura de Computadoras',2,NULL,'2013-06-26 18:04:35','2013-06-26 18:04:35'),(39,'2020504','Modelamiento y Requisitos de Software',2,NULL,'2013-06-26 18:05:02','2013-06-26 18:05:02'),(40,'2020601','Base de Datos II',2,NULL,'2013-06-26 18:05:15','2013-06-26 18:05:15'),(41,'2020602','Diseño de Software',2,NULL,'2013-06-26 18:05:36','2013-06-26 18:05:36'),(42,'2020604','Sistemas Operativos',2,NULL,'2013-06-26 18:05:57','2013-06-26 18:05:57'),(43,'2020701','Arquitectura de Software',2,NULL,'2013-06-26 18:06:15','2013-06-26 18:06:15'),(44,'2020702','Taller de Construccion de Software',2,NULL,'2013-06-26 18:06:32','2013-06-26 18:06:32'),(45,'2020704','Redes y Transmision de Datos',2,NULL,'2013-06-26 18:06:51','2013-06-26 18:06:51'),(46,'2020705','Gerencia de Proyectos de Software',2,NULL,'2013-06-26 18:07:59','2013-06-26 18:07:59'),(47,'2020798','E-Bussiness',2,NULL,'2013-06-26 18:08:17','2013-06-26 18:08:17'),(48,'2020799','Datawarehouse',2,NULL,'2013-06-26 18:08:32','2013-06-26 18:08:32'),(49,'2020803','Calidad de Software',2,NULL,'2013-06-26 18:08:48','2013-06-26 18:08:48'),(50,'2020804','Seguridad de Redes',2,NULL,'2013-06-26 18:09:03','2013-06-26 18:09:03'),(51,'2020901','Gestion de Configuracion y Mantenimiento',2,NULL,'2013-06-26 18:09:23','2013-06-26 18:09:23');
UNLOCK TABLES;
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;

--
-- Table structure for table `courses_professors`
--

DROP TABLE IF EXISTS `courses_professors`;
CREATE TABLE `courses_professors` (
  `course_id` int(11) default NULL,
  `professor_id` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_professors`
--


/*!40000 ALTER TABLE `courses_professors` DISABLE KEYS */;
LOCK TABLES `courses_professors` WRITE;
INSERT INTO `courses_professors` VALUES (30,8),(8,11),(16,36),(19,5);
UNLOCK TABLES;
/*!40000 ALTER TABLE `courses_professors` ENABLE KEYS */;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
CREATE TABLE `days` (
  `id` int(11) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `days`
--


/*!40000 ALTER TABLE `days` DISABLE KEYS */;
LOCK TABLES `days` WRITE;
INSERT INTO `days` VALUES (1,'Lunes','2013-06-26 18:28:23','2013-06-26 18:28:23'),(2,'Martes','2013-06-26 18:28:37','2013-06-26 18:28:37'),(3,'Miercoles','2013-06-26 18:28:44','2013-06-26 18:28:44'),(4,'Jueves','2013-06-26 18:28:50','2013-06-26 18:28:50'),(5,'Viernes','2013-06-26 18:28:57','2013-06-26 18:28:57'),(6,'Sabado','2013-06-26 18:29:05','2013-06-26 18:29:05');
UNLOCK TABLES;
/*!40000 ALTER TABLE `days` ENABLE KEYS */;

--
-- Table structure for table `eaps`
--

DROP TABLE IF EXISTS `eaps`;
CREATE TABLE `eaps` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eaps`
--


/*!40000 ALTER TABLE `eaps` DISABLE KEYS */;
LOCK TABLES `eaps` WRITE;
INSERT INTO `eaps` VALUES (1,'Ingenieria de Sistemas','2013-06-26 17:46:55','2013-06-26 17:46:55'),(2,'Ingenieria de Software','2013-06-26 17:47:08','2013-06-26 17:47:08');
UNLOCK TABLES;
/*!40000 ALTER TABLE `eaps` ENABLE KEYS */;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--


/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
LOCK TABLES `groups` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

--
-- Table structure for table `laboratories`
--

DROP TABLE IF EXISTS `laboratories`;
CREATE TABLE `laboratories` (
  `id` int(11) NOT NULL auto_increment,
  `number` int(11) default NULL,
  `capacity` int(11) default NULL,
  `floor` int(11) default NULL,
  `numComputers` int(11) default NULL,
  `airConditioning` int(11) default NULL,
  `projector` int(11) default NULL,
  `sound` int(11) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laboratories`
--


/*!40000 ALTER TABLE `laboratories` DISABLE KEYS */;
LOCK TABLES `laboratories` WRITE;
INSERT INTO `laboratories` VALUES (1,1,40,3,20,1,1,1,'2013-06-26 17:43:15','2013-06-26 17:43:15'),(2,2,40,3,20,1,1,1,'2013-06-26 17:43:37','2013-06-26 17:43:37'),(3,3,40,3,20,1,1,1,'2013-06-26 17:43:53','2013-06-26 17:43:53'),(4,4,30,3,17,0,1,1,'2013-06-26 17:44:14','2013-06-26 17:44:14'),(5,5,40,3,20,0,1,1,'2013-06-26 17:44:57','2013-06-26 17:44:57'),(6,6,40,3,20,0,0,1,'2013-06-26 17:45:15','2013-06-26 17:45:15'),(7,7,40,3,20,1,1,0,'2013-06-26 17:45:36','2013-06-26 17:45:36'),(8,8,40,1,20,0,1,1,'2013-06-26 17:45:52','2013-06-26 17:45:52'),(9,9,40,2,20,0,1,1,'2013-06-26 17:46:05','2013-06-26 17:46:05');
UNLOCK TABLES;
/*!40000 ALTER TABLE `laboratories` ENABLE KEYS */;

--
-- Table structure for table `laboratories_softwares`
--

DROP TABLE IF EXISTS `laboratories_softwares`;
CREATE TABLE `laboratories_softwares` (
  `laboratory_id` int(11) default NULL,
  `software_id` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laboratories_softwares`
--


/*!40000 ALTER TABLE `laboratories_softwares` DISABLE KEYS */;
LOCK TABLES `laboratories_softwares` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `laboratories_softwares` ENABLE KEYS */;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
CREATE TABLE `professors` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `lastname` varchar(255) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professors`
--


/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
LOCK TABLES `professors` WRITE;
INSERT INTO `professors` VALUES (1,'','Albert','Azabache','2013-06-26 18:09:57','2013-06-26 18:09:57'),(2,'','Augusto','Cortez','2013-06-26 18:10:08','2013-06-26 18:10:08'),(3,'','Cesar','Alcantara Loayza','2013-06-26 18:10:19','2013-06-26 18:10:19'),(4,'','Cesar','Luza','2013-06-26 18:10:29','2013-06-26 18:10:29'),(5,'','Cesar','Molina Neyra','2013-06-26 18:10:41','2013-06-26 18:10:41'),(6,'','Daniel','Quinto Paz','2013-06-26 18:10:50','2013-06-26 18:10:50'),(7,'','David','Utrilla','2013-06-26 18:10:59','2013-06-26 18:10:59'),(8,'','Fanny','Sobero Rodriguez','2013-06-26 18:11:12','2013-06-26 18:11:12'),(9,'','Feliz','Fermin Perez','2013-06-26 18:11:24','2013-06-26 18:11:24'),(10,'','Gil','Calvo','2013-06-26 18:11:32','2013-06-26 18:11:32'),(11,'','Gilberto','Salina Azaña','2013-06-26 18:11:46','2013-06-26 18:11:46'),(12,'','Gustavo','Arredondo Castillo','2013-06-26 18:11:59','2013-06-26 18:11:59'),(13,'','Hugo','Cordero Sanchez','2013-06-26 18:12:13','2013-06-26 18:12:13'),(14,'','Javier','Cabrera','2013-06-26 18:12:23','2013-06-26 18:12:23'),(15,'','Jhon','Trujillo Trejo','2013-06-26 18:12:37','2013-06-26 18:12:37'),(16,'','Jhonny','Avendaño','2013-06-26 18:12:49','2013-06-26 18:12:55'),(17,'','Jorge','Chavez Soto','2013-06-26 18:13:06','2013-06-26 18:13:06'),(18,'','Jose','Galindo','2013-06-26 18:13:19','2013-06-26 18:13:19'),(19,'','Juan','Gonzales Suarez','2013-06-26 18:13:38','2013-06-26 18:13:38'),(20,'','Lenis','Wong Portillo','2013-06-26 18:13:58','2013-06-26 18:13:58'),(21,'','Luis','Guerra Grados','2013-06-26 18:14:14','2013-06-26 18:14:14'),(22,'','Luis','Roig Alcazar','2013-06-26 18:14:27','2013-06-26 18:14:27'),(23,'','Marcos','Coral Ygnacio','2013-06-26 18:14:43','2013-06-26 18:14:43'),(24,'','Marcos','Rivas','2013-06-26 18:14:53','2013-06-26 18:14:53'),(25,'','Marialena','Ruiz','2013-06-26 18:15:06','2013-06-26 18:15:06'),(26,'','Melo','Ruiz De la Cruz','2013-06-26 18:15:22','2013-06-26 18:15:22'),(27,'','Michel','Lazaro','2013-06-26 18:15:33','2013-06-26 18:15:33'),(28,'','Mirakami','De la Cruz','2013-06-26 18:15:47','2013-06-26 18:15:47'),(29,'','Nehil','Muñoz','2013-06-26 18:15:56','2013-06-26 18:15:56'),(30,'','Nora','La Serna','2013-06-26 18:16:05','2013-06-26 18:16:05'),(31,'','Raul','Armas','2013-06-26 18:16:13','2013-06-26 18:16:13'),(32,'','Rolando','Solis Maguiña','2013-06-26 18:16:24','2013-06-26 18:16:24'),(33,'','Ulises','Roman','2013-06-26 18:16:37','2013-06-26 18:16:37'),(34,'','Victor','Bustamante Olivera','2013-06-26 18:16:49','2013-06-26 18:16:49'),(35,'','Virginia','Vera','2013-06-26 18:17:02','2013-06-26 18:17:02'),(36,'','Walter','Contreras Flores','2013-06-26 18:17:15','2013-06-26 18:17:15'),(37,'','Winston','Ugaz Cachay','2013-06-26 18:17:30','2013-06-26 18:17:30'),(38,'','Zoraida','Mamani Rodriguez','2013-06-26 18:17:45','2013-06-26 18:17:45');
UNLOCK TABLES;
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--


/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
LOCK TABLES `roles` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
CREATE TABLE `schedules` (
  `id` int(11) NOT NULL auto_increment,
  `star` time default NULL,
  `end` time default NULL,
  `laboratory_id` int(11) default NULL,
  `course_id` int(11) default NULL,
  `day_id` int(11) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedules`
--


/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
LOCK TABLES `schedules` WRITE;
INSERT INTO `schedules` VALUES (1,'08:00:00','10:00:00',1,30,1,'2013-06-26 20:00:55','2013-06-26 20:00:55'),(2,'12:00:00','14:00:00',1,8,1,'2013-06-26 20:03:01','2013-06-26 20:03:12'),(3,'14:00:00','16:00:00',1,16,1,'2013-06-26 20:03:28','2013-06-26 20:03:28'),(4,'16:00:00','18:00:00',1,NULL,1,'2013-06-26 20:03:43','2013-06-26 20:03:43'),(5,'20:00:00','22:00:00',1,5,1,'2013-06-26 20:04:16','2013-06-26 20:04:16'),(6,'18:00:00','20:00:00',1,19,1,'2013-06-26 20:04:28','2013-06-26 20:04:36'),(7,'10:00:00','12:00:00',NULL,NULL,NULL,'2013-06-26 20:17:28','2013-06-26 20:17:28');
UNLOCK TABLES;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--


/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
LOCK TABLES `schema_migrations` WRITE;
INSERT INTO `schema_migrations` VALUES ('20130624052311'),('20130624052636'),('20130624052713'),('20130624052742'),('20130624052856'),('20130624053010'),('20130624053053'),('20130624053117'),('20130624053433'),('20130624153034'),('20130624153058'),('20130624153128'),('20130624153150'),('20130624153331'),('20130624153430');
UNLOCK TABLES;
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;

--
-- Table structure for table `softwares`
--

DROP TABLE IF EXISTS `softwares`;
CREATE TABLE `softwares` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `version` varchar(255) default NULL,
  `category_id` int(11) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `softwares`
--


/*!40000 ALTER TABLE `softwares` DISABLE KEYS */;
LOCK TABLES `softwares` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `softwares` ENABLE KEYS */;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
  `id` int(11) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `laboratory_id` int(11) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `states`
--


/*!40000 ALTER TABLE `states` DISABLE KEYS */;
LOCK TABLES `states` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `email` varchar(255) NOT NULL default '',
  `encrypted_password` varchar(255) NOT NULL default '',
  `role_id` int(11) default NULL,
  `reset_password_token` varchar(255) default NULL,
  `reset_password_sent_at` datetime default NULL,
  `remember_created_at` datetime default NULL,
  `sign_in_count` int(11) default '0',
  `current_sign_in_at` datetime default NULL,
  `last_sign_in_at` datetime default NULL,
  `current_sign_in_ip` varchar(255) default NULL,
  `last_sign_in_ip` varchar(255) default NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--


/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

