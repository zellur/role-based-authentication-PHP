-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2018 at 07:09 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qubee`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(255) NOT NULL,
  `down_Date` date NOT NULL,
  `down_Time` time NOT NULL,
  `up_Date` date NOT NULL,
  `up_Time` time NOT NULL,
  `category` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `sector` varchar(255) NOT NULL,
  `fiber_Vendor` varchar(255) NOT NULL,
  `link_Between` varchar(255) NOT NULL,
  `information_Source` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `specific_reason` varchar(255) NOT NULL,
  `inform_time` time NOT NULL,
  `inform_type` varchar(255) NOT NULL,
  `informed_Vendor` varchar(255) NOT NULL,
  `incident_Time` time NOT NULL,
  `informOfType` varchar(255) NOT NULL,
  `informed_Person` varchar(255) NOT NULL,
  `inform_TimeonResolve` time NOT NULL,
  `Type_Of_inform` varchar(255) NOT NULL,
  `informedToPerson` varchar(255) NOT NULL,
  `noc_DutyEngineer` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `down_Date`, `down_Time`, `up_Date`, `up_Time`, `category`, `site`, `sector`, `fiber_Vendor`, `link_Between`, `information_Source`, `reason`, `specific_reason`, `inform_time`, `inform_type`, `informed_Vendor`, `incident_Time`, `informOfType`, `informed_Person`, `inform_TimeonResolve`, `Type_Of_inform`, `informedToPerson`, `noc_DutyEngineer`) VALUES
(41, '2018-03-05', '00:00:00', '0000-00-00', '00:00:00', 'Site+Link', 'N/A', '2', 'Summit', 'DH-CG', '456', 'Power problem', 'N/A', '00:00:00', 'Phone', 'DRIK', '00:00:00', 'Phone', 'N/A', '00:00:00', 'Phone', 'N/A', 'N/A'),
(42, '2018-02-26', '00:00:00', '0000-00-00', '00:00:00', 'Link', 'N/A', '3', 'Summit', 'DH-CG', '456', 'Battery problem', 'N/A', '12:00:00', 'Phone', 'DRIK', '17:00:00', 'Phone', 'N/A', '07:04:00', 'Phone', 'N/A', 'N/A'),
(43, '2018-03-19', '22:02:00', '2018-03-19', '03:45:00', 'Site', 'N/A', '20', 'Telnet', 'DHA', '1230', 'Power problem', 'N/A', '22:30:00', 'Phone', 'DRIK', '23:20:00', 'Phone', 'N/A', '00:00:00', 'Phone+Mail', 'N/A', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `perm_id` int(11) NOT NULL,
  `perm_desc` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`perm_id`, `perm_desc`) VALUES
(1, 'account creation'),
(2, 'Data insert'),
(3, 'outage info'),
(4, 'Bts info');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `department` varchar(20) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `phone`, `email`, `department`, `designation`, `password`) VALUES
(38, 'rakib', '01715100331', 'zellurakib1234@gmail.com', 'Employee', 'dev', '123'),
(42, 'admin', '123456', '1@email.com', 'NOC', 'llllllll', '123'),
(43, 'sadik', '12345', 'sadik@mail.com', 'NOC', 'sassa', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `user_perm`
--

CREATE TABLE IF NOT EXISTS `user_perm` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `permid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_perm`
--

INSERT INTO `user_perm` (`id`, `userid`, `permid`) VALUES
(1, 38, 1),
(2, 38, 2),
(3, 38, 3),
(4, 38, 4),
(5, 42, 1),
(6, 42, 2),
(7, 42, 3),
(8, 42, 4),
(56, 43, 2),
(57, 43, 3),
(58, 43, 4);

-- --------------------------------------------------------

--
-- Table structure for table `weekly_reports`
--

CREATE TABLE IF NOT EXISTS `weekly_reports` (
  `id` int(11) NOT NULL,
  `Site` varchar(255) DEFAULT NULL,
  `User_No` int(11) DEFAULT NULL,
  `Start_Time` varchar(255) DEFAULT NULL,
  `End_Time` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Outage_Mins_Total` int(11) DEFAULT NULL,
  `Outage_Mins` int(11) DEFAULT NULL,
  `low_Impact_outage_Mins` int(11) DEFAULT NULL,
  `High_Impact_outage_Mins` int(11) DEFAULT NULL,
  `Very_High_Impact_outage_Mins` int(11) DEFAULT NULL,
  `low_Impact_user` int(11) DEFAULT NULL,
  `High_Impact_user` int(11) DEFAULT NULL,
  `Very_High_Impact_user` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekly_reports`
--

INSERT INTO `weekly_reports` (`id`, `Site`, `User_No`, `Start_Time`, `End_Time`, `Date`, `Outage_Mins_Total`, `Outage_Mins`, `low_Impact_outage_Mins`, `High_Impact_outage_Mins`, `Very_High_Impact_outage_Mins`, `low_Impact_user`, `High_Impact_user`, `Very_High_Impact_user`) VALUES
(1, 'DH6514', 59, '2018-02-11 0:00', '2018-02-12 0:00', '2018-03-20', 1440, 1440, 420, 720, 300, 59, 59, 59),
(2, 'DH6480', 70, '2018-02-11 7:47', '2018-02-11 8:11', '2018-02-11', 24, 24, 13, 11, 0, 70, 70, 0),
(3, 'DH6480', 70, '2018-02-11 11:22', '2018-02-11 11:30', '2018-02-11', 8, 8, 0, 8, 0, 0, 70, 0),
(4, 'DH6714', 81, '2018-02-11 12:32', '2018-02-11 12:44', '2018-02-11', 12, 12, 0, 12, 0, 0, 81, 0),
(5, 'DH6410', 63, '2018-02-11 12:37', '2018-02-11 13:25', '2018-02-11', 48, 48, 0, 48, 0, 0, 63, 0),
(6, 'DH6487', 32, '2018-02-11 13:50', '2018-02-11 19:20', '2018-02-11', 330, 330, 0, 330, 0, 0, 32, 0),
(7, 'DH6610', 40, '2018-02-11 13:50', '2018-02-11 19:20', '2018-02-11', 330, 330, 0, 330, 0, 0, 40, 0),
(8, 'DH6451', 84, '2018-02-11 14:31', '2018-02-11 14:55', '2018-02-11', 24, 24, 0, 24, 0, 0, 84, 0),
(9, 'DH6410', 63, '2018-02-11 14:51', '2018-02-11 15:10', '2018-02-11', 19, 19, 0, 19, 0, 0, 63, 0),
(10, 'DH0068', 158, '2018-02-11 15:55', '2018-02-11 18:25', '2018-02-11', 150, 150, 0, 150, 0, 0, 158, 0),
(11, 'DH6547 ', 31, '2018-02-11 15:55', '2018-02-11 18:25', '2018-02-11', 150, 150, 0, 150, 0, 0, 31, 0),
(12, 'DH0063', 54, '2018-02-11 16:48', '2018-02-11 17:26', '2018-02-11', 38, 38, 0, 38, 0, 0, 54, 0),
(13, 'CG2045', 64, '2018-02-11 18:25', '2018-02-11 20:20', '2018-02-11', 115, 115, 0, 95, 20, 0, 64, 64),
(14, 'DH6514', 59, '2018-02-12 0:00', '2018-02-13 0:00', '2018-02-12', 1440, 1440, 420, 720, 300, 59, 59, 59),
(15, 'DH6423', 58, '2018-02-12 6:30', '2018-02-12 6:45', '2018-02-12', 15, 15, 15, 0, 0, 58, 0, 0),
(16, 'DH6439', 54, '2018-02-12 8:20', '2018-02-12 9:05', '2018-02-12', 45, 45, 0, 45, 0, 0, 54, 0),
(17, 'DH0015', 119, '2018-02-12 17:15', '2018-02-12 17:50', '2018-02-12', 35, 35, 0, 35, 0, 0, 119, 0),
(18, 'DH6452', 52, '2018-02-12 18:00', '2018-02-12 18:30', '2018-02-12', 30, 30, 0, 30, 0, 0, 52, 0),
(19, 'DH0081', 49, '2018-02-12 20:15', '2018-02-12 21:10', '2018-02-12', 55, 55, 0, 0, 55, 0, 0, 49),
(20, 'DH6402', 92, '2018-02-12 20:15', '2018-02-12 21:10', '2018-02-12', 55, 55, 0, 0, 55, 0, 0, 92),
(21, 'DH6403', 128, '2018-02-12 20:15', '2018-02-12 21:10', '2018-02-12', 55, 55, 0, 0, 55, 0, 0, 128),
(22, 'DH6551', 43, '2018-02-12 23:45', '2018-02-13 0:00', '2018-02-12', 15, 15, 0, 0, 15, 0, 0, 43),
(23, 'DH6551', 43, '2018-02-13 0:00', '2018-02-13 15:00', '2018-02-13', 900, 900, 420, 420, 60, 43, 43, 43),
(24, 'DH6514', 59, '2018-02-13 0:00', '2018-02-14 0:00', '2018-02-13', 1440, 1440, 420, 720, 300, 59, 59, 59),
(25, 'DH6410', 63, '2018-02-13 4:20', '2018-02-13 5:15', '2018-02-13', 55, 55, 55, 0, 0, 63, 0, 0),
(26, 'DH0063', 54, '2018-02-13 4:30', '2018-02-13 4:46', '2018-02-13', 16, 16, 16, 0, 0, 54, 0, 0),
(27, 'DH0063', 54, '2018-02-13 5:25', '2018-02-13 5:35', '2018-02-13', 10, 10, 10, 0, 0, 54, 0, 0),
(28, 'DH6402', 92, '2018-02-13 7:10', '2018-02-13 11:00', '2018-02-13', 230, 230, 50, 180, 0, 92, 92, 0),
(29, 'CG2011', 102, '2018-02-13 8:10', '2018-02-13 8:25', '2018-02-13', 15, 15, 0, 15, 0, 0, 102, 0),
(30, 'CG2045', 64, '2018-02-13 8:10', '2018-02-13 8:24', '2018-02-13', 14, 14, 0, 14, 0, 0, 64, 0),
(31, 'DH0081', 49, '2018-02-13 10:25', '2018-02-13 10:55', '2018-02-13', 30, 30, 0, 30, 0, 0, 49, 0),
(32, 'DH6403', 128, '2018-02-13 10:25', '2018-02-13 10:55', '2018-02-13', 30, 30, 0, 30, 0, 0, 128, 0),
(33, 'CG2045', 64, '2018-02-13 10:50', '2018-02-13 11:20', '2018-02-13', 30, 30, 0, 30, 0, 0, 64, 0),
(34, 'DH6491', 58, '2018-02-13 10:20', '2018-02-13 11:45', '2018-02-13', 85, 85, 0, 85, 0, 0, 58, 0),
(35, 'DH0017', 74, '2018-02-13 17:20', '2018-02-13 17:30', '2018-02-13', 10, 10, 0, 10, 0, 0, 74, 0),
(36, 'CG2045', 64, '2018-02-13 17:50', '2018-02-13 18:20', '2018-02-13', 30, 30, 0, 30, 0, 0, 64, 0),
(37, 'DH6514', 59, '2018-02-14 0:00', '2018-02-15 0:00', '2018/02/14', 1440, 1440, 420, 720, 300, 59, 59, 59),
(38, 'DH6715', 68, '2018-02-14 2:50', '2018-02-14 13:05', '2018/02/14', 615, 615, 310, 305, 0, 68, 68, 0),
(39, 'DH0003', 59, '2018-02-14 9:50', '2018-02-14 13:27', '2018/02/14', 217, 217, 0, 217, 0, 0, 59, 0),
(40, 'DH0081', 49, '2018-02-14 10:50', '2018-02-14 13:30', '2018/02/14', 160, 160, 0, 160, 0, 0, 49, 0),
(41, 'DH6402', 92, '2018-02-14 11:00', '2018-02-14 13:30', '2018/02/14', 150, 150, 0, 150, 0, 0, 92, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`perm_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_perm`
--
ALTER TABLE `user_perm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekly_reports`
--
ALTER TABLE `weekly_reports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `perm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `user_perm`
--
ALTER TABLE `user_perm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `weekly_reports`
--
ALTER TABLE `weekly_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
