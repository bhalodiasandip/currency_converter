-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2017 at 02:00 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `currency_converter`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `iso_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `iso_code`, `name`) VALUES
(1, 'AUD', 'Australian Dollar'),
(2, 'BGN', 'Bulgarian Lev'),
(3, 'BRL', 'Brazilian Real'),
(4, 'CAD', 'Canadian Dollar'),
(5, 'CHF', 'Swiss Franc'),
(6, 'CNY', 'Chinese Renminbi Yuan'),
(7, 'CZK', 'Czech Koruna'),
(8, 'DKK', 'Danish Krone'),
(9, 'GBP', 'British Pound'),
(10, 'EUR', 'Euro'),
(11, 'HKD', 'Hong Kong Dollar'),
(12, 'HRK', 'Croatian Kuna'),
(13, 'HUF', 'Hungarian Forint'),
(14, 'IDR', 'Indonesian Rupiah'),
(15, 'ILS', 'Israeli New Sheqel'),
(16, 'INR', 'Indian Rupee'),
(17, 'JPY', 'Japanese Yen'),
(18, 'RUB', 'Russian Ruble'),
(19, 'USD', 'United States Dollar'),
(20, 'NZD', 'New Zealand Dollar'),
(21, 'ZAR', 'South African Rand');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_07_24_062127_result_history', 1),
(2, '2017_07_24_070502_currencies', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result_history`
--

CREATE TABLE `result_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `in_currency` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `out_currency` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `result_history`
--

INSERT INTO `result_history` (`id`, `in_currency`, `in_amount`, `out_currency`, `out_amount`, `created_at`, `updated_at`) VALUES
(1, 'INR', '1.00', 'RUB', '0.92', '2017-07-24 08:14:41', '2017-07-24 08:14:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_history`
--
ALTER TABLE `result_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `result_history`
--
ALTER TABLE `result_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
