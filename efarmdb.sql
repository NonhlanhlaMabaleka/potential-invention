-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 09:18 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `efarmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderD_ID` int(100) NOT NULL,
  `productID` int(100) NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(111) NOT NULL,
  `order_ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderD_ID`, `productID`, `price`, `quantity`, `order_ID`) VALUES
(1, 0, 0.00, 0, 6),
(2, 0, 0.00, 0, 6),
(3, 0, 0.00, 0, 6),
(4, 0, 0.00, 0, 6),
(5, 0, 0.00, 0, 7),
(6, 0, 0.00, 0, 7),
(7, 0, 0.00, 0, 7),
(8, 0, 0.00, 0, 7),
(9, 0, 0.00, 0, 8),
(10, 0, 0.00, 0, 8),
(11, 0, 0.00, 0, 8),
(12, 0, 0.00, 0, 8),
(13, 0, 0.00, 0, 9),
(14, 0, 0.00, 0, 10),
(15, 0, 0.00, 0, 10),
(16, 0, 0.00, 0, 10),
(17, 0, 0.00, 0, 10),
(18, 0, 0.00, 0, 27),
(19, 0, 0.00, 0, 27);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(100) NOT NULL,
  `date` varchar(200) NOT NULL,
  `customerID` int(100) NOT NULL,
  `orderName` varchar(200) NOT NULL,
  `productID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `date`, `customerID`, `orderName`, `productID`) VALUES
(66, '22-10-18', 20, 'order2103646694', 0),
(67, '22-10-18', 20, 'order595807246', 20),
(68, '22-10-18', 20, 'order595807246', 7),
(69, '22-10-18', 20, 'order595807246', 24),
(70, '22-10-18', 20, 'order595807246', 26),
(71, '22-10-18', 20, 'order1096136715', 20),
(72, '22-10-18', 20, 'order1096136715', 7),
(73, '22-10-18', 20, 'order1096136715', 24),
(74, '22-10-18', 20, 'order1096136715', 26),
(75, '22-10-19', 20, 'order1111397948', 20),
(76, '22-10-19', 20, 'order1130650702', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `ID` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `userType` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`ID`, `fname`, `lname`, `phone`, `address`, `userType`, `password`, `email`) VALUES
(16, 'farmer', 'farmer', 723732395, '1200 Witbank', 'Farmer', 'farmer', 'farmer@ekuhle.com'),
(19, 'Happy', 'Tjiane', 728929709, '5473 D Maluka witbank', 'Customer', '#Reg0909', 'happytjiane@gmail.com'),
(20, 'ss', 'Sn', 723732395, '1374 Realeboga Street', 'Customer', 'solly', 'shodress11@gmail.com'),
(21, 'ekuhle', 'farm', 723732395, '1010', 'Customer', 'farm', 'farm@gmail.com'),
(22, 'ndzulamiso', 'jeleni', 812544011, 'makahlule \r\npo box 268\r\nsaselamani\r\n0928', 'Customer', 'Ndzulamiso@', 'austinjeleni@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(100) NOT NULL,
  `farmer_ID` int(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`, `quantity`, `farmer_ID`, `type`) VALUES
(7, 'oranges    ', 'oranges.jpg', 120.00, 60, 0, 'fruit'),
(22, 'spinach ', 'spinach.jpg', 75.00, 20, 16, 'veg'),
(21, 'banana   ', 'bananas.png', 40.00, 14, 16, 'fruit'),
(20, 'Potatoes  ', 'pt.jpg', 110.00, 29, 16, 'veg'),
(24, 'Carrots ', 'carrots.jpg', 85.00, 117, 16, 'veg'),
(25, 'Mango', 'Mango.jfif', 25.00, 150, 16, 'fruit'),
(26, 'beans', 'beans.jfif', 55.00, 148, 16, 'veg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderD_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderD_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
