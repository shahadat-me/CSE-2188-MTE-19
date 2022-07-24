-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 06:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel`
--

CREATE TABLE `adminpanel` (
  `ID` int(11) NOT NULL,
  `Username` varchar(80) NOT NULL,
  `Password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminpanel`
--

INSERT INTO `adminpanel` (`ID`, `Username`, `Password`) VALUES
(1, 'admin', 'admin'),
(2, 'Ahnaf', 'Zaki42');

-- --------------------------------------------------------

--
-- Table structure for table `coursereg`
--

CREATE TABLE `coursereg` (
  `ID` int(11) NOT NULL,
  `CourseNo` varchar(50) NOT NULL,
  `Credit` int(11) NOT NULL,
  `HoursPerWeek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursereg`
--

INSERT INTO `coursereg` (`ID`, `CourseNo`, `Credit`, `HoursPerWeek`) VALUES
(1, 'MTE1101', 2, 1908031),
(2, 'Math 1127', 2, 1908031),
(5, 'CSE2187', 3, 1908034),
(6, 'EEE3288', 3, 1808043),
(7, 'ME2156', 2, 1908056);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `StudentRoll` int(11) NOT NULL,
  `CourseNo` varchar(50) NOT NULL,
  `CGPA` int(11) NOT NULL,
  `Grade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`StudentRoll`, `CourseNo`, `CGPA`, `Grade`) VALUES
(1908033, 'MTE 1101', 4, 'A'),
(1908033, 'Math1127', 3, 'A'),
(1908032, 'Math2286', 4, 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(80) NOT NULL,
  `LastName` varchar(80) NOT NULL,
  `Gender` varchar(15) NOT NULL,
  `Phoneno` varchar(20) NOT NULL,
  `Address` text NOT NULL,
  `RollNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`ID`, `FirstName`, `LastName`, `Gender`, `Phoneno`, `Address`, `RollNo`) VALUES
(1, 'Ahnaf', 'Supta', 'Male', '018284856930', 'Savar, Dhaka, Bangladesh', 1908034),
(2, 'Amimul ', 'Zaki', 'Male', '0183477744', 'Rajshahi', 1908038),
(4, 'Azizul', 'Haque', 'Male', '0187345474', 'Motihar', 1908023),
(5, 'Arpita', 'Karmakar', 'Female', '01544755645', 'Bogura', 1908035),
(6, 'Rownak', 'Subrina', 'Female', '01454884854', 'Dhaka', 1908032),
(8, 'Anonno Singha', 'Roy', 'Male', '0148774737', 'Rajshahi', 1908025),
(9, 'Abhirup', 'Sarkar', 'Male', '0183974633', 'Nouga', 1908017),
(11, 'Sarwan', 'Sadique', 'Male', '01935874857', 'Rangpur', 1908022);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminpanel`
--
ALTER TABLE `adminpanel`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `coursereg`
--
ALTER TABLE `coursereg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `studentinfo`
--
ALTER TABLE `studentinfo`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminpanel`
--
ALTER TABLE `adminpanel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coursereg`
--
ALTER TABLE `coursereg`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `studentinfo`
--
ALTER TABLE `studentinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
