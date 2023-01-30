-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 01:50 AM
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
-- Database: `winton`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `cit_id` int(11) NOT NULL,
  `cit_name` varchar(60) NOT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`cit_id`, `cit_name`, `country_id`) VALUES
(1, 'ElQalyubiya', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `Country_id` int(11) NOT NULL,
  `Country_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`Country_id`, `Country_name`) VALUES
(1, 'Egypt'),
(2, 'Moroco'),
(3, 'France');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `f_id` int(11) NOT NULL,
  `f_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`f_id`, `f_name`) VALUES
(1, 'Graphic design'),
(2, 'Web development');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `s_id` int(11) NOT NULL,
  `s_desc` varchar(1000) NOT NULL,
  `s_inst` varchar(1000) DEFAULT NULL,
  `s_price` double DEFAULT NULL,
  `s_period` int(11) DEFAULT NULL,
  `f_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `post_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`s_id`, `s_desc`, `s_inst`, `s_price`, `s_period`, `f_id`, `username`, `post_date`) VALUES
(1, 'This is description', 'This is instructions', 100, 14, 1, 'haikel', '2022-12-21'),
(6, 'Web project', 'Make it good fast', 200, 21, 2, 'haikel', '2022-12-21'),
(7, 'Make me a social media application.\r\nI want it fast>', '-Should from college.\r\n-should be cheep.', 300, 60, 2, 'haikel', '2022-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `service_request`
--

CREATE TABLE `service_request` (
  `s_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `reply` varchar(500) NOT NULL,
  `send_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_request`
--

INSERT INTO `service_request` (`s_id`, `username`, `reply`, `send_date`) VALUES
(6, 'yahya2002', 'hey i wish to do this.', '2022-12-22'),
(7, 'yahya2002', 'Can i do it?', '2022-12-22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `birth_date` date NOT NULL,
  `join_date` date NOT NULL,
  `personal_photo` varchar(255) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `contact_number` varchar(25) NOT NULL,
  `portfolio_link` varchar(200) DEFAULT NULL,
  `job_title` varchar(150) NOT NULL,
  `about` varchar(1000) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `f_id` int(11) DEFAULT NULL,
  `cit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `first_name`, `last_name`, `gender`, `birth_date`, `join_date`, `personal_photo`, `email`, `contact_number`, `portfolio_link`, `job_title`, `about`, `password`, `f_id`, `cit_id`) VALUES
('BFCAI', 'Benha', 'University', 'Female', '2001-01-19', '2022-12-19', 'BFCAI_logo.png', 'benha@yahoo.com', '0123457895', 'http://localhost/Winton/Register.php', 'programmer', 'I love number 8.', '123456', 2, 1),
('Ganzoury222', 'Adham', 'Ganzoury', 'Male', '2003-01-21', '2022-12-18', 'adham.jpg', 'Adham2002@yahoo.com', '0132604432', 'https://www.facebook.com/', 'stack developer', 'I lov web too much.', '111', 2, 1),
('haikel', 'Hadi', 'rabea', 'Male', '2003-02-15', '2022-12-19', 'hadi.png', 'hadi@gmail.co', '01354784121', 'http://localhost/Winton/Register.php', 'problem solver', 'I love my mom', 'mom', 1, 1),
('sabryMenoufia8', 'Mohamed', 'Sabry', 'Male', '2002-01-06', '2022-12-18', 'sabarey.png', 'sabry2002@gmail.com', '01207051837', 'https://www.w3schools.com/php/php_mysql_select.asp', 'web developer', 'BFCAI student', 'aaa', 2, 1),
('yahya2002', 'Yahya', 'Hamza', 'Male', '2002-07-21', '2022-12-21', 'yahya2002.png', 'yahyamohamed2000@gmail.com', '01207051837', 'http://localhost/Winton/Register.php', 'web developer', 'I love web development.', '111', 2, 1),
('Zahta2000', 'Alaa', 'Zahra', 'Female', '2012-01-21', '2022-12-21', '0.png', 'Zahra@yahoo.com', '0120324512', 'http://localhost/Winton/Register.php', 'Dev', 'I love web', '123', 2, 1),
('zoghlaaawork', 'Eslam', 'Zoghla', 'Male', '2002-01-12', '2022-12-18', 'zohla.png', 'zoghla123@gmail.com', '01457851522', 'https://www.w3schools.com/php/php_mysql_select.asp', 'web designer', 'Cs designer', 'aaaa', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cit_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`Country_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`f_id`),
  ADD UNIQUE KEY `f_name` (`f_name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `service_request`
--
ALTER TABLE `service_request`
  ADD PRIMARY KEY (`s_id`,`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `cit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `Country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
