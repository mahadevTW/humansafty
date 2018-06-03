-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2018 at 11:54 AM
-- Server version: 5.6.39
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhamalex_Android`
--

-- --------------------------------------------------------

--
-- Table structure for table `AddToCard`
--

CREATE TABLE `AddToCard` (
  `id` int(100) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Area` varchar(100) NOT NULL,
  `FarmeName` varchar(100) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `ProductType` varchar(100) NOT NULL,
  `ImagePath` varchar(100) NOT NULL,
  `Customerid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Add_Products`
--

CREATE TABLE `Add_Products` (
  `Product_Id` int(20) NOT NULL,
  `Product_Name` varchar(200) NOT NULL,
  `Product_Type` varchar(200) NOT NULL,
  `Area` varchar(100) NOT NULL,
  `Farmer_Name` varchar(100) NOT NULL,
  `Product_Description` varchar(200) NOT NULL,
  `Products_Weight` varchar(200) NOT NULL,
  `products_Quantity` varchar(200) NOT NULL,
  `Price` varchar(200) NOT NULL,
  `Total_Price` varchar(200) NOT NULL,
  `Image_Name` varchar(200) NOT NULL,
  `Image_Path` varchar(1000) NOT NULL,
  `FarmerId` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `add_student`
--

CREATE TABLE `add_student` (
  `id` int(100) NOT NULL,
  `Student_Class` varchar(100) NOT NULL,
  `Student_Rollnumber` varchar(100) NOT NULL,
  `Student_Name` varchar(100) NOT NULL,
  `Birthdate` varchar(100) NOT NULL,
  `Father_Name` varchar(100) NOT NULL,
  `Mobile_No` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Admisssiondate` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_student`
--

INSERT INTO `add_student` (`id`, `Student_Class`, `Student_Rollnumber`, `Student_Name`, `Birthdate`, `Father_Name`, `Mobile_No`, `Address`, `Admisssiondate`, `image`) VALUES
(1, 'fj', 'hj', 'bvm', 'hgjhgcj', 'hgj', 'ghkj', 'ghk', 'gjkm', ''),
(2, 'sh', '45', 'lkhl', 'kj', 'jkh', 'kbj', 'jkjk', 'k', ''),
(3, 'de', '23', 'er', 'ewr', 'rereer', 'ere', 'errew', '12-02-2018', ''),
(4, 'ddd', 'hj', 'bvm', 'hgjhgcj', '', 'ghkj', 'ghk', 'gjkm', 'http://192.168.100.25/school_manegment/uploads/3.png'),
(5, 'dddfdadf', 'hjdsf', 'bvmxzd', 'hgjhgcjdfd', 'hgjaff', 'ghkjdfdf', 'ghkdsffd', 'gjkmsfsfd', 'http://192.168.100.25/school_manegment/uploads/4.png'),
(6, 'ydutut', 'yfudu', '5e6yt5y', 'sddffghh', 'wwefghh', 'rdyutd', 'druydyru', '06-02-2018', 'http://192.168.100.25/school_manegment/uploads/5.png'),
(7, 'sfddg', 'ghfgj', 'gjf', 'hgjj', 'dh', 'hf', 'hfhf', 'fhj', 'hfj');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `id` int(100) NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `Longitude` varchar(100) NOT NULL,
  `token` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`id`, `Latitude`, `Longitude`, `token`) VALUES
(1, '18.577725', '73.9843634', 'eYHrfvdfFpM:APA91bHX1Fs60mI2sizAj4J_3T6D11ZKf1b9bcEIYIQOQjSanw3SZWx3p-YRRwnYT6CXsmzj64zb46zINyNHW43SdGzj967zGK9qaj28eXYGXLFQkPyMwk6m14nOZwHzAmMQtv4m3t8m');

-- --------------------------------------------------------

--
-- Table structure for table `antitheftImage`
--

CREATE TABLE `antitheftImage` (
  `id` int(100) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antitheftImage`
--

INSERT INTO `antitheftImage` (`id`, `image`, `userid`) VALUES
(1, 'http://android.dhamalexim.com/AntiTheft/images/0.png', 'bhushan'),
(2, 'http://android.dhamalexim.com/AntiTheft/images/1.png', 'bhushan'),
(3, 'http://android.dhamalexim.com/AntiTheft/images/2.png', 'bhushan'),
(4, 'http://android.dhamalexim.com/AntiTheft/images/3.png', 'bhushan'),
(18, 'http://android.dhamalexim.com/AntiTheft/images/17.png', 'jaydip nigul'),
(16, 'http://android.dhamalexim.com/AntiTheft/images/15.png', 'abhishek'),
(17, 'http://android.dhamalexim.com/AntiTheft/images/16.png', 'jaydip nigul'),
(14, 'http://android.dhamalexim.com/AntiTheft/images/13.png', 'jaydip nigul'),
(15, 'http://android.dhamalexim.com/AntiTheft/images/14.png', 'jaydip nigul'),
(12, 'http://android.dhamalexim.com/AntiTheft/images/11.png', 'jaydip nigul'),
(13, 'http://android.dhamalexim.com/AntiTheft/images/12.png', 'jaydip nigul'),
(19, 'http://android.dhamalexim.com/AntiTheft/images/18.png', 'jaydip nigul'),
(20, 'http://android.dhamalexim.com/AntiTheft/images/19.png', 'jaydip nigul'),
(21, 'http://android.dhamalexim.com/AntiTheft/images/20.png', 'jaydip nigul'),
(22, 'http://android.dhamalexim.com/AntiTheft/images/21.png', 'jaydip nigul'),
(23, 'http://android.dhamalexim.com/AntiTheft/images/22.png', 'jaydip nigul');

-- --------------------------------------------------------

--
-- Table structure for table `AntitheftLogin`
--

CREATE TABLE `AntitheftLogin` (
  `id` int(100) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `SerialNumber` varchar(100) NOT NULL,
  `Adharno` varchar(100) NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `Longitude` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AntitheftLogin`
--

INSERT INTO `AntitheftLogin` (`id`, `FullName`, `Email`, `Password`, `Contact`, `address`, `SerialNumber`, `Adharno`, `Latitude`, `Longitude`) VALUES
(1, 'Rj', 'rjadhav111.rj47@gmail.com', '123', '9545545660', '', '89918640400044168222', '123456789', '18.5579115', '73.9223947'),
(2, 'dfgsargfsd', 'dfSFDdf', 'dzfzdsfszf', 'zdfDSf', 'oye ramesh', '8991864040004416822', 'zfzdfzd', '', ''),
(3, 'omkar', 'om', '123', 'zdfDSf', 'zfdfzdf', '8991864040004416822123', 'zfzdfzd', '1', '2'),
(4, 'Ramesh', 'rh', '123', '9545545660', '4126497', '8991864040004416', '454531', '18.5582494', '73.9222785'),
(5, 'bhushan', 'b@gmail.com', '123', '9960080097', 'pune', '89919291516029995584', '87459784123153', '18.5579312', '73.9224435'),
(6, 'Jaydip', 'jaydipnigul28@gmail.com', '123', '9011351236', 'hadapser', '89912294701515844437', '126448', '18.5849122', '73.999413'),
(8, 'Sahil Maan', 'sahil.maan2274@gmail.com', 'Sahli@and1', '7387388333', 'abc', '89014103211118510720', '123412341234', '', ''),
(7, 'varsha', 'c@g.cc', '123', '9960080097', 'ddghhj', '89918640400044168222', '987745632217756', '18.5579396', '73.9224192'),
(9, 'jaydip nigul', 'enriqueronit25@gmail.com', '1234', '8999330630', 'hadapsar', '89912294701515844437', '123456789', '18.4913876', '73.9339085'),
(10, 'amit', 'amit@gh.com', '123', '8149166619', 'pune', '89916673312129141343', '987546321554', '', ''),
(11, 'abhishek', 'puraneabbs@gmail.com', '1234', '9011351236', 'Wadgaon sheri', '89912294701515844437', '9011351236', '18.5864013', '74.0039809');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `email`, `token`) VALUES
(1, 'pappu', 'fZVK_Pri0y4:APA91bG0qv4vt4T6jhAGp4TRJkFMPk-fHEgXWxhBkmn26CyPIVWwCIRBMMCkH_oxzhpN45dgdcipVWujcwC76D7krKfmiwp--QnNqXRGjbaeng8iZno8whtZOVpsQh51ilvcHUjIcp06'),
(2, 'ramesh', 'cVya768XwGk:APA91bElNNbgJoosDdhiz3dVGDtMyunoym073jrBYHoH-b4pwz8khw2QNwfb1sS7NEnpNxU95YCvMcfyjPH-8nn09so40OjHffuoak3AU1VUbhkWJS8Ldij6lckUvSorhivEjV-7lROU'),
(3, 'balika', 'cVya768XwGk:APA91bElNNbgJoosDdhiz3dVGDtMyunoym073jrBYHoH-b4pwz8khw2QNwfb1sS7NEnpNxU95YCvMcfyjPH-8nn09so40OjHffuoak3AU1VUbhkWJS8Ldij6lckUvSorhivEjV-7lROU');

-- --------------------------------------------------------

--
-- Table structure for table `familyfriends`
--

CREATE TABLE `familyfriends` (
  `id` int(100) NOT NULL,
  `family1` varchar(100) NOT NULL,
  `family2` varchar(100) NOT NULL,
  `family3` varchar(100) NOT NULL,
  `friend1` varchar(100) NOT NULL,
  `friend2` varchar(100) NOT NULL,
  `friend3` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `familyfriends`
--

INSERT INTO `familyfriends` (`id`, `family1`, `family2`, `family3`, `friend1`, `friend2`, `friend3`, `userid`) VALUES
(1, 'pankaj', 'nilesh', 'gaura', 'vidha', 'rebu', 'priya', '4'),
(2, 'akash', 'rakesh', 'Priyanka', 'prasad', 'akki', 'gaurav', '1'),
(5, 'Priyanka', 'priyanka', 'Priyanka', '', '', '', '3'),
(6, 'bhushan', 'akash', '', '', '', '', '12');

-- --------------------------------------------------------

--
-- Table structure for table `FarmerLogin`
--

CREATE TABLE `FarmerLogin` (
  `id` int(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Mobile_No` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Re_enter_Password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FarmerLogin`
--

INSERT INTO `FarmerLogin` (`id`, `Username`, `Email`, `Address`, `Mobile_No`, `Password`, `Re_enter_Password`) VALUES
(1, 'ramesh', 'r@gmail.com', 'nager pune', '82828282882', '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70'),
(2, 'rajesh', 'rajesh@gmail.com', 'viman nagar', '8822945639', '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70'),
(3, 'pooja', 'pooja@gmail.com', 'abc', '123456789', '9cbb6aebcf5ae14a9248b4c08165212e', '9cbb6aebcf5ae14a9248b4c08165212e');

-- --------------------------------------------------------

--
-- Table structure for table `fees_history`
--

CREATE TABLE `fees_history` (
  `id` int(100) NOT NULL,
  `student_class` varchar(100) NOT NULL,
  `student_rollno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_history`
--

INSERT INTO `fees_history` (`id`, `student_class`, `student_rollno`) VALUES
(1, 'hghg', 'gh'),
(2, 'sfg', '23'),
(3, 'sfg', '23'),
(4, 'sfg', '23');

-- --------------------------------------------------------

--
-- Table structure for table `HarteRate1`
--

CREATE TABLE `HarteRate1` (
  `id` int(100) NOT NULL,
  `HeartRating` varchar(100) NOT NULL,
  `personid` varchar(100) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HarteRate1`
--

INSERT INTO `HarteRate1` (`id`, `HeartRating`, `personid`, `Date`) VALUES
(1, '*T33.10H108#\r\n', '5', '0000-00-00 00:00:00'),
(2, '*T31.50H84#\r\n', '5', '0000-00-00 00:00:00'),
(3, '*T31.54H203#', '4', '0000-00-00 00:00:00'),
(4, '*T31.55H201#', '4', '2018-04-12 07:07:45'),
(5, '*T33.10H264#\r\n', '3', '2018-04-12 09:12:16'),
(6, '*T31.80H126#\r\n', '5', '2018-04-18 12:41:21'),
(7, '*T31.80H126#\r\n', '5', '2018-04-18 12:41:32'),
(8, '*T31.90H144#\r\n', '5', '2018-04-18 12:41:46'),
(9, '*T31.50H138#\r\n', '5', '2018-04-18 12:41:58'),
(10, '*T31.50H138#\r\n', '5', '2018-04-18 12:42:12'),
(11, '*T32.00H96#\r\n', '5', '2018-04-18 12:42:23'),
(12, '*T32.00H102#\r\n', '5', '2018-04-18 12:42:36'),
(13, '*T32.00H156#\r\n', '5', '2018-04-18 12:42:50'),
(14, '*T32.00H150#\r\n', '5', '2018-04-18 12:43:04'),
(15, '*T32.00H138#\r\n', '5', '2018-04-18 12:43:14'),
(16, '*T32.00H138#\r\n', '5', '2018-04-18 12:43:28'),
(17, '*T32.00H114#\r\n', '5', '2018-04-18 12:43:42'),
(18, '*T32.00H138#\r\n', '5', '2018-04-18 12:43:54'),
(19, '*T33.50H180#\r\n', '1', '2018-04-25 05:33:32'),
(20, '*T31.60H150#\r\n', '1', '2018-04-25 05:33:44'),
(21, '*T33.40H156#\r\n', '1', '2018-04-25 05:33:57'),
(22, '*T33.70H204#\r\n', '1', '2018-04-25 05:34:09'),
(23, '*T33.30H264#\r\n', '1', '2018-04-25 05:34:35'),
(24, '*T32.90H180#\r\n', '1', '2018-04-25 05:35:25'),
(25, '*T33.00H324#\r\n', '1', '2018-04-25 05:35:38'),
(26, '*T33.00H174#\r\n', '1', '2018-04-25 05:35:50'),
(27, '*T33.10H186#\r\n', '1', '2018-04-25 05:36:03'),
(28, '*T33.50H48#\r\n', '1', '2018-04-25 05:36:16'),
(29, '*T33.00H6#\r\n*', '1', '2018-04-25 05:37:17'),
(30, '*T32.90H228#\r\n', '1', '2018-04-25 06:04:22'),
(31, '*T32.90H174#\r\n', '1', '2018-04-25 06:04:36'),
(32, '*T32.80H720#\r\n', '1', '2018-04-25 06:05:01'),
(33, '*T31.70H234#\r\n', '1', '2018-04-25 06:05:13'),
(34, '*T32.80H156#\r\n', '1', '2018-04-25 06:05:26'),
(35, '*T32.50H168#\r\n', '1', '2018-04-25 06:05:38'),
(36, '*T32.50H246#\r\n', '1', '2018-04-25 06:05:51'),
(37, '*T34.00H222#\r\n', '1', '2018-04-25 06:06:03'),
(38, '*T32.50H198#\r\n', '1', '2018-04-25 06:06:16'),
(39, '*T32.90H198#\r\n', '1', '2018-04-25 06:06:29'),
(40, '*T33.00H162#\r\n', '1', '2018-04-25 06:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `hod_details`
--

CREATE TABLE `hod_details` (
  `id` int(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `confirmpassword` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hod_details`
--

INSERT INTO `hod_details` (`id`, `name`, `mobile`, `email`, `password`, `confirmpassword`) VALUES
(1, 'Suvarna Bahir', '9960080097', 'hod1@gmail.com', '123', '123'),
(2, 'Pranil Kale', '888881234', 'hod2@gmail.com', '123', '123'),
(3, 'Prashant Alkunte', '9665307799', 'hod3@gmail.com', '123', '123'),
(4, 'HOD ABC', '9999555551', 'abc@gmail.com', '123', '123'),
(5, 'HOD XYZ', '9545548796', 'xyz@gmail.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `lec_details`
--

CREATE TABLE `lec_details` (
  `id` int(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `hod_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lec_details`
--

INSERT INTO `lec_details` (`id`, `name`, `mobile`, `email`, `password`, `hod_id`) VALUES
(1, 'Bhushan Mude', '9960080097', 'accede@gmail.com', '123', '1'),
(2, 'ramesh jadhav', '9545545660', 'rj@gmail.com', '123', '1'),
(3, 'shweta patil', '8888812345', 'shweta@gmail.com', '123', '1'),
(4, 'Pooja Bagade', '8888854321', 'pooja@gmail.com', '123', '1'),
(5, 'Ronit Gawali', '9158487979', 'snehalbhole9993@gmail.com', 'ronit', '2'),
(6, 'Snehal patil', '9158487979', 'snehal@gmail.com', 'ronit', '2'),
(7, 'bhushan', '8888888888', 'lect1@gmail.com', '123', '3'),
(8, 'Snehal', '9876543210', 'snehal12@gmail.com', '1234', '3'),
(9, 'amol', '1234567890', 'amol@gmail.com', '1234', '3'),
(10, 'shweta', '1234546', 'fdhgfjh', '12345', '1'),
(11, 'ro', 'kjh', 'gh', '456', '1'),
(12, 'Ashraf Sir', '1263636366366', 'abc', '123\n', '1'),
(13, 'zxzx', '2434566777', 'abc@gmail.com', '444\n', '1'),
(14, 'Sonali Gothe', '9764643567', 'sonaligothe123@gmail.com', '123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `location_auto`
--

CREATE TABLE `location_auto` (
  `id` int(100) NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `Longitude` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_auto`
--

INSERT INTO `location_auto` (`id`, `Latitude`, `Longitude`) VALUES
(1, '18.6848196', '74.4359833');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile_No` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Re_enter_Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `Username`, `Email`, `Mobile_No`, `Address`, `Password`, `Re_enter_Password`) VALUES
(1, 'ramesh', 'r@gmail.com', '9545545660', 'suyognager wagholi', '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70'),
(2, 'Shrutika Kamble', 'shrutika.kamble1997@gmail.com', '9561200824', 'sainathnagar', '1e48c4420b7073bc11916c6c1de226bb', '1e48c4420b7073bc11916c6c1de226bb'),
(3, 'shruti', 'sjjs', '123', 'wadgaonsheri, Pune', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'pooja', 'pooja@gmail.com', '123456789', 'abc.wagholi pune', '9cbb6aebcf5ae14a9248b4c08165212e', '9cbb6aebcf5ae14a9248b4c08165212e'),
(5, 'sam', 'gzjkzjz', 'hsijzhz', 'hzjzkz', 'ba0e0cde1bf72c28d435c89a66afc61a', 'ba0e0cde1bf72c28d435c89a66afc61a');

-- --------------------------------------------------------

--
-- Table structure for table `login_auto`
--

CREATE TABLE `login_auto` (
  `id` int(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile_No` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Re_enter_Password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_auto`
--

INSERT INTO `login_auto` (`id`, `Username`, `Email`, `Mobile_No`, `Password`, `Re_enter_Password`) VALUES
(1, 'bhushan', 'b@gmail.com', '876543321651', '123', '123'),
(2, 'pappu', 'cvhjb', '98765544567', '123', '123'),
(3, 'shweta ', 'shwetamore1430@gmail.com ', '7391999363', '123', '123'),
(4, 'Rohini ', 'rohinitule3637@gmail.com ', '7028803637', '1234', '1234'),
(5, 'rinku', 'rinkushewale@gmail.com', '7743805532', '123', '123'),
(6, 'omkar', 'o@gmail.com', '95455', '123', '123'),
(7, '123', '123', '123', '123', '123'),
(8, 'abc', 'abc@gmail.com', '123456789', 'abc', 'abc'),
(9, 'sai', 'saisunil.wagaskar@gmail.com', '9665622190', 'Sairam5009', 'Sairam5009'),
(10, 'rushi', 'rushikeshtule5@gmail.com', '9172475151', 'rushi5151', 'rushi5151');

-- --------------------------------------------------------

--
-- Table structure for table `login_reg`
--

CREATE TABLE `login_reg` (
  `id` int(100) NOT NULL,
  `Username` varchar(500) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Image_path` varchar(1000) NOT NULL,
  `Mobile_No` varchar(500) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `Re_enter_Password` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_reg`
--

INSERT INTO `login_reg` (`id`, `Username`, `Email`, `Image_path`, `Mobile_No`, `usertype`, `Password`, `Re_enter_Password`) VALUES
(17, 'pooja', 'pooja@gmail.com', 'http://android.dhamalexim.com/PdfUploadFetch/upload/1629301166.png', '8765455558', 'User', '123', '123'),
(18, 'John', 'johnmark@gmail.com', 'http://android.dhamalexim.com/PdfUploadFetch/upload/2037425819.png', '3135657780', 'Author', 'sfo@john', 'sfo@john'),
(3, 'ramesh', 'ramesh@gmail.com', 'http://android.dhamalexim.com/PdfUploadFetch/upload/1770986442.png', '7654321567', 'User', '123', '123'),
(16, 'aksh', 'akshpatel@gmail.com', 'http://android.dhamalexim.com/PdfUploadFetch/upload/259260533.png', '5102039316', 'User', 'sfo', 'sfo'),
(14, 'manish', 'manish', 'http://android.dhamalexim.com/PdfUploadFetch/upload/733857689.png', '5102039316', 'Author', 'sfo', 'sfo'),
(15, 'zaik ', 'zaik@ gmail.com', 'http://android.dhamalexim.com/PdfUploadFetch/upload/91148200.png', '5102039316', 'Author', 'sfo', 'sfo');

-- --------------------------------------------------------

--
-- Table structure for table `login_register`
--

CREATE TABLE `login_register` (
  `id` int(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile_No` varchar(100) NOT NULL,
  `token` varchar(500) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Re_enter_Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_register`
--

INSERT INTO `login_register` (`id`, `Username`, `Email`, `Mobile_No`, `token`, `Password`, `Re_enter_Password`) VALUES
(1, 'akash', 'akash3699@gmail.com', '8149281827', 'eYHrfvdfFpM:APA91bHX1Fs60mI2sizAj4J_3T6D11ZKf1b9bcEIYIQOQjSanw3SZWx3p-YRRwnYT6CXsmzj64zb46zINyNHW43SdGzj967zGK9qaj28eXYGXLFQkPyMwk6m14nOZwHzAmMQtv4m3t8m', '123', '123'),
(2, 'Priyanka', 'ghodkepriyanka2@gmail.com', '9146652854', 'eCo51RqkAkA:APA91bExxVRtXMDKuZDyhFUliq5IWUx5z7scYaOd2Zpe5xaxlNqF2S8TqPfU3cqaPgxLlgtiQnuDv2S5hk6RvlNZkV_uzACfA1VOEGxwfjhMCHxP7qRv9bjr6QkfDHDiF2efnslpdl0Q', '12345', '12345'),
(3, 'akki', 'ak@gmqil.com', '8208710867', 'eYHrfvdfFpM:APA91bHX1Fs60mI2sizAj4J_3T6D11ZKf1b9bcEIYIQOQjSanw3SZWx3p-YRRwnYT6CXsmzj64zb46zINyNHW43SdGzj967zGK9qaj28eXYGXLFQkPyMwk6m14nOZwHzAmMQtv4m3t8m', '123', '123'),
(4, 'bhushan', 'ghjhgggg@g.c', '9876543218', 'c-lZsZpi4RM:APA91bG9a88MIvY9ysRrGg8KylMWS5cudjlBLB7Saf0NhT3y12VRli5j-2NP_3c14UVm31sj22Qt9OL2rUdr5PUzNrmK2OctzXnZ2OqA2QeQOlYYLvQ-hmB_61FpMqwblboKWU_wXCNR', '123', '123'),
(5, 'prasad', 'scp15472@gmail.con', '8793753510', 'cJzzmpWe3us:APA91bEzbBu2XY6i7uGbfQsgYfTLy7OR_iZuHOMOeIz0Hor4Z_U2qk_WmgFWE1JnPa5rjaXKfncLj51GLsB2g7d0Rc2XRIYkJgZSte1PGoP-wQ1hccy-fhjB4b5KRLP5gnhgvAqWpeib', '123', '123'),
(6, 'amir', 'amirattar525@gmail.com', '9850333945', 'e-U79KSwggI:APA91bElpHgEAnUcVAvqsXHoxZTmuBCZauSQJBsNhs0JcYD237b1mptbPGv7qvS9BHmJcqdq8q05SgOaZohC79EhwJ5IMmVIlfi6lZtRmm4VS1bzkVvaaAcnkFroEIzFa4nwJUWFMeym', '123', '123'),
(7, 'pratik', 'pra@gmail.com', '8544153996', 'fmac905DKV8:APA91bHXL1qRmuBDEjQTmUpADYGQXV-CjokSEiVlJbd3DCrWGhKnlFYcPbs2IC4zFKY6zPsvEv9E3QLQoATUI3VJAd4RVh2tY1WS4NbtvIAw3AleQ7MNbKJbKJ_yObN2K11xTpgL1eQO', '123', '123'),
(8, 'prem', 'adff@h.n', '1234567895', 'ffdUxRoM4mI:APA91bExwrub6oF7zSmCotmDFykjzJzdL5kRnwzH6io_RVXK3nU3bmYPqu79Yg-AJD33fdy_RvAp_5cI-UEA2e-FwornJVV5CfAA6tf0jua3eDG86v6cM6QuZl7OjETmKz1hM7UXcQ1F', '123', '123'),
(9, 'balika', 'balika@gmail.com', '9545545660', 'eyhXlHm7vGI:APA91bG7_gHsIVTx7hFvHg4wC5oQSEErTePLAZqBg3zAlzcgtp3PI8DNgD40Y9u7rCFAPjxqrENZV8e9wMzYH2QH5FATimWCO4eJSchS7pd2ZSFD5Z4z_e5-O82IhvEd5uzwCyTeLeYH', '123', '123'),
(10, 'Ramesh', 'rjadhav111.rj47@gmail.com', '9545545660', 'eTIw2F6Hygc:APA91bEGpZcYBfC_WkOG-9imbustPFD5tzdOc_jY-q8OKtZpuA8PLc4hs5VI2JnsCl1HcXudFsCy0RPORnLqgJk7p62kT_FQo4h7uTGN0rlMIXt8iSdS-K7HCSd1eaYtFMcf1NbWVbHT', '123', '123'),
(11, 'ranjit', 'ranjit@gmail.com', '9730371278', 'cIBsZGxOsu0:APA91bFUXR-Kwlqh3HG0qZSPalrdSsYRr2kpsmM89ICVEmCEbL1oQhkF-FY9lLpNVSMNB75GGE4wW4Ii4w_7lZiVvJyKRzKnyBbPjCQTo7NzCo8tY4_WaPcJmFDsIQ5IRp8RdHFsEG9R', '123', '123'),
(12, 'omkar', 'omkar@gmail.com', '9766661409', 'f5Q2ZpgG9VY:APA91bEi4bPf6BwYwauHgtMtD-TqFR52_FDK-sfBMvqd94_4uOtmnv_TZTrCXybdbJ3yC2XW_goOaQamhPG2m99W-Rjseldzp7a3dwat3Vekx_LRG7CejXOZ3eTk6sfPjTGXvIjK3hwo', '12345', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(100) NOT NULL,
  `Username` varchar(1000) NOT NULL,
  `Mobile_No` varchar(1000) NOT NULL,
  `Email` varchar(1000) NOT NULL,
  `Image_path` varchar(1000) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Re_enter_Password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `Username`, `Mobile_No`, `Email`, `Image_path`, `Password`, `Re_enter_Password`) VALUES
(1, 'abc', '4365473423', 'dfdzs@dfsdh.vgbc', 'http://android.dhamalexim.com/PdfUploadFetch/upload/1597687863.png', '123', '123'),
(2, 'mno', '87654321098', 'mno@g.com', 'http://android.dhamalexim.com/PdfUploadFetch/upload/647580657.png', '123', '123'),
(3, 'ramesh', '91919191919', 'rj@gmail.com', 'http://android.dhamalexim.com/PdfUploadFetch/upload/1490921887.png', '123', '123'),
(4, 'arif', '4153481562', 'arif@gmail.com', 'http://android.dhamalexim.com/PdfUploadFetch/upload/722485424.png', 'sfo', 'sfo'),
(5, 'arif', '4153481562', 'arif@gmail.com', 'http://android.dhamalexim.com/PdfUploadFetch/upload/1816643611.png', 'sfo', 'sfo');

-- --------------------------------------------------------

--
-- Table structure for table `mark_test`
--

CREATE TABLE `mark_test` (
  `id` int(100) NOT NULL,
  `Student_name` varchar(100) NOT NULL,
  `Subject_name` varchar(100) NOT NULL,
  `Total_Marks` varchar(100) NOT NULL,
  `Passing_Marks` varchar(100) NOT NULL,
  `Obtained_Marks` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Other_Discription` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark_test`
--

INSERT INTO `mark_test` (`id`, `Student_name`, `Subject_name`, `Total_Marks`, `Passing_Marks`, `Obtained_Marks`, `Status`, `Other_Discription`) VALUES
(1, 'hghg', 'gh', 'hgs', 'hg', 'cxb', 'cvbn', 'dhg'),
(2, 'hghg', 'gh', 'hgs', 'hg', 'cxb', 'cvbn', 'dhg'),
(3, 'shweta', 'hindi', '23', '12', '18', '18', '18'),
(4, 'shweta', 'hindi', '23', '12', '18', '18', '18'),
(5, 'shweta', 'hindi', '23', '12', '18', '18', '18'),
(6, 's', 'gfg', '12', '78', '456', 'kk', 'kjkf');

-- --------------------------------------------------------

--
-- Table structure for table `new_class`
--

CREATE TABLE `new_class` (
  `Id` int(100) NOT NULL,
  `New_class` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_class`
--

INSERT INTO `new_class` (`Id`, `New_class`, `division`) VALUES
(17, 'poooo', 'poo'),
(18, 'Mscit', 'jan 2018'),
(19, 'Mscit', 'jan 2018'),
(20, 'Other', 'jan');

-- --------------------------------------------------------

--
-- Table structure for table `PdfTable`
--

CREATE TABLE `PdfTable` (
  `id` int(100) NOT NULL,
  `PdfURL` varchar(500) NOT NULL,
  `category` varchar(100) NOT NULL,
  `PdfName` varchar(500) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `Userid` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PdfTable`
--

INSERT INTO `PdfTable` (`id`, `PdfURL`, `category`, `PdfName`, `image`, `Userid`, `status`) VALUES
(22, 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/272523520.pdf', '--Select Book Type--', 'Health ', 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/272523520.png', '14', '2'),
(26, 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/496725301.pdf', 'fiction', 'manish book', 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/496725301.png', '14', '0'),
(27, 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/1423376289.pdf', 'Adventure', '2018! Bucket List ', 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/1423376289.png', '14', '0'),
(24, 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/1516197945.pdf', 'Self help', 'Things in everyday Life !', 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/1516197945.png', '14', '0');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `id` int(100) NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `Longitude` varchar(100) NOT NULL,
  `token` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`id`, `Latitude`, `Longitude`, `token`) VALUES
(1, '18.5898362', '73.9978782', 'e-U79KSwggI:APA91bElpHgEAnUcVAvqsXHoxZTmuBCZauSQJBsNhs0JcYD237b1mptbPGv7qvS9BHmJcqdq8q05SgOaZohC79EhwJ5IMmVIlfi6lZtRmm4VS1bzkVvaaAcnkFroEIzFa4nwJUWFMeym');

-- --------------------------------------------------------

--
-- Table structure for table `query_table`
--

CREATE TABLE `query_table` (
  `id` int(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `query` varchar(250) NOT NULL,
  `reply` varchar(250) NOT NULL,
  `stu_id` varchar(250) NOT NULL,
  `lect_id` varchar(250) NOT NULL,
  `hod_id` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RestaurantLogin`
--

CREATE TABLE `RestaurantLogin` (
  `id` int(11) NOT NULL,
  `Username` int(11) NOT NULL,
  `Email` int(11) NOT NULL,
  `Mobile_No` int(11) NOT NULL,
  `Password` int(11) NOT NULL,
  `Re-enter_Password` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scan_notice`
--

CREATE TABLE `scan_notice` (
  `id` int(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `notice` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scan_notice`
--

INSERT INTO `scan_notice` (`id`, `code`, `notice`) VALUES
(1, '123456789', 'gather in seminar hall sharp at 3 pm'),
(2, '123456789012', 'gather for meeting'),
(3, 'HOD123', 'hii All Hod'),
(4, 'LEC123', 'All staff of computer department gather for departmental meeting at 1.00pm.'),
(5, 'ALL124', 'On date 6-4-2018 there will be holiday'),
(6, 'STU123', 'Pay your remaianing fees');

-- --------------------------------------------------------

--
-- Table structure for table `send_notice`
--

CREATE TABLE `send_notice` (
  `id` int(100) NOT NULL,
  `notice` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `allstudent` varchar(250) NOT NULL,
  `lecturer` varchar(250) NOT NULL,
  `allstulec` varchar(250) NOT NULL,
  `hod_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `send_notice`
--

INSERT INTO `send_notice` (`id`, `notice`, `name`, `year`, `allstudent`, `lecturer`, `allstulec`, `hod_id`) VALUES
(1, 'gather in my office ', 'bhushan mude', '', '1', '', '', '1'),
(2, 'hello students', 'Suvarna Bahir', '', '', '', '1', '1'),
(3, 'hiiii students', 'Suvarna Bahir', '', '1', '', '', '1'),
(4, 'hiiii students', 'Suvarna Bahir', '', '1', '', '', '1'),
(5, 'hiiii students', 'Suvarna Bahir', '', '1', '', '', '1'),
(6, 'hiiii students', 'Suvarna Bahir', '', '1', '', '', '1'),
(7, '', 'Suvarna Bahir', '', '1', '', '', '1'),
(8, 'hii all', 'Suvarna Bahir', '', '1', '', '', '1'),
(9, 'gather for meeting in department', 'Suvarna Bahir', '', '', '1', '', '1'),
(10, 'Hii all of you', 'Suvarna Bahir', '', '', '', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `stu_details`
--

CREATE TABLE `stu_details` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `year` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `hod_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_details`
--

INSERT INTO `stu_details` (`id`, `name`, `email`, `year`, `mobile`, `password`, `hod_id`) VALUES
(1, 'renu Adhana', 'renu@gmail.com', '2', '4587458', '123', '1'),
(2, 'komal roudge', 'komal@gmail.com', '1', '1234567890', '123', '1'),
(3, 'prem shete', 'prem@gmail.com', '3', '5487129', '123', '1'),
(4, 'Ramesh sawkar', 'ramesh', '2', '8787878787', '123', '2'),
(5, 'io', 'd@gmail.com', '1', '451236', '123', '1'),
(6, 'suraj mali', 'suraj.mali157@gmail.com', '3', '8411866433', 'suraj84118', '1'),
(7, 'Omkar Biradar', 'omkarbiradar93@gmail.com', '3', '7720857991', 'Omkar123.', '1'),
(8, 'avinash kamblr', 'asd', '3', '135', 'yxc', '1'),
(9, 'akash', 'akashk97667@gmail.com', '3', '7721041301', '123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Upload_Loc`
--

CREATE TABLE `Upload_Loc` (
  `id` int(100) NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `Longitude` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Upload_Loc`
--

INSERT INTO `Upload_Loc` (`id`, `Latitude`, `Longitude`) VALUES
(1, '18.5808674', '73.9804927'),
(2, '18.5813922', '73.9798408'),
(3, '18.591555', '74.00206'),
(4, '18.5600165', '73.9187369'),
(9, '18.560053', '73.9187818'),
(5, '18.5929732', '74.0008164'),
(6, '18.5859391', '74.0026323'),
(7, '18.5855973', '74.0018751'),
(8, '18.5580494', '73.9215419'),
(11, '18.5579394', '73.9224244');

-- --------------------------------------------------------

--
-- Table structure for table `Upload_Location`
--

CREATE TABLE `Upload_Location` (
  `id` int(100) NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `Longitude` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Upload_Location`
--

INSERT INTO `Upload_Location` (`id`, `Latitude`, `Longitude`) VALUES
(1, '', ''),
(2, '', ''),
(3, '', ''),
(4, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userPdfTable`
--

CREATE TABLE `userPdfTable` (
  `id` int(100) NOT NULL,
  `PdfURL` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userPdfTable`
--

INSERT INTO `userPdfTable` (`id`, `PdfURL`, `name`, `image`, `userid`) VALUES
(11, 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/914948279.pdf', 'AI', 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/914948279.png', '4'),
(8, 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/914948279.pdf', 'AI', 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/914948279.png', '4'),
(10, 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/914948279.pdf', 'AI', 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/914948279.png', '4'),
(12, 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/914948279.pdf', 'AI', 'http://android.dhamalexim.com/PdfUploadFetch/PdfUploadFolder/914948279.png', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AddToCard`
--
ALTER TABLE `AddToCard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Add_Products`
--
ALTER TABLE `Add_Products`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Indexes for table `add_student`
--
ALTER TABLE `add_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antitheftImage`
--
ALTER TABLE `antitheftImage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AntitheftLogin`
--
ALTER TABLE `AntitheftLogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `familyfriends`
--
ALTER TABLE `familyfriends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `FarmerLogin`
--
ALTER TABLE `FarmerLogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_history`
--
ALTER TABLE `fees_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `HarteRate1`
--
ALTER TABLE `HarteRate1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hod_details`
--
ALTER TABLE `hod_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lec_details`
--
ALTER TABLE `lec_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_auto`
--
ALTER TABLE `location_auto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_auto`
--
ALTER TABLE `login_auto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_reg`
--
ALTER TABLE `login_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_register`
--
ALTER TABLE `login_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_test`
--
ALTER TABLE `mark_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_class`
--
ALTER TABLE `new_class`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `PdfTable`
--
ALTER TABLE `PdfTable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query_table`
--
ALTER TABLE `query_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `RestaurantLogin`
--
ALTER TABLE `RestaurantLogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scan_notice`
--
ALTER TABLE `scan_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_notice`
--
ALTER TABLE `send_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_details`
--
ALTER TABLE `stu_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Upload_Loc`
--
ALTER TABLE `Upload_Loc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Upload_Location`
--
ALTER TABLE `Upload_Location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userPdfTable`
--
ALTER TABLE `userPdfTable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AddToCard`
--
ALTER TABLE `AddToCard`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Add_Products`
--
ALTER TABLE `Add_Products`
  MODIFY `Product_Id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_student`
--
ALTER TABLE `add_student`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `antitheftImage`
--
ALTER TABLE `antitheftImage`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `AntitheftLogin`
--
ALTER TABLE `AntitheftLogin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `familyfriends`
--
ALTER TABLE `familyfriends`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `FarmerLogin`
--
ALTER TABLE `FarmerLogin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fees_history`
--
ALTER TABLE `fees_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `HarteRate1`
--
ALTER TABLE `HarteRate1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `hod_details`
--
ALTER TABLE `hod_details`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lec_details`
--
ALTER TABLE `lec_details`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `location_auto`
--
ALTER TABLE `location_auto`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_auto`
--
ALTER TABLE `login_auto`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login_reg`
--
ALTER TABLE `login_reg`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `login_register`
--
ALTER TABLE `login_register`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mark_test`
--
ALTER TABLE `mark_test`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `new_class`
--
ALTER TABLE `new_class`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `PdfTable`
--
ALTER TABLE `PdfTable`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `query_table`
--
ALTER TABLE `query_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RestaurantLogin`
--
ALTER TABLE `RestaurantLogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scan_notice`
--
ALTER TABLE `scan_notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `send_notice`
--
ALTER TABLE `send_notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stu_details`
--
ALTER TABLE `stu_details`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Upload_Loc`
--
ALTER TABLE `Upload_Loc`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Upload_Location`
--
ALTER TABLE `Upload_Location`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userPdfTable`
--
ALTER TABLE `userPdfTable`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
