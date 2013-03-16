-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2013 at 07:49 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `petowners`
--

-- --------------------------------------------------------

--
-- Table structure for table `breed_id`
--

CREATE TABLE IF NOT EXISTS `breed_id` (
  `breed_id` int(11) NOT NULL AUTO_INCREMENT,
  `breed` varchar(50) NOT NULL,
  PRIMARY KEY (`breed_id`),
  KEY `breed_id` (`breed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE IF NOT EXISTS `color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(50) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE IF NOT EXISTS `credentials` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`username`,`password`),
  UNIQUE KEY `owner_id` (`owner_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `password` (`password`),
  UNIQUE KEY `owner_id_4` (`owner_id`),
  KEY `owner_id_2` (`owner_id`),
  KEY `owner_id_3` (`owner_id`),
  KEY `owner_id_5` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `med_conditions`
--

CREATE TABLE IF NOT EXISTS `med_conditions` (
  `med_id` int(11) NOT NULL AUTO_INCREMENT,
  `condition` mediumblob NOT NULL,
  PRIMARY KEY (`med_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ownercontactinfo`
--

CREATE TABLE IF NOT EXISTS `ownercontactinfo` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `First` varchar(30) NOT NULL,
  `Last` varchar(30) NOT NULL,
  `zip` int(20) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` char(4) NOT NULL,
  PRIMARY KEY (`owner_id`),
  KEY `zip` (`zip`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ownercontactinfo`
--

INSERT INTO `ownercontactinfo` (`owner_id`, `First`, `Last`, `zip`, `Phone`, `email`, `address`, `city`, `state`) VALUES
(5, 'Jenn', 'Cartel', 22407, '234-999-5847', 'jcartel@yahoo.com', '456 Shire Dr.', 'Fredericksburg', 'VA');

-- --------------------------------------------------------

--
-- Table structure for table `owner_pet`
--

CREATE TABLE IF NOT EXISTS `owner_pet` (
  `owner_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  UNIQUE KEY `owner_id` (`owner_id`,`pet_id`),
  KEY `pet_id` (`pet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pet_color`
--

CREATE TABLE IF NOT EXISTS `pet_color` (
  `pet_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  KEY `pet_id` (`pet_id`),
  KEY `color_id` (`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pet_info`
--

CREATE TABLE IF NOT EXISTS `pet_info` (
  `pet_id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` char(2) NOT NULL,
  `breed_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `vac_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `picture` int(11) NOT NULL,
  `fixed` char(2) NOT NULL,
  `med_id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  PRIMARY KEY (`pet_id`),
  KEY `breed_id` (`breed_id`),
  KEY `type_id` (`type_id`),
  KEY `vac_id` (`vac_id`),
  KEY `color_id` (`color_id`),
  KEY `color_id_2` (`color_id`),
  KEY `med_id` (`med_id`),
  KEY `temp_id` (`temp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pet_vac`
--

CREATE TABLE IF NOT EXISTS `pet_vac` (
  `pet_id` int(11) NOT NULL,
  `vac_id` int(11) NOT NULL,
  KEY `pet_id` (`pet_id`),
  KEY `vac_id` (`vac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temperment`
--

CREATE TABLE IF NOT EXISTS `temperment` (
  `temp_id` int(11) NOT NULL AUTO_INCREMENT,
  `temperment` int(11) NOT NULL,
  PRIMARY KEY (`temp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `type_id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vaccines`
--

CREATE TABLE IF NOT EXISTS `vaccines` (
  `vac_id` int(11) NOT NULL,
  `vaccine` int(11) NOT NULL,
  PRIMARY KEY (`vac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `credentials`
--
ALTER TABLE `credentials`
  ADD CONSTRAINT `credentials_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `ownercontactinfo` (`owner_id`) ON UPDATE CASCADE;

--
-- Constraints for table `owner_pet`
--
ALTER TABLE `owner_pet`
  ADD CONSTRAINT `owner_pet_ibfk_2` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`);

--
-- Constraints for table `pet_color`
--
ALTER TABLE `pet_color`
  ADD CONSTRAINT `pet_color_ibfk_1` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_color_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON UPDATE CASCADE;

--
-- Constraints for table `pet_info`
--
ALTER TABLE `pet_info`
  ADD CONSTRAINT `pet_info_ibfk_10` FOREIGN KEY (`med_id`) REFERENCES `med_conditions` (`med_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_info_ibfk_11` FOREIGN KEY (`temp_id`) REFERENCES `temperment` (`temp_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_info_ibfk_6` FOREIGN KEY (`breed_id`) REFERENCES `breed_id` (`breed_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_info_ibfk_7` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_info_ibfk_8` FOREIGN KEY (`vac_id`) REFERENCES `vaccines` (`vac_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_info_ibfk_9` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `pet_vac`
--
ALTER TABLE `pet_vac`
  ADD CONSTRAINT `pet_vac_ibfk_1` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_vac_ibfk_2` FOREIGN KEY (`vac_id`) REFERENCES `vaccines` (`vac_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
