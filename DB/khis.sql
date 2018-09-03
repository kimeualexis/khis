-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 03, 2018 at 03:10 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khis`
--

-- --------------------------------------------------------

--
-- Table structure for table `chrio`
--

CREATE TABLE `chrio` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chrio`
--

INSERT INTO `chrio` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'manager', 'c6df0d42e69033b5b7c4195c35f3be51', '2018-08-09 04:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'manager', 'c6df0d42e69033b5b7c4195c35f3be51', '2018-08-09 04:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblactivities`
--

CREATE TABLE `tblactivities` (
  `id` int(11) NOT NULL,
  `Indicator` varchar(100) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `SDate` date NOT NULL,
  `FDate` date NOT NULL,
  `ActivityImage` varchar(100) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblactivities`
--

INSERT INTO `tblactivities` (`id`, `Indicator`, `Title`, `Description`, `SDate`, `FDate`, `ActivityImage`, `PostingDate`) VALUES
(1, 'Malaria', 'Nets Distribution', 'There will be distribution of mosquito nets during the ongoing campaign to fight malaria.', '2018-08-03', '2018-08-04', 'code.png', '2018-08-29 09:55:37'),
(2, 'HIV', 'Testing', 'There will be a county-wide HIV test for proper management of the County Health.', '2018-08-15', '2018-09-15', 'code.png', '2018-08-29 10:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblcholera`
--

CREATE TABLE `tblcholera` (
  `TestId` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Month` varchar(25) NOT NULL,
  `Population` int(25) NOT NULL,
  `Positive` int(25) NOT NULL,
  `Negative` int(25) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcholera`
--

INSERT INTO `tblcholera` (`TestId`, `Year`, `Month`, `Population`, `Positive`, `Negative`, `Creationdate`, `UpdationDate`) VALUES
(3, 2018, 'January', 420, 13, 407, '2018-09-03 11:41:24', '2018-09-03 11:41:24'),
(4, 2018, 'February', 405, 15, 390, '2018-09-03 11:42:05', '2018-09-03 11:42:05'),
(5, 2018, 'March', 450, 35, 415, '2018-09-03 11:46:05', '2018-09-03 11:46:05'),
(6, 2018, 'April', 432, 12, 420, '2018-09-03 11:46:36', '2018-09-03 11:46:36'),
(7, 2018, 'May', 370, 20, 350, '2018-09-03 11:47:20', '2018-09-03 11:47:20'),
(8, 2018, 'June', 386, 26, 360, '2018-09-03 11:48:04', '2018-09-03 11:48:04'),
(9, 2018, 'July', 400, 18, 382, '2018-09-03 11:48:57', '2018-09-03 11:48:57'),
(10, 2018, 'August', 340, 40, 300, '2018-09-03 11:49:37', '2018-09-03 11:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` char(10) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FirstName`, `LastName`, `Email`, `Phone`, `Message`, `PostingDate`) VALUES
(1, 'ALEX', 'KIMEU', 'kimeualexis@gmail.com', '723494571', 'When is the Polio campaign starting?', '2018-08-28 18:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblhiv`
--

CREATE TABLE `tblhiv` (
  `TestId` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Month` varchar(25) NOT NULL,
  `Population` int(25) NOT NULL,
  `Positive` int(25) NOT NULL,
  `Negative` int(25) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhiv`
--

INSERT INTO `tblhiv` (`TestId`, `Year`, `Month`, `Population`, `Positive`, `Negative`, `Creationdate`, `UpdationDate`) VALUES
(3, 2018, 'January', 200, 20, 180, '2018-09-03 08:19:44', '2018-09-03 08:19:44'),
(4, 2018, 'February', 120, 5, 115, '2018-09-03 08:21:35', '2018-09-03 08:21:35'),
(5, 2018, 'March', 80, 2, 78, '2018-09-03 08:21:51', '2018-09-03 08:21:51'),
(6, 2018, 'April', 60, 5, 55, '2018-09-03 08:22:30', '2018-09-03 08:22:30'),
(7, 2018, 'May', 25, 5, 20, '2018-09-03 08:22:45', '2018-09-03 08:22:45'),
(8, 2018, 'June', 130, 10, 120, '2018-09-03 08:23:16', '2018-09-03 08:23:16'),
(9, 2018, 'July', 150, 14, 136, '2018-09-03 08:23:37', '2018-09-03 08:23:37'),
(10, 2018, 'August', 165, 5, 160, '2018-09-03 08:24:08', '2018-09-03 08:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblmalaria`
--

CREATE TABLE `tblmalaria` (
  `TestId` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Month` varchar(25) NOT NULL,
  `Population` int(25) NOT NULL,
  `Positive` int(25) NOT NULL,
  `Negative` int(25) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmalaria`
--

INSERT INTO `tblmalaria` (`TestId`, `Year`, `Month`, `Population`, `Positive`, `Negative`, `Creationdate`, `UpdationDate`) VALUES
(3, 2018, 'January', 200, 13, 187, '2018-09-03 08:26:26', '2018-09-03 08:26:26'),
(4, 2018, 'February', 130, 6, 124, '2018-09-03 08:26:44', '2018-09-03 08:26:44'),
(5, 2018, 'March', 78, 4, 74, '2018-09-03 08:29:39', '2018-09-03 08:29:39'),
(6, 2018, 'April', 67, 5, 62, '2018-09-03 08:31:23', '2018-09-03 08:31:23'),
(7, 2018, 'May', 86, 14, 72, '2018-09-03 08:31:55', '2018-09-03 08:31:55'),
(8, 2018, 'June', 97, 5, 92, '2018-09-03 08:32:14', '2018-09-03 08:32:14'),
(9, 2018, 'July', 112, 12, 100, '2018-09-03 08:32:42', '2018-09-03 08:32:42'),
(10, 2018, 'August', 230, 30, 200, '2018-09-03 08:33:06', '2018-09-03 08:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbltb`
--

CREATE TABLE `tbltb` (
  `TestId` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Month` varchar(25) NOT NULL,
  `Population` int(25) NOT NULL,
  `Positive` int(25) NOT NULL,
  `Negative` int(25) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltb`
--

INSERT INTO `tbltb` (`TestId`, `Year`, `Month`, `Population`, `Positive`, `Negative`, `Creationdate`, `UpdationDate`) VALUES
(1, 2018, 'January', 4500, 45, 3400, '2018-08-19 19:10:31', '2018-08-19 19:10:31'),
(2, 2018, 'February', 3400, 34, 2300, '2018-08-19 19:34:48', '2018-08-19 19:34:48'),
(3, 2018, 'March', 2300, 23, 2200, '2018-08-19 19:35:06', '2018-08-19 19:35:06'),
(4, 2018, 'April', 4300, 43, 3800, '2018-08-19 19:35:24', '2018-08-19 19:35:24'),
(5, 2018, 'May', 5600, 56, 4900, '2018-08-19 19:35:42', '2018-08-19 19:35:42'),
(6, 2018, 'June', 3200, 32, 2300, '2018-08-19 19:35:59', '2018-08-19 19:35:59'),
(7, 2018, 'July', 2100, 23, 1900, '2018-08-19 19:36:22', '2018-08-19 19:36:22'),
(8, 2018, 'August', 2100, 21, 2000, '2018-08-19 19:36:40', '2018-08-19 19:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbltyphoid`
--

CREATE TABLE `tbltyphoid` (
  `TestId` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Month` varchar(25) NOT NULL,
  `Population` int(25) NOT NULL,
  `Positive` int(25) NOT NULL,
  `Negative` int(25) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltyphoid`
--

INSERT INTO `tbltyphoid` (`TestId`, `Year`, `Month`, `Population`, `Positive`, `Negative`, `Creationdate`, `UpdationDate`) VALUES
(3, 2018, 'January', 540, 40, 500, '2018-09-03 08:38:52', '2018-09-03 08:38:52'),
(4, 2018, 'February', 500, 30, 470, '2018-09-03 08:39:13', '2018-09-03 08:39:13'),
(5, 2018, 'March', 470, 15, 455, '2018-09-03 08:39:47', '2018-09-03 08:39:47'),
(6, 2018, 'April', 480, 43, 437, '2018-09-03 08:40:54', '2018-09-03 08:40:54'),
(7, 2018, 'May', 450, 40, 10, '2018-09-03 08:47:24', '2018-09-03 11:35:34'),
(8, 2018, 'June', 380, 23, 257, '2018-09-03 11:36:42', '2018-09-03 11:36:42'),
(9, 2018, 'July', 420, 43, 377, '2018-09-03 11:37:13', '2018-09-03 11:37:13'),
(10, 2018, 'August', 500, 15, 485, '2018-09-03 11:37:43', '2018-09-03 11:37:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblactivities`
--
ALTER TABLE `tblactivities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcholera`
--
ALTER TABLE `tblcholera`
  ADD PRIMARY KEY (`TestId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhiv`
--
ALTER TABLE `tblhiv`
  ADD PRIMARY KEY (`TestId`);

--
-- Indexes for table `tblmalaria`
--
ALTER TABLE `tblmalaria`
  ADD PRIMARY KEY (`TestId`);

--
-- Indexes for table `tbltb`
--
ALTER TABLE `tbltb`
  ADD PRIMARY KEY (`TestId`);

--
-- Indexes for table `tbltyphoid`
--
ALTER TABLE `tbltyphoid`
  ADD PRIMARY KEY (`TestId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblactivities`
--
ALTER TABLE `tblactivities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblcholera`
--
ALTER TABLE `tblcholera`
  MODIFY `TestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblhiv`
--
ALTER TABLE `tblhiv`
  MODIFY `TestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblmalaria`
--
ALTER TABLE `tblmalaria`
  MODIFY `TestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbltb`
--
ALTER TABLE `tbltb`
  MODIFY `TestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbltyphoid`
--
ALTER TABLE `tbltyphoid`
  MODIFY `TestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
