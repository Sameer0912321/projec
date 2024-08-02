-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2024 at 03:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `service_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedback`) VALUES
(1, 'FEROZ IMTIAZ', 'feroz22may@gmail.com', 'Good start, but remember to handle file uploads using $_FILES to prevent errors.'),
(2, 'Sameer Feroz', 'ferozsameer07@gmail.com', 'Consider using prepared statements to protect against SQL injection vulnerabilities.'),
(3, 'Zain', 'zain@gmail.com', 'File upload handling needs to be corrected. $_POST should not be used for file data.'),
(4, 'FEROZ IMTIAZ', 'feroz22may@gmail.com', ';asdasidhhasofidfsodifjsdofisjdfsdfjaspdfoijeedpsdj');

-- --------------------------------------------------------

--
-- Table structure for table `hiring`
--

CREATE TABLE `hiring` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `coverletter` varchar(255) NOT NULL,
  `edu` varchar(255) NOT NULL,
  `experience` int(11) NOT NULL,
  `relskills` varchar(255) NOT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `startdate` date NOT NULL,
  `reference` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hiring`
--

INSERT INTO `hiring` (`id`, `fullname`, `email`, `phone`, `address`, `position`, `coverletter`, `edu`, `experience`, `relskills`, `linkedin`, `startdate`, `reference`) VALUES
(1, 'FEROZ IMTIAZ', 'feroz22may@gmail.com', 2147483647, '5.A.4/17 nazimabad no.5 karachi.', 'software-engineer', 'http://localhost/New%20Service/career.php', 'high-school', 9, 'http://localhost/New%20Service/career.php', '', '2312-12-31', 'http://localhost/New%20Service/career.php'),
(2, 'alishba', 'feroz22may@gmail.com', 2147483647, '5.A.4/17 nazimabad no.5 karachi.', 'project-manager', 'loremipsumdolor meow meow', 'associate-degree', 70, 'cleaning', 'http://localhost/New%20Service/career.php', '2024-07-07', 'sameer feroz 03132688912'),
(3, 'Zain', 'zain@gmail.com', 2147483647, '5.A.4/17 nazimabad no.5 karachi.', 'customer-support-specialist', 'I am Zain KHan. i will do any work of my field under the rate of 80,000 pkr.', 'associate-degree', 1, 'meow', 'http://localhost/New%20Service/career.php', '2024-07-09', ''),
(4, 'smoen', 'feroz22may@gmail.com', 2147483647, '5.A.4/17 nazimabad no.5 karachi.', 'software-engineer', 'i can make websites under the rate of 20,000 pkr', 'high-school', 2, 'js, php', 'http://localhost/New%20Service/career.php', '2024-07-09', 'irtiza (teacher of aptech)');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `Title`, `description`) VALUES
(1, 'Mechanic', 'I am 30 years old. Can fix any cars or bikes under the rate of 5000 pkr.  '),
(3, 'Maid', 'I will clean every kind of apartment under the amount of 5000pkr.'),
(5, 'Electrician', 'Im an electrition if u hire me i will be at your home every second you call me under the rate of 1000.\r\n'),
(6, 'Electrician', 'Experienced electrician specializing in residential and commercial wiring. Available for repair and installation services.');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `nic` varchar(255) DEFAULT NULL,
  `pho` int(11) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `pass`, `nic`, `pho`, `dates`, `age`, `gender`) VALUES
(1, 'FEROZ IMTIAZ', 'feroz22may@gmail.com', 'Sameer12334', '12345-1234567-2', 2147483647, '2024-07-06', 22, 'Male'),
(2, 'Sameer Feroz', 'feroz22may@gmail.com', 'Sameer123456', '12345-1234567-2', 2147483647, '2024-07-04', 19, 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hiring`
--
ALTER TABLE `hiring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD KEY `id` (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hiring`
--
ALTER TABLE `hiring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id`) REFERENCES `signup` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
