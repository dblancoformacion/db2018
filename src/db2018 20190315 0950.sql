﻿--
-- Script was generated by Devart dbForge Studio for MySQL, Version 8.0.40.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 15/03/2019 9:50:53
-- Server version: 5.5.5-10.1.19-MariaDB
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE db2018;

--
-- Drop table `datos`
--
DROP TABLE IF EXISTS datos;

--
-- Drop table `usuarios`
--
DROP TABLE IF EXISTS usuarios;

--
-- Set default database
--
USE db2018;

--
-- Create table `usuarios`
--
CREATE TABLE usuarios (
  id_usuario int(11) NOT NULL AUTO_INCREMENT,
  ip varchar(15) DEFAULT NULL,
  nombre varchar(31) DEFAULT NULL,
  email varchar(127) DEFAULT NULL,
  PRIMARY KEY (id_usuario)
)
ENGINE = INNODB,
AUTO_INCREMENT = 8,
AVG_ROW_LENGTH = 2340,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create table `datos`
--
CREATE TABLE datos (
  id_dato int(11) NOT NULL AUTO_INCREMENT,
  datos datetime DEFAULT NULL,
  ip varchar(15) DEFAULT NULL,
  PRIMARY KEY (id_dato)
)
ENGINE = INNODB,
AUTO_INCREMENT = 122,
AVG_ROW_LENGTH = 138,
CHARACTER SET latin1,
COLLATE latin1_swedish_ci;

--
-- Create index `ip` on table `datos`
--
ALTER TABLE datos
ADD INDEX ip (ip);

-- 
-- Dumping data for table usuarios
--
INSERT INTO usuarios VALUES
(1, '172.31.128.235', 'David', 'dblanco@alpeformacion.es'),
(2, '172.31.128.189', 'Imanol', 'ima@gmail.com'),
(3, '172.31.128.166', 'Luis', 'luisaceres25@hotmail.com'),
(4, '172.31.128.157', 'Kevin', 'kevin_u2004@hotmail.com'),
(5, '172.31.128.156', 'Sergio', ''),
(6, '172.31.128.159', 'Pablo', 'pinsolares@gmail.com'),
(7, '172.31.128.110', 'Lisany', 'lisanymoleromachado@gmail.com');

-- 
-- Dumping data for table datos
--
INSERT INTO datos VALUES
(2, '2019-03-13 10:42:02', NULL),
(3, '2019-03-13 10:51:57', NULL),
(4, '2019-03-13 10:52:28', NULL),
(5, '2019-03-13 10:52:44', NULL),
(6, '2019-03-13 10:53:21', NULL),
(7, '2019-03-13 10:53:44', NULL),
(8, '2019-03-13 10:53:51', NULL),
(9, '2019-03-13 10:55:17', NULL),
(10, '2019-03-13 10:55:24', NULL),
(11, '2019-03-13 10:56:18', NULL),
(12, '2019-03-13 10:58:33', '172.31.128.235'),
(13, '2019-03-13 10:58:53', '172.31.128.235'),
(14, '2019-03-13 10:59:04', '172.31.128.235'),
(15, '2019-03-13 10:59:08', '172.31.128.235'),
(16, '2019-03-13 10:59:09', '172.31.128.235'),
(17, '2019-03-13 10:59:12', '172.31.128.235'),
(18, '2019-03-13 10:59:24', '172.31.128.235'),
(19, '2019-03-13 10:59:27', '172.31.128.235'),
(20, '2019-03-13 10:59:28', '172.31.128.235'),
(21, '2019-03-13 10:59:33', '172.31.128.235'),
(22, '2019-03-13 11:00:22', '172.31.128.159'),
(23, '2019-03-13 11:00:25', '172.31.128.189'),
(24, '2019-03-13 11:00:27', '172.31.128.189'),
(25, '2019-03-13 11:00:29', '172.31.128.159'),
(26, '2019-03-13 11:00:34', '172.31.128.157'),
(27, '2019-03-13 11:00:37', '172.31.128.159'),
(28, '2019-03-13 11:00:52', '172.31.128.189'),
(29, '2019-03-13 11:01:00', '172.31.128.189'),
(30, '2019-03-13 11:01:29', '172.31.128.166'),
(31, '2019-03-13 11:01:30', '172.31.128.159'),
(32, '2019-03-13 11:01:38', '172.31.128.159'),
(33, '2019-03-13 11:01:56', '172.31.128.159'),
(34, '2019-03-13 11:02:22', '172.31.128.159'),
(35, '2019-03-13 11:05:31', '172.31.128.166'),
(36, '2019-03-13 11:05:32', '172.31.128.235'),
(37, '2019-03-13 11:05:32', '172.31.128.157'),
(38, '2019-03-13 11:05:35', '172.31.128.156'),
(39, '2019-03-13 11:05:43', '172.31.128.235'),
(40, '2019-03-13 11:05:44', '172.31.128.166'),
(41, '2019-03-13 11:06:16', '172.31.128.156'),
(42, '2019-03-13 11:06:46', '172.31.128.110'),
(43, '2019-03-13 11:07:01', '172.31.128.235'),
(44, '2019-03-13 11:07:17', '172.31.128.156'),
(45, '2019-03-13 11:21:02', '172.31.128.189'),
(46, '2019-03-13 11:21:12', '172.31.128.189'),
(47, '2019-03-13 11:21:14', '172.31.128.235'),
(48, '2019-03-13 11:21:27', '172.31.128.110'),
(49, '2019-03-13 11:22:35', '172.31.128.159'),
(50, '2019-03-13 11:23:34', '172.31.128.166'),
(51, '2019-03-13 11:23:56', '172.31.128.110'),
(52, '2019-03-13 11:24:03', '172.31.128.235'),
(53, '2019-03-13 11:24:08', '172.31.128.159'),
(54, '2019-03-13 11:25:02', '172.31.128.166'),
(55, '2019-03-13 11:41:30', '172.31.128.189'),
(56, '2019-03-13 11:43:18', '172.31.128.156'),
(57, '2019-03-13 11:49:24', '172.31.128.166'),
(58, '2019-03-13 12:06:19', '172.31.128.159'),
(59, '2019-03-13 12:39:30', '172.31.128.235'),
(60, '2019-03-13 12:39:44', '172.31.128.110'),
(61, '2019-03-13 12:41:24', '172.31.128.235'),
(62, '2019-03-13 12:41:40', '172.31.128.235'),
(63, '2019-03-13 12:45:02', '172.31.128.166'),
(64, '2019-03-13 12:47:23', '172.31.128.235'),
(65, '2019-03-13 12:47:34', '172.31.128.235'),
(66, '2019-03-13 12:51:28', '172.31.128.235'),
(67, '2019-03-13 12:52:15', '172.31.128.235'),
(68, '2019-03-13 12:55:02', '172.31.128.235'),
(69, '2019-03-13 12:55:08', '172.31.128.235'),
(70, '2019-03-13 12:56:18', '172.31.128.157'),
(71, '2019-03-13 13:00:07', '172.31.128.235'),
(72, '2019-03-13 13:00:20', '172.31.128.110'),
(73, '2019-03-13 13:00:27', '172.31.128.110'),
(74, '2019-03-13 13:11:32', '172.31.128.235'),
(75, '2019-03-13 13:11:51', '172.31.128.166'),
(76, '2019-03-13 13:12:01', '172.31.128.235'),
(77, '2019-03-13 13:12:04', '172.31.128.166'),
(78, '2019-03-13 13:12:10', '172.31.128.166'),
(79, '2019-03-13 13:12:10', '172.31.128.166'),
(80, '2019-03-13 13:12:12', '172.31.128.166'),
(81, '2019-03-13 13:12:16', '172.31.128.235'),
(82, '2019-03-13 13:12:18', '172.31.128.166'),
(83, '2019-03-13 13:12:25', '172.31.128.110'),
(84, '2019-03-13 13:12:36', '172.31.128.110'),
(85, '2019-03-13 13:12:41', '172.31.128.157'),
(86, '2019-03-13 13:13:22', '172.31.128.166'),
(87, '2019-03-13 13:13:23', '172.31.128.157'),
(88, '2019-03-13 13:13:47', '172.31.128.166'),
(89, '2019-03-13 13:14:16', '172.31.128.189'),
(90, '2019-03-13 13:15:23', '172.31.128.157'),
(91, '2019-03-13 13:15:35', '172.31.128.157'),
(92, '2019-03-13 13:15:40', '172.31.128.189'),
(93, '2019-03-13 13:16:54', '172.31.128.189'),
(94, '2019-03-13 13:16:57', '172.31.128.189'),
(95, '2019-03-13 13:17:20', '172.31.128.159'),
(96, '2019-03-13 13:17:35', '172.31.128.159'),
(97, '2019-03-13 13:18:45', '172.31.128.235'),
(98, '2019-03-13 13:18:48', '172.31.128.235'),
(99, '2019-03-13 13:19:03', '172.31.128.189'),
(100, '2019-03-13 13:19:06', '172.31.128.189'),
(101, '2019-03-13 13:19:17', '172.31.128.166'),
(102, '2019-03-13 13:19:25', '172.31.128.166'),
(103, '2019-03-13 13:19:54', '172.31.128.156'),
(104, '2019-03-13 13:19:59', '172.31.128.156'),
(105, '2019-03-13 13:20:02', '172.31.128.156'),
(106, '2019-03-13 13:20:23', '172.31.128.110'),
(107, '2019-03-13 13:29:22', '172.31.128.189'),
(108, '2019-03-13 13:29:25', '172.31.128.110'),
(109, '2019-03-13 13:29:29', '172.31.128.235'),
(110, '2019-03-13 13:30:27', '172.31.128.156'),
(111, '2019-03-13 13:34:26', '172.31.128.110'),
(112, '2019-03-13 13:34:32', '172.31.128.235'),
(113, '2019-03-13 13:34:41', '172.31.128.166'),
(114, '2019-03-13 13:37:57', '172.31.128.156'),
(115, '2019-03-13 13:38:27', '172.31.128.159'),
(116, '2019-03-13 13:38:33', '172.31.128.110'),
(117, '2019-03-13 13:38:36', '172.31.128.189'),
(118, '2019-03-13 13:38:43', '172.31.128.166'),
(119, '2019-03-13 13:38:48', '172.31.128.157'),
(120, '2019-03-13 13:38:55', '172.31.128.166'),
(121, '2019-03-13 13:42:38', '172.31.128.166');

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;