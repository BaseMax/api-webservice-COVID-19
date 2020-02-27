-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2020 at 03:27 PM
-- Server version: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corona`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` bigint(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `totalCase` int(11) NOT NULL,
  `newCase` int(11) NOT NULL,
  `totalDeath` int(11) NOT NULL,
  `newDeath` int(11) NOT NULL,
  `totalRecovered` int(11) NOT NULL,
  `seriousUser` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `totalCase`, `newCase`, `totalDeath`, `newDeath`, `totalRecovered`, `seriousUser`, `datetime`) VALUES
(1, 'china', 78514, 450, 2747, 32, 32954, 8346, '2020-02-27 14:35:03'),
(2, 's. korea', 1766, 505, 13, 1, 24, 18, '2020-02-27 14:35:05'),
(3, 'diamond princess', 705, 0, 4, 0, 10, 36, '2020-02-27 12:35:56'),
(4, 'italy', 528, 58, 14, 2, 42, 35, '2020-02-27 14:35:05'),
(5, 'iran', 245, 106, 26, 7, 25, 0, '2020-02-27 12:35:56'),
(6, 'japan', 207, 35, 4, 1, 32, 13, '2020-02-27 12:35:56'),
(7, 'singapore', 96, 3, 0, 0, 66, 7, '2020-02-27 14:35:06'),
(8, 'hong kong', 92, 3, 2, 0, 18, 6, '2020-02-27 12:35:56'),
(9, 'usa', 60, 0, 0, 0, 6, 0, '2020-02-27 12:35:57'),
(10, 'kuwait', 43, 17, 0, 0, 0, 0, '2020-02-27 12:35:57'),
(11, 'thailand', 40, 0, 0, 0, 22, 2, '2020-02-27 12:35:57'),
(12, 'bahrain', 33, 0, 0, 0, 0, 0, '2020-02-27 12:35:57'),
(13, 'taiwan', 32, 0, 1, 0, 5, 1, '2020-02-27 12:35:57'),
(14, 'germany', 27, 0, 0, 0, 15, 2, '2020-02-27 12:35:57'),
(15, 'australia', 23, 0, 0, 0, 15, 0, '2020-02-27 12:35:57'),
(16, 'malaysia', 22, 0, 0, 0, 20, 0, '2020-02-27 12:35:57'),
(17, 'france', 18, 0, 2, 0, 11, 1, '2020-02-27 12:35:57'),
(18, 'vietnam', 16, 0, 0, 0, 16, 0, '2020-02-27 12:35:58'),
(19, 'spain', 15, 2, 0, 0, 2, 2, '2020-02-27 12:35:58'),
(20, 'u.k.', 15, 2, 0, 0, 8, 0, '2020-02-27 12:35:58'),
(21, 'u.a.e.', 13, 0, 0, 0, 3, 2, '2020-02-27 12:35:58'),
(22, 'canada', 12, 0, 0, 0, 3, 0, '2020-02-27 12:35:58'),
(23, 'macao', 10, 0, 0, 0, 6, 0, '2020-02-27 12:35:59'),
(24, 'iraq', 6, 1, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(25, 'oman', 4, 0, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(26, 'switzerland', 4, 3, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(27, 'philippines', 3, 0, 1, 0, 2, 0, '2020-02-27 12:35:59'),
(28, 'austria', 3, 1, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(29, 'croatia', 3, 0, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(30, 'greece', 3, 2, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(31, 'india', 3, 0, 0, 0, 3, 0, '2020-02-27 12:35:59'),
(32, 'israel', 3, 1, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(33, 'finland', 2, 0, 0, 0, 1, 0, '2020-02-27 12:35:59'),
(34, 'lebanon', 2, 0, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(35, 'pakistan', 2, 0, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(36, 'russia', 2, 0, 0, 0, 2, 0, '2020-02-27 12:35:59'),
(37, 'sweden', 2, 0, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(38, 'afghanistan', 1, 0, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(39, 'algeria', 1, 0, 0, 0, 0, 0, '2020-02-27 12:35:59'),
(40, 'belgium', 1, 0, 0, 0, 1, 0, '2020-02-27 12:35:59'),
(41, 'brazil', 1, 0, 0, 0, 0, 0, '2020-02-27 12:36:00'),
(42, 'cambodia', 1, 0, 0, 0, 1, 0, '2020-02-27 12:36:00'),
(43, 'denmark', 1, 1, 0, 0, 0, 0, '2020-02-27 12:36:00'),
(44, 'egypt', 1, 0, 0, 0, 1, 0, '2020-02-27 12:36:00'),
(45, 'estonia', 1, 1, 0, 0, 0, 0, '2020-02-27 12:36:00'),
(46, 'georgia', 1, 0, 0, 0, 0, 0, '2020-02-27 12:36:00'),
(47, 'north macedonia', 1, 0, 0, 0, 0, 0, '2020-02-27 12:36:00'),
(48, 'nepal', 1, 0, 0, 0, 1, 0, '2020-02-27 12:36:00'),
(49, 'norway', 1, 0, 0, 0, 0, 0, '2020-02-27 12:36:00'),
(50, 'romania', 1, 0, 0, 0, 0, 0, '2020-02-27 12:36:00'),
(51, 'sri lanka', 1, 0, 0, 0, 1, 0, '2020-02-27 12:36:00'),
(52, 'china', 78514, 450, 2747, 32, 32954, 8346, '2020-02-27 14:22:39'),
(53, 's. korea', 1766, 505, 13, 1, 24, 18, '2020-02-27 14:22:39'),
(54, 'italy', 528, 58, 14, 2, 42, 35, '2020-02-27 14:22:39'),
(55, 'singapore', 96, 3, 0, 0, 66, 7, '2020-02-27 14:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` bigint(50) NOT NULL,
  `token` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `canView` bit(1) NOT NULL DEFAULT b'1',
  `canFilter` bit(1) NOT NULL DEFAULT b'1',
  `canSearch` bit(1) NOT NULL DEFAULT b'1',
  `getAccess` bit(1) NOT NULL DEFAULT b'0',
  `postAccess` bit(1) NOT NULL DEFAULT b'1',
  `tokenInHeader` bit(1) NOT NULL DEFAULT b'1',
  `canTotal` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `token`, `datetime`, `canView`, `canFilter`, `canSearch`, `getAccess`, `postAccess`, `tokenInHeader`, `canTotal`) VALUES
(1, 'd4f5g6df4gd5f6ge4r89rf48', '2020-02-27 12:55:05', b'1', b'1', b'1', b'1', b'1', b'1', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
