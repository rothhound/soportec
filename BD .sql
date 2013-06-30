-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2013 a las 02:01:16
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `soportec`
--
CREATE DATABASE `soportec` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `soportec`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computers`
--

CREATE TABLE IF NOT EXISTS `computers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ram` varchar(255) DEFAULT NULL,
  `processor` varchar(255) DEFAULT NULL,
  `motherboard` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `mouse` varchar(255) DEFAULT NULL,
  `keyboard` varchar(255) DEFAULT NULL,
  `videocard` varchar(255) DEFAULT NULL,
  `laboratory_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `eap_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=105 ;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `code`, `name`, `eap_id`, `group_id`, `created_at`, `updated_at`) VALUES
(1, '201001', 'Algoritmica I', 1, 1, '2013-06-26 17:49:08', '2013-06-26 17:49:08'),
(2, '201008', 'Computación Informática', 1, 1, '2013-06-26 17:49:29', '2013-06-26 17:49:29'),
(3, '201210', 'Diseño de una Arquitectura Web', 1, 1, '2013-06-26 17:49:44', '2013-06-26 17:49:44'),
(4, '201203', 'Datawarehouse', 1, 1, '2013-06-26 17:50:22', '2013-06-26 17:50:22'),
(5, '2020903', 'Sistemas Inteligentes', 2, 1, '2013-06-26 17:50:49', '2013-06-26 17:50:49'),
(6, '201205', 'E-Bussiness', 1, 1, '2013-06-26 17:51:13', '2013-06-26 17:51:13'),
(7, '201209', 'Robotica', 1, 1, '2013-06-26 17:51:28', '2013-06-26 17:51:28'),
(8, '202001', 'Algoritmica II', 1, 1, '2013-06-26 17:51:48', '2013-06-26 17:51:48'),
(9, '202008', 'Estructura de Datos', 1, 1, '2013-06-26 17:52:02', '2013-06-26 17:52:02'),
(10, '203001', 'Algoritmica III', 1, 1, '2013-06-26 17:52:15', '2013-06-26 17:52:15'),
(11, '203006', 'Diseño Grafico', 1, 1, '2013-06-26 17:52:32', '2013-06-26 17:52:32'),
(12, '204001', 'Tecnicas de Modelamiento', 1, 1, '2013-06-26 17:55:57', '2013-06-26 17:55:57'),
(13, '204002', 'Computacion Grafica', 1, 1, '2013-06-26 17:56:19', '2013-06-26 17:56:19'),
(14, '204008', 'Circuitos Digitales', 1, 1, '2013-06-26 17:56:37', '2013-06-26 17:56:37'),
(15, '205001', 'Base de Datos', 1, 1, '2013-06-26 17:56:58', '2013-06-26 17:56:58'),
(16, '205008', 'Sistemas Digitales', 1, 1, '2013-06-26 17:57:24', '2013-06-26 17:57:24'),
(17, '206001', 'Sistemas Operativos', 1, 1, '2013-06-26 17:57:44', '2013-06-26 17:57:44'),
(18, '207007', 'Diseño de Interfaz de Usuario', 1, 1, '2013-06-26 17:58:11', '2013-06-26 17:58:11'),
(19, '206009', 'Transmision de Datos', 1, 1, '2013-06-26 17:58:37', '2013-06-26 17:58:37'),
(20, '206010', 'Arquitectura de Computadoras', 1, 1, '2013-06-26 17:59:04', '2013-06-26 17:59:04'),
(21, '206011', 'Taller de Proyectos I', 1, 1, '2013-06-26 17:59:19', '2013-06-26 17:59:19'),
(22, '207002', 'Redes de Computadoras', 1, 1, '2013-06-26 17:59:39', '2013-06-26 17:59:39'),
(23, '207003', 'Diseño de Sistemas', 1, 1, '2013-06-26 17:59:56', '2013-06-26 17:59:56'),
(24, '207008', 'Inteligencia Artificial', 1, 1, '2013-06-26 18:00:16', '2013-06-26 18:00:16'),
(25, '207009', 'Modelos y Simulacion', 1, 1, '2013-06-26 18:00:31', '2013-06-26 18:00:37'),
(26, '208002', 'Sistemas Distribuidos', 1, 1, '2013-06-26 18:00:54', '2013-06-26 18:00:54'),
(27, '208007', 'Ingenieria de Software', 1, 1, '2013-06-26 18:01:13', '2013-06-26 18:01:13'),
(28, '208009', 'Taller de Proyectos II', 1, 1, '2013-06-26 18:01:28', '2013-06-26 18:01:28'),
(29, '208010', 'Ingenieria de Control', 1, 1, '2013-06-26 18:01:42', '2013-06-26 18:01:42'),
(30, '2020102', 'Introduccion a la computacion e Ingenieria de Software', 2, 1, '2013-06-26 18:02:06', '2013-06-26 18:02:06'),
(31, '2020201', 'Programacion I', 2, 1, '2013-06-26 18:02:25', '2013-06-26 18:02:25'),
(32, '2020301', 'Programacion II', 2, 1, '2013-06-26 18:02:42', '2013-06-26 18:02:42'),
(33, '2020401', 'Analisis y Diseño de Algoritmos', 2, 1, '2013-06-26 18:03:05', '2013-06-26 18:03:05'),
(34, '2020402', 'Estructura de Datos I', 2, 1, '2013-06-26 18:03:20', '2013-06-26 18:03:20'),
(35, '2020404', 'Sistemas Digitales', 2, 1, '2013-06-26 18:03:36', '2013-06-26 18:03:36'),
(36, '2020501', 'Base de Datos I', 2, 1, '2013-06-26 18:03:54', '2013-06-26 18:03:54'),
(37, '2020502', 'Estructura de Datos II', 2, 1, '2013-06-26 18:04:16', '2013-06-26 18:04:16'),
(38, '2020503', 'Arquitectura de Computadoras', 2, 1, '2013-06-26 18:04:35', '2013-06-26 18:04:35'),
(39, '2020504', 'Modelamiento y Requisitos de Software', 2, 1, '2013-06-26 18:05:02', '2013-06-26 18:05:02'),
(40, '2020601', 'Base de Datos II', 2, 1, '2013-06-26 18:05:15', '2013-06-26 18:05:15'),
(41, '2020602', 'Diseño de Software', 2, 1, '2013-06-26 18:05:36', '2013-06-26 18:05:36'),
(42, '2020604', 'Sistemas Operativos', 2, 1, '2013-06-26 18:05:57', '2013-06-26 18:05:57'),
(43, '2020701', 'Arquitectura de Software', 2, 1, '2013-06-26 18:06:15', '2013-06-26 18:06:15'),
(44, '2020702', 'Taller de Construccion de Software', 2, 1, '2013-06-26 18:06:32', '2013-06-26 18:06:32'),
(45, '2020704', 'Redes y Transmision de Datos', 2, 1, '2013-06-26 18:06:51', '2013-06-26 18:06:51'),
(46, '2020705', 'Gerencia de Proyectos de Software', 2, 1, '2013-06-26 18:07:59', '2013-06-26 18:07:59'),
(47, '2020798', 'E-Bussiness', 2, 1, '2013-06-26 18:08:17', '2013-06-26 18:08:17'),
(48, '2020799', 'Datawarehouse', 2, 1, '2013-06-26 18:08:32', '2013-06-26 18:08:32'),
(49, '2020803', 'Calidad de Software', 2, 1, '2013-06-26 18:08:48', '2013-06-26 18:08:48'),
(50, '2020804', 'Seguridad de Redes', 2, 1, '2013-06-26 18:09:03', '2013-06-26 18:09:03'),
(51, '2020901', 'Gestion de Configuracion y Mantenimiento', 2, 1, '2013-06-26 18:09:23', '2013-06-26 18:09:23'),
(52, '201001', 'Algoritmica I', 1, 2, '2013-06-26 17:49:08', '2013-06-26 17:49:08'),
(53, '201001', 'Algoritmica I', 1, 3, '2013-06-26 17:49:08', '2013-06-26 17:49:08'),
(54, '201001', 'Algoritmica I', 1, 4, '2013-06-26 17:49:08', '2013-06-26 17:49:08'),
(55, '201008', 'Computación Informática', 1, 2, '2013-06-26 17:49:29', '2013-06-26 17:49:29'),
(56, '201008', 'Computación Informática', 1, 3, '2013-06-26 17:49:29', '2013-06-26 17:49:29'),
(57, '201008', 'Computación Informática', 1, 4, '2013-06-26 17:49:29', '2013-06-26 17:49:29'),
(58, '201203', 'Datawarehouse', 1, 2, '2013-06-26 17:50:22', '2013-06-26 17:50:22'),
(59, '202001', 'Algoritmica II', 1, 2, '2013-06-26 17:51:48', '2013-06-26 17:51:48'),
(60, '202001', 'Algoritmica II', 1, 3, '2013-06-26 17:51:48', '2013-06-26 17:51:48'),
(61, '202008', 'Estructura de Datos', 1, 2, '2013-06-26 17:52:02', '2013-06-26 17:52:02'),
(62, '202008', 'Estructura de Datos', 1, 3, '2013-06-26 17:52:02', '2013-06-26 17:52:02'),
(63, '203001', 'Algoritmica III', 1, 2, '2013-06-26 17:52:15', '2013-06-26 17:52:15'),
(64, '203001', 'Algoritmica III', 1, 3, '2013-06-26 17:52:15', '2013-06-26 17:52:15'),
(65, '203006', 'Diseño Grafico', 1, 2, '2013-06-26 17:52:32', '2013-06-26 17:52:32'),
(66, '203006', 'Diseño Grafico', 1, 3, '2013-06-26 17:52:32', '2013-06-26 17:52:32'),
(67, '204001', 'Tecnicas de Modelamiento', 1, 2, '2013-06-26 17:55:57', '2013-06-26 17:55:57'),
(68, '204001', 'Tecnicas de Modelamiento', 1, 3, '2013-06-26 17:55:57', '2013-06-26 17:55:57'),
(69, '204002', 'Computacion Grafica', 1, 2, '2013-06-26 17:56:19', '2013-06-26 17:56:19'),
(70, '204008', 'Circuitos Digitales', 1, 2, '2013-06-26 17:56:37', '2013-06-26 17:56:37'),
(71, '204008', 'Circuitos Digitales', 1, 3, '2013-06-26 17:56:37', '2013-06-26 17:56:37'),
(72, '205001', 'Base de Datos', 1, 2, '2013-06-26 17:56:58', '2013-06-26 17:56:58'),
(73, '205001', 'Base de Datos', 1, 3, '2013-06-26 17:56:58', '2013-06-26 17:56:58'),
(74, '205008', 'Sistemas Digitales', 1, 2, '2013-06-26 17:57:24', '2013-06-26 17:57:24'),
(75, '205008', 'Sistemas Digitales', 1, 3, '2013-06-26 17:57:24', '2013-06-26 17:57:24'),
(76, '206001', 'Sistemas Operativos', 1, 2, '2013-06-26 17:57:44', '2013-06-26 17:57:44'),
(77, '206001', 'Sistemas Operativos', 1, 3, '2013-06-26 17:57:44', '2013-06-26 17:57:44'),
(78, '206001', 'Sistemas Operativos', 1, 4, '2013-06-26 17:57:44', '2013-06-26 17:57:44'),
(79, '207007', 'Diseño de Interfaz de Usuario', 1, 2, '2013-06-26 17:58:11', '2013-06-26 17:58:11'),
(80, '207007', 'Diseño de Interfaz de Usuario', 1, 3, '2013-06-26 17:58:11', '2013-06-26 17:58:11'),
(81, '207007', 'Diseño de Interfaz de Usuario', 1, 4, '2013-06-26 17:58:11', '2013-06-26 17:58:11'),
(82, '206009', 'Transmision de Datos', 1, 2, '2013-06-26 17:58:37', '2013-06-26 17:58:37'),
(83, '206009', 'Transmision de Datos', 1, 3, '2013-06-26 17:58:37', '2013-06-26 17:58:37'),
(84, '206010', 'Arquitectura de Computadoras', 1, 2, '2013-06-26 17:59:04', '2013-06-26 17:59:04'),
(85, '206010', 'Arquitectura de Computadoras', 1, 3, '2013-06-26 17:59:04', '2013-06-26 17:59:04'),
(86, '206011', 'Taller de Proyectos I', 1, 2, '2013-06-26 17:59:19', '2013-06-26 17:59:19'),
(87, '206011', 'Taller de Proyectos I', 1, 3, '2013-06-26 17:59:19', '2013-06-26 17:59:19'),
(88, '207002', 'Redes de Computadoras', 1, 2, '2013-06-26 17:59:39', '2013-06-26 17:59:39'),
(89, '207003', 'Diseño de Sistemas', 1, 2, '2013-06-26 17:59:56', '2013-06-26 17:59:56'),
(90, '207003', 'Diseño de Sistemas', 1, 3, '2013-06-26 17:59:56', '2013-06-26 17:59:56'),
(91, '207008', 'Inteligencia Artificial', 1, 2, '2013-06-26 18:00:16', '2013-06-26 18:00:16'),
(92, '207008', 'Inteligencia Artificial', 1, 3, '2013-06-26 18:00:16', '2013-06-26 18:00:16'),
(93, '207009', 'Modelos y Simulacion', 1, 2, '2013-06-26 18:00:31', '2013-06-26 18:00:37'),
(94, '208002', 'Sistemas Distribuidos', 1, 2, '2013-06-26 18:00:54', '2013-06-26 18:00:54'),
(95, '208007', 'Ingenieria de Software', 1, 2, '2013-06-26 18:01:13', '2013-06-26 18:01:13'),
(96, '208007', 'Ingenieria de Software', 1, 3, '2013-06-26 18:01:13', '2013-06-26 18:01:13'),
(97, '208009', 'Taller de Proyectos II', 1, 2, '2013-06-26 18:01:28', '2013-06-26 18:01:28'),
(98, '208009', 'Taller de Proyectos II', 1, 3, '2013-06-26 18:01:28', '2013-06-26 18:01:28'),
(99, '208010', 'Ingenieria de Control', 1, 2, '2013-06-26 18:01:42', '2013-06-26 18:01:42'),
(100, '2020201', 'Programacion I', 2, 2, '2013-06-26 18:02:25', '2013-06-26 18:02:25'),
(101, '2020301', 'Programacion II', 2, 2, '2013-06-26 18:02:42', '2013-06-26 18:02:42'),
(102, '2020504', 'Modelamiento y Requisitos de Software', 2, 2, '2013-06-26 18:05:02', '2013-06-26 18:05:02'),
(103, '2020705', 'Gerencia de Proyectos de Software', 2, 2, '2013-06-26 18:07:59', '2013-06-26 18:07:59'),
(104, '205006', 'Metodos Numericos', 1, 3, '2013-06-27 04:29:09', '2013-06-27 04:29:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses_professors`
--

CREATE TABLE IF NOT EXISTS `courses_professors` (
  `course_id` int(11) DEFAULT NULL,
  `professor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `courses_professors`
--

INSERT INTO `courses_professors` (`course_id`, `professor_id`) VALUES
(30, 8),
(59, 11),
(75, 36),
(52, 21),
(82, 5),
(5, 39),
(60, 29),
(50, 22),
(78, 25),
(104, 6),
(36, 38),
(76, 14),
(77, 34),
(53, 40),
(17, 41),
(88, 42),
(19, 31),
(13, 16),
(80, 43);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `days`
--

CREATE TABLE IF NOT EXISTS `days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `days`
--

INSERT INTO `days` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Lunes', '2013-06-26 18:28:23', '2013-06-26 18:28:23'),
(2, 'Martes', '2013-06-26 18:28:37', '2013-06-26 18:28:37'),
(3, 'Miercoles', '2013-06-26 18:28:44', '2013-06-26 18:28:44'),
(4, 'Jueves', '2013-06-26 18:28:50', '2013-06-26 18:28:50'),
(5, 'Viernes', '2013-06-26 18:28:57', '2013-06-26 18:28:57'),
(6, 'Sabado', '2013-06-26 18:29:05', '2013-06-26 18:29:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eaps`
--

CREATE TABLE IF NOT EXISTS `eaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `eaps`
--

INSERT INTO `eaps` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ingenieria de Sistemas', '2013-06-26 17:46:55', '2013-06-26 17:46:55'),
(2, 'Ingenieria de Software', '2013-06-26 17:47:08', '2013-06-26 17:47:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'G1', '2013-06-26 23:46:08', '2013-06-26 23:46:08'),
(2, 'G2', '2013-06-26 23:46:08', '2013-06-26 23:46:08'),
(3, 'G3', '2013-06-26 23:46:08', '2013-06-26 23:46:08'),
(4, 'G4', '2013-06-26 23:46:08', '2013-06-26 23:46:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratories`
--

CREATE TABLE IF NOT EXISTS `laboratories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `numComputers` int(11) DEFAULT NULL,
  `airConditioning` int(11) DEFAULT NULL,
  `projector` int(11) DEFAULT NULL,
  `sound` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `laboratories`
--

INSERT INTO `laboratories` (`id`, `number`, `capacity`, `floor`, `numComputers`, `airConditioning`, `projector`, `sound`, `created_at`, `updated_at`) VALUES
(1, 1, 40, 3, 20, 1, 1, 1, '2013-06-26 17:43:15', '2013-06-26 17:43:15'),
(2, 2, 40, 3, 20, 1, 1, 1, '2013-06-26 17:43:37', '2013-06-26 17:43:37'),
(3, 3, 40, 3, 20, 1, 1, 1, '2013-06-26 17:43:53', '2013-06-26 17:43:53'),
(4, 4, 30, 3, 17, 0, 1, 1, '2013-06-26 17:44:14', '2013-06-26 17:44:14'),
(5, 5, 40, 3, 20, 0, 1, 1, '2013-06-26 17:44:57', '2013-06-26 17:44:57'),
(6, 6, 40, 3, 20, 0, 0, 1, '2013-06-26 17:45:15', '2013-06-26 17:45:15'),
(7, 7, 40, 3, 20, 1, 1, 0, '2013-06-26 17:45:36', '2013-06-26 17:45:36'),
(8, 8, 40, 1, 20, 0, 1, 1, '2013-06-26 17:45:52', '2013-06-26 17:45:52'),
(9, 9, 40, 2, 20, 0, 1, 1, '2013-06-26 17:46:05', '2013-06-26 17:46:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratories_softwares`
--

CREATE TABLE IF NOT EXISTS `laboratories_softwares` (
  `laboratory_id` int(11) DEFAULT NULL,
  `software_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `professors`
--

CREATE TABLE IF NOT EXISTS `professors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Volcado de datos para la tabla `professors`
--

INSERT INTO `professors` (`id`, `code`, `name`, `lastname`, `created_at`, `updated_at`) VALUES
(1, '0A1756', 'Albert', 'Azabache Peña', '2013-06-26 18:09:57', '2013-06-26 18:09:57'),
(2, '018686', 'Augusto', 'Cortez Vasquez', '2013-06-26 18:10:08', '2013-06-26 18:10:08'),
(3, '09831E', 'Cesar', 'Alcantara Loayza', '2013-06-26 18:10:19', '2013-06-26 18:10:19'),
(4, '098329', 'Cesar', 'Luza Montero', '2013-06-26 18:10:29', '2013-06-26 18:10:29'),
(5, '0A1236', 'Cesar', 'Molina Neyra', '2013-06-26 18:10:41', '2013-06-26 18:10:41'),
(6, '055867', 'Daniel', 'Quinto Pazce', '2013-06-26 18:10:50', '2013-06-26 18:10:50'),
(7, '083925', 'Dario', 'Utrilla Salazar', '2013-06-26 18:10:59', '2013-06-26 18:10:59'),
(8, '0A0716', 'Fanny', 'Sobero Rodriguez', '2013-06-26 18:11:12', '2013-06-26 18:11:12'),
(9, '099589', 'Felix', 'Fermin Perez', '2013-06-26 18:11:24', '2013-06-26 18:11:24'),
(10, '088013', 'Ruben', 'Gil Calvo', '2013-06-26 18:11:32', '2013-06-26 18:11:32'),
(11, '089575', 'Gilberto', 'Salina Azaña', '2013-06-26 18:11:46', '2013-06-26 18:11:46'),
(12, '0A1982', 'Gustavo', 'Arredondo Castillo', '2013-06-26 18:11:59', '2013-06-26 18:11:59'),
(13, '0A1874', 'Hugo', 'Cordero Sanchez', '2013-06-26 18:12:13', '2013-06-26 18:12:13'),
(14, '010162', 'Javier', 'Cabrera Diaz', '2013-06-26 18:12:23', '2013-06-26 18:12:23'),
(15, '09571E', 'Jhon', 'Trujillo Trejo', '2013-06-26 18:12:37', '2013-06-26 18:12:37'),
(16, '097543', 'Jhonny', 'Avendaño Quiroz', '2013-06-26 18:12:49', '2013-06-26 18:12:55'),
(17, '095729', 'Jorge', 'Chavez Soto', '2013-06-26 18:13:06', '2013-06-26 18:13:06'),
(18, '0A1235', 'Jose', 'Galindo Huayllani', '2013-06-26 18:13:19', '2013-06-26 18:13:19'),
(19, '038228', 'Juan', 'Gonzales Suarez', '2013-06-26 18:13:38', '2013-06-26 18:13:38'),
(20, ' 	0A1875', 'Lenis', 'Wong Portillo', '2013-06-26 18:13:58', '2013-06-26 18:13:58'),
(21, '0A0419', 'Luis', 'Guerra Grados', '2013-06-26 18:14:14', '2013-06-26 18:14:14'),
(22, '0A0397', 'Luis', 'Roig del Alcazar', '2013-06-26 18:14:27', '2013-06-26 18:14:27'),
(23, '0A1232', 'Marco', 'Coral Ygnacio', '2013-06-26 18:14:43', '2013-06-26 18:14:43'),
(24, ' 	059013', 'Marcos', 'Rivas Peña', '2013-06-26 18:14:53', '2013-06-26 18:14:53'),
(25, '0A0182', 'Maria', 'Ruiz Rivera', '2013-06-26 18:15:06', '2013-06-26 18:15:06'),
(26, ' 	096237', 'Carlos', 'Ruiz De la Cruz Melo', '2013-06-26 18:15:22', '2013-06-26 18:15:22'),
(27, '', 'Michel', 'Lazaro', '2013-06-26 18:15:33', '2013-06-26 18:15:33'),
(28, '0A1876', 'Sumiko', 'Murakami De la Cruz', '2013-06-26 18:15:47', '2013-06-26 18:15:47'),
(29, '095745', 'Nehil', 'Muñoz Casildo', '2013-06-26 18:15:56', '2013-06-26 18:15:56'),
(30, '088005', 'Nora', 'La Serna Palomino', '2013-06-26 18:16:05', '2013-06-26 18:16:05'),
(31, '095699', 'Raul', 'Armas Calderon', '2013-06-26 18:16:13', '2013-06-26 18:16:13'),
(32, '066931', 'Rolando', 'Solis Narro', '2013-06-26 18:16:24', '2013-06-26 18:16:24'),
(33, '08954E', 'Ulises', 'Roman Concha', '2013-06-26 18:16:37', '2013-06-26 18:16:37'),
(34, '095702', 'Victor', 'Bustamante Olivera', '2013-06-26 18:16:49', '2013-06-26 18:16:49'),
(35, '085774', 'Virginia', 'Vera Pomalaza', '2013-06-26 18:17:02', '2013-06-26 18:17:02'),
(36, '017779', 'Walter', 'Contreras Flores', '2013-06-26 18:17:15', '2013-06-26 18:17:15'),
(37, '0A1981', 'Winston', 'Ugaz Cachay', '2013-06-26 18:17:30', '2013-06-26 18:17:30'),
(38, '09756A', 'Zoraida', 'Mamani Rodriguez', '2013-06-26 18:17:45', '2013-06-26 18:17:45'),
(39, '0A1871', 'Carlos', 'Chavez Herrera', '2013-06-27 04:50:15', '2013-06-27 04:50:15'),
(40, '04676E', 'Lazaro', 'Mota Alva', '2013-06-27 04:59:13', '2013-06-27 04:59:13'),
(41, '075825', 'Carlos', 'Yañez Duran', '2013-06-27 05:01:00', '2013-06-27 05:01:00'),
(42, '0A1234', 'Nilo', 'Carrasco Ore', '2013-06-27 05:02:36', '2013-06-27 05:02:36'),
(43, '09795E', 'Jorge', 'Diaz Muñante', '2013-06-27 05:12:04', '2013-06-27 05:12:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2013-06-28 04:07:49', '2013-06-28 04:07:49'),
(2, 'Secretaria', '2013-06-28 04:07:49', '2013-06-28 04:07:49'),
(3, 'Bolsista', '2013-06-28 04:07:49', '2013-06-28 04:07:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules`
--

CREATE TABLE IF NOT EXISTS `schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  `laboratory_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `day_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `schedules`
--

INSERT INTO `schedules` (`id`, `start`, `end`, `laboratory_id`, `course_id`, `day_id`, `created_at`, `updated_at`) VALUES
(1, '08:00:00', '10:00:00', 1, 30, 1, '2013-06-26 20:00:55', '2013-06-26 20:00:55'),
(2, '12:00:00', '14:00:00', 1, 59, 1, '2013-06-26 20:03:01', '2013-06-26 20:03:12'),
(3, '14:00:00', '16:00:00', 1, 75, 1, '2013-06-26 20:03:28', '2013-06-26 20:03:28'),
(4, '16:00:00', '18:00:00', 1, 52, 1, '2013-06-26 20:03:43', '2013-06-26 20:03:43'),
(5, '20:00:00', '22:00:00', 1, 5, 1, '2013-06-26 20:04:16', '2013-06-26 20:04:16'),
(6, '18:00:00', '20:00:00', 1, 82, 1, '2013-06-26 20:04:28', '2013-06-26 20:04:36'),
(7, '10:00:00', '14:00:00', 1, 60, 2, '2013-06-26 20:17:28', '2013-06-26 20:17:28'),
(8, '17:00:00', '19:00:00', 1, 50, 2, '2013-06-27 05:31:43', '2013-06-27 05:31:43'),
(9, '20:00:00', '22:00:00', 1, 78, 2, '2013-06-27 05:31:43', '2013-06-27 05:31:43'),
(10, '08:00:00', '10:00:00', 1, 104, 3, '2013-06-27 05:31:43', '2013-06-27 05:31:43'),
(11, '10:00:00', '13:00:00', 1, 36, 3, '2013-06-27 05:31:43', '2013-06-27 05:31:43'),
(12, '16:00:00', '18:00:00', 1, 76, 3, '2013-06-27 05:31:43', '2013-06-27 05:31:43'),
(13, '18:00:00', '20:00:00', 1, 77, 3, '2013-06-27 05:31:43', '2013-06-27 05:31:43'),
(14, '12:00:00', '14:00:00', 1, 53, 4, '2013-06-27 05:31:43', '2013-06-27 05:31:43'),
(15, '14:00:00', '18:00:00', 1, 17, 4, '2013-06-27 05:31:43', '2013-06-27 05:31:43'),
(16, '18:00:00', '20:00:00', 1, 88, 4, '2013-06-27 05:31:43', '2013-06-27 05:31:43'),
(17, '20:00:00', '22:00:00', 1, 19, 4, '2013-06-27 05:31:43', '2013-06-27 05:31:43'),
(18, '08:00:00', '13:00:00', 1, 13, 5, '2013-06-27 05:31:43', '2013-06-27 05:31:43'),
(19, '14:00:00', '18:00:00', 1, 80, 5, '2013-06-27 05:31:43', '2013-06-27 05:31:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20130624052311'),
('20130624052636'),
('20130624052713'),
('20130624052742'),
('20130624052856'),
('20130624053010'),
('20130624053053'),
('20130624053117'),
('20130624053433'),
('20130624153034'),
('20130624153058'),
('20130624153128'),
('20130624153150'),
('20130624153331'),
('20130624153430'),
('20130629232725');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `softwares`
--

CREATE TABLE IF NOT EXISTS `softwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `laboratory_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `code`, `username`, `name`, `email`, `encrypted_password`, `role_id`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(3, '10200054', 'andxxi', 'andre', 'andxxi@gmail.com', '$2a$10$OxTRLEViACNM5JX5yfilvOrFZLaPyZOtv9SrUUKX4np6z2ecrRlce', 3, NULL, NULL, NULL, 9, '2013-06-29 22:34:37', '2013-06-29 07:55:12', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1', '2013-06-28 23:48:29', '2013-06-29 22:34:37');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
