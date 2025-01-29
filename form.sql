-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2025 at 06:48 PM
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
-- Database: `form`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `No` int(11) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Id_No` int(11) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Dates` date NOT NULL,
  `Timess` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`No`, `Full_Name`, `Id_No`, `Department`, `Dates`, `Timess`) VALUES
(1, 'Muaz', 14022, 'Aweday', '2025-01-01', '13:11:00'),
(2, 'Chuder', 14050, 'Dire Dawa', '2025-04-01', '01:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `lab_request`
--

CREATE TABLE `lab_request` (
  `patient_name` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `age` int(10) NOT NULL,
  `id_number` varchar(100) NOT NULL,
  `tests` varchar(50) NOT NULL,
  `others` varchar(50) NOT NULL,
  `WIDAL_TEST` varchar(50) NOT NULL,
  `PLORY_TEST` varchar(50) NOT NULL,
  `BFS` varchar(50) NOT NULL,
  `STOOL` varchar(50) NOT NULL,
  `WF` varchar(50) NOT NULL,
  `HCG` varchar(50) NOT NULL,
  `UA` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_request`
--

INSERT INTO `lab_request` (`patient_name`, `sex`, `age`, `id_number`, `tests`, `others`, `WIDAL_TEST`, `PLORY_TEST`, `BFS`, `STOOL`, `WF`, `HCG`, `UA`, `timestamp`) VALUES
('Muaz', 'male', 22, '14022', 'Bf', '', 'on', '0', '0', '0', '0', '0', '0', '2025-01-03 17:42:39'),
('Abdi', 'male', 20, '14021', '0', '', '0', '0', '0', 'on', 'on', 'on', 'on', '2025-01-03 17:53:05'),
('Lencho', 'male', 21, '14024', 'Bf', '', 'on', '0', 'on', '0', '0', '0', '0', '2025-01-03 17:54:55'),
('Muaz', 'male', 22, '14022', 'Bf', '', 'on', '0', '0', '0', '0', '0', '0', '2025-01-04 12:10:43'),
('Muaz', 'male', 22, '14022', 'Bf', '', 'on', '0', 'on', '0', '0', '0', '0', '2025-01-04 12:11:57'),
('', 'male', 0, '', 'Bf', 'Corona ', 'on', '0', 'on', 'on', 'on', 'on', 'on', '2025-01-04 13:04:09'),
('Finxe', 'female', 17, '14022', 'Bf', '', '0', '0', '0', 'on', '0', '0', '0', '2025-01-04 13:17:14'),
('Muaz', 'male', 22, '14024', '0', 'Corona ', '0', '0', '0', '0', '0', '0', '0', '2025-01-04 17:18:40'),
('chuder', 'male', 22, '14050', '0', '', '0', '0', '0', 'on', '0', 'on', '0', '2025-01-04 17:39:17'),
('Lencho', 'male', 22, '9090', '0', 'Malaria', '0', '0', '0', '0', '0', '0', '0', '2025-01-05 11:55:40'),
('ifa', 'male', 22, '1505182', 'Bf', '', '0', '0', '0', 'on', '0', '0', '0', '2025-01-05 16:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `lab_result`
--

CREATE TABLE `lab_result` (
  `patient_name` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `id_number` varchar(100) NOT NULL,
  `tests` varchar(100) NOT NULL,
  `others` varchar(100) NOT NULL,
  `WIDAL_TEST` varchar(100) NOT NULL,
  `PLORY_TEST` varchar(50) NOT NULL,
  `BFS` varchar(50) NOT NULL,
  `STOOL` varchar(50) NOT NULL,
  `WF` varchar(100) NOT NULL,
  `HCG` varchar(100) NOT NULL,
  `UA` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_result`
--

INSERT INTO `lab_result` (`patient_name`, `sex`, `age`, `id_number`, `tests`, `others`, `WIDAL_TEST`, `PLORY_TEST`, `BFS`, `STOOL`, `WF`, `HCG`, `UA`, `timestamp`) VALUES
('Muaz', 'male', 22, '14022', '', '', 'Null', '', '', '', '', '', '', '2025-01-03 17:57:58'),
('', 'male', 0, '', '', '', 'Null', '', '', '', '', '', '', '2025-01-03 17:59:58'),
('Muaz', 'male', 22, '14022', '', '', 'Positive ', '', '', '', '', '', '', '2025-01-04 12:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `lab_results`
--

CREATE TABLE `lab_results` (
  `patient_name` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `id_number` varchar(20) NOT NULL,
  `tests` varchar(80) NOT NULL,
  `others` varchar(50) NOT NULL,
  `WIDAL_TEST` varchar(10) NOT NULL,
  `PLORY_TEST` varchar(10) NOT NULL,
  `BFS` varchar(10) NOT NULL,
  `STOOL` varchar(20) NOT NULL,
  `WF` varchar(20) NOT NULL,
  `HCG` varchar(100) NOT NULL,
  `UA` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_results`
--

INSERT INTO `lab_results` (`patient_name`, `sex`, `age`, `id_number`, `tests`, `others`, `WIDAL_TEST`, `PLORY_TEST`, `BFS`, `STOOL`, `WF`, `HCG`, `UA`, `timestamp`) VALUES
('Muaz', 'male', 22, '14022', '', 'Corona ', '', '', '', 'Corona', 'Corona', 'Corona', '', '2025-01-04 12:58:40'),
('Abdi', 'male', 22, '14022', '', 'Corona ', 'Positive', '', '', 'Corona', 'Corona', 'Corona', '', '2025-01-04 13:02:46'),
('', 'male', 0, '', '', 'Corona ', 'Positive ', '', '', 'Corona', 'Corona', 'Corona', '', '2025-01-04 13:05:36'),
('', 'male', 0, '', '', 'Corona ', 'Positive ', '', '', 'Corona', 'Corona', 'Corona', '', '2025-01-04 13:10:49'),
('Lencho', 'male', 22, '14024', '', 'Corona ', 'Null', '', '', 'Corona', 'Corona', 'Corona', '', '2025-01-04 13:11:58'),
('Finxe', 'female', 0, '14024', '', 'Biscute', '', '', '', 'bekelu', '', '', '', '2025-01-04 13:27:19'),
('Muaz', 'male', 22, '14024', '', 'Null', '', '', '', '', '', '', '', '2025-01-04 17:21:01'),
('Muaz', 'male', 22, '14024', '', '', '', '', '', '', '', '', '', '2025-01-04 17:22:05'),
('', 'male', 0, '', '', 'Malaria', '', '', '', '', '', '', '', '2025-01-04 17:23:01'),
('chuder', 'male', 22, '14050', '', '', '', '', '', 'Positive ', '', '', '', '2025-01-04 17:40:46'),
('ifa', 'male', 22, '1505182', '', 'position ', '', '', '', '', '', '', '', '2025-01-05 16:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE `medical_history` (
  `REF_NO` int(11) NOT NULL,
  `FULL_NAME` varchar(100) NOT NULL,
  `AGE` int(10) NOT NULL,
  `SEX` text NOT NULL,
  `CARD_NO` varchar(50) NOT NULL,
  `ID_NO` varchar(50) NOT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `DATE` date NOT NULL,
  `HISTORY` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical_history`
--

INSERT INTO `medical_history` (`REF_NO`, `FULL_NAME`, `AGE`, `SEX`, `CARD_NO`, `ID_NO`, `DEPARTMENT`, `DATE`, `HISTORY`) VALUES
(1, 'Finxe', 17, 'female', '1234', '14024', 'Dire Dawa', '2025-01-01', 'Biscute'),
(2, 'Finxe', 17, 'female', '1234', '14024', 'Dire Dawa', '2025-01-01', 'Biscuit '),
(3, 'Finxe', 17, 'female', '1234', '14024', 'Dire Dawa', '2025-01-01', 'Corona'),
(4, 'Finxe', 17, 'female', '1234', '14024', 'Dire Dawa', '0025-01-01', 'biscut'),
(5, 'Finxe', 17, 'female', '1234', '14024', 'Dire Dawa', '2025-01-01', 'biscut'),
(6, 'Muaz', 22, 'male', '1234', '14025', 'Aweday', '2025-01-01', 'Corona');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `FULL_NAME` varchar(100) NOT NULL,
  `AGE` int(50) NOT NULL,
  `ID` varchar(100) NOT NULL,
  `COST` int(50) NOT NULL,
  `DATE` date NOT NULL,
  `MEDICINE_TYPE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`FULL_NAME`, `AGE`, `ID`, `COST`, `DATE`, `MEDICINE_TYPE`) VALUES
('Muaz', 22, '14022', 500, '0000-00-00', 'Methrodanthole'),
('Muaz', 22, '14022', 500, '0000-00-00', 'Methrodanthole'),
('Finxe', 17, '14024', 500, '0000-00-00', 'paracetamol '),
('Muaz', 22, '1234', 500, '0000-00-00', 'paracetamol '),
('Muaz', 22, '1234', 500, '0000-00-00', 'Methrodanthole'),
('Muaz', 22, '14024', 500, '0000-00-00', 'paracetamol ');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `REF_NO` int(11) NOT NULL,
  `PATIENT_NAME` varchar(100) NOT NULL,
  `SEX` text NOT NULL,
  `AGE` int(20) NOT NULL,
  `ID` varchar(50) NOT NULL,
  `PRESCRIPTION` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`REF_NO`, `PATIENT_NAME`, `SEX`, `AGE`, `ID`, `PRESCRIPTION`) VALUES
(0, 'Muaz', 'male', 22, '14022', 'Deagnosis'),
(0, 'Finxe', 'female', 17, '14024', 'vaccine '),
(0, 'Muaz', 'male', 22, '14024', 'the patent muaz has been diagnosed that he has a positive and maleria, incase of his diagnosis prescribe him the paracetamol dose 1kg'),
(0, 'ifa', 'male', 22, '1505182', 'Ifa has been degnosi he has positiv');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Firstname` text NOT NULL,
  `Lastname` text NOT NULL,
  `Id` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Firstname`, `Lastname`, `Id`, `Password`, `Type`) VALUES
('Muaz', 'Amin', '1', '12345', 'Doctor'),
('Abdulfetah', 'Amin', '5', '667788', 'Doctor'),
('Finxe', 'ahmed', '3', 'Finxe1122', 'Doctor'),
('Te', 'tu', '9', '112233', 'Doctor'),
('Muaz', 'Amin', '4', 'Muaz', 'Reception'),
('Lencho', 'ahmed', 'DDU 140', 'Lencho', 'Patient'),
('lencho', 'ahmed', '140', 'Lencho11', 'Admin'),
('Muaz', 'Amin', '14068', 'Muaz11', 'Reception'),
('Abdulfetah', 'Amin', '12', 'Abdul', 'Labratory'),
('lensa', 'ah', '123', '123e', 'Doctor'),
('Muaz', 'Amin', '138', '112233', 'Patient'),
('Nati', 'Amin', '14011', 'Nati11', 'Reception'),
('Amin', 'shebo', '1122', 'Amin11', 'Doctor'),
('Gada', 'Mulatu', '14000', 'Geda22', 'Labratory'),
('Abdul', 'Feta', '100', 'Abdul', 'Pharmacist'),
('Yabsira', 'teshale', '14088', 'Yabsira', 'Admin'),
('Muaz', 'ahmed', '9999', '1111', 'Admin'),
('Chuder', 'Amin', '14053', 'Chuder11', 'Doctor'),
('Muaz', 'Amin', '14050', 'Chuder11', 'Pharmacist'),
('Muaz', 'Amin', '90', '0909', 'Reception'),
('Lencho', 'Jemal', '9090', 'Lencho', 'Doctor'),
('Muaz', 'Amin', '8080', '8080', 'Labratory'),
('Ifabas', 'Amin', '1405182', 'Muaz44', 'Doctor'),
('Muaz', 'ahmed', '1405181', 'Muaz11', 'Doctor'),
('Ifa', 'ahmed', '1405183', 'Ifa11', 'Labratory'),
('Lencho', 'ahmed', '1405184', 'Muaz22', 'Pharmacist'),
('Obsa', 'Amin', '1212', 'Obsa11', 'Admin'),
('lencho', 'ahmed', '1406440', '1234', 'Doctor'),
('lencho', 'ahmed', '1406441', '1234', 'Reception');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD PRIMARY KEY (`REF_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medical_history`
--
ALTER TABLE `medical_history`
  MODIFY `REF_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
