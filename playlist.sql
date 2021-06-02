-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2021 at 12:57 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `filelist`
--

CREATE TABLE `filelist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `catagory` varchar(100) NOT NULL,
  `file` text NOT NULL,
  `playcount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filelist`
--

INSERT INTO `filelist` (`id`, `user_id`, `title`, `catagory`, `file`, `playcount`) VALUES
(1, 12, 'Kon Tujhe Ak', 'others', 'https://www.youtube.com/embed/atVof3pjT-I', 4),
(2, 12, 'Roke na Roke', 'Sad songs', 'https://www.youtube.com/embed/ucMJu94UpTM', 2),
(3, 12, 'Yeh Khuda', 'Romantic Songs', 'https://www.youtube.com/embed/9BWNft9Z4qo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shareinfo`
--

CREATE TABLE `shareinfo` (
  `shareid` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `share_code` varchar(100) NOT NULL,
  `value` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shareinfo`
--

INSERT INTO `shareinfo` (`shareid`, `user_id`, `share_code`, `value`) VALUES
(1, 12, '5915b06572b61', 1),
(2, 3, '5915c6c64c5ff', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 't', 't', 'c4ca4238a0b923820dcc509a6f75849b', 'r@gmail.com'),
(2, 'Taheera', 't', 'a87ff679a2f3e71d9181a67b7542122c', 'rrwsersrsar@gmail.com'),
(3, 'simran', 'simran', '81dc9bdb52d04dc20036dbd8313ed055', 'ripon@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filelist`
--
ALTER TABLE `filelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shareinfo`
--
ALTER TABLE `shareinfo`
  ADD PRIMARY KEY (`shareid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filelist`
--
ALTER TABLE `filelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `shareinfo`
--
ALTER TABLE `shareinfo`
  MODIFY `shareid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
