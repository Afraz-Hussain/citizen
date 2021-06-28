-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Jun 27, 2021 at 03:00 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Details` varchar(50) DEFAULT NULL,
  `Phone` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`FName`, `LName`, `Area`, `Details`, `Phone`) VALUES
('Ahsan', 'Butt', 'Lahore', 'Health care Department Complain', 788098),
('Bilal', 'Kashif', 'Lahore', 'Robbery', 8465738),
('Talha', 'Kashif', 'Islamabad', 'Educational Department Complain', 84757854),
('Saeed', 'Anwar', 'Lahore', 'Police Department Complain', 777765558),
('Hamza', 'Sajid', 'Lahore', 'Robbery', 847574758),
('Usman', 'Niaz', 'Lahore', 'Robbery', 984748383),
('Haris', 'Sajid', 'Lahore', 'Educational Department Complain', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Phone` int(50) DEFAULT NULL,
  `cnic` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`FName`, `LName`, `Email`, `Department`, `Phone`, `cnic`) VALUES
('Bilal', 'Kashif', 'bk123@gmail.com', 'Police', 847574758, 9475784),
('Haider', 'Ali', 'ha489@gmail.com', 'Health', 945894, 54637829),
('Abdullah', 'Butt', 'ab54@gmail.com', 'Police', 2147483647, 277283349),
('Ahsan', 'Khawar', 'ak7699@gmail.com', 'Educational', 788098, 893848839),
('Hamza', 'Sajid', 'hs123@gmail.com', 'Health', 847574758, 985774483),
('Usman', 'Niaz', 'un123@gmail.com', 'Educational', 984748383, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Service` varchar(50) DEFAULT NULL,
  `Phone` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`FName`, `LName`, `Email`, `Service`, `Phone`) VALUES
('Bilal', 'Kashif', 'bk123@gmail.com', 'Trace Driving Licence', 847574758),
('Usman', 'Niaz', 'un123@gmail.com', 'Trace CNIC', 984748383),
('Ahsan', 'Khawar', 'ak7699@gmail.com', 'Trace Phone', 788098),
('Abid', 'Ali', 'aba345@gmail.com', 'Trace Driving Licence', 457848993),
('Hamza', 'Sajid', 'hs123@gmail.com', 'Access Hospital Data', 847574758);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Addres` varchar(50) DEFAULT NULL,
  `Phone` int(50) DEFAULT NULL,
  `CNIC` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`FName`, `LName`, `Email`, `Password`, `Addres`, `Phone`, `CNIC`) VALUES
('Ahsan', 'Butt', 'ak7699@gmail.com', 'ak498854', 'Sadar Cant Lahore', 788098, 34596054),
('Hamza', 'Sajid', 'hs123@gmail.com', 'hs69504', 'Askari 9 Lahore', 847574758, 38757594),
('Usman', 'Niaz', 'un123@gmail.com', 'un125536', 'Johar Town Lahore', 984748383, 48575449),
('Bilal', 'Kashif', 'bk123@gmail.com', 'bk867858', 'Bahria Town Lahore', 847574758, 239804044),
('Talha', 'Kashif', 'tk12880@gmail.com', 'tk590444', 'Bahria Town Karachi', 5747883, 584895843),
('Hammad', 'Kashif', 'hk456@gmail.com', 'hk4885', 'Islam Pura Lahore', 2147483647, 746839330),
('Fatima', 'Ali', 'fa388@gmail.com', 'fa878880', 'Gulberg 3 Lahore', 23744883, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Suggestion` varchar(50) DEFAULT NULL,
  `Phone` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`FName`, `LName`, `Email`, `Suggestion`, `Phone`) VALUES
('Bilal', 'Kashif', 'bk123@gmail.com', 'Policy or Legislative instrument for public conven', 847574758),
('Usman', 'Niaz', 'un123@gmail.com', 'Suggestions may lead to initiation of  reforms in ', 984748383),
('Hamza', 'Sajid', 'hs123@gmail.com', 'A suggestion may either relate to a subject dealt ', 847574758),
('Haider', 'Ali', 'ha489@gmail.com', 'policy or legislative instrument for public conven', 945894),
('Talha', 'Kashif', 'tk378@gmail.com', 'Suggestions whose adoption/implementation may invo', 94954003);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`Phone`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`cnic`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`CNIC`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
