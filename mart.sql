-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 01:04 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_product`
--

CREATE TABLE `add_product` (
  `id` int(5) NOT NULL,
  `shopid` varchar(30) DEFAULT NULL,
  `pid` varchar(30) DEFAULT NULL,
  `product` varchar(30) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_product`
--

INSERT INTO `add_product` (`id`, `shopid`, `pid`, `product`, `image`, `quantity`, `price`) VALUES
(1, 'shopowner0001', 'product0001', 'rice', 'rice.jpg', '1', '55'),
(2, 'shopowner0001', 'product0002', 'tomato', 'tomato.jpg', '1', '25'),
(3, 'shopowner0001', 'product0003', 'potato', 'potato.jpg', '1', '30'),
(4, 'shopowner0004', 'product0004', 'brinjal', 'brinjal.jpg', '1', '25'),
(5, 'shopowner0001', 'product0005', 'carrot', 'carrot.jpg', '1', '32'),
(6, 'shopowner0001', 'product0006', 'beans', 'beans.jpg', '1', '30'),
(7, 'shopowner0001', 'product0007', 'Tomato', 'tomato.jpg', '3', '90');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pwd`) VALUES
(1, 'admin', 'admin'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer_reg`
--

CREATE TABLE `customer_reg` (
  `id` int(5) NOT NULL,
  `custid` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `gm` varchar(30) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `gmail` varchar(50) DEFAULT NULL,
  `number` bigint(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_reg`
--

INSERT INTO `customer_reg` (`id`, `custid`, `name`, `dates`, `gm`, `uname`, `pwd`, `gmail`, `number`, `address`, `profile`) VALUES
(6, 'customer0001', 'Sasi', '2021-05-27', 'on', 'customer0001', 'mouni', 'sasi@gmail.com', 9361142068, 'Avadi', 'female-avatar-profile.jpg'),
(7, 'customer0007', 'Jeevitha', '2021-05-26', 'on', 'customer0007', 'mouni', 'jeevitha@gmail.com', 8248814733, 'Trichy', 'man-avatar-profile.jpg'),
(8, 'customer0008', 'Mounish', '2001-02-27', 'on', 'customer0008', 'mouni', 'Mounish@gmail.com', 9361142068, 'Tiruvallur', 'man-avatar-profile.jpg'),
(9, 'customer0009', 'Kalai', '1997-09-18', 'on', 'customer0009', 'mouni', 'Kalai@gmail.com', 9361142068, 'Chennai', 'man-avatar-profile.jpg'),
(10, 'customer00010', 'Varsha', '2021-09-08', 'on', 'customer00010', 'mouni', 'Varsha@gmail.com', 9876543210, 'fjashhfuch', 'nature1.jpg'),
(11, 'customer0011', 'Aarthi', '2021-09-25', 'on', 'customer0011', 'mouni', 'aarthi@gmail.com', 9361142068, 'chennai', 'female-avatar-profile.jpg'),
(12, 'customer0012', 'Subiksha', '2004-06-15', 'on', 'customer0012', '1234', 'subikshams2001@gmail.com', 7654321987, '15B Nehru street,Chennai', 'woman-avatar-profile.jpg'),
(13, 'customer0013', 'Subiksha', '2004-06-15', 'on', 'customer0013', '1234', 'subikshams2001@gmail.com', 7654321987, '15B Nehru street,Chennai', 'woman-avatar-profile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_reg`
--

CREATE TABLE `purchase_reg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) DEFAULT NULL,
  `pid` varchar(30) DEFAULT NULL,
  `custid` varchar(30) DEFAULT NULL,
  `quan` varchar(30) DEFAULT NULL,
  `paymode` varchar(50) DEFAULT NULL,
  `req_date` varchar(50) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `totalamt` varchar(30) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `accept` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_reg`
--

INSERT INTO `purchase_reg` (`id`, `sid`, `pid`, `custid`, `quan`, `paymode`, `req_date`, `price`, `totalamt`, `image`, `product`, `accept`) VALUES
(16, 'shopowner0001', 'product0001', 'customer0007', '2', 'Cash on delivery', '2021-06-01', '55', '110', 'rice.jpg', 'rice', 'accepted'),
(17, 'shopowner0001', 'product0002', 'customer0007', '2', 'Cash on delivery', '2021-06-01', '25', '50', 'tomato.jpg', 'tomato', 'accepted'),
(19, 'shopowner0004', 'product0004', 'customer0001', '1', 'Card', '2021-06-02', '25', '25', 'brinjal.jpg', 'brinjal', 'New'),
(20, 'shopowner0001', 'product0003', 'customer0008', '2', 'Card', '2021-06-02', '30', '60', 'potato.jpg', 'potato', 'accepted'),
(21, 'shopowner0001', 'product0001', 'customer0001', '1', 'Cash on delivery', '2021-06-02', '55', '55', 'rice.jpg', 'rice', 'accepted'),
(22, 'shopowner0001', 'product0001', 'customer0001', '2', 'Cash on delivery', '2021-09-25', '55', '110', 'rice.jpg', 'rice', 'New'),
(23, 'shopowner0001', 'product0002', 'customer0013', '1', 'Cash on delivery', '2021-12-15', '25', '30', 'tomato.jpg', 'tomato', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `shopowner_reg`
--

CREATE TABLE `shopowner_reg` (
  `id` int(5) NOT NULL,
  `shopid` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `gm` date DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `gmail` varchar(50) DEFAULT NULL,
  `number` bigint(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `profile` varchar(300) DEFAULT NULL,
  `accept` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopowner_reg`
--

INSERT INTO `shopowner_reg` (`id`, `shopid`, `name`, `dates`, `gm`, `uname`, `pwd`, `gmail`, `number`, `address`, `profile`, `accept`) VALUES
(2, 'shopowner0001', 'Subiksha', '2021-05-27', '0000-00-00', 'shopowner0001', 'mouni', 'moun.1917136@gct.ac.in', 9361142069, '', 'female-avatar-profile.jpg', 'accepted'),
(3, 'shopowner0003', 'Nithisha', '2021-05-26', '0000-00-00', 'shopowner0003', 'mouni', 'moun.1917136@gct.ac.in', 918610905995, 'Erode', 'man-avatar-profile.jpg', 'accepted'),
(4, 'shopowner0004', 'Divya', '2001-06-13', '0000-00-00', 'shopowner0004', 'mouni', 'moun.1917136@gct.ac.in', 9361142068, 'bangalore', 'woman-avatar-profile.jpg', 'accepted'),
(5, 'shopowner0005', 'Akshaya', '2001-03-02', '0000-00-00', 'shopowner0005', 'mouni', 'moun.1917136@gct.ac.in', 9361142068, 'Tirunelveli', 'female-avatar-profile.jpg', 'accepted'),
(6, 'shopowner0006', 'Kalaivani', '2001-04-02', '0000-00-00', 'shopowner0006', 'mouni', 'moun.1917136@gct.ac.in', 9361142068, 'Tirunelveli', 'woman-avatar-profile.jpg', 'accepted'),
(7, 'shopowner0007', 'Nandhini', '2002-05-02', '0000-00-00', 'shopowner0007', 'mouni', 'moun.1917136@gct.ac.in', 9361142068, 'chennai', 'female-avatar-profile.jpg', 'New');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_product`
--
ALTER TABLE `add_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_reg`
--
ALTER TABLE `customer_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_reg`
--
ALTER TABLE `purchase_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopowner_reg`
--
ALTER TABLE `shopowner_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_product`
--
ALTER TABLE `add_product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_reg`
--
ALTER TABLE `customer_reg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `purchase_reg`
--
ALTER TABLE `purchase_reg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `shopowner_reg`
--
ALTER TABLE `shopowner_reg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
