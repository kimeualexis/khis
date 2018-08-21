-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 21, 2018 at 09:56 PM
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
(1, 2018, 'May', 1200, 12, 34, '2018-08-20 20:39:32', '2018-08-20 20:39:32'),
(2, 2018, 'February', 120, 12, 108, '2018-08-20 20:40:01', '2018-08-20 20:40:01');

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
(1, 0, 'January', 2222, 22, 2, '2018-08-18 11:53:19', '2018-08-18 11:53:19'),
(2, 2018, 'March', 2300, 12, 2210, '2018-08-20 20:09:54', '2018-08-20 20:09:54');

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
(1, 0, 'January', 3400, 34, 2, '2018-08-18 16:18:49', '2018-08-18 16:18:49'),
(2, 2018, 'January', 2300, 23, 2100, '2018-08-19 19:14:12', '2018-08-19 19:14:12');

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
(8, 2018, 'August', 2100, 21, 2000, '2018-08-19 19:36:40', '2018-08-19 19:36:40'),
(9, 2018, 'September', 1900, 19, 1890, '2018-08-19 19:37:17', '2018-08-19 19:37:17'),
(10, 2018, 'October', 1800, 18, 1782, '2018-08-19 19:37:40', '2018-08-19 19:37:40'),
(11, 2018, 'November', 2200, 12, 2188, '2018-08-19 19:38:10', '2018-08-19 19:38:10'),
(12, 2018, 'December', 2100, 21, 2090, '2018-08-19 19:38:32', '2018-08-19 19:38:32');

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
(1, 0, 'January', 4500, 45, 3, '2018-08-18 16:24:00', '2018-08-18 16:24:00'),
(2, 2018, 'January', 4500, 45, 3500, '2018-08-19 19:14:32', '2018-08-19 19:14:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcholera`
--
ALTER TABLE `tblcholera`
  ADD PRIMARY KEY (`TestId`);

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
-- AUTO_INCREMENT for table `tblcholera`
--
ALTER TABLE `tblcholera`
  MODIFY `TestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblhiv`
--
ALTER TABLE `tblhiv`
  MODIFY `TestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblmalaria`
--
ALTER TABLE `tblmalaria`
  MODIFY `TestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbltb`
--
ALTER TABLE `tbltb`
  MODIFY `TestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbltyphoid`
--
ALTER TABLE `tbltyphoid`
  MODIFY `TestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
