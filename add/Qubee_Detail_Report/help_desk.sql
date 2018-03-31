-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2018 at 03:26 PM
-- Server version: 5.0.95
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `help_desk`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign`
--

CREATE TABLE IF NOT EXISTS `assign` (
  `user_id` varchar(150) NOT NULL,
  `device_id` varchar(150) NOT NULL,
  `soft_id` varchar(150) NOT NULL,
  `handover_id` int(150) NOT NULL auto_increment,
  `hard_handover_date` date NOT NULL,
  `soft_handover_date` date NOT NULL,
  `Comment` varchar(300) NOT NULL,
  PRIMARY KEY  (`handover_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `assign`
--

INSERT INTO `assign` (`user_id`, `device_id`, `soft_id`, `handover_id`, `hard_handover_date`, `soft_handover_date`, `Comment`) VALUES
('0303', '6', '', 57, '2011-07-31', '0000-00-00', 'Assign was Abdullah al Fattah Emon'),
('0332', '5', '', 56, '2017-03-06', '0000-00-00', 'Assign was A.K.M. Rashed-ul-Hasan'),
('0070', '4', '', 55, '1990-12-31', '0000-00-00', 'Assign was A.K.M. Javed Mansur'),
('0395', '1', '', 52, '2017-01-07', '0000-00-00', 'Assign to Sayem . Previous user was Md. Zakir Hossain'),
('0371', '8', '', 59, '2011-07-31', '0000-00-00', 'Assign was Rubaiyat Arefin'),
('C-161', '9', '', 60, '1990-12-31', '0000-00-00', 'Assign Abdullah Al Mamun'),
('0081', '10', '', 61, '2010-08-24', '0000-00-00', 'Assign was Hasnat Ahsan');

-- --------------------------------------------------------

--
-- Table structure for table `assign_history`
--

CREATE TABLE IF NOT EXISTS `assign_history` (
  `entry_date` date NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `device_id` varchar(150) NOT NULL,
  `soft_id` varchar(150) NOT NULL,
  `hard_handover_date` date NOT NULL,
  `soft_handover_date` date NOT NULL,
  `Comment` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_history`
--

INSERT INTO `assign_history` (`entry_date`, `user_id`, `device_id`, `soft_id`, `hard_handover_date`, `soft_handover_date`, `Comment`) VALUES
('2018-02-19', '0229', '1', '', '2015-06-10', '0000-00-00', 'Assign to Zakir Hossain with out software.'),
('2018-02-19', '0229', '1', '', '2015-06-10', '0000-00-00', 'Withdraw.'),
('2018-02-19', '0395', '1', '', '2017-01-07', '0000-00-00', 'Assign to Sayem . Previous user was Md. Zakir Hossain'),
('2018-02-19', '0395', '2', '', '2011-11-30', '0000-00-00', 'Assing was A.S.M Sayem'),
('2018-02-19', '0070', '3', '', '2012-08-31', '0000-00-00', 'Assign was A.K.M Javed Mansur'),
('2018-02-19', '0070', '4', '', '1990-12-31', '0000-00-00', 'Assign was A.K.M. Javed Mansur'),
('2018-02-19', '0332', '5', '', '2017-03-06', '0000-00-00', 'Assign was A.K.M. Rashed-ul-Hasan'),
('2018-02-19', '0303', '6', '', '2011-07-31', '0000-00-00', 'Assign was Abdullah al Fattah Emon'),
('2018-02-19', '0135', '7', '', '2011-07-31', '0000-00-00', 'Assign was Mainul Huda'),
('2018-02-19', '0371', '8', '', '2011-07-31', '0000-00-00', 'Assign was Rubaiyat Arefin'),
('2018-02-19', 'C-161', '9', '', '1990-12-31', '0000-00-00', 'Assign Abdullah Al Mamun'),
('2018-02-19', '0081', '10', '', '2010-08-24', '0000-00-00', 'Assign was Hasnat Ahsan'),
('2018-02-19', '0135', '7', '', '2011-07-31', '0000-00-00', 'withdraw from Mainul Huda to assign other user.'),
('2018-02-19', '0395', '2', '', '2011-11-30', '0000-00-00', 'Lost By User.'),
('2018-02-19', '0070', '3', '', '2012-08-31', '0000-00-00', 'Lost by user');

-- --------------------------------------------------------

--
-- Table structure for table `device_type`
--

CREATE TABLE IF NOT EXISTS `device_type` (
  `device_name` varchar(150) NOT NULL,
  `device_id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`device_id`),
  UNIQUE KEY `device_name` (`device_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `device_type`
--

INSERT INTO `device_type` (`device_name`, `device_id`) VALUES
('HDD_Laptop', 8),
('RAM', 7),
('Portable HDD', 6),
('Printer', 9),
('Tonner', 14),
('Laptop', 13),
('HP_Server', 15),
('Desktop', 16),
('Scanner', 18),
('Windows7', 19),
('Projector', 23),
('Photocopier ', 22),
('UPS  ', 24),
('Battery', 25);

-- --------------------------------------------------------

--
-- Table structure for table `hard_details`
--

CREATE TABLE IF NOT EXISTS `hard_details` (
  `device_id` int(10) NOT NULL auto_increment,
  `date_of_purchase` date default NULL,
  `device_price` int(100) NOT NULL,
  `asset_ID` varchar(100) default NULL,
  `device_type` varchar(100) NOT NULL,
  `model_no` varchar(150) NOT NULL,
  `serial_no` varchar(200) NOT NULL,
  `description` varchar(300) default NULL,
  `status` varchar(20) NOT NULL default 'Available',
  PRIMARY KEY  (`device_id`),
  UNIQUE KEY `serial_no` (`serial_no`),
  KEY `device_id` (`device_id`),
  KEY `device_id_2` (`device_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `hard_details`
--

INSERT INTO `hard_details` (`device_id`, `date_of_purchase`, `device_price`, `asset_ID`, `device_type`, `model_no`, `serial_no`, `description`, `status`) VALUES
(1, '2015-08-31', 50000, 'NA', 'Laptop', 'Toshiba Satelite L40', '7E105493S', 'ok', 'Assigned'),
(2, '2011-11-30', 49500, 'QB.DH00.IT.LAPT.00368', 'Laptop', 'HP Pav g4 440', '5CD1281G8K', 'ok', 'Lost'),
(3, '2012-08-31', 56000, 'QB.DH00.IT.LAPT.00382', 'Laptop', 'HP Pavilion 430', '5CB2134VYR', 'ok', 'Lost'),
(4, '1990-12-31', 0, 'NA', 'Laptop', 'MAC Book Pro 13" Rati', 'PF02F72Q', 'ok', 'Assigned'),
(5, '2017-03-06', 53042, 'NA', 'Laptop', 'Dell Latitude 3470', 'JW93WB2', 'ok', 'Assigned'),
(6, '2011-07-31', 51300, 'QB.DH00.IT.LAPT.00341', 'Laptop', 'Dell Vostro 3400', '7JZ72N1', 'ok', 'Assigned'),
(7, '2011-11-30', 49500, 'QB.DH00.IT.LAPT.00364', 'Laptop', 'HP Pav g4 440', '5CD1281G5R', 'ok', 'Available'),
(8, '2011-11-30', 49500, 'QB.DH00.IT.LAPT.00360', 'Laptop', 'NA', '5CD1281G54', 'ok', 'Assigned'),
(9, '1990-12-31', 0, 'NA', 'Laptop', 'NA', 'CND9344MQF', 'ok', 'Assigned'),
(10, '2010-08-24', 98700, 'QB.DH00.IT.LAPT.00171', 'Laptop', 'DELL Latitude E6400', 'DJFX42S', 'ok', 'Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `member_list`
--

CREATE TABLE IF NOT EXISTS `member_list` (
  `login_id` varchar(150) NOT NULL,
  `last_login` datetime NOT NULL default '0000-00-00 00:00:00',
  `password` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  PRIMARY KEY  (`login_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_list`
--

INSERT INTO `member_list` (`login_id`, `last_login`, `password`, `first_name`, `last_name`, `type`) VALUES
('moshiur.rahman', '2018-02-19 11:49:08', '123456', 'Md. Moshiur Rahman', 'Bhuiyan', 'Administrator'),
('saiful.hasan', '2015-06-09 10:15:25', 'hasan321', 'Saiful', 'Hasan', 'Administrator'),
('shankar.nandy', '2017-11-05 12:43:26', '1234', 'Shankar', 'Nandy', 'Administrator'),
('jewel.asif', '2018-02-19 17:13:43', 'jewel654', 'Jewel', 'Asif', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `soft_license`
--

CREATE TABLE IF NOT EXISTS `soft_license` (
  `soft_id` int(10) NOT NULL auto_increment,
  `date_of_purchase` date NOT NULL,
  `soft_name` varchar(300) NOT NULL,
  `soft_price` int(100) NOT NULL,
  `soft_validity` int(30) NOT NULL,
  `license_no` varchar(100) NOT NULL,
  `assigned` varchar(10) NOT NULL default '0',
  `first_assign_date` date NOT NULL,
  `status` varchar(100) NOT NULL default 'Available',
  PRIMARY KEY  (`soft_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `soft_license`
--

INSERT INTO `soft_license` (`soft_id`, `date_of_purchase`, `soft_name`, `soft_price`, `soft_validity`, `license_no`, `assigned`, `first_assign_date`, `status`) VALUES
(87, '2017-11-06', 'Kaspersky Antivirus', 1300, 365, 'abcdefghijkl', '0', '2017-11-06', 'Available'),
(88, '2017-11-06', 'Kaspersky Antivirus', 1234, 365, 'rfertergcvadsasfasd', '1', '2017-11-06', 'Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE IF NOT EXISTS `user_list` (
  `user_id` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) default NULL,
  `department` varchar(150) NOT NULL,
  `email_id` varchar(200) NOT NULL,
  `emp_status` varchar(100) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`user_id`, `first_name`, `last_name`, `department`, `email_id`, `emp_status`) VALUES
('0015', 'shah', 'sultan', 'HR and Admin', 'shah.sultan@qubee.com.bd', 'Permanent'),
('qb_3rd_floor', 'QUBEE', '3rd Floor', 'Others', '', 'Others'),
('0002', 'Bazlur', 'Rahman', 'HR and Admin', '', 'Permanent'),
('0004', 'Md. Ashik Khan', 'Razeeb', 'Finance', 'ashik.razeeb@qubee.com.bd', 'Permanent'),
('0005', 'Mohd. Khurshid ', 'Hasan', 'HR and Admin', 'khurshid.hasan@qubee.com.bd', 'Permanent'),
('0006', 'Adnan Imtiaz', 'Halim', 'Technology', 'imtiaz.halim@qubee.com.bd', 'Permanent'),
('0009', 'Jude Regian', 'Mendez', 'Finance', 'regian.mendez@qubee.com.bd', 'Permanent'),
('0025', 'Shanewaz', ' Ahmed', 'Technology', 'shanewaz.ahmed@qubee.com.bd', 'Permanent'),
('0027', 'Md. Faisal', ' Chowdhury', 'Technology', 'faisal.chowdhury@qubee.com.bd', 'Permanent'),
('0036', 'Jyoti ', ' Agarwala', 'Technology', 'jyoti.agarwala@qubee.com.bd', 'Permanent'),
('0037', 'Md. Mesbaur', ' Rahman', 'Commercial', 'mesbaur.rahman@qubee.com.bd', 'Permanent'),
('0040', 'Farjen ', 'Fazleh', 'Customer Services', 'farjen.fazleh@qubee.com.bd', 'Permanent'),
('0042', 'Shakiv Rizvi ', 'Hemel', 'Commercial', 'shakiv.rizvi@qubee.com.bd', 'Permanent'),
('0044', 'D. S. Faisal', ' Hyder', 'MTM', 'faisal.hyder@qubee.com.bd', 'Permanent'),
('0053', 'Mohammad Nur', ' Hossain', 'Customer Services', 'mohammad.hossain@qubee.com.bd', 'Permanent'),
('0055', 'Razib ', 'Mahmud', 'Finance', 'razib.mahmud@qubee.com.bd', 'Permanent'),
('0069', 'Mirza Md. Borhan', ' Kabir', 'Technology', 'mirza.borhan@qubee.com.bd', 'Permanent'),
('0070', 'A.K.M. Javed', ' Mansur ', 'Finance', 'javed.mansur@qubee.com.bd', 'Permanent'),
('0074', 'Zakia', ' Ahmed', 'Customer Services', 'zakia.ahmed@qubee.com.bd', 'Permanent'),
('0081', 'Hasnat', 'Ahsan', 'Technology', 'hasnat.ahsan@qubee.com.bd', 'Permanent'),
('0083', 'Purnendujyoti ', 'Pal', 'Technology', 'purnendu.pal@qubee.com.bd', 'Permanent'),
('0084', 'S.M. Didarul ', 'Abedin', 'Technology', 'Didarul.Abedin@qubee.com.bd', 'Permanent'),
('0096', 'Zia Hasan', ' Khan', 'Finance', 'zia.khan@qubee.com.bd', 'Permanent'),
('0101', 'Mst. Zahida', 'Sharmin', 'Customer Services', 'zahida.sharmin@qubee.com.bd', 'Permanent'),
('0105', 'Md. Jahir ', 'Uddin', 'Finance', 'Jahir.uddin@qubee.com.bd', 'Permanent'),
('0106', 'Md. Moshiur Rahman ', ' Bhuiyan', 'Technology', 'moshiur.rahman@qubee.com.bd', 'Permanent'),
('0109', 'Mohammad Moin', ' Uddin', 'Commercial', 'moin.uddin@qubee.com.bd', 'Permanent'),
('0122', 'Shah Zahidur', ' Rahman', 'Technology', 'zahidur.rahman@qubee.com.bd', 'Permanent'),
('0127', 'Md. Shyful', 'Islam', 'Finance', 'shyful.islam@qubee.com.bd', 'Permanent'),
('0130', 'Maherin Hossain', ' Tonny', 'Customer Services', 'maherin.hossain@qubee.com.bd', 'Permanent'),
('0135', 'Mainul ', ' Huda', 'MTM', 'mainul.huda@qubee.com.bd', 'Permanent'),
('0136', 'Kazi Mahtabul', ' Islam', 'Commercial', 'mahtabul.islam@qubee.com.bd', 'Permanent'),
('0138', 'Md. Shihabul', 'Islam', 'Commercial', 'shihabul.islam@qubee.com.bd', 'Permanent'),
('0140', 'M. Saiful ', ' Islam', 'Technology', 'saiful.islam@qubee.com.bd', 'Permanent'),
('0157', 'Ahmed Rakib', 'Uddin', 'Technology', 'ahmed.rakib@qubee.com.bd', 'Permanent'),
('0159', 'Ahmed Asif', 'Shahnewaz', 'Commercial', 'ahmed.asif@qubee.com.bd', 'Permanent'),
('0162', 'Kazi Tanvir ', 'Firuz', 'Commercial', 'tanvir.firuz@qubee.com.bd', 'Permanent'),
('0179', 'S.M. Ifthakar Uddin ', 'Shirajee', 'Commercial', 'ifthakar.shirajee@qubee.com.bd', 'Permanent'),
('0186', 'Fareen ', 'Mansur', 'Finance', 'fareen.mansur@qubee.com.bd', 'Permanent'),
('0187', 'Subrata ', ' Roy', 'Technology', 'subrata.roy@qubee.com.bd', 'Permanent'),
('0191', 'Md. Abdul ', 'Wohab', 'Technology', 'Abdul.Wohab@qubee.com.bd', 'Permanent'),
('0197', 'Mohammad Kaikobad', 'Shaikh', 'Finance', 'kaikobad.shaikh@qubee.com.bd', 'Permanent'),
('0198', 'Hasan', 'Mahmood', 'Customer Services', 'hasan.mahmood@qubee.com.bd', 'Permanent'),
('0203', 'Saniul', 'Islam', 'Customer Services', 'saniul.islam@qubee.com.bd', 'Permanent'),
('0218', 'Mohammad Wahid Siraj', ' Ruhel', 'Customer Services', 'wahid.ruhel@qubee.com.bd', 'Permanent'),
('0223', 'S.M. Arefin', 'Jamal', 'Customer Services', 'arefin.jamal@qubee.com.bd', 'Permanent'),
('0224', 'Azib Iftakher', 'Mahmood', 'Customer Services', 'azib.iftakher@qubee.com.bd', 'Permanent'),
('0226', 'S.M. Monjurul', 'Yusuf', 'Commercial', 'monjurul.yusuf@qubee.com.bd', 'Permanent'),
('0227', 'Rony ', 'Sarkar', 'Customer Services', 'rony.sarkar@qubee.com.bd', 'Permanent'),
('0228', 'Atanu ', 'Chowdhury', 'Customer Services', 'atanu.chowdhury@qubee.com.bd', 'Permanent'),
('0229', 'Md. Zakir', ' Hossain', 'Technology', 'zakir.hossain@qubee.com.bd', 'Permanent'),
('0232', 'Md. A Manik', 'Manik', 'Finance', '', 'Permanent'),
('0233', 'Kazi Mohammad ', 'Toaha', 'Customer Services', '', 'Permanent'),
('0234', 'Partha ', 'Sarkar', 'Customer Services', 'partha.sarkar@qubee.com.bd', 'Permanent'),
('0235', 'Asaduzzaman', ' Nur', 'Finance', 'asaduzzaman.nur@qubee.com.bd', 'Permanent'),
('0237', 'Md. Rezaur', ' Rahman', 'Commercial', 'rezaur.rahman@qubee.com.bd', 'Permanent'),
('0243', 'Md. Mahbubul', ' Alam', 'Technology', 'md.alam@qubee.com.bd', 'Permanent'),
('0245', 'Sadek Mohammad', ' Mohtadin', 'Finance', 'sadek.mohtadin@qubee.com.bd', 'Permanent'),
('0249', 'Md. Jahidul ', ' Islam', 'Commercial', '', 'Permanent'),
('0250', 'Md. Saifuddin ', 'Shaheen', 'Commercial', 'saif.shaheen@qubee.com.bd', 'Permanent'),
('0252', 'Kazi Shahidul', ' Kabir', 'Commercial', 'shahidul.kabir@qubee.com.bd', 'Permanent'),
('0254', 'Mohhammad Jamil ', 'Hussain', 'Commercial', '', 'Permanent'),
('0255', 'Tofayel Ahmed ', 'Mazumder', 'Customer Services', 'tofayel.ahmed@qubee.com.bd', 'Permanent'),
('0257', 'Mohammad', ' Ullah', 'Customer Services', 'mohammad.ullah@qubee.com.bd', 'Permanent'),
('0258', 'Abu Syeed', 'Abu Syeed', 'Finance', 'abu.syeed@qubee.com.bd', 'Permanent'),
('0259', 'Md. Mohi Uddin', ' Khan', 'Finance', 'mohi.khan@qubee.com.bd', 'Permanent'),
('0260', 'Raihan ', ' Ahmed', 'Customer Services', 'raihan.ahmed@qubee.com.bd', 'Permanent'),
('0263', 'Md. Mostafa', ' Jamal', 'Finance', '', 'Permanent'),
('0264', 'Mohammed Ali Reza', 'Chowdhoury', 'Business Development', 'ali.reza@qubee.com.bd', 'Permanent'),
('0266', 'Sohel Abdul', ' Mamun', 'Technology', 'sohel.mamun@qubee.com.bd', 'Permanent'),
('0268', 'Yasir Hasan Siraji', 'Yasir Hasan Siraji', 'Customer Services', 'Yasir.Hasan@qubee.com.bd', 'Permanent'),
('0269', 'Md. Sumon', ' Khan', 'Customer Services', 'sumon.khan@qubee.com.bd', 'Permanent'),
('0272', 'Muhammad Tajminur', ' Rahman', 'Customer Services', 'tajminur.rahman@qubee.com.bd', 'Permanent'),
('0273', 'Ishtiaque ', ' Ahmad', 'Technology', 'ishtiaque.ahmad@qubee.com.bd', 'Permanent'),
('0280', 'Golam Md.', 'Zahid', 'Technology', 'Golam.Zahid@qubee.com.bd', 'Permanent'),
('0285', 'Arup Raton', ' Das', 'Customer Services', 'Arup.Das@qubee.com.bd', 'Permanent'),
('0286', 'H.M. Faisal', ' Mahmud', 'Customer Services', '', 'Permanent'),
('0288', 'Shankar', ' Nandy', 'Technology', 'Shankar.Nandy@qubee.com.bd', 'Permanent'),
('0291', 'Hazzajul Islam Robin', 'Hazzajul Islam Robin', 'Commercial', 'Robin.Islam@qubee.com.bd', 'Permanent'),
('0292', 'Isa', 'Shukran', 'Technology', 'Isa.Shukran@Qubee.com.bd', 'Permanent'),
('0293', 'Sanjay Kumar', ' Agarwala', 'Commercial', 'Sanjay.Kumar@Qubee.com.bd', 'Permanent'),
('0294', 'Kazi Akramul', ' Haque', 'Technology', 'akramul.haque@Qubee.com.bd', 'Permanent'),
('0296', 'Tanim Ahmed', 'Tanim Ahmed', 'Customer Services', 'tanim.ahmed@Qubee.com.bd', 'Permanent'),
('0297', 'Md. Zahid Hossain Khan', 'Md. Zahid Hossain Khan', 'Customer Services', 'zahid.khan@Qubee.com.bd', 'Permanent'),
('0298', 'Md. Shariful Islam', 'Md. Shariful Islam', 'Customer Services', 'shariful.islam@Qubee.com.bd', 'Permanent'),
('0299', 'Rajesh', ' Barua', 'Customer Services', 'rajesh.barua@Qubee.com.bd', 'Permanent'),
('0301', 'Md. Tanvir Matin ', ' Chowdhury', 'Commercial', 'tanvir.matin@Qubee.com.bd', 'Permanent'),
('0303', 'Abdullah Al Fattah', 'Emon', 'Commercial', 'fattah.emon@Qubee.com.bd', 'Permanent'),
('0304', 'Md. Asraful Alam ', 'Sarker', 'Finance', 'Alam.Sarker@Qubee.com.bd', 'Permanent'),
('0305', 'Chaudhury Yeahia', 'Mostafiz', 'Technology', 'yeahia.mostafiz@Qubee.com.bd', 'Permanent'),
('0307', 'Sabbir Ahmed Chowdhury', 'Sabbir Ahmed Chowdhury', 'Technology', 'sabbir.ahmed@Qubee.com.bd', 'Permanent'),
('0309', 'Shah Muhammad Easer', 'Arafat', 'Technology', 'shah.arafat@Qubee.com.bd', 'Permanent'),
('0312', 'Manzur-E-', 'Khuda', 'Technology', 'manzur.khuda@Qubee.com.bd', 'Permanent'),
('0315', 'Md. Al-Amin', 'Md. Al-Amin', 'Customer Services', 'md.amin@Qubee.com.bd', 'Permanent'),
('0317', 'Mostafa Shakil', 'Mostafa Shakil', 'Finance', 'mostafa.shakil@Qubee.com.bd', 'Permanent'),
('0318', 'Md. Mainul Islam', 'Md. Mainul Islam', 'Finance', 'mainul.islam@Qubee.com.bd', 'Permanent'),
('0320', 'Marjana Afroz', 'Marjana Afroz', 'Finance', 'marjana.afroz@Qubee.com.bd', 'Permanent'),
('0324', 'M I Waliullah', ' Waliullah', 'Technology', 'm.waliullah@Qubee.com.bd', 'Permanent'),
('0325', 'Abdullah Al ', ' Mahmud', 'Technology', 'abdullah.mahmud@Qubee.com.bd', 'Permanent'),
('0327', 'Badal', ' Das', 'Technology', 'badal.das@Qubee.com.bd', 'Permanent'),
('0332', 'A.K.M. Rashed-ul-', 'Hasan', 'Technology', 'rashed.hasan@Qubee.com.bd', 'Permanent'),
('0335', 'Md. Shafiul', 'Alam', 'Technology', 'shafiul.alam@Qubee.com.bd', 'Permanent'),
('0336', 'Md. Rassel', 'Chowdhury', 'Technology', 'rassel.chowdhury@Qubee.com.bd', 'Permanent'),
('0337', 'Md. Shamim-Al', 'Mamun', 'Technology', '', 'Permanent'),
('0339', 'Mohammad Seefatur', ' Rahman', 'Customer Services', 'Seefatur.Rahman@Qubee.com.bd', 'Permanent'),
('0343', 'Adit Dewan', 'Adit Dewan', 'Technology', '', 'Permanent'),
('0345', 'Tanvir Hossain', 'Tanvir Hossain', 'Technology', 'Tanvir.Hossain@Qubee.com.bd', 'Permanent'),
('0348', 'Swagato ', ' Sarker', 'Commercial', 'Swagato.Sarker@Qubee.com.bd', 'Permanent'),
('0350', 'Sifat ', 'Sadia', 'Technology', 'sifat.sadia@Qubee.com.bd', 'Permanent'),
('0352', 'Md. Muzaddid ', ' Ali', 'Technology', 'muzaddid.ali@Qubee.com.bd', 'Permanent'),
('0353', 'Asraful Arefin', 'Asraful Arefin', 'Customer Services', 'Asraful.Arefin@Qubee.com.bd', 'Permanent'),
('0355', 'Rakibul Hassan', 'Rakibul Hassan', 'Technology', 'rakibul.hassan@Qubee.com.bd', 'Permanent'),
('0357', 'Monjurul Alam', 'Babon', 'Commercial', 'Monjurul.Alam@Qubee.com.bd', 'Permanent'),
('0361', 'Himadri Nandi', 'Himadri Nandi', 'Technology', 'Himadri.Nandi@Qubee.com.bd', 'Permanent'),
('0363', 'Mohammed Nazimuddin all', ' Mamun', 'Technology', 'Nazimuddin.Mamun@Qubee.com.bd', 'Permanent'),
('0364', 'Md. Nasir ', ' Uddin', 'Customer Services', 'Md. Nasir Uddin@Qubee.com.bd', 'Permanent'),
('0366', 'Md. Abu', 'Rasel', 'Customer Services', 'Abu.RaselAbu@qubee.com.bd', 'Permanent'),
('0367', 'Md. Sakawat', ' Hossain', 'Customer Services', 'Sakawat.Hossain@qubee.com.bd', 'Permanent'),
('0368', 'Md. Tajul Islam', 'Sarker', 'Customer Services', 'Tajul.Islam@qubee.com.bd', 'Permanent'),
('0369', 'Muhammad Masood ', ' Mian', 'Customer Services', 'Masood.Mian @qubee.com.bd ', 'Permanent'),
('0370', 'Mohammad Farhad', ' Chowdhury', 'Technology', 'Farhad.Chowdhury@qubee.com.bd ', 'Permanent'),
('0371', 'Rubaiyat', ' Arefin', 'Technology', 'Rubaiyat.Arefin@qubee.com.bd ', 'Permanent'),
('0372', 'Md. Ashikur', ' Rahman', 'Technology', 'Ashikur.Rahman@qubee.com.bd ', 'Permanent'),
('0373', 'Nusrat Haque', 'Nusrat Haque', 'HR and Admin', 'Nusrat.Haque@qubee.com.bd', 'Permanent'),
('0374', 'Jiban Kumar', ' Ray', 'Technology', 'Jiban.Ray@qubee.com.bd', 'Permanent'),
('0375', 'Goutom Kumar', 'Dutta', 'Commercial', 'Goutom.Dutta@qubee.com.bd', 'Permanent'),
('0379', 'Tasfia', ' Rahman', 'Technology', 'Tasfia.Rahman@qubee.com.bd', 'Permanent'),
('0380', 'Md. Abul Fayso', ' Azad', 'Technology', 'Faysol.Azad@qubee.com.bd', 'Permanent'),
('0382', 'Tanvir Asif', 'Tanvir Asif', 'Technology', 'tanvir.asif@qubee.com.bd', 'Permanent'),
('0385', 'Parveen Ara Ferdousi Al', ' Gafuri', 'Customer Services', 'Parveen.Ara@qubee.com.bd', 'Permanent'),
('0386', 'Md. Fuad Tareq Bin', 'Iman', 'Customer Services', 'Fuad.Tareq@qubee.com.bd', 'Permanent'),
('0388', 'Munaf Mojib', 'Chowdhury', 'Commercial', 'Munaf.Chowdhury@qubee.com.bd', 'Permanent'),
('0390', 'Md. Iftekhar', 'Hossain', 'Commercial', 'Iftekhar.Hossain@qubee.com.bd', 'Permanent'),
('0391', 'Md. Abdullah Al', 'Masum', 'Commercial', 'Abdullah.Masum@qubee.com.bd', 'Permanent'),
('0392', 'Md. Sakhawat', 'Abedin', 'Technology', 'sakhawat.abedin@qubee.com.bd', 'Permanent'),
('0393', 'Munira ', 'Tabassum', 'HR and Admin', 'Munira.Tabassum@qubee.com.bd', 'Permanent'),
('0394', 'Khandkar Tahsin ', ' Faruque', 'Commercial', 'Khandkar.Tahsin@qubee.com.bd', 'Permanent'),
('0395', 'Abu Sadat Mohammad', ' Sayem', 'Technology', 'M.Sayem@qubee.com.bd', 'Permanent'),
('0396', 'Kazi Ahsanuzzaman', ' Ahsanuzzaman', 'Technology', 'Kazi.Ahsan@qubee.com.bd', 'Permanent'),
('0397', 'Md. Imranul', ' Islam', 'Technology', 'Imranul.Islam@qubee.com.bd', 'Permanent'),
('0398', 'Md. Baktier Syed', 'Mollah', 'Commercial', 'Baktier.Syeed@qubee.com.bd', 'Permanent'),
('0399', 'Jonaid Abdullah', ' Abdullah', 'Commercial', 'Jonaid.Abdullah@qubee.com.bd', 'Permanent'),
('0400', 'Jabin Fatema', 'Jabin Fatema', 'HR and Admin', 'Jabin.Fatema@qubee.com.bd', 'Permanent'),
('C-098', 'Kamal Hossain', 'Hossain', 'Technology', 'Kamal.Hossain@qubee.com.bd', 'Contractual'),
('C-111', 'Tarequl Islam', 'Islam', 'Technology', 'Tarequl.Islam@qubee.com.bd', 'Contractual'),
('C-119', 'Rifat Bin', 'Islam', 'Commercial', 'Rifat.Islam@qubee.com.bd', 'Contractual'),
('C-126', 'Israfil Hossain', 'Israfil Hossain', 'Technology', 'Israfil.Hossain@qubee.com.bd', 'Contractual'),
('C-136', 'Md. Abdul Momen', 'Sarkar', 'Technology', 'Abdul.Momen@qubee.com.bd', 'Contractual'),
('C-137', 'Basudev Kumar', ' Sarkar', 'Technology', 'Basudev.Sarkar@qubee.com.bd', 'Contractual'),
('C-144', 'A.N.M. Shahebul ', 'Hasan', 'Technology', 'Shahebul.Hasan@qubee.com.bd', 'Contractual'),
('C-148', 'Shamim Sobnom', 'Sobnom', 'Commercial', 'Shamim.Sobnom@qubee.com.bd', 'Contractual'),
('C-151', 'Md. Nazmul Hasan', ' Parvez', 'Commercial', 'Nazmul.Hasan@qubee.com.bd', 'Contractual'),
('C-156', 'Kh. Asker Ebeny', 'Shik', 'Finance', 'Askar.Shaik@qubee.com.bd', 'Contractual'),
('C-159', 'Terrence Victor', 'Baroi', 'Commercial', '', 'Contractual'),
('C-161', 'Abdullah Al', ' Mamun', 'Commercial', 'Abdullah.AlMamun@qubee.com.bd', 'Contractual'),
('C-162', 'Rudro Mohiuddin', ' Mohiuddin', 'Technology', 'Rudro.Mohiuddin@qubee.com.bd', 'Contractual'),
('C-168', 'Imteaz Hossain', ' Hossain', 'Commercial', 'Imteaz.Hossain@qubee.com.bd', 'Contractual'),
('C-170', 'Md. Hasinul', ' Islam', 'Commercial', 'Hasinul.Islam@qubee.com.bd', 'Contractual'),
('C-171', 'Hossain Md. Sajib', ' Sajib', 'Commercial', 'Md.Sajib@qubee.com.bd', 'Contractual'),
('C-177', 'Md. Ashadun', ' Nabi', 'Commercial', 'Ashadun.Nabi@qubee.com.bd', 'Contractual'),
('C-178', 'Md. Zobaidul', 'Hoque', 'Finance', 'Zobaidul.Hoque@qubee.com.bd', 'Contractual'),
('C-179', 'Mohammad Ashraful', ' Islam', 'Commercial', 'Ashraful.Islam@qubee.com.bd', 'Contractual'),
('C-180', 'Md. Arifur', 'Rahman', 'Commercial', 'Arifur.Rahman@qubee.com.bd', 'Contractual'),
('IT Infrastructure ', 'IT', 'STORE', 'Technology', 'ithelpdesk@qubee.com.bd', 'Others');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
