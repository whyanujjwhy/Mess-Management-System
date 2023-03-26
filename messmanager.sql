-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2023 at 09:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `messmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`Username`, `Password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `MessName` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Feedback` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Day` varchar(20) NOT NULL,
  `Breakfast` varchar(200) NOT NULL,
  `Lunch` varchar(200) NOT NULL,
  `Snacks` varchar(200) NOT NULL,
  `Dinner` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Day`, `Breakfast`, `Lunch`, `Snacks`, `Dinner`) VALUES
('Friday', 'Idly, Sambar, Coffee/Tea, Milk', 'Chappathi, Soya Beans, Rajma masala, Plain rice\r\n', 'Medhu vadai, Tea/Coffee, Milk\r\n', 'Chappathi, Aloo Gobi, Masala, Butter Milk\r\n'),
('Monday', 'Pongal/Upuma, Medhu\r\nVadai, Butter Jam,\r\nCoffee/Tea, Milk\r\n', 'Fulka, Peas Masala, Dry Ladies fingers', 'Bhelpuri, Tea/ Coffee, Milk\r\n', 'Chappathi, Dhal or Aloo kurma, Onion-Raitha, IceCream'),
('Saturday', 'Bread, Butter Jam, Coffee/Tea, Milk', 'Fulka, Dal Punjabi, Mix-Veg Aviyal, Plain rice, Sambar, Rasam\r\n', 'Samosa, Tea/Coffee, Milk', 'Pav Bhaji, Lemon Rice, ButterMilk'),
('Sunday', 'Aloo Parota, Bread, Butter Jam, Coffee/Tea\r\n', 'Chappathi, Dhal, Panner butter masala\r\n', 'Veg Cutlet, Tea/Coffee, Milk', 'Battura, Chole, Curd Rice'),
('Thursday', 'Masala dosai, Butter Jam, Coffee/Tea, Milk', 'Chappathi, Dal palak, Aloo Lajawab, Plain rice', 'Potato Bonda, Tea/Coffee, Milk', 'Chappathi, Veg Butter Masala, Butter Milk, Banana'),
('Tuesday', 'Dosa, Sambar, Coffee/Tea, Milk', 'Chappathi, Dry Alu Gobi masala, Plain rice', 'Bajji, Tea/Coffee, Milk', 'Chappathi, Malai Kofta, Veg. Fried Rice '),
('Wednesday', 'Onion oothappam, Coffee/Tea, Milk', 'Chappathi, Dal Fry, Beet-Root Channa, Sambar', 'Poha, Tea/ Coffee, Milk', 'Chappathi, Mutter paneer, Butter Milk');

-- --------------------------------------------------------

--
-- Table structure for table `messes`
--

CREATE TABLE `messes` (
  `MessName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `McName` varchar(20) NOT NULL,
  `Capacity` varchar(20) NOT NULL DEFAULT '5',
  `Availability` varchar(20) NOT NULL DEFAULT '5',
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductId` varchar(20) NOT NULL,
  `ProductName` varchar(20) NOT NULL,
  `Price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductId`, `ProductName`, `Price`) VALUES
('1', 'Britannia 50-50', '10'),
('2', 'Lays', '20'),
('3', 'Frooti', '40'),
('4', 'Mazaa', '100'),
('5', 'appy', '50');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Name` varchar(20) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `MessAllotted` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Dues` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`Username`) USING BTREE;

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Day`);

--
-- Indexes for table `messes`
--
ALTER TABLE `messes`
  ADD PRIMARY KEY (`MessName`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Username`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
