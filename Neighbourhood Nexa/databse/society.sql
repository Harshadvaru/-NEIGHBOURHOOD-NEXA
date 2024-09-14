-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 09:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `society`
--

-- --------------------------------------------------------

--
-- Table structure for table `combox`
--

CREATE TABLE `combox` (
  `ID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `complaint` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `combox`
--

INSERT INTO `combox` (`ID`, `Title`, `complaint`) VALUES
(1, 'Leakage problem', 'This is to inform that is leakage in my flat due to the society water tank leaking. The tank is placed right above our flat and i request society to change the tank and do take neccessary actions on that.\r\nc-005,Shubham  '),
(2, 'clubhouse complaint', 'This is to inform that electricity switch board near door of clubhouse is not working i request to fix it as soon as possible.'),
(3, 'garden problem', 'there is repairs in garden area '),
(4, 'Leakage problem', 'there is issue in leakage');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_url`) VALUES
(1, 'IMG-617627ff778ad9.82682524.jpg'),
(2, 'IMG-6176280bb21e86.75353156.jpg'),
(5, 'IMG-62cd7d0a2e28c2.83360011.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Noticedate` date NOT NULL,
  `Message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`ID`, `Name`, `Type`, `Noticedate`, `Message`) VALUES
(1, 'Lack of water Supply', 'Announcements', '2021-10-04', 'This is to inform you that there is a shortage of drinking & domestic water “due to breakage of water pipeline near our society”. Please make necessary arrangement to store water as per your requirement till Tommorow Evening 6pm. Avoid wastage of water, save drops of water.\r\nInconvenience is regretted.'),
(2, 'Ganpati celebration Discusssion', 'Events', '2021-10-04', 'On the auspicious occasion of Ganesh chaturti, the Society has organized a event followed by activities. All members of the society are requested to attend the event discussion in the clubhouse of the society at 8:00 pm on the 2nd of September..\r\nThank You,\r\nThanekar Parkland.'),
(3, 'meeting regarding water problem', 'Announcements', '2021-10-05', 'today there is meeting in clubhouse at 8.00 pm evening all are requested to attend the meeting.'),
(4, 'Diwali celebration Discusssion', 'Events', '2022-07-12', 'dicussion on event');

-- --------------------------------------------------------

--
-- Table structure for table `payrecords`
--

CREATE TABLE `payrecords` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Flatno` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payrecords`
--

INSERT INTO `payrecords` (`ID`, `Name`, `Flatno`, `Amount`, `Status`) VALUES
(1, 'Shubham', 8, 1000, 'Success'),
(2, 'Sonali', 7, 1000, 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Flatno` int(10) NOT NULL,
  `MobileNo` bigint(10) NOT NULL,
  `nno of family members` int(10) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Id`, `Username`, `Email`, `Flatno`, `MobileNo`, `nno of family members`, `Password`) VALUES
(2, 'Sonali', 'sonali01@gmail.com', 9, 8779635233, 4, '56ddud'),
(3, 'Shubham', 'shubhamvartak01@gmail.com', 8, 8779635279, 4, 'sgssjs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `combox`
--
ALTER TABLE `combox`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payrecords`
--
ALTER TABLE `payrecords`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `combox`
--
ALTER TABLE `combox`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payrecords`
--
ALTER TABLE `payrecords`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
