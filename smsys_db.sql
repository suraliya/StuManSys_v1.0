-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 11:54 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smsys_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(10) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `nic` varchar(15) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `contactno` int(10) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `course` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `firstname`, `lastname`, `dob`, `nic`, `gender`, `contactno`, `email`, `address`, `course`, `status`) VALUES
(450014001, 'Suranja', 'Liyanage', '12/01/1994', '940731720v', 'Male', 717039441, 'suranja@gmail.com', 'Ratnapura', 'DCSD', 1),
(450014002, 'Rasika', 'Lakshan', '14/01/1996', '962541785v', 'Male', 714526221, 'rasika@gmail.com', 'Bibile, Monaragala', 'DSE', 1),
(450014003, 'Saddeep', 'Mihiranga', '24/01/1997', '974524890v', 'Male', 774589621, 'saddeep@outlook.com', 'Kahangama, Ratnapura', 'HDSE', 1),
(450014004, 'Chamal', 'Gayan', '24/02/1995', '952147852v', 'Male', 715489654, 'chamal@ymail.com', 'Muwagama, Ratnapura', 'HDCBIS', 1),
(450014005, 'Tharuka', 'Perera', '16/06/1996', '965487521v', 'Female', 754589651, 'tharuka@gmail.com', 'Kottawa, Colombo 06', 'DSE', 1),
(450014006, 'Ganga', 'Silva', '30/04/1998', '985412365v', 'Female', 717895624, 'ganga@gmail.com', 'udunuwara Rd, Kandy', 'HDCBIS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `nic` varchar(15) DEFAULT NULL,
  `contactno` int(10) NOT NULL,
  `usertype` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `email`, `password`, `firstname`, `lastname`, `nic`, `contactno`, `usertype`, `status`) VALUES
(45001, 'suranja@gmail.com', '1234', 'Suranja', 'Liyanage', '785412524v', 717039441, 'Admin', 1),
(45003, 'rasika@gmail.com', '1234', 'Rasika', 'Lakmal', '954217841v', 789565214, 'Examinar', 1),
(45002, 'mihiranga@gmail.com', '1234', 'Saddeep', 'Mihiranga', '942517564v', 778956632, 'Officer', 1),
(45006, 'chamal@gmail.com', '1234', 'Chamal', 'Gayan', '896521452v', 789541220, 'Cashier', 1),
(45013, 'lakmal@gmail.com', '1234', 'Prasantha', 'Lakmal', '6465456456', 5646464, 'Cource Co', 1),
(45024, 'kamal@gmail.com', '14154722', 'kamal', 'perera', '960147270v', 702378925, 'Cashier', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450014007;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45025;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
