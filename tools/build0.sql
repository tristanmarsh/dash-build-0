-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2015 at 05:51 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `buildzerosix`
--

-- --------------------------------------------------------

--
-- Table structure for table `maintenances`
--

CREATE TABLE IF NOT EXISTS `maintenances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `maintenances`
--

INSERT INTO `maintenances` (`id`, `title`, `description`, `created`, `modified`, `user_id`) VALUES
(9, 'Broken Tap', 'Please fix my broken tap I can''t get water!', '2015-04-13 14:40:10', '2015-04-13 14:52:35', 5),
(10, 'Broken Fridge', 'My food is getting rotten', '2015-04-13 14:52:26', '2015-04-13 14:52:26', 5),
(11, 'Broken TV', 'I can''t watch me soap dramas', '2015-04-13 14:53:32', '2015-04-13 14:53:50', 6),
(12, 'Broken Window', 'Got broken into and robbed ', '2015-04-13 15:18:31', '2015-04-13 15:18:31', 6),
(13, 'Broken Airconditioner', 'Aircon does not turn on', '2015-04-14 03:50:50', '2015-04-14 03:50:50', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`) VALUES
(1, 'admin', '$2y$10$ytpEvi6EvojZvBDYa18lDezDToFfQ9e64lD.gIo0r30z9uscH4xXy', 'admin', NULL, NULL),
(5, 'tenant1', '$2y$10$36QA3Xx3il4R9MmIrIn59e54Ii.TmrCAJKqezyb.u9na8wx2/0DHS', 'author', '2015-04-13 14:38:23', '2015-04-13 14:38:23'),
(6, 'tenant2', '$2y$10$EaSEaQ3sNeSnnvZ0yvtl2Oxh3Vbpwjh29W4bF/.5PD1OHXlNxS2Ga', 'author', '2015-04-13 14:52:52', '2015-04-13 14:52:52'),
(7, 'tenant3', '$2y$10$UeVYZ1eJPQ/hxxoEDJeMj.iXrRuT7mLTPNKI9QqxTg1YnSVrT8Gwq', 'author', '2015-04-13 15:03:48', '2015-04-13 15:03:48'),
(8, 'test$#', '$2y$10$T/5XhbcP1NDaXQdps5qaQOe1pF0HKaoY7kTgdCOL0q6FvsqoylkBi', 'author', '2015-04-13 15:26:58', '2015-04-13 15:26:58'),
(9, 'dasfasdfasdfsad', '$2y$10$dhDXDrUuLqGgPwdUZ329kugptnnNvOm7mv9dd0aw6F7UYJ72G4kim', 'author', '2015-04-13 15:37:29', '2015-04-13 15:37:29'),
(10, '12345678', '$2y$10$ODlg8YqFA09N5zFaARNEXO6BeTOG7a9i.o84j4pScuuy5Svs90gVG', 'author', '2015-04-14 03:48:15', '2015-04-15 07:48:23'),
(11, 'tenant10', '$2y$10$fYYcpgGYQCeJVTHeP7zh5eC3.26OXUiE6Ihv1sFJ9d4xd57/PCYSm', 'author', '2015-04-14 09:12:01', '2015-04-14 09:12:01'),
(22, 'tenant4', '$2y$10$nxhYe/k.RxWKGRcpKtDx1eg0N7d883UpEixXW2Yy/gWcL0aTEaSGS', 'author', '2015-04-15 07:25:27', '2015-04-15 07:25:27');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
