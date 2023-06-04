-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 12:45 PM
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
-- Database: `ci4_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_url`
--

CREATE TABLE `app_url` (
  `id` int(11) NOT NULL,
  `field_key` varchar(255) DEFAULT NULL,
  `field_value` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_url`
--

INSERT INTO `app_url` (`id`, `field_key`, `field_value`, `created`) VALUES
(1, 'cloud_url', 'http://localhost/vanguard/vanguardinvestments_cloud/', '2020-11-27 15:16:04'),
(2, 'holdings_url', 'http://localhost/vanguard/vanguardholdings/', '2020-11-27 15:16:04'),
(3, 'project_url', 'http://localhost/vanguard/project_management/', '2023-03-17 09:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `phone`) VALUES
(5, 'bhushank@noitavonne.com', 'kumbharbhushan1_3136@gmail.com', 'asdasdasd', 8237699308),
(6, 'bhushank@noitavonne.com', 'kumbharbhushan1_3136@gmail.com', 'asdasdasd', 8237699308),
(7, 'bhushank', 'kumbharbhushan1_3136@gmail.com', 'sdsdasd', 8237699308),
(8, 'adaS', 'kumbharbhushan1_3136@gmail.com', 'sxsxsxsd', 8237699308),
(9, 'adaS', 'kumbharbhushan1_3136@gmail.com', 'sxsxsxsd', 8237699308),
(10, 'adaS', 'kumbharbhushan1_3136@gmail.com', 'sdaw34rwfsdads', 3484548542),
(11, 'bhushank', 'kumbharbhushan1_3136@gmail.com', 'sdasfdasdasd', 8237699308),
(12, 'bhushank', 'kumbharbhushan1_3136@gmail.com', 'sdasfdasdasd', 8237699308),
(13, 'bhushank', 'kumbharbhushan1_3136@gmail.com', 'sadadawdasd', 8237699308);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_url`
--
ALTER TABLE `app_url`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_url`
--
ALTER TABLE `app_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
