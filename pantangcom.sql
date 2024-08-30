-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2024 at 07:10 AM
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
-- Database: `pantangcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` varchar(15) NOT NULL,
  `packageID` varchar(15) NOT NULL,
  `orderID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `confinementagency`
--

CREATE TABLE `confinementagency` (
  `agencyID` varchar(15) NOT NULL,
  `packageID` varchar(15) NOT NULL,
  `orderID` varchar(15) NOT NULL,
  `agencyName` text NOT NULL,
  `agencyUsername` varchar(50) NOT NULL,
  `agencyPassword` varchar(50) NOT NULL,
  `agencyEmail` varchar(50) NOT NULL,
  `agencyContact` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custID` varchar(15) NOT NULL,
  `packageID` varchar(15) NOT NULL,
  `agencyID` varchar(15) NOT NULL,
  `cartID` varchar(15) NOT NULL,
  `custName` text NOT NULL,
  `custUsername` varchar(30) NOT NULL,
  `custPassword` varchar(30) NOT NULL,
  `custEmail` varchar(50) NOT NULL,
  `custPhone` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderID` varchar(15) NOT NULL,
  `cartID` varchar(15) NOT NULL,
  `paymentID` varchar(15) NOT NULL,
  `custID` varchar(15) NOT NULL,
  `agencyID` varchar(15) NOT NULL,
  `serviceLoc` text NOT NULL,
  `paymentMethod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `packageID` varchar(15) NOT NULL,
  `agencyID` varchar(15) NOT NULL,
  `packageName` text NOT NULL,
  `packagePrice` int(20) NOT NULL,
  `packageDesc` text NOT NULL,
  `packageLoc` text NOT NULL,
  `packageDate` date NOT NULL,
  `packageRating` int(10) NOT NULL,
  `packageReview` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` varchar(15) NOT NULL,
  `orderID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `agencyID` varchar(15) NOT NULL,
  `packageID` varchar(15) NOT NULL,
  `shopLoc` text NOT NULL,
  `shopRating` int(20) NOT NULL,
  `totalPackage` int(10) NOT NULL,
  `yearJoined` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`);

--
-- Indexes for table `confinementagency`
--
ALTER TABLE `confinementagency`
  ADD PRIMARY KEY (`agencyID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`packageID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
