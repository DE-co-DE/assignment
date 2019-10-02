-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2019 at 11:29 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telephone_directory`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_users`
--

CREATE TABLE `mst_users` (
  `tbl_mst_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_users`
--

INSERT INTO `mst_users` (`tbl_mst_id`, `name`, `username`, `password`, `date`, `flag`) VALUES
(1, 'dipika', 'userone', 'Pass@1234', '2019-09-28', 'Show');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_directories`
--

CREATE TABLE `tbl_contact_directories` (
  `tbl_contact_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `landline_no` varchar(50) DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `flag` varchar(50) DEFAULT NULL,
  `view` int(100) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact_directories`
--

INSERT INTO `tbl_contact_directories` (`tbl_contact_id`, `first_name`, `middle_name`, `last_name`, `email`, `mobile_number`, `landline_no`, `notes`, `photo`, `date`, `time`, `flag`, `view`, `created_at`, `updated_at`) VALUES
(1, 'Raj', 'Manjrekar', 'Uday', 'dipika@gmail.com', '9892698922', '02245781', 'img1', 'img 1.jpg', '2019-09-29', '07:30:35', 'Deleted', 4, '0000-00-00 00:00:00', '2019-10-02 19:28:59'),
(2, 'Kavita', 'Manjrekar', 'Uday', 'kavita@gmail.com', '9930814430', '02245784', 'teast', 'img 2.jpg', '2019-09-29', '05:28:55', 'Deleted', 8, '0000-00-00 00:00:00', '2019-10-02 19:38:17'),
(3, 'Smita', 'Sawant', 'Raj', 'smita@gmail.com', '9856451289', '02256895', 'Img3', 'img 4.jpg', '2019-09-29', '07:32:37', 'Deleted', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '0oz63NNkao', 'qzdnDxtAyT', 'GnZefLFQbt', 'p1ple@7y3g.com', '1919145938', '1FK0S1Rc5H', 'I6cQ4lnYOJ', NULL, NULL, NULL, NULL, NULL, '2019-10-02 00:00:00', '2019-10-02 00:00:00'),
(5, '1mSokApa8q', 'nULb6aPlME', 'BBIiQoCiyf', 'lhcae@rbgy.com', '9340106640', 'ApzbGqsyFv', 'KYNBFYNSV0', NULL, NULL, NULL, NULL, NULL, '2019-10-02 00:00:00', '2019-10-02 00:00:00'),
(6, '1mSokApa8q', 'nULb6aPlME', 'BBIiQoCiyf', 'lhcae@rbgy.com', '9340106640', 'ApzbGqsyFv', 'KYNBFYNSV0', NULL, NULL, NULL, NULL, NULL, '2019-10-02 00:00:00', '2019-10-02 00:00:00'),
(7, 'exedxatYvM', 'jE0qERp7ak', 'dPzYqLcjD4', 'e6le5@hlfw.com', '3810477691', '6ERkJDIh5a', '8Idu7JkOxJ', NULL, NULL, NULL, NULL, NULL, '2019-10-02 00:00:00', '2019-10-02 00:00:00'),
(8, 'exedxatYvM', 'jE0qERp7ak', 'dPzYqLcjD4', 'e6le5@hlfw.com', '3810477691', '6ERkJDIh5a', '8Idu7JkOxJ', NULL, NULL, NULL, NULL, 1, '2019-10-02 00:00:00', '2019-10-02 19:30:34'),
(9, 'exedxatYvM', 'jE0qERp7ak', 'dPzYqLcjD4', 'e6le5@hlfw.com', '3810477691', '6ERkJDIh5a', '8Idu7JkOxJ', NULL, NULL, NULL, NULL, NULL, '2019-10-02 00:00:00', '2019-10-02 00:00:00'),
(10, 'exedxatYvM', 'jE0qERp7ak', 'dPzYqLcjD4', 'e6le5@hlfw.com', '3810477691', '6ERkJDIh5a', '8Idu7JkOxJ', NULL, NULL, NULL, NULL, 2, '2019-10-02 00:00:00', '2019-10-02 19:30:30'),
(11, 'exedxatYvM', 'jE0qERp7ak', 'dPzYqLcjD4', 'e6le5@hlfw.com', '3810477691', '6ERkJDIh5a', '8Idu7JkOxJ', NULL, NULL, NULL, NULL, 2, '2019-10-02 00:00:00', '2019-10-02 19:38:27'),
(12, 'exedxatYvM', 'jE0qERp7ak', 'dPzYqLcjD4', 'e6le5@hlfw.com', '3810477691', '6ERkJDIh5a', '8Idu7JkOxJ', '1570038863.jpg', NULL, NULL, NULL, 9, '2019-10-02 00:00:00', '2019-10-02 19:43:03'),
(13, 'exedxatYvM', 'jE0qERp7ak', 'dPzYqLcjD4', 'e6le5@hlfw.com', '3810477691', '6ERkJDIh5a', '8Idu7JkOxJ', '1570039206.jpg', NULL, NULL, NULL, NULL, '2019-10-02 00:00:00', '2019-10-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'pradeep yadav', 'deep7rd@gmail.com', NULL, '$2y$10$Z.0aPIHfsuUy9KuPwsaBuuNbvrr01MzFPthRngnFluI569t.JTfZi', NULL, '2019-09-30 14:21:07', '2019-09-30 14:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(100) NOT NULL,
  `viewed_id` int(100) NOT NULL,
  `viewed_by` int(100) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `viewed_id`, `viewed_by`, `created_at`, `updated_at`) VALUES
(1, 12, 1, '2019-10-02', '2019-10-02'),
(2, 12, 1, '2019-10-02', '2019-10-02'),
(3, 12, 1, '2019-10-02', '2019-10-02'),
(4, 12, 1, '2019-10-02', '2019-10-02'),
(5, 12, 1, '2019-10-02', '2019-10-02'),
(6, 12, 1, '2019-10-02', '2019-10-02'),
(7, 12, 1, '2019-10-02', '2019-10-02'),
(8, 12, 1, '2019-10-02', '2019-10-02'),
(9, 12, 1, '2019-10-02', '2019-10-02'),
(10, 12, 1, '2019-10-02', '2019-10-02'),
(11, 12, 1, '2019-10-02', '2019-10-02'),
(12, 12, 1, '2019-10-02', '2019-10-02'),
(13, 12, 1, '2019-10-02', '2019-10-02'),
(14, 12, 1, '2019-10-02', '2019-10-02'),
(15, 12, 1, '2019-10-02', '2019-10-02'),
(16, 12, 1, '2019-10-02', '2019-10-02'),
(17, 12, 1, '2019-10-02', '2019-10-02'),
(18, 12, 1, '2019-10-02', '2019-10-02'),
(19, 12, 1, '2019-10-02', '2019-10-02'),
(20, 12, 1, '2019-10-02', '2019-10-02'),
(21, 12, 1, '2019-10-02', '2019-10-02'),
(22, 12, 1, '2019-10-02', '2019-10-02'),
(23, 12, 1, '2019-10-02', '2019-10-02'),
(24, 12, 1, '2019-10-02', '2019-10-02'),
(25, 12, 1, '2019-10-02', '2019-10-02'),
(26, 12, 1, '2019-10-02', '2019-10-02'),
(27, 12, 1, '2019-10-02', '2019-10-02'),
(28, 12, 1, '2019-10-02', '2019-10-02'),
(29, 12, 1, '2019-10-02', '2019-10-02'),
(30, 12, 1, '2019-10-02', '2019-10-02'),
(31, 12, 1, '2019-10-02', '2019-10-02'),
(32, 12, 1, '2019-10-02', '2019-10-02'),
(33, 12, 1, '2019-10-02', '2019-10-02'),
(34, 12, 1, '2019-10-02', '2019-10-02'),
(35, 12, 1, '2019-10-02', '2019-10-02'),
(36, 12, 1, '2019-10-02', '2019-10-02'),
(37, 12, 1, '2019-10-02', '2019-10-02'),
(38, 12, 1, '2019-10-02', '2019-10-02'),
(39, 12, 1, '2019-10-02', '2019-10-02'),
(40, 12, 1, '2019-10-02', '2019-10-02'),
(41, 12, 1, '2019-10-02', '2019-10-02'),
(42, 12, 1, '2019-10-05', '2019-10-02'),
(43, 12, 1, '2019-10-04', '2019-10-02'),
(44, 12, 1, '2019-10-03', '2019-10-02'),
(45, 12, 1, '2019-10-02', '2019-10-02'),
(46, 12, 1, '2019-10-02', '2019-10-02'),
(47, 12, 1, '2019-10-02', '2019-10-02'),
(48, 12, 1, '2019-10-02', '2019-10-02'),
(49, 12, 1, '2019-10-02', '2019-10-02'),
(50, 12, 1, '2019-10-02', '2019-10-02'),
(51, 12, 1, '2019-10-02', '2019-10-02'),
(52, 12, 1, '2019-10-02', '2019-10-02'),
(53, 12, 1, '2019-10-02', '2019-10-02'),
(54, 12, 1, '2019-10-03', '2019-10-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_users`
--
ALTER TABLE `mst_users`
  ADD PRIMARY KEY (`tbl_mst_id`);

--
-- Indexes for table `tbl_contact_directories`
--
ALTER TABLE `tbl_contact_directories`
  ADD PRIMARY KEY (`tbl_contact_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_contact_directories`
--
ALTER TABLE `tbl_contact_directories`
  MODIFY `tbl_contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
