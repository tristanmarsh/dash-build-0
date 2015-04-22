-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2015 at 01:05 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `buildzeroseven`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `maintenances`
--

INSERT INTO `maintenances` (`id`, `title`, `description`, `created`, `modified`, `user_id`) VALUES
(9, 'Broken Tap', 'Please fix my broken tap I can''t get water!', '2015-04-13 14:40:10', '2015-04-13 14:52:35', 5),
(10, 'Broken Fridge', 'My food is getting rotten', '2015-04-13 14:52:26', '2015-04-13 14:52:26', 5),
(11, 'Broken TV', 'I can''t watch me soap dramas', '2015-04-13 14:53:32', '2015-04-13 14:53:50', 6),
(12, 'Broken Window', 'Got broken into and robbed ', '2015-04-13 15:18:31', '2015-04-13 15:18:31', 6),
(13, 'Broken Airconditioner', 'Aircon does not turn on', '2015-04-14 03:50:50', '2015-04-14 03:50:50', 10),
(14, 'Broken Face', 'got bashed', '2015-04-16 05:25:43', '2015-04-16 05:25:43', 24),
(15, 'Broken dong', 'donger is broken ', '2015-04-22 10:57:33', '2015-04-22 10:57:33', 29);

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
  `title` enum('MR','MRS','MISS','DR') NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(25) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `phone` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `home_country` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `suburb` varchar(25) NOT NULL,
  `postcode` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`, `title`, `first_name`, `last_name`, `gender`, `phone`, `email`, `home_country`, `city`, `suburb`, `postcode`) VALUES
(1, 'admin', '$2y$10$ytpEvi6EvojZvBDYa18lDezDToFfQ9e64lD.gIo0r30z9uscH4xXy', 'admin', NULL, NULL, 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(5, 'tenant1', '$2y$10$36QA3Xx3il4R9MmIrIn59e54Ii.TmrCAJKqezyb.u9na8wx2/0DHS', 'author', '2015-04-13 14:38:23', '2015-04-13 14:38:23', 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(6, 'tenant2', '$2y$10$EaSEaQ3sNeSnnvZ0yvtl2Oxh3Vbpwjh29W4bF/.5PD1OHXlNxS2Ga', 'author', '2015-04-13 14:52:52', '2015-04-13 14:52:52', 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(7, 'tenant3', '$2y$10$UeVYZ1eJPQ/hxxoEDJeMj.iXrRuT7mLTPNKI9QqxTg1YnSVrT8Gwq', 'author', '2015-04-13 15:03:48', '2015-04-13 15:03:48', 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(8, 'test$#', '$2y$10$T/5XhbcP1NDaXQdps5qaQOe1pF0HKaoY7kTgdCOL0q6FvsqoylkBi', 'author', '2015-04-13 15:26:58', '2015-04-13 15:26:58', 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(9, 'dasfasdfasdfsad', '$2y$10$dhDXDrUuLqGgPwdUZ329kugptnnNvOm7mv9dd0aw6F7UYJ72G4kim', 'author', '2015-04-13 15:37:29', '2015-04-13 15:37:29', 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(10, '12345678', '$2y$10$ODlg8YqFA09N5zFaARNEXO6BeTOG7a9i.o84j4pScuuy5Svs90gVG', 'author', '2015-04-14 03:48:15', '2015-04-15 07:48:23', 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(11, 'tenant10', '$2y$10$fYYcpgGYQCeJVTHeP7zh5eC3.26OXUiE6Ihv1sFJ9d4xd57/PCYSm', 'author', '2015-04-14 09:12:01', '2015-04-14 09:12:01', 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(22, 'tenant4', '$2y$10$nxhYe/k.RxWKGRcpKtDx1eg0N7d883UpEixXW2Yy/gWcL0aTEaSGS', 'author', '2015-04-15 07:25:27', '2015-04-15 07:25:27', 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(24, 'tenant12123123', '$2y$10$/IIvrHEHDjk4ZhzbIS28d.5zp.XvcO5oFISgn.lK6xyXGTty3aC/S', 'author', '2015-04-16 05:11:17', '2015-04-16 05:11:17', 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(26, 'tenant123890', '$2y$10$JPmPChO1FvNjETOIzmyZ9.AvW0SgSbyjmlCcd8CGdikyr4l260Zaa', 'author', '2015-04-16 05:25:22', '2015-04-16 05:25:22', 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(27, 'hello', '$2y$10$PpAe7nhqL4CZGY./.hOUX.1Q2ZDg4sSvSyjSjNPAHSSR0U46RCQoi', 'author', '2015-04-16 05:35:28', '2015-04-16 05:35:28', 'MR', NULL, '', 'M', 0, '', '', '', '', 0),
(28, 'tenant50', '$2y$10$rsTuv7CgtHwhyjtV4BqK9Om2W33vRJKlVs1SZpP/fxeImQt1YXJHK', 'author', '2015-04-22 10:38:52', '2015-04-22 10:38:52', 'MR', 'jacob', '', 'M', 0, '', '', '', '', 0),
(29, 'tenant51', '$2y$10$T2vn/qK4X/1r7h6QifMMyu229y5zDSSUAakejLXeB.Fhufop.rL5q', 'author', '2015-04-22 10:57:05', '2015-04-22 10:57:05', 'MR', 'mike', 'lai', 'M', 0, '', '', '', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
