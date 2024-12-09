-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 07:05 AM
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
(1, 1, 'john23', '$2y$10$wujMjRkCluenBzC1bQCtD.PV27NKOlv9CUmu4sgU1n1lTCtE3aIYK', 'User'),
(2, 2, 'bagayan05', '$2y$10$fU/y4Bt3lbrsBaqvaw1QsuM3tMNWzb.vz8mvxXSw1LheHT5palT.O', 'User'),
(3, 3, 'wilms12', '$2y$10$NxtcZqKOX7xffeLzKAMNUuiFn9vkRKUpyLqezMN9z0Xq68wVKldZu', 'User'),
(4, 4, 'denzellle01', '$2y$10$lV8lrRm/ZCZ3r.j4yPaoZOdglO.FfXAnJhxkj29wWmRV/BMtaiGYi', 'User'),
(5, 5, 'audrey01', '$2y$10$chOljeTE0EiIvvqy.r85teAcZ2jr.wnvJL9OnCFZChpUAbsBnSTXK', 'User'),
(6, 6, 'raldin22', '$2y$10$DfD.QrRwKGm.TswLAefkX.7GS9TcxXiE4GqvhHydpdrH3JtOyIzP2', 'User'),
(7, 7, 'acabal09', '$2y$10$WNf1yGdKO9Zt1QOFNxenA.VnMii1wSAyzroMikZZ559TGrrStqVQu', 'User'),
(8, 8, 'secret', '$2y$10$Xs4dhZ8JONPMiXa7x0YbWunPi.fsX2kOAKZMw0MZNAJohHwhWWlTu', 'User'),
(9, 9, 'tenio12', '$2y$10$1me29NzdA71jg0nc2DaYieFLgnNmLVRI4YjdknSxt/chVUlmZVtPK', 'User'),
(10, 10, 'carlo', '$2y$10$W.kN1uFCneZCU/DVHzoIlOfTnjsJGjTi5iFzVmWbDpPn1Nds7Zk4O', 'User'),
(11, 11, 'med', '$2y$10$bvzK52U3Ruci.Ag/copeU.pS5Zm/IUsJWQcaMYJmw5z6Id8X5OjLe', 'User'),
(12, 12, 'geraldin06', '$2y$10$p5ykF0DexBjqKA55dLpaXejdoOuc3qVf5feQHkvctmvmusSsAZTBa', 'User'),
(13, 13, 'noah', '$2y$10$kgBIypMo.Lv0kC4OlxuGgu6h9BiL6hgoK2v4r0mVnhAQfuVuzMieC', 'User'),
(14, 14, 'lemuel123456', '$2y$10$JP7OjKrq1sM3f2c..pVbSef7Flmu3KH.jVH0IXGInEsOID6OABva2', 'User'),
(15, 15, 'tANl1234', '$2y$10$Tyq2PWLOzmwUp/4VyzE9J.rJVUgHPOW.L2MO/oSgI09sVCQKC1pdm', 'User');

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
(2, 'Manila', 'Metro Manila', 'Tandang Sora', 1122, '20 San Roque', 'San Roque'),
(3, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(4, 'Manila', 'Metro Manila', 'Tandang Sora', 1770, 'hatdog 123 Novaliches Quezon City', 'San Roque'),
(5, 'Manila', 'Metro Manila', 'Tandang Sora', 1770, 'hatdog 123 Novaliches Quezon City', 'San Roque'),
(6, 'Manila', 'Metro Manila', 'Tandang Sora', 1770, 'hatdog 123 Novaliches Quezon City', 'San Roque'),
(7, 'Manila', 'Metro Manila', 'Tandang Sora', 1117, 'hatdog 123 Novaliches Quezon City', 'San Roque'),
(8, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(9, 'Manila', 'Metro Manila', 'Tandang Sora', 1880, 'St. Francis Novaliches, Quezon City', 'Pascualer'),
(10, 'Manila', 'Metro Manila', 'Tandang Sora', 188, 'malayp sayo 1101', 'botocan '),
(11, 'Manila', 'Metro Manila', 'Tandang Sora', 1110, '20 San Roque', 'San Roque'),
(12, 'Manila', 'Metro Manila', 'Tandang Sora', 2580, 'hatdog 123 Novaliches Quezon City', 'San Roque'),
(13, 'Manila', 'Metro Manila', 'Tandang Sora', 290, 'hatdog 123 Novaliches Quezon City', 'San Roque'),
(14, 'Manila', 'Metro Manila', 'Tandang Sora', 290, 'hatdog 123 Novaliches Quezon City', 'San Roque'),
(15, 'Manila', 'Metro Manila', 'Tandang Sora', 290, 'hatdog 123 Novaliches Quezon City', 'San Roque');

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
(2, 'jonwilms@gmail.com', '09918445664'),
(3, 'jonwilms@gmail.com', '09320087890'),
(4, 'denzelle@gmail.com', '09912345678'),
(5, 'denzaudrey@gmail.com', '09912345678'),
(6, 'geraldin@gmail.com', '09912345678'),
(7, 'heheacabal@gmail.com', '09095678536'),
(8, 'jiytshs@gmail.com', '09090909900'),
(9, 'teniomaru@gmail.com', '09093445461'),
(10, 'carlomiranda@gmail.com', '06957477636'),
(11, 'hamedrivera@gmail.com', '07856473265'),
(12, 'lorrainenacion@gmail.com', '09476841457'),
(13, 'noahberalde@gmail.com', '06975766862'),
(14, 'lemuellazaro@gmail.com', '06975766862'),
(15, 'tristanlaude@gmail.com', '06975766862');

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
(2, 'wilms', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 2, 2, 2, 2),
(3, 'Michael', 'Lopez', 'Gabriel', '', '2004-05-23', 'Male', 3, 3, 3, 3),
(4, 'Denzelle', 'Audrie', 'Baggay', '', '2004-12-01', 'Female', 4, 4, 4, 4),
(5, 'Denz', 'Audrey', 'Alegrid', '', '2001-01-01', 'Female', 5, 5, 5, 5),
(6, 'Geraldin', 'Lagare', 'Morales', '', '2006-06-06', 'Male', 6, 6, 6, 6),
(7, 'Acabal ', 'Elyrose', 'Hehe', '', '2002-12-03', 'Male', 7, 7, 7, 7),
(8, 'Michael', 'Lopez', 'Gabriel', '', '2003-09-08', 'Male', 8, 8, 8, 8),
(9, 'mary', 'joy', 'tenio', '', '2003-04-07', 'Female', 9, 9, 9, 9),
(10, 'carlo', 'buenaventura', 'miranda', '', '2004-06-09', 'Male', 10, 10, 10, 10),
(11, 'hamed', 'muslim', 'rivera', '', '2004-01-23', 'Male', 11, 11, 11, 11),
(12, 'lorraine heart', 'apas', 'nacion', '', '2003-03-21', 'Female', 12, 12, 12, 12),
(13, 'noah', 'tamayo', 'beralde', '', '2006-02-09', 'Male', 13, 13, 13, 13),
(14, 'lemuel', 'rod', 'lazaro', '', '2003-12-08', 'Male', 14, 14, 14, 14),
(15, 'tristan', 'tan', 'laude', '', '2004-11-01', 'Male', 15, 15, 15, 15);

-- --------------------------------------------------------

--
-- Stand-in structure for view `quickview`
-- (See below for the actual view)
--
CREATE TABLE `quickview` (
`id` int(100)
,`full_name` varchar(182)
,`email` varchar(60)
,`age` bigint(21)
);

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
(2, 1212, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(3, 231809, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(4, 231779, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(5, 231779, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(6, 231779, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(7, 231807, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(8, 235678, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(9, 237777, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(10, 232276, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(11, 238794, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(12, 231779, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(13, 231779, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(14, 231779, 'San Bartolome', 'Information Techonology', 'Computer Science'),
(15, 231779, 'San Bartolome', 'Information Techonology', 'Computer Science');

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
,`DateOfBirth` date
);

-- --------------------------------------------------------

--
-- Structure for view `quickview`
--
DROP TABLE IF EXISTS `quickview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `quickview`  AS SELECT `viewdetails`.`Id` AS `id`, concat(`viewdetails`.`FName`,' ',ifnull(`viewdetails`.`MName`,''),' ',`viewdetails`.`LName`) AS `full_name`, `viewdetails`.`email` AS `email`, timestampdiff(YEAR,`viewdetails`.`DateOfBirth`,curdate()) AS `age` FROM `viewdetails` ;

-- --------------------------------------------------------

--
-- Structure for view `viewdetails`
--
DROP TABLE IF EXISTS `viewdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewdetails`  AS SELECT `p`.`Id` AS `Id`, `p`.`FName` AS `FName`, `p`.`MName` AS `MName`, `p`.`LName` AS `LName`, `p`.`Suffix` AS `Suffix`, `p`.`Sex` AS `Sex`, `c`.`email` AS `email`, `c`.`contact_number` AS `contact_number`, `address`.`Province` AS `Province`, `address`.`City_Municipality` AS `City_Municipality`, `address`.`Barangay` AS `Barangay`, `address`.`Zip_Code` AS `Zip_Code`, `address`.`House_Address` AS `House_Address`, `address`.`Street` AS `Street`, `s`.`Student_Id` AS `Student_Id`, `s`.`Campus` AS `Campus`, `s`.`Deparment` AS `Deparment`, `s`.`Program` AS `Program`, `acc`.`contact_id` AS `contact_id`, `acc`.`User_Name` AS `User_Name`, `acc`.`User_Password` AS `User_Password`, `acc`.`acc_type` AS `acc_type`, `p`.`DateOfBirth` AS `DateOfBirth` FROM ((((`personal_info` `p` join `contact_info` `c` on(`p`.`Id` = `c`.`id_contact`)) join `address_info` `address` on(`p`.`Id` = `address`.`Id_address`)) join `school_info` `s` on(`p`.`Id` = `s`.`id_school`)) join `account_info` `acc` on(`p`.`Id` = `acc`.`Id_account`)) ;

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
  MODIFY `Id_account` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `address_info`
--
ALTER TABLE `address_info`
  MODIFY `Id_address` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id_contact` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `school_info`
--
ALTER TABLE `school_info`
  MODIFY `id_school` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
