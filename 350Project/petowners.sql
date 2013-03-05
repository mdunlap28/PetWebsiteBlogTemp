-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2013 at 05:27 PM
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
CREATE DATABASE IF NOT EXISTS petowners;
GRANT ALL PRIVILEGES ON petowners.* to 'minion'@'localhost' identified by 'minion';
USE petowners;
-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE IF NOT EXISTS `cats` (
  `Name` varchar(30) NOT NULL,
  `Breed` varchar(50) NOT NULL,
  `Sex` varchar(2) NOT NULL,
  `Spayed/Neutered` varchar(2) NOT NULL,
  `Medical Conditions` blob NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Age` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE IF NOT EXISTS `credentials` (
  `owner_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `securityquestion` varchar(100) NOT NULL,
  `securityanswer` varchar(100) NOT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dogs`
--

CREATE TABLE IF NOT EXISTS `dogs` (
  `Name` varchar(20) NOT NULL,
  `Breed` varchar(50) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Age` int(2) NOT NULL,
  `Spayed/Neutered` varchar(2) NOT NULL,
  `Sex` varchar(2) NOT NULL,
  `Medical Conditions` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ownercontactinfo`
--

CREATE TABLE IF NOT EXISTS `ownercontactinfo` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(4) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `credentials`
--
ALTER TABLE `credentials`
  ADD CONSTRAINT `credentials_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `ownercontactinfo` (`owner_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
