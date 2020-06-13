-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 13, 2020 at 08:43 PM
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
-- Table structure for table `accidents`
--

DROP TABLE IF EXISTS `accidents`;
CREATE TABLE IF NOT EXISTS `accidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `vNum` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
CREATE TABLE IF NOT EXISTS `ad` (
  `adId` int(255) NOT NULL AUTO_INCREMENT,
  `adCategory` varchar(255) NOT NULL,
  `adDescription` varchar(255) NOT NULL,
  `adDate` date NOT NULL,
  `adCompany` varchar(255) NOT NULL,
  `adEmail` varchar(255) NOT NULL,
  `adMobile` varchar(255) NOT NULL,
  PRIMARY KEY (`adId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`adId`, `adCategory`, `adDescription`, `adDate`, `adCompany`, `adEmail`, `adMobile`) VALUES
(1, 'Offer', 'df', '2020-06-13', 'Ami traders', 'agmadhu1995@gmail.com', '0759760325'),
(2, 'Offer', 'sfsd', '2020-06-13', 'fsf', 'fdf@gmail.com', '0717958413');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `empid`, `type`, `lnumber`, `age`) VALUES
(14, 37, 'Full Time', 'ghjg', 25),
(15, 40, 'Full Time', 'fgbdh', 25),
(16, 9, 'Full Time', 'ghjg', 123);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(225) NOT NULL,
  `name` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `name`, `msg`) VALUES
(0, 'ada', 'dafsf');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

DROP TABLE IF EXISTS `inquiries`;
CREATE TABLE IF NOT EXISTS `inquiries` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `category`, `subject`, `message`) VALUES
(1, 'Inquiry', 'aaf', 'afas');

-- --------------------------------------------------------

--
-- Table structure for table `maintain`
--

DROP TABLE IF EXISTS `maintain`;
CREATE TABLE IF NOT EXISTS `maintain` (
  `manId` int(255) NOT NULL AUTO_INCREMENT,
  `vno` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `details` varchar(255) NOT NULL,
  `cost` int(255) NOT NULL,
  PRIMARY KEY (`manId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintain`
--

INSERT INTO `maintain` (`manId`, `vno`, `date`, `details`, `cost`) VALUES
(1, 'gsgs', '2020-06-13', 'full repaire', 1324);

-- --------------------------------------------------------

--
-- Table structure for table `notifi`
--

DROP TABLE IF EXISTS `notifi`;
CREATE TABLE IF NOT EXISTS `notifi` (
  `notifiId` int(255) NOT NULL,
  `notifiUserType` varchar(255) NOT NULL,
  `notifiDescription` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifi`
--

INSERT INTO `notifi` (`notifiId`, `notifiUserType`, `notifiDescription`) VALUES
(0, 'Admin', 'asafsd');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payId` int(255) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `nic` varchar(255) NOT NULL,
  `card` int(255) NOT NULL,
  `cvv` int(255) NOT NULL,
  PRIMARY KEY (`payId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payId`, `date`, `nic`, `card`, `cvv`) VALUES
(1, '2020-06-13', '966581672v', 12345678, 333),
(2, '2020-06-26', '123456789V', 12341234, 111);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `rno` int(150) NOT NULL AUTO_INCREMENT,
  `nic` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `location` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(150) NOT NULL,
  `dlocation` varchar(500) NOT NULL,
  `ddate` date NOT NULL,
  `dtime` varchar(150) NOT NULL,
  `distance` float NOT NULL,
  `vtype` varchar(150) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `charge` int(11) NOT NULL,
  `itype` varchar(150) DEFAULT NULL,
  `ndriver` varchar(150) DEFAULT NULL,
  `empid` int(150) NOT NULL,
  `paymentId` int(11) NOT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uname`, `uemail`, `fullname`, `phonenum`, `NIC`, `address`, `user_type`, `upass`, `date`) VALUES
(4, 'sachi', 'sachi@gmail.com', 'sachi', '0719760333', '996581672v', 'galle', 'customer', '123', NULL),
(5, 'admin', 'sa@gmail.com', 'sa', '0719760325', '956581672v', 'matara', 'admin', 'admin', NULL),
(6, '986581672v', 'dd@gmail.com', 'dd', '0717602714', '986581672v', 'matara', 'Driver', '986581672v123', NULL),
(7, 'ss', 'ss@gmail.com', 'ss', '0719760325', '966581672v', 'matara', 'customer', '123', NULL);

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
  `resDate` date DEFAULT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vehicleID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicleassigning`
--

DROP TABLE IF EXISTS `vehicleassigning`;
CREATE TABLE IF NOT EXISTS `vehicleassigning` (
  `AssignId` int(150) NOT NULL AUTO_INCREMENT,
  `ReservationNo` int(150) NOT NULL,
  `VehicleId` varchar(150) NOT NULL,
  `VehicleNo` varchar(150) NOT NULL,
  `VehicleType` varchar(150) NOT NULL,
  `PickUpDate` varchar(150) NOT NULL,
  `PickUpTime` varchar(150) NOT NULL,
  `DropOffDate` varchar(150) NOT NULL,
  `DropOffTime` varchar(150) NOT NULL,
  PRIMARY KEY (`AssignId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
