-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2018 at 06:28 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `info_id` int(11) NOT NULL,
  `Down_Date` date DEFAULT NULL,
  `Down_Time` time DEFAULT NULL,
  `Up_Date` date DEFAULT NULL,
  `Up_Time` time DEFAULT NULL,
  `Duration_of_Outage_Mins` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `Site` varchar(255) DEFAULT NULL,
  `Sectors` int(11) DEFAULT NULL,
  `Sectorwise_Outage` varchar(255) DEFAULT NULL,
  `Fiber_Vendor` varchar(255) DEFAULT NULL,
  `Link_Between` varchar(255) DEFAULT NULL,
  `Information_Source` varchar(255) DEFAULT NULL,
  `ReasonCategory` varchar(255) DEFAULT NULL,
  `Specific_Reason` varchar(255) DEFAULT NULL,
  `Inform_Time` varchar(255) DEFAULT NULL,
  `Inform_Type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`info_id`, `Down_Date`, `Down_Time`, `Up_Date`, `Up_Time`, `Duration_of_Outage_Mins`, `Category`, `Site`, `Sectors`, `Sectorwise_Outage`, `Fiber_Vendor`, `Link_Between`, `Information_Source`, `ReasonCategory`, `Specific_Reason`, `Inform_Time`, `Inform_Type`) VALUES
(1, '2018-03-12', '13:07:00', '0000-00-00', '00:00:00', 'Down', 'Site', 'DH6514', 3, 'Down', 'N/A', 'N/A', 'U2000+Nagios+M2000', 'Access Problem for payment issue (PBTL site)', 'Manually Blocked to preserve ', 'N/A', 'N/A'),
(2, '2018-03-17', '10:50:00', '2018-03-19', '18:25:00', '17735', 'Link', 'DH6514', 0, '0', 'Drik', 'DH0068-DH0077 SEE NOTE', 'U2000+Nagios', 'Fiber problem', '', '10:50', 'Phone+mail'),
(4, '2018-03-18', '04:30:00', '2018-03-19', '10:25:00', '355', 'Link', 'N/A', 0, '0', 'Telnet', 'DH0089-DH0094', 'U2000+Nagios', 'Fiber problem', '', '4:40', 'Phone+mail'),
(5, '2018-03-01', '07:20:00', '2018-03-08', '08:35:00', '75', 'Site', 'DH0015', 3, '225', 'N/A', 'N/A', 'M2000', 'Battery problem', 'Coslight 200AH', 'N/A', 'N/A'),
(6, '2018-02-01', '07:35:00', '0000-00-00', '07:50:00', '15', 'Site', 'DH6480', 3, '45', 'N/A', 'N/A', 'M2000', 'Battery problem', 'Coslight 200AH', 'N/A', 'N/A'),
(7, '2018-02-03', '10:10:00', '2018-03-01', '19:20:00', '550', 'Link', 'N/A', 0, '0', 'Earth', 'CG2009 -To- IIG Earth Communication CTG CO (Secondary)', 'U2000+Nagios', 'Fiber problem', '', '10:15', 'Phone+mail'),
(8, '0000-00-00', '13:19:00', '0000-00-00', '14:20:00', '61', 'Site', 'DH6410', 3, '183', 'N/A', 'N/A', 'M2000', 'Battery problem', 'Coslight 200AH', 'N/A', 'N/A'),
(9, '0000-00-00', '13:15:00', '0000-00-00', '17:10:00', '235', 'Site+Link', 'DH6507, DH6462, DH0076, DH6627, DH6666, DH6409, DH0004 SEE NOTE', 21, '4935', 'Link3', 'DH0004-DH6717', 'U2000+Nagios+M2000', 'Fiber problem', 'All sites were Up by Routing reconfiguration,  except DH0004', '13:21', 'Phone+mail'),
(10, '0000-00-00', '13:10:00', '0000-00-00', '18:57:00', '347', 'Link', 'DH6507, DH6462, DH0076, DH6627, DH6666, DH6409, DH0004', 0, '0', 'Summit', 'DH6717 - DH6409', 'U2000+Nagios', 'Fiber problem', '', '13:35', 'Phone+mail'),
(11, '2018-03-12', '13:15:00', '2018-03-12', '17:46:00', '271', 'Link', 'DH6507, DH6462, DH0076, DH6627, DH6666, DH6409, DH0004', 0, '0', 'F@H', 'DH6662-DH6717', 'U2000+Nagios', 'Fiber problem', 'All sites were Up by Routing reconfiguration,  except DH0004', '13:30', 'Phone+mail'),
(12, '2018-03-12', '13:50:00', '0000-00-00', '20:20:00', '390', 'Link', 'N/A', 0, '0', 'Link3', 'DH0016-DH0090', 'U2000+Nagios', 'Fiber problem', '', '13:57', 'Phone+mail'),
(13, '2018-01-11', '13:50:00', '2018-01-14', '17:30:00', '40', 'Link', 'N/A', 0, '0', 'Summit', 'DH0016-DH6567 ', 'U2000+Nagios', 'Fiber problem', '', '13:55', 'Phone+mail'),
(14, '0000-00-00', '15:54:00', '0000-00-00', '16:16:00', '22', 'Site', 'DH6410', 3, '66', 'N/A', 'N/A', 'M2000', 'Battery problem', 'Coslight 200AH', 'N/A', 'N/A'),
(15, '0000-00-00', '20:46:00', '0000-00-00', '22:16:00', '90', 'Site', 'CG2003', 3, '270', 'N/A', 'N/A', 'U2000+Nagios+M2000', 'According to Kamal.OpS Commercial power was OK in that region. Was escalated to Link3 on Kamal\'s request, but Site got Up before vendor went there. No mains fail alarm existed.', 'May be BBBI Hang', 'N/A', 'N/A'),
(16, '0000-00-00', '21:24:00', '0000-00-00', '22:04:00', '40', 'Site', 'DH6439', 3, '120', 'N/A', 'N/A', 'M2000', 'Battery problem', 'Coslight 200AH', 'N/A', 'N/A'),
(17, '0000-00-00', '22:50:00', '0000-00-00', '01:00:00', '130', 'Link', 'N/A', 0, '0', 'F@H', 'DH6573-DH6562', 'U2000+Nagios', 'Fiber problem', '', '22:50', 'Phone+mail'),
(19, '0000-00-00', '03:00:00', '0000-00-00', '03:20:00', '20', 'Link', 'N/A', 0, '0', 'F@H', 'CG2009- CG2501 (Laxmipur)', 'U2000+Nagios', 'Link Flap', '', '3:00', 'Phone+mail'),
(20, '0000-00-00', '04:15:00', '0000-00-00', '06:25:00', '130', 'Link+Site', 'DH6402', 3, '390', 'Summit', 'DH6402-DH0081', 'U2000+Nagios+M2000', 'Fiber problem', '', '4:15', 'Phone+mail'),
(21, '0000-00-00', '05:20:00', '0000-00-00', '06:15:00', '55', 'Link', 'N/A', 0, '0', 'Summit', 'Alauddin  - DH6722', 'U2000+Nagios', 'Flapped', '', '5:30', 'Phone+mail'),
(22, '0000-00-00', '05:50:00', '0000-00-00', '07:45:00', '115', 'Site', 'DH0015', 3, '345', 'N/A', 'N/A', 'M2000', 'Power problem', 'Coslight 200AH', 'N/A', 'N/A'),
(23, '2018-03-18', '08:45:00', '2018-03-18', '12:50:00', '245', 'Link', 'N/A', 0, '0', 'Summit', 'DH6417 - DH6626', 'U2000+Nagios', 'Fiber problem', '', '8:50', 'Phone+mail'),
(24, '2018-03-12', '07:13:15', '2018-03-14', '13:13:12', NULL, NULL, 'D44444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`info_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
