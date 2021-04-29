-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 08:09 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '1234567', 'admin@gmail.com', '', '2021-04-26 16:56:22'),
(7, 'test', 'test123', 'test@gmail.com', 'TQ2K7N', '2021-04-26 17:06:30'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:30'),
(9, 'test1', 'cc03e747a6afbbcbf8be7668acfebee5', 'abc@xyz.com', 'QFE6ZM', '2021-04-26 17:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J'),
(7, 'QVKW5P');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(13, 49, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '170.00', '60883778a482a.jpg'),
(15, 49, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '250.00', '6088371c1a8e0.jpg'),
(17, 56, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '355.00', '608837aa448d0.jpg'),
(19, 49, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '180.00', '6088369223f6e.jpg'),
(20, 54, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '350.00', '608836a975ed1.jpg'),
(21, 51, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '240.00', '608836be8af9f.jpg'),
(22, 54, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '140.00', '608836f4ea87e.jpg'),
(23, 59, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '270.00', '6088372a17e7b.jpg'),
(24, 53, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '250.00', '6088373c71778.jpg'),
(25, 51, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '180.00', '608837e544588.jpg'),
(26, 58, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '350.00', '608837f343656.jpg'),
(27, 59, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '450.00', '608838147a2c7.jpg'),
(28, 53, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '130.00', '60883849b4ec8.jpg'),
(29, 59, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '350.00', '608838677b6d9.jpg'),
(30, 58, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas rhoncus eros a lacus tempus, sed imperdiet mauris blandit.', '270.00', '60883884356d0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50'),
(71, 41, 'in process', 'In Proces', '2021-04-23 16:36:03'),
(72, 47, 'in process', 'Please Wait', '2021-04-27 16:20:56'),
(73, 49, 'rejected', 'Sorry', '2021-04-27 16:21:32'),
(74, 48, 'rejected', 'Sorry', '2021-04-27 16:21:49'),
(75, 51, 'closed', 'Deliverd', '2021-04-27 16:22:11'),
(76, 50, 'closed', 'Delivered', '2021-04-27 16:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(49, 14, 'The Great Kabab Factory', 'kwbab@gmail.com', '011 2677 9070', 'kwbab.com', '5pm', '1am', '24hr-x7', '  Kamala Mills, Lower Parel, Mumbai ', '6088040fdefb8.jpg', '2021-04-27 12:31:11'),
(51, 15, 'Martini', 'martin@gmail.com', '3454345654', 'martin.com', '1pm', '1am', '24hr-x7', '  399 L  Model Town, Colaba, Mumbai-400001 ', '60880a8b6ce8e.jpg', '2021-04-27 12:58:51'),
(53, 15, 'Piu Bello', 'piu@gmail.com', '4512545784', 'kari.com', '3pm', '11pm', 'mon-fri', ' Bandra, Mumbai-4000050 ', '6088043c914f4.jpg', '2021-04-27 12:31:56'),
(54, 12, 'The Times Sqaure', 'times@gmail.com', '9434217803', 'times.com', '12pm', '1am', 'mon-sat', 'Borivali, Mumbai', '608805998dc67.png', '2021-04-27 12:37:45'),
(56, 14, 'Mostly Grills', 'mostlygrills@gmail.com', '9434217803', 'grills.in', '12pm', '1am', '24hr-x7', 'Top Floor, Link Road, Goregaon West, Mumbai', '60880b92b2707.jpg', '2021-04-27 13:03:14'),
(58, 12, 'Yauatcha', 'yauatcha@gmail.com', '9513578264', 'yauatcha.com', '1pm', '11pm', 'mon-sat', 'Raheja Tower, Bandra Kurla Complex, Mumbai', '60882f38467bb.png', '2021-04-27 15:35:20'),
(59, 14, 'Santé Spa Cuisine', 'santéspacuisine@gamil.com', '2342347867', 'santéspacuisine.in', '12pm', '12am', '24hr-x7', 'First International Financial Centre, Bandra Kurla Complex, Mumbai', '608830037a3a4.png', '2021-04-27 15:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(12, 'Asian', '2021-04-27 12:29:16'),
(14, 'Grills', '2021-04-27 12:29:42'),
(15, 'Italian', '2021-04-27 12:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'user', 'user', 'user', 'user@gmail.com', '1234567890', 'fcea920f7412b5da7be0cf42b8c93759', 'Mumbai', 1, '2021-04-27 11:31:49'),
(34, 'test', 'test', 'test', 'test@gmail.com', '1234567890', 'cc03e747a6afbbcbf8be7668acfebee5', 'Mumbai', 1, '2021-04-27 11:32:23'),
(35, 'test1', 'test1', 'test1', 'test1@gmail.com', '1234567890', 'fcea920f7412b5da7be0cf42b8c93759', 'Mumbai', 1, '2021-04-27 11:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(37, 31, 'jklmno', 5, '17.99', 'closed', '2018-04-18 19:51:50'),
(38, 31, 'Red Robins Chick on a Stick', 2, '34.99', NULL, '2018-04-18 19:52:34'),
(41, 32, 'Uno Pizzeria & Grill', 1, '12.35', 'in process', '2021-04-23 16:36:03'),
(45, 32, 'Uno Pizzeria & Grill', 1, '12.35', NULL, '2021-04-23 16:34:59'),
(47, 33, 'Lorem ipsum', 1, '170.00', 'in process', '2021-04-27 16:20:56'),
(48, 33, 'Lorem ipsum', 2, '180.00', 'rejected', '2021-04-27 16:21:50'),
(49, 34, 'Lorem ipsum', 1, '355.00', 'rejected', '2021-04-27 16:21:32'),
(50, 34, 'Lorem ipsum', 2, '350.00', 'closed', '2021-04-27 16:22:39'),
(51, 34, 'Lorem ipsum', 1, '270.00', 'closed', '2021-04-27 16:22:11'),
(52, 34, 'Lorem ipsum', 1, '250.00', NULL, '2021-04-27 16:29:39'),
(53, 34, 'Lorem ipsum', 1, '140.00', NULL, '2021-04-27 16:29:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
