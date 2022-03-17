-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2022 at 11:06 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trainfreebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `adminId` int(5) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adminId`, `fullName`, `email`, `password`, `profile`) VALUES
(1, 'EL Ayachi Abdelmajid', 'elayachiabdel2001@gmail.com', 'admin', '614320.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientId` int(5) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientId`, `fullName`, `email`, `password`, `profile`) VALUES
(4, 'Majid EL AYACHI', 'elayachiabdel2001@gmail.com', '123', '996613.jpg'),
(9, 'ABDELMAJID EL AYACHI', 'A.ELAYACHI@youcode.ma', '1234', 'default.png'),
(10, 'Ouassama ouassama', 'oussama@gmail.com', '', '453099.jpg'),
(11, 'Ouassama ouassama', 'oussama@gmail.com', '', 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `ID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`ID`, `fullName`, `email`, `message`) VALUES
(1, 'Schwartz', 'bizy@mailinator.com', 'Omnis quos rem paria'),
(2, 'Weaver', 'zuriru@mailinator.com', 'Aperiam illum saepe');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservationId` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `travelId` int(11) NOT NULL,
  `Valid` int(1) NOT NULL DEFAULT 1,
  `bookingTime` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL DEFAULT '--',
  `seat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservationId`, `code`, `travelId`, `Valid`, `bookingTime`, `email`, `seat`) VALUES
(10, 'T1V36S1 ', 36, 1, '2022-03-02 16:33:53', '--', 2),
(144, 'T1 V36 S3', 36, 1, '2022-03-02 19:43:15', '--', 3),
(145, 'T1 V36 S4', 36, 1, '2022-03-02 19:43:15', '--', 4),
(146, 'T1 V36 S5', 36, 1, '2022-03-02 19:44:31', '--', 5),
(147, 'T1 V36 S6', 36, 1, '2022-03-02 19:44:31', '--', 6),
(148, 'T1 V36 S7', 36, 1, '2022-03-02 19:44:31', '--', 7),
(149, 'T1 V36 S8', 36, 1, '2022-03-02 19:44:31', '--', 8),
(150, 'T1 V36 S9', 36, 1, '2022-03-02 19:44:32', '--', 9),
(151, 'T1 V36 S10', 36, 1, '2022-03-02 19:44:32', '--', 10),
(152, 'T1 V36 S11', 36, 1, '2022-03-02 19:44:32', '--', 11),
(153, 'T1 V36 S12', 36, 1, '2022-03-02 21:46:52', '--', 12),
(154, 'T1 V36 S13', 36, 1, '2022-03-02 21:46:52', '--', 13),
(155, 'T1 V36 S14', 36, 1, '2022-03-02 21:46:52', '--', 14),
(156, 'T1 V36 S15', 36, 1, '2022-03-02 21:46:52', '--', 15),
(157, 'T1 V36 S16', 36, 1, '2022-03-02 21:46:52', '--', 16),
(158, 'T1 V36 S17', 36, 1, '2022-03-02 21:59:33', '--', 17),
(159, 'T1 V36 S18', 36, 1, '2022-03-02 21:59:33', '--', 18),
(160, 'T1 V36 S19', 36, 1, '2022-03-02 21:59:33', '--', 19),
(161, 'T1 V36 S20', 36, 1, '2022-03-02 21:59:34', '--', 20),
(162, 'T1 V36 S21', 36, 1, '2022-03-02 21:59:34', '--', 21),
(163, 'T1 V36 S22', 36, 1, '2022-03-02 22:04:29', '--', 22),
(164, 'T1 V36 S23', 36, 1, '2022-03-02 22:04:29', '--', 23),
(165, 'T1 V36 S24', 36, 1, '2022-03-02 22:04:29', '--', 24),
(166, 'T1 V36 S25', 36, 1, '2022-03-02 22:04:29', '--', 25),
(167, 'T1 V36 S26', 36, 1, '2022-03-02 22:04:29', '--', 26),
(168, 'T1 V36 S27', 36, 1, '2022-03-02 22:07:14', '--', 27),
(169, 'T1 V36 S28', 36, 1, '2022-03-02 22:07:14', '--', 28),
(170, 'T1 V36 S29', 36, 1, '2022-03-02 22:07:14', '--', 29),
(171, 'T1 V36 S30', 36, 1, '2022-03-02 22:07:14', '--', 30),
(172, 'T1 V36 S31', 36, 1, '2022-03-02 22:07:14', '--', 31),
(173, 'T1 V36 S32', 36, 1, '2022-03-02 22:07:34', '--', 32),
(174, 'T1 V36 S33', 36, 1, '2022-03-02 22:07:34', '--', 33),
(175, 'T1 V36 S34', 36, 1, '2022-03-02 22:07:34', '--', 34),
(176, 'T1 V36 S35', 36, 1, '2022-03-02 22:08:24', '--', 35),
(177, 'T1 V36 S36', 36, 1, '2022-03-02 22:08:24', '--', 36),
(178, 'T1 V36 S37', 36, 1, '2022-03-02 22:08:25', '--', 37),
(179, 'T1 V36 S38', 36, 1, '2022-03-02 22:14:27', '--', 38),
(180, 'T1 V36 S39', 36, 1, '2022-03-02 22:14:27', '--', 39),
(181, 'T1 V36 S40', 36, 1, '2022-03-02 22:14:27', '--', 40),
(182, 'T1 V36 S41', 36, 1, '2022-03-02 22:48:02', '--', 41),
(183, 'T1 V36 S42', 36, 1, '2022-03-02 22:48:02', '--', 42),
(184, 'T1 V36 S43', 36, 1, '2022-03-02 23:11:23', '--', 43),
(185, 'T1 V36 S44', 36, 1, '2022-03-02 23:11:23', '--', 44),
(186, 'T1 V36 S45', 36, 1, '2022-03-02 23:11:24', '--', 45),
(187, 'T1 V36 S46', 36, 1, '2022-03-02 23:11:24', '--', 46),
(188, 'T1 V36 S47', 36, 1, '2022-03-02 23:11:24', '--', 47),
(189, 'T1 V36 S48', 36, 1, '2022-03-02 23:12:00', '--', 48),
(190, 'T1 V36 S49', 36, 1, '2022-03-02 23:12:00', '--', 49),
(191, 'T1 V36 S50', 36, 1, '2022-03-02 23:12:00', '--', 50),
(192, 'T1 V36 S51', 36, 1, '2022-03-02 23:12:00', '--', 51),
(193, 'T1 V36 S52', 36, 1, '2022-03-02 23:12:00', '--', 52),
(194, 'T1 V36 S53', 36, 1, '2022-03-02 23:12:21', '--', 53),
(195, 'T1 V36 S54', 36, 1, '2022-03-02 23:12:21', '--', 54),
(196, 'T1 V36 S55', 36, 1, '2022-03-02 23:12:21', '--', 55),
(197, 'T1 V36 S56', 36, 1, '2022-03-02 23:12:21', '--', 56),
(198, 'T1 V36 S57', 36, 1, '2022-03-02 23:12:21', '--', 57),
(199, 'T1 V36 S58', 36, 1, '2022-03-02 23:13:00', '--', 58),
(200, 'T1 V36 S59', 36, 1, '2022-03-02 23:13:00', '--', 59),
(201, 'T1 V36 S60', 36, 1, '2022-03-02 23:13:00', '--', 60),
(202, 'T1 V36 S61', 36, 1, '2022-03-02 23:13:00', '--', 61),
(203, 'T1 V36 S62', 36, 1, '2022-03-02 23:13:00', '--', 62),
(204, 'T1 V36 S63', 36, 1, '2022-03-02 23:13:52', '--', 63),
(205, 'T1 V36 S64', 36, 1, '2022-03-02 23:13:52', '--', 64),
(206, 'T1 V36 S65', 36, 1, '2022-03-02 23:13:52', '--', 65),
(207, 'T1 V36 S66', 36, 1, '2022-03-02 23:13:52', '--', 66),
(208, 'T1 V36 S67', 36, 1, '2022-03-02 23:13:52', '--', 67),
(209, 'T1 V36 S68', 36, 1, '2022-03-02 23:14:44', '--', 68),
(210, 'T1 V36 S69', 36, 1, '2022-03-02 23:14:44', '--', 69),
(211, 'T1 V36 S70', 36, 1, '2022-03-02 23:14:44', '--', 70),
(212, 'T1 V36 S71', 36, 1, '2022-03-02 23:14:45', '--', 71),
(213, 'T2 V44 S1', 44, 1, '2022-03-03 10:30:16', '--', 1),
(214, 'T2 V44 S2', 44, 1, '2022-03-03 10:30:16', '--', 2),
(215, 'T2 V44 S3', 44, 1, '2022-03-03 10:31:09', '--', 3),
(216, 'T2 V44 S4', 44, 1, '2022-03-03 10:31:10', '--', 4),
(217, 'T2 V44 S5', 44, 1, '2022-03-03 10:31:10', '--', 5),
(218, 'T2 V44 S6', 44, 1, '2022-03-03 16:20:53', '--', 6),
(219, 'T2 V44 S7', 44, 1, '2022-03-03 16:20:53', '--', 7),
(220, 'T2 V44 S8', 44, 1, '2022-03-03 16:21:57', '--', 8),
(221, 'T2 V44 S9', 44, 0, '2022-03-03 16:29:08', 'elayachiabdel2001@gmail.com', 9),
(222, 'T2 V44 S10', 44, 0, '2022-03-03 16:29:08', 'elayachiabdel2001@gmail.com', 10),
(223, 'T2 V44 S11', 44, 1, '2022-03-03 16:29:08', 'elayachiabdel2001@gmail.com', 11),
(750, 'T1 V42 S1', 42, 1, '2022-03-11 11:12:22', 'elayachiabdel2001@gmail.com', 1),
(751, 'T1 V42 S2', 42, 1, '2022-03-11 11:24:00', 'A.ELAYACHI@youcode.ma', 2),
(752, 'T1 V42 S3', 42, 1, '2022-03-11 11:24:01', 'A.ELAYACHI@youcode.ma', 3),
(753, 'T1 V42 S4', 42, 1, '2022-03-11 11:25:05', 'A.ELAYACHI@youcode.ma', 4),
(754, 'T1 V42 S5', 42, 1, '2022-03-11 11:25:05', 'A.ELAYACHI@youcode.ma', 5),
(755, 'T1 V42 S6', 42, 0, '2022-03-13 16:28:43', 'elayachiabdel2001@gmail.com', 6),
(756, 'T1 V42 S7', 42, 0, '2022-03-13 16:28:43', 'elayachiabdel2001@gmail.com', 7),
(757, 'T1 V42 S8', 42, 0, '2022-03-14 11:18:06', 'elayachiabdel2001@gmail.com', 8),
(758, 'T1 V42 S9', 42, 0, '2022-03-14 11:18:06', 'elayachiabdel2001@gmail.com', 9),
(759, 'T1 V42 S10', 42, 0, '2022-03-14 11:20:12', 'elayachiabdel2001@gmail.com', 10),
(760, 'T1 V42 S11', 42, 0, '2022-03-14 11:20:13', 'elayachiabdel2001@gmail.com', 11),
(761, 'T1 V42 S12', 42, 1, '2022-03-16 14:27:44', 'elayachiabdel2001@gmail.com', 12),
(762, 'T1 V45 S1', 45, 0, '2022-03-16 23:41:22', 'elayachiabdel2001@gmail.com', 1),
(763, 'T1 V45 S2', 45, 1, '2022-03-17 00:26:54', 'elayachiabdel2001@gmail.com', 2),
(764, 'T1 V45 S3', 45, 1, '2022-03-17 00:26:54', 'elayachiabdel2001@gmail.com', 3),
(765, 'T1 V45 S4', 45, 1, '2022-03-17 00:26:54', 'elayachiabdel2001@gmail.com', 4),
(766, 'T1 V45 S5', 45, 1, '2022-03-17 00:26:54', 'elayachiabdel2001@gmail.com', 5),
(767, 'T1 V46 S1', 46, 1, '2022-03-17 09:24:31', 'oussama@gmail.com', 1),
(768, 'T1 V46 S2', 46, 1, '2022-03-17 09:24:31', 'oussama@gmail.com', 2),
(769, 'T1 V46 S3', 46, 0, '2022-03-17 09:24:31', 'oussama@gmail.com', 3),
(770, 'T1 V46 S4', 46, 1, '2022-03-17 10:04:40', 'oussama@gmail.com', 4),
(771, 'T1 V46 S5', 46, 1, '2022-03-17 10:38:19', 'elayachiabdel2001@gmail.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticketId` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `reservationId` int(11) NOT NULL,
  `Valid` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticketId`, `code`, `reservationId`, `Valid`) VALUES
(3, 'T1 V36 S3', 144, 1),
(4, 'T1 V36 S4', 145, 1),
(5, 'T1 V36 S5', 146, 1),
(6, 'T1 V36 S6', 147, 1),
(7, 'T1 V36 S7', 148, 1),
(8, 'T1 V36 S8', 149, 1),
(9, 'T1 V36 S9', 150, 1),
(10, 'T1 V36 S10', 151, 1),
(11, 'T1 V36 S11', 152, 1),
(12, 'T1 V36 S12', 153, 1),
(13, 'T1 V36 S13', 154, 1),
(14, 'T1 V36 S14', 155, 1),
(15, 'T1 V36 S15', 156, 1),
(16, 'T1 V36 S16', 157, 1),
(17, 'T1 V36 S17', 158, 1),
(18, 'T1 V36 S18', 159, 1),
(19, 'T1 V36 S19', 160, 1),
(20, 'T1 V36 S20', 161, 1),
(21, 'T1 V36 S21', 162, 1),
(22, 'T1 V36 S22', 163, 1),
(23, 'T1 V36 S23', 164, 1),
(24, 'T1 V36 S24', 165, 1),
(25, 'T1 V36 S25', 166, 1),
(26, 'T1 V36 S26', 167, 1),
(27, 'T1 V36 S27', 168, 1),
(28, 'T1 V36 S28', 169, 1),
(29, 'T1 V36 S29', 170, 1),
(30, 'T1 V36 S30', 171, 1),
(31, 'T1 V36 S31', 172, 1),
(32, 'T1 V36 S32', 173, 1),
(33, 'T1 V36 S33', 174, 1),
(34, 'T1 V36 S34', 175, 1),
(35, 'T1 V36 S35', 176, 1),
(36, 'T1 V36 S36', 177, 1),
(37, 'T1 V36 S37', 178, 1),
(38, 'T1 V36 S38', 179, 1),
(39, 'T1 V36 S39', 180, 1),
(40, 'T1 V36 S40', 181, 1),
(41, 'T1 V36 S41', 182, 1),
(42, 'T1 V36 S42', 183, 1),
(43, 'T1 V36 S43', 184, 1),
(44, 'T1 V36 S44', 185, 1),
(45, 'T1 V36 S45', 186, 1),
(46, 'T1 V36 S46', 187, 1),
(47, 'T1 V36 S47', 188, 1),
(48, 'T1 V36 S48', 189, 1),
(49, 'T1 V36 S49', 190, 1),
(50, 'T1 V36 S50', 191, 1),
(51, 'T1 V36 S51', 192, 1),
(52, 'T1 V36 S52', 193, 1),
(53, 'T1 V36 S53', 194, 1),
(54, 'T1 V36 S54', 195, 1),
(55, 'T1 V36 S55', 196, 1),
(56, 'T1 V36 S56', 197, 1),
(57, 'T1 V36 S57', 198, 1),
(58, 'T1 V36 S58', 199, 1),
(59, 'T1 V36 S59', 200, 1),
(60, 'T1 V36 S60', 201, 1),
(61, 'T1 V36 S61', 202, 1),
(62, 'T1 V36 S62', 203, 1),
(63, 'T1 V36 S63', 204, 1),
(64, 'T1 V36 S64', 205, 1),
(65, 'T1 V36 S65', 206, 1),
(66, 'T1 V36 S66', 207, 1),
(67, 'T1 V36 S67', 208, 1),
(68, 'T1 V36 S68', 209, 1),
(69, 'T1 V36 S69', 210, 1),
(70, 'T1 V36 S70', 211, 1),
(71, 'T1 V36 S71', 212, 1),
(72, 'T2 V44 S1', 213, 1),
(73, 'T2 V44 S2', 214, 1),
(74, 'T2 V44 S3', 215, 1),
(75, 'T2 V44 S4', 216, 1),
(76, 'T2 V44 S5', 217, 1),
(77, 'T2 V44 S6', 218, 1),
(78, 'T2 V44 S7', 219, 1),
(79, 'T2 V44 S8', 220, 1),
(80, 'T2 V44 S9', 221, 1),
(81, 'T2 V44 S10', 222, 1),
(82, 'T2 V44 S11', 223, 1),
(83, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(84, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(85, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(86, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(87, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(88, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(89, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(90, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(91, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(92, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(93, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(94, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(95, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(96, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(97, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(98, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(99, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(100, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(101, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(102, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(103, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(104, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(105, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(106, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(107, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(108, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(109, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(110, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(111, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(112, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(113, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(114, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(115, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(116, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(117, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(118, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(119, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(120, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(121, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(122, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(123, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(124, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(125, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(126, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(127, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(128, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(129, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(130, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(131, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(132, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(133, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(134, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(135, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(136, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(137, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(138, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(139, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(140, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(141, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(142, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(143, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(144, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(145, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(146, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(147, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(148, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(149, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(150, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(151, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(152, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(153, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(154, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(155, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(156, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(157, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(158, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(159, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(160, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(161, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(162, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(163, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(164, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(165, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(166, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(167, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(168, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(169, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(170, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(171, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(172, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(173, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(174, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(175, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(176, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(177, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(178, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(179, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(180, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(181, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(182, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(183, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(184, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(185, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(186, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(187, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(188, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(189, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(190, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(191, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(192, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(193, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(194, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(195, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(196, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(197, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(198, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(199, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(200, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(201, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(202, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(203, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(204, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(205, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(206, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(207, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(208, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(209, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(210, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(211, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(212, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(213, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(214, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(215, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(216, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(217, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(218, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(219, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(220, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(221, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(222, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(223, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(224, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(225, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(226, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(227, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(228, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(229, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(230, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(231, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(232, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(233, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(234, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(235, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(236, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(237, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(238, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(239, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(240, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(241, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(242, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(243, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(244, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(245, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(246, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(247, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(248, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1);
INSERT INTO `tickets` (`ticketId`, `code`, `reservationId`, `Valid`) VALUES
(249, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(250, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(251, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(252, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(253, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(254, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(255, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(256, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(257, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(258, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(259, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(260, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(261, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(262, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(263, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(264, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(265, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(266, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(267, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(268, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(269, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(270, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(271, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(272, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(273, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(274, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(275, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(276, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(277, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(278, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(279, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(280, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(281, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(282, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(283, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(284, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(285, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(286, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(287, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(288, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(289, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(290, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(291, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(292, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(293, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(294, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(295, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(296, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(297, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(298, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(299, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(300, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(301, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(302, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(303, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(304, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(305, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(306, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(307, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(308, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(309, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(310, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(311, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(312, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(313, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(314, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(315, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(316, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(317, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(318, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(319, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(320, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(321, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(322, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(323, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(324, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(325, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(326, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(327, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(328, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(329, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(330, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(331, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(332, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(333, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(334, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(335, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(336, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(337, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(338, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(339, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(340, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(341, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(342, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(343, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(344, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(345, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(346, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(347, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(348, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(349, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(350, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(351, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(352, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(353, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(354, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(355, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(356, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(357, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(358, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(359, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(360, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(361, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(362, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(363, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(364, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(365, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(366, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(367, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(368, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(369, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(370, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(371, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(372, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(373, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(374, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(375, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(376, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(377, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(378, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(379, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(380, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(381, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(382, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(383, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(384, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(385, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(386, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(387, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(388, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(389, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(390, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(391, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(392, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(393, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(394, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(395, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(396, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(397, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(398, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(399, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(400, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(401, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(402, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(403, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(404, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(405, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(406, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(407, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(408, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(409, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(410, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(411, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(412, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(413, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(414, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(415, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(416, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(417, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(418, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(419, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(420, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(421, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1);
INSERT INTO `tickets` (`ticketId`, `code`, `reservationId`, `Valid`) VALUES
(422, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(423, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(424, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(425, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(426, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(427, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(428, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(429, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(430, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(431, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(432, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(433, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(434, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(435, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(436, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(437, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(438, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(439, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(440, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(441, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(442, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(443, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(444, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(445, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(446, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(447, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(448, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(449, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(450, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(451, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(452, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(453, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(454, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(455, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(456, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(457, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(458, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(459, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(460, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(461, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(462, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(463, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(464, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(465, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(466, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(467, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(468, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(469, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(470, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(471, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(472, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(473, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(474, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(475, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(476, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(477, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(478, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(479, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(480, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(481, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(482, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(483, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(484, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(485, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(486, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(487, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(488, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(489, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(490, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(491, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(492, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(493, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(494, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(495, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(496, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(497, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(498, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(499, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(500, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(501, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(502, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(503, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(504, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(505, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(506, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(507, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(508, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(509, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(510, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(511, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(512, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(513, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(514, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(515, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(516, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(517, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(518, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(519, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(520, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(521, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(522, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(523, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(524, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(525, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(526, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(527, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(528, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(529, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(530, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(531, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(532, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(533, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(534, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(535, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(536, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(537, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(538, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(539, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(540, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(541, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(542, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(543, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(544, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(545, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(546, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(547, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(548, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(549, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(550, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(551, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(552, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(553, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(554, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(555, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(556, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(557, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(558, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(559, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(560, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(561, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(562, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(563, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(564, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(565, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(566, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(567, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(568, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(569, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(570, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(571, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(572, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(573, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(574, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(575, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(576, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(577, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(578, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(579, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(580, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(581, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(582, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(583, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(584, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(585, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(586, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(587, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(588, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(589, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(590, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(591, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(592, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(593, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(594, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1);
INSERT INTO `tickets` (`ticketId`, `code`, `reservationId`, `Valid`) VALUES
(595, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(596, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(597, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(598, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(599, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(600, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(601, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(602, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(603, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(604, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(605, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(606, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(607, 'T<br />\r\n<b>Warning</b>:  Undefined variable $travel in <b>C:\\xampp\\htdocs\\php projects\\Briefs\\mvc-oop-brief\\app\\Views\\client\\booking.php</b> on line <b>205</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:\\x', 223, 1),
(608, 'T1 V42 S1', 223, 1),
(609, 'T1 V42 S1', 223, 1),
(610, 'T1 V42 S1', 750, 1),
(611, 'T1 V42 S2', 751, 1),
(612, 'T1 V42 S3', 752, 1),
(613, 'T1 V42 S4', 753, 1),
(614, 'T1 V42 S5', 754, 1),
(615, 'T1 V42 S6', 755, 1),
(616, 'T1 V42 S7', 756, 1),
(617, 'T1 V42 S8', 757, 1),
(618, 'T1 V42 S9', 758, 1),
(619, 'T1 V42 S10', 759, 1),
(620, 'T1 V42 S11', 760, 1),
(621, 'T1 V42 S12', 761, 1),
(622, 'T1 V45 S1', 762, 1),
(623, 'T1 V45 S2', 763, 1),
(624, 'T1 V45 S3', 764, 1),
(625, 'T1 V45 S4', 765, 1),
(626, 'T1 V45 S5', 766, 1),
(627, 'T1 V46 S1', 767, 1),
(628, 'T1 V46 S2', 768, 1),
(629, 'T1 V46 S3', 769, 1),
(630, 'T1 V46 S4', 770, 1),
(631, 'T1 V46 S5', 771, 1),
(632, 'T1 V46 S6', 771, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `trainId` int(5) NOT NULL,
  `seatNumber` int(10) NOT NULL,
  `stations` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`trainId`, `seatNumber`, `stations`) VALUES
(1, 2100, 'casa,settat'),
(2, 900, 'Casa,safi,Essaouira,Agadir');

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `travelId` int(11) NOT NULL,
  `destinationStart` varchar(255) NOT NULL,
  `destinationEnd` varchar(255) NOT NULL,
  `departureTime` datetime NOT NULL,
  `arrivalTime` datetime NOT NULL,
  `price` float NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trainId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travels`
--

INSERT INTO `travels` (`travelId`, `destinationStart`, `destinationEnd`, `departureTime`, `arrivalTime`, `price`, `status`, `trainId`) VALUES
(36, 'Safi', 'Casablanca', '2022-03-04 16:31:00', '2022-03-10 14:33:00', 80, 0, 1),
(42, 'Safi', 'Rabat', '2022-03-16 16:40:00', '2022-03-16 18:05:00', 187, 0, 1),
(44, 'Meknes', 'Nador', '2022-03-04 10:27:00', '2022-03-04 14:28:00', 99, 0, 2),
(45, 'Casablanca', 'Rabat', '0000-00-00 00:00:00', '2022-03-18 10:00:00', 55, 0, 1),
(46, 'Safi', 'Tanger', '2022-03-18 10:02:00', '2022-03-18 13:03:00', 200, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clientId`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservationId`),
  ADD KEY `getTravelToRes` (`travelId`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketId`),
  ADD KEY `getTicketInfo` (`reservationId`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`trainId`);

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`travelId`),
  ADD KEY `trainInfo` (`trainId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `adminId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clientId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticketId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=633;

--
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `trainId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `travels`
--
ALTER TABLE `travels`
  MODIFY `travelId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `getTravelToRes` FOREIGN KEY (`travelId`) REFERENCES `travels` (`travelId`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `getTicketInfo` FOREIGN KEY (`reservationId`) REFERENCES `reservations` (`reservationId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `travels`
--
ALTER TABLE `travels`
  ADD CONSTRAINT `trainInfo` FOREIGN KEY (`trainId`) REFERENCES `trains` (`trainId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
