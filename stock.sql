-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2018 at 02:50 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crazyshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `addproduct`
--

CREATE TABLE `addproduct` (
  `catname` varchar(50) NOT NULL,
  `catid` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addproduct`
--

INSERT INTO `addproduct` (`catname`, `catid`, `stock`) VALUES
('Milni Haar', 1004, 500),
('Jaggo', 1005, 500),
('Topi', 1007, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `employeeattendance`
--

CREATE TABLE `employeeattendance` (
  `empid` int(11) NOT NULL,
  `date` date NOT NULL,
  `attendance` varchar(20) NOT NULL,
  `dateempid` varchar(202) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeeattendance`
--

INSERT INTO `employeeattendance` (`empid`, `date`, `attendance`, `dateempid`) VALUES
(3, '2018-07-17', 'Absent', '2018-07-173'),
(2, '2018-07-18', 'Absent', '2018-07-182'),
(3, '2018-07-18', 'Absent', '2018-07-183'),
(2, '2018-07-19', 'Absent', '2018-07-192'),
(2, '2018-07-20', 'Absent', '2018-07-202'),
(3, '2018-07-20', 'Absent', '2018-07-203'),
(2, '2018-07-21', 'Present', '2018-07-212');

-- --------------------------------------------------------

--
-- Table structure for table `employeecash`
--

CREATE TABLE `employeecash` (
  `empid` varchar(22) NOT NULL,
  `date` date NOT NULL,
  `cashgiven` int(11) NOT NULL,
  `dateempid` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeecash`
--

INSERT INTO `employeecash` (`empid`, `date`, `cashgiven`, `dateempid`) VALUES
('3', '2018-07-09', 32423, '2018-07-093'),
('2', '2018-07-11', 123, '2018-07-112'),
('2', '2018-07-15', 2222, '2018-07-152'),
('2', '2018-07-16', 22, '2018-07-162'),
('3', '2018-07-19', 100, '2018-07-193'),
('2', '2018-07-20', 123, '2018-07-202'),
('3', '2018-07-20', 35, '2018-07-203');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `electrycity` int(11) NOT NULL,
  `petrol` int(11) NOT NULL,
  `empexpenses` int(11) NOT NULL,
  `damageproduct` int(11) NOT NULL,
  `Taxes` int(11) NOT NULL,
  `empsal` int(11) NOT NULL,
  `maintainance` int(11) NOT NULL,
  `otherexpense` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `managecustomer`
--

CREATE TABLE `managecustomer` (
  `name` varchar(30) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `address` varchar(300) NOT NULL,
  `adhaar` varchar(16) NOT NULL,
  `gst` varchar(16) NOT NULL,
  `customerid` int(11) NOT NULL,
  `pendingpayment` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managecustomer`
--

INSERT INTO `managecustomer` (`name`, `phone`, `address`, `adhaar`, `gst`, `customerid`, `pendingpayment`) VALUES
('Abhishk', '9814952221', '12345689', '123456898978', '788945651223211', 5000, 5455),
('asdsd', '9814955331', 'golden avenue\n', '981499419012', '981499419012345', 5001, 0),
('suraj', '9814994190', 'nijatam nagar', '124567894562', '123456789789999', 5002, 0),
('aaygg', '4566541234', 'rfef4r\nhtfhnjnhh', '123456789123', '213456789123456', 5003, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manageemployee`
--

CREATE TABLE `manageemployee` (
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(300) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `adhaar` varchar(18) NOT NULL,
  `position` varchar(18) NOT NULL,
  `salary` varchar(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `joining` date NOT NULL,
  `image` varchar(100) NOT NULL,
  `empid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manageemployee`
--

INSERT INTO `manageemployee` (`name`, `phone`, `address`, `gender`, `dob`, `adhaar`, `position`, `salary`, `username`, `password`, `joining`, `image`, `empid`) VALUES
('arjun', '9814798147', 'arjun nagar', 'Male', '1998-07-17', '123456456123', 'Employee', '43138', 'arjun', 'acscssa', '2018-07-19', '1532154176123IMG_20160128_145036.jpg', 3),
('Gulab', '9857465478', 'atari bazar', 'Male', '1998-12-13', '123456789987', 'Manager', '20479', 'gulab', 'honey', '2018-07-19', '1532154209518IMG_20160128_144914.jpg', 2),
('Abhishiek', '9592201970', '625,Golden Avenue Phase 2,jalandhar', 'Male', '1998-06-22', '123456789123', 'Admin', '10000303', 'iamabhishiek', '123', '2018-07-19', '1532154070430IMG_20170523_203354.jpg', 1),
('Rajesh', '9814920194', 'garha road', 'Male', '2008-06-19', '123456789121', 'Employee', '15000', 'rajesh', '123', '2018-07-21', 'default.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `manageseller`
--

CREATE TABLE `manageseller` (
  `name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `account` varchar(22) NOT NULL,
  `gst` varchar(22) NOT NULL,
  `id` int(4) NOT NULL,
  `pendingpayment` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manageseller`
--

INSERT INTO `manageseller` (`name`, `phone`, `address`, `account`, `gst`, `id`, `pendingpayment`) VALUES
('asakbdkj', '7654456564', 'sjbbdahbsabhd', '12111545565456', '121231231233544', 3000, 402),
('Abhisei', '9814955331', 'acascasc', '7846554562103', '123456789123456', 3001, 500),
('abhishie', '9592201970', 'asds8a9d49', '123256457889', '789456213221214', 3002, 1040),
('Aditya', '9595959955', 'sadasdash', '123456789987456', '123456789123455', 3003, 197),
('sham', '9814955331', 'patiala,shamparanda house', '123456789123', '123456789123456', 3004, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manageuser`
--

CREATE TABLE `manageuser` (
  `name` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `information` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `usertype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manageuser`
--

INSERT INTO `manageuser` (`name`, `phone`, `address`, `information`, `gender`, `username`, `usertype`) VALUES
('abhishiek', '9592201970', '625,golden avenue phase 2,jalandhar', 'wd', 'male', 'iamabhishiek', 'Customer'),
('Shubham', '8699662978', 'jalandhar', 'gr', 'male', 'iamshubhamrock', 'Admin'),
('Sunny ', '9646098988', 'garha ,jalandhar', 'small buisnessman', 'male', 'sunny', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `rentid` int(11) NOT NULL,
  `product` varchar(222) NOT NULL,
  `name` varchar(110) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `bdfrom` date NOT NULL,
  `bdto` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `security` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`rentid`, `product`, `name`, `phone`, `bdfrom`, `bdto`, `quantity`, `rent`, `security`, `state`) VALUES
(10000, 'Sehra', 'abhishik', '9592201970', '2018-07-03', '2018-07-12', 4545, 424, 654, 1),
(10001, 'Sehra', 'bhgjvjh', '4544223232', '2018-07-19', '2018-07-19', 53245, 65456, 32541, 0),
(10002, 'Sehra', 'bjhg', '9592210970', '2018-07-02', '2018-07-07', 323, 342, 1120, 1),
(10003, 'JaiMala', 'AsaS', '7755123453', '2018-07-10', '2018-07-27', 57, 787, 7879, 1),
(10004, 'Jaggo', 'hjlhojil', '9814922019', '2018-07-10', '2018-07-11', 10, 100, 123, 0),
(10005, 'Jaggo', 'sdasda', '9849589878', '2018-07-09', '2018-07-27', 100, 120, 212, 1),
(10006, 'Jaggo', 'abhsoijsio', '9849988989', '2018-07-11', '2018-07-31', 56, 123, 2321, 1),
(10007, 'Jaggo', 'nkjdsdkjv', '9814920194', '2018-07-18', '2018-07-24', 656, 55, 532, 1),
(10008, 'Milni Haar', 'abhsbhxjs', '9814920194', '2018-07-18', '2018-07-24', 65, 1212, 2121, 1),
(10009, 'Jaggo', 'fgnht', '9592019701', '2018-07-09', '2018-07-27', 12, 10, 12, 1),
(10010, 'Milni Haar', 'sadsa', '9814955331', '2018-07-11', '2018-07-18', 12, 12, 21, 1),
(10011, 'Topi', 'sadad', '9814955331', '2018-07-10', '2018-07-27', 1, 1, 1, 1),
(10012, 'Jaggo', 'abhxsj', '9599596546', '2018-07-09', '2018-07-31', 1, 1, 1, 1),
(10013, 'Topi', 'asdsahd', '9814955331', '2018-07-16', '2018-07-26', 1, 1, 1, 1),
(10014, 'Milni Haar', 'bhask', '9814920194', '2018-07-12', '2018-07-25', 12, 21, 24, 1),
(10015, 'Topi', 'sajvd', '9898989897', '2018-07-10', '2018-07-27', 12, 21, 21, 1),
(10016, 'Milni Haar', 'asdhsa', '9814955331', '2018-07-05', '2018-07-24', 2, 321, 21, 1),
(10017, 'Milni Haar', 'asbhd', '9814955331', '2018-07-18', '2018-07-26', 2135, 241, 32, 1),
(10018, 'Milni Haar', 'aghvjh', '9814955331', '2018-07-11', '2018-07-25', 1, 1, 1, 1),
(10019, 'Milni Haar', 'sada', '9814955331', '2018-07-10', '2018-07-20', 7, 2, 96, 1),
(10020, 'Milni Haar', 'dfh', '9814955331', '2018-07-17', '2018-07-27', 11, 1, 1, 1),
(10021, 'Milni Haar', 'vgjh', '9814955331', '2018-07-26', '2018-07-26', 1, 123, 550, 1),
(10022, 'Jaggo', 'abhishiek', '9592201970', '2018-07-21', '2018-07-22', 123, 12, 235, 1),
(10023, 'Topi', 'hiuhkn', '9814920194', '2018-07-18', '2018-07-23', 12, 12, 1233, 1),
(10024, 'Milni Haar', 'ghtjnhg', '9814955331', '2018-07-11', '2018-07-20', 12, 12, 11, 1),
(10025, 'Topi', 'abhishje', '9585641234', '2018-07-17', '2018-07-24', 123, 123, 123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `sale` int(11) NOT NULL,
  `expenses` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`sale`, `expenses`, `date`) VALUES
(12232, 123, '2018-07-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addproduct`
--
ALTER TABLE `addproduct`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `employeeattendance`
--
ALTER TABLE `employeeattendance`
  ADD PRIMARY KEY (`dateempid`);

--
-- Indexes for table `employeecash`
--
ALTER TABLE `employeecash`
  ADD PRIMARY KEY (`dateempid`);

--
-- Indexes for table `managecustomer`
--
ALTER TABLE `managecustomer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `manageemployee`
--
ALTER TABLE `manageemployee`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `a` (`empid`);

--
-- Indexes for table `manageseller`
--
ALTER TABLE `manageseller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manageuser`
--
ALTER TABLE `manageuser`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addproduct`
--
ALTER TABLE `addproduct`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;

--
-- AUTO_INCREMENT for table `managecustomer`
--
ALTER TABLE `managecustomer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5004;

--
-- AUTO_INCREMENT for table `manageemployee`
--
ALTER TABLE `manageemployee`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manageseller`
--
ALTER TABLE `manageseller`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3005;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `rentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10026;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
