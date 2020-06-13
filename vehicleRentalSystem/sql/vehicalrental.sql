-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2020 at 05:24 PM
-- Server version: 5.5.62-log
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicalrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
CREATE TABLE IF NOT EXISTS `ad` (
  `adId` int(11) NOT NULL AUTO_INCREMENT,
  `adCategory` varchar(15) NOT NULL,
  `adDescription` varchar(500) NOT NULL,
  PRIMARY KEY (`adId`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`adId`, `adCategory`, `adDescription`) VALUES
(1, 'choose', 'Test'),
(55, 'notice', 'Closed until March'),
(56, 'offer', 'Heollo Machan '),
(57, 'choose', 'This i sa test '),
(58, 'notice', 'sdfsd'),
(59, 'choose', 'sfdfsdfd'),
(60, 'notice', 'fs'),
(61, 'offer', 'sdf'),
(62, 'choose', 'View '),
(63, 'notice', 'sdfsdf'),
(64, 'notice', 'sdfsdf'),
(65, 'offer', 'sdfs'),
(66, 'notice', 'sdfsd'),
(67, 'notice', 'asda'),
(68, 'offer', 'sdfsd');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Aid` int(11) NOT NULL AUTO_INCREMENT,
  `Auname` varchar(30) NOT NULL,
  `Apaswd` varchar(30) NOT NULL,
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `Auname`, `Apaswd`) VALUES
(1, 'admin', 'admin'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
CREATE TABLE IF NOT EXISTS `driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empid` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `lnumber` varchar(250) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `empid`, `type`, `lnumber`, `age`) VALUES
(3, 42, 'Full Time', 'fdhngfnnm', 31),
(5, 43, 'Full Time', '222', 21),
(6, 41, 'Part Time', 'dsd', 26);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `euname` varchar(30) NOT NULL,
  `epwd` varchar(100) NOT NULL,
  `eemail` varchar(50) NOT NULL,
  `efullname` varchar(50) NOT NULL,
  `ephonenum` varchar(20) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `euname`, `epwd`, `eemail`, `efullname`, `ephonenum`, `NIC`, `address`, `designation`, `date`) VALUES
(37, '960500962v', '960500962v123', 'chanakasofts@gmail.com', 'geethan', '0714264204', '960500962v', 'matara', 'Driver', '2019-05-01'),
(38, '123456789', '123456789123', 'john@gmail.com', 'user one', '0714565235', '123456789', 'matara', 'cordinator', '2019-04-16'),
(39, 'h', 'h', 'gg@gg.com', 'hjjbbbb v', 'h', '36', 'hh', 'Driver', '2019-01-11'),
(40, 'ggb', 'h', 'gg@gg.com', 'hjjj', 'h', '36', 'hh', 'Driver', '2019-02-11'),
(41, 'bddbbd', 'h', 'gg@gg.com', 'hjjjdd', 'h', '36', 'hh', 'Driver', '2019-03-11'),
(42, 'ujjjjj', 'h', 'gg@gg.com', 'hmmmmmmmnb', 'h', '36', 'hh', 'Driver', '2019-05-11'),
(43, 'dccccc', 'h', 'gg@gg.com', 'hlllll', 'h', '36', 'hh', 'Driver', '2019-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(150) NOT NULL,
  `msg` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `msg`) VALUES
('Duranka', 'Hello'),
('dd', 'cf'),
('ddd', 'fff'),
('xx', 'cvb');

-- --------------------------------------------------------

--
-- Table structure for table `notifi`
--

DROP TABLE IF EXISTS `notifi`;
CREATE TABLE IF NOT EXISTS `notifi` (
  `notifiId` int(11) NOT NULL AUTO_INCREMENT,
  `notifiDescription` varchar(250) NOT NULL,
  PRIMARY KEY (`notifiId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifi`
--

INSERT INTO `notifi` (`notifiId`, `notifiDescription`) VALUES
(7, 'Driver Afdrrived'),
(13, 'Test Note For The Sysytem'),
(15, 'ddff');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nic` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone` bigint(150) NOT NULL,
  `location` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `ndays` int(150) NOT NULL,
  `nDriver` varchar(150) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(250) NOT NULL,
  `uemail` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `phonenum` varchar(250) NOT NULL,
  `NIC` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `user_type` varchar(250) NOT NULL,
  `upass` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

DROP TABLE IF EXISTS `user_reg`;
CREATE TABLE IF NOT EXISTS `user_reg` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) DEFAULT NULL,
  `upass` varchar(45) DEFAULT NULL,
  `uemail` varchar(45) DEFAULT NULL,
  `fullname` varchar(50) NOT NULL,
  `phonenum` varchar(20) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`uid`, `uname`, `upass`, `uemail`, `fullname`, `phonenum`, `NIC`, `address`) VALUES
(42, 'user', 'user123', 'jogn@ymail.com', 'john', '0714568524', '960500962V', 'matara');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicleID` int(20) NOT NULL AUTO_INCREMENT,
  `vehicleNo` varchar(100) NOT NULL,
  `ownerName` varchar(100) NOT NULL,
  `vehicleType` varchar(100) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `regNo` varchar(250) NOT NULL,
  `numEtched` varchar(250) NOT NULL,
  `chassisNum` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `color` varchar(250) NOT NULL,
  `year` varchar(250) NOT NULL,
  `mileage` varchar(250) NOT NULL,
  `seats` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  PRIMARY KEY (`vehicleID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
