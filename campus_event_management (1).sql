-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 07:44 AM
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
-- Database: `campus_event_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_info`
--

CREATE TABLE `account_info` (
  `Id_account` int(100) NOT NULL,
  `contact_id` int(100) NOT NULL,
  `User_Name` varchar(60) NOT NULL,
  `User_Password` varchar(60) NOT NULL,
  `acc_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` (`Id_account`, `contact_id`, `User_Name`, `User_Password`, `acc_type`) VALUES
(1, 1, 'wilms123', '$2y$10$wujMjRkCluenBzC1bQCtD.PV27NKOlv9CUmu4sgU1n1lTCtE3aIYK', 'User'),
(2, 2, 'wilms123', '$2y$10$fU/y4Bt3lbrsBaqvaw1QsuM3tMNWzb.vz8mvxXSw1LheHT5palT.O', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `address_info`
--

CREATE TABLE `address_info` (
  `Id_address` int(100) NOT NULL,
  `Province` varchar(225) NOT NULL,
  `City_Municipality` varchar(225) NOT NULL,
  `Barangay` varchar(225) NOT NULL,
  `Zip_Code` smallint(10) NOT NULL,
  `House_Address` varchar(225) NOT NULL,
  `Street` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address_info`
--

INSERT INTO `address_info` (`Id_address`, `Province`, `City_Municipality`, `Barangay`, `Zip_Code`, `House_Address`, `Street`) VALUES
(1, 'Manila', 'Metro Manila', 'Tandang Sora', 1122, '20 San Roque', 'San Roque'),
(2, 'Manila', 'Metro Manila', 'Tandang Sora', 1122, '20 San Roque', 'San Roque');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id_contact` int(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contact_number` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id_contact`, `email`, `contact_number`) VALUES
(1, 'jonwilms@gmail.com', '09918445664'),
(2, 'jonwilms@gmail.com', '09918445664');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `Id` int(100) NOT NULL,
  `FName` varchar(60) NOT NULL,
  `MName` varchar(60) NOT NULL,
  `LName` varchar(60) NOT NULL,
  `Suffix` varchar(60) DEFAULT NULL,
  `DateOfBirth` date NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `contact_id` int(100) NOT NULL,
  `Address_Id` int(100) NOT NULL,
  `School_Id` int(100) NOT NULL,
  `Account_Id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`Id`, `FName`, `MName`, `LName`, `Suffix`, `DateOfBirth`, `Sex`, `contact_id`, `Address_Id`, `School_Id`, `Account_Id`) VALUES
(1, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 1, 1, 1, 1),
(2, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `school_info`
--

CREATE TABLE `school_info` (
  `id_school` int(100) NOT NULL,
  `Student_Id` int(50) NOT NULL,
  `Campus` varchar(60) NOT NULL,
  `Deparment` varchar(60) NOT NULL,
  `Program` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_info`
--

INSERT INTO `school_info` (`id_school`, `Student_Id`, `Campus`, `Deparment`, `Program`) VALUES
(1, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(2, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewdetails`
-- (See below for the actual view)
--
CREATE TABLE `viewdetails` (
`Id` int(100)
,`FName` varchar(60)
,`MName` varchar(60)
,`LName` varchar(60)
,`Suffix` varchar(60)
,`Sex` varchar(10)
,`email` varchar(60)
,`contact_number` varchar(13)
,`Province` varchar(225)
,`City_Municipality` varchar(225)
,`Barangay` varchar(225)
,`Zip_Code` smallint(10)
,`House_Address` varchar(225)
,`Street` varchar(225)
,`Student_Id` int(50)
,`Campus` varchar(60)
,`Deparment` varchar(60)
,`Program` varchar(60)
,`contact_id` int(100)
,`User_Name` varchar(60)
,`User_Password` varchar(60)
,`acc_type` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `viewdetails`
--
DROP TABLE IF EXISTS `viewdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewdetails`  AS SELECT `p`.`Id` AS `Id`, `p`.`FName` AS `FName`, `p`.`MName` AS `MName`, `p`.`LName` AS `LName`, `p`.`Suffix` AS `Suffix`, `p`.`Sex` AS `Sex`, `c`.`email` AS `email`, `c`.`contact_number` AS `contact_number`, `address`.`Province` AS `Province`, `address`.`City_Municipality` AS `City_Municipality`, `address`.`Barangay` AS `Barangay`, `address`.`Zip_Code` AS `Zip_Code`, `address`.`House_Address` AS `House_Address`, `address`.`Street` AS `Street`, `s`.`Student_Id` AS `Student_Id`, `s`.`Campus` AS `Campus`, `s`.`Deparment` AS `Deparment`, `s`.`Program` AS `Program`, `acc`.`contact_id` AS `contact_id`, `acc`.`User_Name` AS `User_Name`, `acc`.`User_Password` AS `User_Password`, `acc`.`acc_type` AS `acc_type` FROM ((((`personal_info` `p` join `contact_info` `c` on(`p`.`Id` = `c`.`id_contact`)) join `address_info` `address` on(`p`.`Id` = `address`.`Id_address`)) join `school_info` `s` on(`p`.`Id` = `s`.`id_school`)) join `account_info` `acc` on(`p`.`Id` = `acc`.`Id_account`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_info`
--
ALTER TABLE `account_info`
  ADD PRIMARY KEY (`Id_account`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `address_info`
--
ALTER TABLE `address_info`
  ADD PRIMARY KEY (`Id_address`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `personal_info_ibfk_1` (`Account_Id`),
  ADD KEY `School_Id` (`School_Id`),
  ADD KEY `personal_info_ibfk_2` (`Address_Id`),
  ADD KEY `id_contact` (`contact_id`);

--
-- Indexes for table `school_info`
--
ALTER TABLE `school_info`
  ADD PRIMARY KEY (`id_school`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_info`
--
ALTER TABLE `account_info`
  MODIFY `Id_account` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `address_info`
--
ALTER TABLE `address_info`
  MODIFY `Id_address` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id_contact` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `school_info`
--
ALTER TABLE `school_info`
  MODIFY `id_school` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_info`
--
ALTER TABLE `account_info`
  ADD CONSTRAINT `account_info_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact_info` (`id_contact`);

--
-- Constraints for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD CONSTRAINT `personal_info_ibfk_1` FOREIGN KEY (`Account_Id`) REFERENCES `account_info` (`Id_account`),
  ADD CONSTRAINT `personal_info_ibfk_2` FOREIGN KEY (`Address_Id`) REFERENCES `address_info` (`Id_address`),
  ADD CONSTRAINT `personal_info_ibfk_3` FOREIGN KEY (`School_Id`) REFERENCES `school_info` (`id_school`),
  ADD CONSTRAINT `personal_info_ibfk_4` FOREIGN KEY (`contact_id`) REFERENCES `contact_info` (`id_contact`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
