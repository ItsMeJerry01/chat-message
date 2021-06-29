-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 21, 2020 at 03:54 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(11, 2, 1, 'gg', '2020-07-20 18:46:05', 0),
(12, 2, 1, 'gg', '2020-07-20 18:46:45', 0),
(13, 2, 1, 'gg', '2020-07-20 18:46:47', 0),
(14, 1, 2, 'vvv', '2020-07-20 18:47:43', 0),
(15, 1, 2, 'vv', '2020-07-20 18:47:47', 0),
(16, 1, 2, 'vv', '2020-07-20 18:47:50', 0),
(17, 1, 2, 'vv', '2020-07-20 18:47:54', 0),
(18, 1, 2, 'vv', '2020-07-20 18:47:56', 0),
(19, 1, 2, 'vv', '2020-07-20 18:48:36', 0),
(20, 1, 2, 'vv', '2020-07-20 18:48:38', 0),
(21, 1, 2, 'vv', '2020-07-20 18:48:41', 0),
(22, 2, 1, 'tre', '2020-07-20 19:23:16', 1),
(23, 1, 5, 'hi doctor', '2020-07-21 09:15:04', 0),
(24, 5, 1, 'hello amit singh\n\n', '2020-07-21 09:16:27', 0),
(25, 1, 5, 'when should i come for checkup', '2020-07-21 09:17:23', 0),
(26, 5, 1, 'i will inform you soon.', '2020-07-21 09:17:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`) VALUES
(1, 'Dr. Ashok Seth', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(2, 'Dr. Sandeep Vaishya', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(3, 'Dr. Naresh Trehan', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(4, 'prakash rajpurohit', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(5, 'amit singh', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 1, '2020-07-20 10:14:37', 'no'),
(2, 2, '2020-07-20 10:16:48', 'no'),
(3, 1, '2020-07-20 10:16:15', 'no'),
(4, 1, '2020-07-20 10:17:20', 'no'),
(5, 2, '2020-07-20 10:28:52', 'no'),
(6, 1, '2020-07-20 10:29:56', 'no'),
(7, 2, '2020-07-20 11:11:33', 'no'),
(8, 2, '2020-07-20 11:12:03', 'no'),
(9, 2, '2020-07-20 11:13:19', 'no'),
(10, 1, '2020-07-20 13:10:42', 'no'),
(11, 2, '2020-07-20 19:21:14', 'no'),
(12, 5, '2020-07-21 13:15:03', 'no'),
(13, 1, '2020-07-20 19:23:43', 'no'),
(14, 1, '2020-07-21 09:17:54', 'no'),
(15, 2, '2020-07-21 13:29:08', 'no'),
(16, 5, '2020-07-21 13:34:59', 'no'),
(17, 5, '2020-07-21 13:48:37', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
