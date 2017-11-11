-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2017 at 09:42 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_2ndhand`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Cars'),
(2, 'Real Estate'),
(3, 'Mobile'),
(4, 'Ectronic'),
(5, 'Bikes'),
(6, 'Furniture'),
(7, 'Books'),
(8, 'Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `forsale`
--

CREATE TABLE `forsale` (
  `username` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `item_title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `contact_user` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forsale`
--

INSERT INTO `forsale` (`username`, `id`, `category_id`, `company`, `item_title`, `description`, `price`, `location`, `contact_user`, `contact_email`, `post_date`) VALUES
('KARAN', 7, 1, 'audi', 'audi 320', 'GREAT CAR', '25000', 'jalandhar', '1313', 'karan@gmail.com', '2017-07-21 08:34:01'),
('aman', 8, 2, 'custom', 'plot', 'nice ', '25000', 'jalandhar', '9090', 'karan@gmail.com', '2017-07-21 17:01:11'),
('jk', 12, 5, 'pulsar', 'x3', 'dskncksdcn\r\ndslkfnldskn\r\ndf\r\ndsvsf\r\nd', '25000', 'jalandhar', '3131651', 'jk@123.com', '2017-07-23 04:59:39'),
('om', 13, 3, '546', 'lmlk', 'mlm', '12313', ';lml', '1313', 'om@123.com', '2017-07-23 05:41:12'),
('opt4@lpu.com', 14, 1, 'gjhjhk', 'gffgfgf', 'wdw', '', '', '', '', '2017-07-23 06:20:27'),
('tytyytty', 15, 1, 'hthtyt', 'bhghjkhj', 'strdjfkhgljhgfdsgjkl;hgdfhsfgkjljgfhgjklfghk', '65k', 'jrc', '787567675656', 'adgghhjhkkh@ghghgh.com', '2017-07-23 06:21:22'),
('', 16, 2, '', '', '', '', '', '', '', '2017-07-23 06:23:39'),
('dggfghhg', 17, 8, 'ghghghhg', '', '', '', '', '', 'sdfgg', '2017-07-23 06:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `email`, `password`) VALUES
('fake', '123@123.com', '123'),
('raj', '12@gmail.com', '12'),
('aman', 'aman@gmail.com', 'aman'),
('fgghg', 'assdds@hghggh.com', ''),
('jk', 'jk@123.com', 'jk'),
('karan', 'karan@gmail.com', '123456'),
('mani', 'mani@123.com', '234'),
('om', 'om@123.com', '123'),
('raman', 'ramanjitsinghz0001@gmail.com', '123456'),
('user', 'usr@123.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forsale`
--
ALTER TABLE `forsale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `forsale`
--
ALTER TABLE `forsale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
