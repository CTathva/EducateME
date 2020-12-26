-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 23, 2020 at 04:29 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `educateme`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `time` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` char(50) NOT NULL,
  `email` char(50) NOT NULL,
  `phone` char(10) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`time`, `name`, `email`, `phone`, `message`) VALUES
('0000-0', 'Adithya H Shetty', 'adithyashetty1805@gmail.com', '2147483647', 'this is a test message'),
('08:16:12am9590774259', 'kushal', 'adithya@gmail.com', '2147483647', 'this is s new message'),
('08:23:32am9590774259', 'kushal', 'adithya@gmail.com', '9590774259', 'this is s new message'),
('08:28:59am9590774259', 'kushal', 'adithya@gmail.com', '9590774259', 'this is s new message'),
('08:31:27am9590774259', 'Adithya H Shetty', 'adithyashetty1805@gmail.com', '9590774259', 'this is s new message'),
('08:33:24am9590774259', 'Adithya H Shetty', 'adithyashetty1805@gmail.com', '9590774259', 'nice'),
('08:38:02am9590774259', 'Adithya H Shetty', 'adithyashetty1805@gmail.com', '9590774259', 'this is'),
('08:39:21am9590774259', 'Adithya H Shetty', 'adithyashetty1805@gmail.com', '9590774259', 'erghu'),
('08:39:51am9590774259', 'Adithya H Shetty', 'adithyashetty1805@gmail.com', '9590774259', ';lkjhgf');

-- --------------------------------------------------------

--
-- Table structure for table `educators`
--

DROP TABLE IF EXISTS `educators`;
CREATE TABLE IF NOT EXISTS `educators` (
  `name` char(50) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `website` varchar(100) NOT NULL,
  `role` char(50) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `educators`
--

INSERT INTO `educators` (`name`, `image`, `website`, `role`, `linkedin`, `instagram`, `facebook`, `twitter`) VALUES
('Adithya H Shetty', 'adithya.png', 'https://www.google.com', 'Android Developer', 'https://www.linkedin.com/in/c-tathva-4254871a7/', 'https://www.instagram.com/c_tathva/', 'https://www.instagram.com/c_tathva/', 'https://www.instagram.com/c_tathva/'),
('Harsha N G', 'harsha.jpg', '#', 'Graphic Designer', '#', '#', '#', '#'),
('Dharmaraj H B', 'dharma.jpg', '#', 'Web Developer', '#', '	#', '#', '#');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
