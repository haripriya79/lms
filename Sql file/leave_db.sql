-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 04:31 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2021-03-30 11:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) DEFAULT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Civil Engineering', 'CE', 'CE1', '2021-09-06 07:16:25'),
(2, 'Electrical & Electronics Engineering', 'EEE', 'EEE2', '2021-09-06 07:19:37'),
(3, 'Electronics & Communication Engineering', 'ECE', 'ECE3', '2021-09-06 07:19:37'),
(4, 'Computer Science & Engineering', 'CSE', 'CSE4', '2021-09-06 07:19:37'),
(5, 'Chemical Engineering', 'ChE', 'ChE5', '2021-09-06 07:19:37'),
(6, 'Department of Chemistry', 'CHEMISTRY', 'C6', '2021-09-06 07:19:37'),
(7, 'Department of Mathematics', 'MATHEMATICS', 'M7', '2021-09-06 07:19:37'),
(8, 'Department of Physics', 'PHYSICS', 'P8', '2021-09-06 07:19:37'),
(9, 'Department of Humanities', 'HUMANITIES', 'H9', '2021-09-06 07:19:37'),
(10, 'Mechanical Engineering', 'ME', 'ME10', '2021-09-06 21:28:56'),
(11, 'Aeronautics', 'AEC', '111', '2021-09-21 10:14:13'),
(12, 'Haripriya', 'haripiijasdkjf', '1340n42', '2021-09-30 02:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `Password` varchar(180) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Dob` varchar(100) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Country` varchar(150) DEFAULT NULL,
  `Phonenumber` char(11) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, 'EMP1', 'yesh', 'chala', 'himashankar20@gmail.com', 'ed62bb8f14c72f82f09cb325afe2eb16', 'Male', '13 January, 1998', 'Electronics & Communication Engineering', 'Kuppam', 'Kuppam', 'Mars', '123456789', 1, '2021-09-06 11:29:59'),
(6, '12', 'hari', 'priya', 'gh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Female', '10 September, 2021', 'Electrical & Electronics Engineering', 'alsdjf', 'alksjdf', 'lakskjdf', '7989902586', 1, '2021-09-30 05:20:18'),
(7, '79', 'haripriya', 'asdf', 'asdfasdf@gmail.com', '077785b96c0ccc38ed1e05def15ae84c', 'Female', '15 October, 2021', 'Civil Engineering', '18/1/478,venugopal nagar', 'Anantapur', 'India', '9849921951', 1, '2021-10-04 13:38:48'),
(8, '79', 'haripriya', 'asdf', 'asdfasdf@gmail.com', '077785b96c0ccc38ed1e05def15ae84c', 'Female', '15 October, 2021', 'Civil Engineering', '18/1/478,venugopal nagar', 'Anantapur', 'India', '9849921951', 1, '2021-10-04 13:39:00'),
(9, '79', 'haripriya', 'asdf', 'asdfasdf@gmail.com', '077785b96c0ccc38ed1e05def15ae84c', 'Female', '15 October, 2021', 'Civil Engineering', '18/1/478,venugopal nagar', 'Anantapur', 'India', '9849921951', 1, '2021-10-04 13:42:09'),
(10, '79', 'haripriya', 'asdf', 'asdfasdf@gmail.com', '077785b96c0ccc38ed1e05def15ae84c', 'Female', '15 October, 2021', 'Civil Engineering', '18/1/478,venugopal nagar', 'Anantapur', 'India', '9849921951', 1, '2021-10-04 13:42:33'),
(11, '79', 'haripriya', 'asdf', 'asdfasdf@gmail.com', '077785b96c0ccc38ed1e05def15ae84c', 'Female', '15 October, 2021', 'Civil Engineering', '18/1/478,venugopal nagar', 'Anantapur', 'India', '9849921951', 1, '2021-10-04 13:43:19'),
(12, '79', 'haripriya', 'asdf', 'asdfasdf@gmail.com', '077785b96c0ccc38ed1e05def15ae84c', 'Female', '15 October, 2021', 'Civil Engineering', '18/1/478,venugopal nagar', 'Anantapur', 'India', '9849921951', 1, '2021-10-04 13:44:51'),
(13, '79', 'haripriya', 'asdf', 'asdfasdf@gmail.com', '077785b96c0ccc38ed1e05def15ae84c', 'Female', '15 October, 2021', 'Civil Engineering', '18/1/478,venugopal nagar', 'Anantapur', 'India', '9849921951', 1, '2021-10-04 13:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) DEFAULT NULL,
  `ToDate` varchar(120) DEFAULT NULL,
  `FromDate` varchar(120) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `IsRead` int(1) DEFAULT NULL,
  `TotalDays` int(200) NOT NULL,
  `empid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `TotalDays`, `empid`) VALUES
(35, 'Casual Leave', '2021-10-08', '2021-10-01', 'gsgl;fdkg;\'lksdff;glk kakfl\' alfdkal skl', '2021-10-01 08:35:17', NULL, NULL, 0, 0, 8, 1),
(36, 'Casual Leave', '2021-10-08', '2021-10-01', 'gsgl;fdkg;\'lksdff;glk kakfl\' alfdkal skl', '2021-10-01 08:38:00', 'dfgdfgsdfg', '2021-10-04 17:26:17 ', 1, 1, 1, 1),
(37, 'Casual Leave', '2021-10-07', '2021-10-04', 'sdfasdf asd asdcsdd casdf', '2021-10-04 14:21:28', NULL, NULL, 0, 0, 12, 0),
(38, 'Casual Leave', '2021-10-07', '2021-10-04', 'sdfasdf asd asdcsdd casdf', '2021-10-04 14:22:49', NULL, NULL, 0, 0, 9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Leaves` int(200) NOT NULL,
  `AppliedTo` varchar(10) DEFAULT 'Both',
  `ValidDays` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `Leaves`, `AppliedTo`, `ValidDays`) VALUES
(1, 'Casual Leave', 'Casual Leave', 15, 'Both', '6-1'),
(2, 'Medical Leave(ML)', 'Medical Leave - FULL PAY', 10, 'Both', '0'),
(3, 'Medical Leave', 'Medical Leave - HALF PAY', 20, 'Both', '0'),
(4, 'On Duty', 'ON DUTY', 0, 'Both', '0'),
(5, 'Academic Leave', 'Academic Leave', 12, 'Both', '0'),
(6, 'Abortion Leave', 'Abortion Leave - 6 weeks', 42, 'Female', '0'),
(7, 'Maternity Leave', 'ML - ONLY FOR WOMEN', 180, 'Female', '0'),
(8, 'Paternity Leave', 'PL - ONLY FOR MEN', 15, 'Male', '0'),
(9, 'Extra-Ordinary Leave', 'EOL', 0, 'Both', '0'),
(10, 'Study Leave', '- (6 months) Only For Teaching Staff', 183, 'Both', '0'),
(11, 'Special Disability Leave', '(2 Years)Only For Permanent Staff', 730, 'Both', '0'),
(12, 'Special Casual Leave', 'Spl-Casual Leave', 7, 'Both', '0'),
(13, 'Earn Leave(EL)', 'Earn Leave', 15, 'Both', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbtotalleaves`
--

CREATE TABLE `tbtotalleaves` (
  `empid` varchar(10) NOT NULL,
  `_1` int(11) NOT NULL DEFAULT 15,
  `_2` int(11) NOT NULL DEFAULT 10,
  `_3` int(11) NOT NULL DEFAULT 20,
  `_4` int(11) NOT NULL DEFAULT 0,
  `_5` int(11) NOT NULL DEFAULT 12,
  `_6` int(11) NOT NULL DEFAULT 42,
  `_7` int(11) NOT NULL DEFAULT 180,
  `_8` int(11) NOT NULL DEFAULT 15,
  `_9` int(11) NOT NULL DEFAULT 0,
  `_10` int(11) NOT NULL DEFAULT 183,
  `_11` int(11) NOT NULL DEFAULT 730,
  `_12` int(11) NOT NULL DEFAULT 7,
  `_13` int(11) NOT NULL DEFAULT 15
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbtotalleaves`
--

INSERT INTO `tbtotalleaves` (`empid`, `_1`, `_2`, `_3`, `_4`, `_5`, `_6`, `_7`, `_8`, `_9`, `_10`, `_11`, `_12`, `_13`) VALUES
('1', 15, 10, 20, 0, 12, 42, 180, 15, 0, 183, 730, 7, 15),
('12', 15, 10, 20, 0, 12, 42, 180, 15, 0, 183, 730, 7, 15),
('13', 15, 10, 20, 0, 12, 42, 180, 15, 0, 183, 730, 7, 15),
('6', 9, 10, 20, 0, 12, 42, 180, 15, 0, 183, 730, 7, 15),
('7', 15, 10, 20, 0, 12, 42, 180, 15, 0, 183, 730, 7, 15),
('8', 15, 10, 20, 0, 12, 42, 180, 15, 0, 183, 730, 7, 15),
('9', 15, 10, 20, 0, 12, 42, 180, 15, 0, 183, 730, 7, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbtotalleaves`
--
ALTER TABLE `tbtotalleaves`
  ADD PRIMARY KEY (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
