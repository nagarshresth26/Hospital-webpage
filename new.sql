-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 09:59 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patient_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-04-26 13:47:46', '2021-04-26 13:47:46'),
(2, 2, 2, '2021-04-26 13:55:35', '2021-04-26 13:55:35'),
(3, 3, 3, '2021-04-26 13:55:50', '2021-04-26 13:55:50'),
(4, 4, 4, '2021-04-26 13:56:00', '2021-04-26 13:56:00'),
(5, 5, 5, '2021-04-26 14:03:38', '2021-04-26 14:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dentist', 'dentist', '2021-04-26 13:30:48', '2021-04-26 13:30:48'),
(2, 'Surgeon', 'surgeon', '2021-04-26 13:58:08', '2021-04-26 13:58:08'),
(3, 'Gynecologist', 'gynecologist', '2021-04-26 13:58:47', '2021-04-26 13:58:47'),
(4, 'Anesthesia', 'anesthesia', '2021-04-26 13:59:30', '2021-04-26 13:59:30'),
(5, 'Physician', 'physician', '2021-04-26 14:05:07', '2021-04-26 14:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `deptt_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `deptt_id`, `created_at`, `updated_at`) VALUES
(1, 'Shresth Nagar', 1, '2021-04-26 13:35:41', '2021-04-26 13:35:41'),
(2, 'sparsh', 2, '2021-04-26 13:59:52', '2021-04-26 13:59:52'),
(3, 'nayan', 3, '2021-04-26 14:00:01', '2021-04-26 14:00:01'),
(4, 'naman', 4, '2021-04-26 14:00:12', '2021-04-26 14:00:12'),
(5, 'arjun', 5, '2021-04-26 14:00:23', '2021-04-26 14:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `disease` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `disease`, `created_at`, `updated_at`) VALUES
(1, 'ram', 'dental problem', '2021-04-26 13:46:46', '2021-04-26 13:46:46'),
(2, 'sarthak', 'cancer', '2021-04-26 14:01:30', '2021-04-26 14:01:30'),
(3, 'kartik', 'covid', '2021-04-26 14:01:43', '2021-04-26 14:01:43'),
(4, 'ayush', 'asthma', '2021-04-26 14:02:09', '2021-04-26 14:02:09'),
(5, 'yogesh', 'liver problem', '2021-04-26 14:02:46', '2021-04-26 14:02:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
