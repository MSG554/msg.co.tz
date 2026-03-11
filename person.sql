-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2026 at 01:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment2`
--

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `favourite_food` varchar(255) DEFAULT NULL,
  `textarea` text DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `favourite_time` varchar(50) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `first_name`, `last_name`, `gender`, `email`, `favourite_food`, `textarea`, `education`, `favourite_time`, `password`, `created_at`) VALUES
(5, 'Athanas', 'Masaga', 'male', 'atnasmasaga@gmail.co', '', 'Chicken are my favourite food.', 'diploma', 'Night', '$2y$10$WiD', '2026-03-05 08:18:38'),
(10, 'l', 'y', 'female', 'l@y', '', 'Hi', 'primary', 'Morning', '$2y$10$OF7', '2026-03-05 08:28:02'),
(11, 'Juleth', 'Nkindiki', 'female', 'julyy@kndk', '', 'Hellow', 'degree', 'Day', '$2y$10$Hwf', '2026-03-05 10:40:30'),
(12, 'Juleth', 'Nkindiki', 'female', 'julyy@kndk', '', 'Hellow', 'degree', 'Day', '$2y$10$ew7', '2026-03-05 10:42:52'),
(13, 'June', 'kenda', 'female', 'julyy@kndk', '', 'helooooo', 'degree', 'Day', '$2y$10$eaY', '2026-03-05 12:15:57'),
(14, 'June', 'kenda', 'female', 'julyy@kndk', '', 'helooooo', 'degree', 'Day', '$2y$10$Fel', '2026-03-05 12:21:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
