-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2024 at 07:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `building_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_block`
--

CREATE TABLE `add_block` (
  `id` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `blockname` text NOT NULL,
  `rooms` varchar(255) NOT NULL,
  `parking` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_block`
--

INSERT INTO `add_block` (`id`, `floor`, `blockname`, `rooms`, `parking`) VALUES
(1, 6, 'SSE', '40', 'yes'),
(2, 12, 'AHS', '30', 'yes'),
(3, 3, 'SAIL', '25', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `ID` int(11) NOT NULL,
  `type` text NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`ID`, `type`, `info`) VALUES
(1, 'VOLUNTER NEEDED', 'Needed volunteer for the Diwali festival event  For further info contact secretary'),
(2, 'TOLET', 'A - Block, House number A102 2BHK flat is available for rent '),
(3, 'water thank', 'cleaning');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `c_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `block` varchar(25) DEFAULT NULL,
  `doorno` varchar(25) NOT NULL,
  `issue_type` text NOT NULL,
  `repeated` text NOT NULL,
  `replacement` text NOT NULL,
  `mobno` bigint(20) DEFAULT NULL,
  `issue` text NOT NULL,
  `dob` date NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`c_id`, `name`, `block`, `doorno`, `issue_type`, `repeated`, `replacement`, `mobno`, `issue`, `dob`, `status`) VALUES
(28, 'jeswanth', 'A-Block', 'A-120', 'plumbing', 'Yes', '', 9888282467, 'plumbing', '2024-04-02', 'completed'),
(29, 'anitha', 'A-Block', 'A-121', 'plumbing', 'No', '', 9888282467, 'plumbing', '2024-04-02', 'pending'),
(31, 'jeswanth', 'B-Block', 'A-101', 'plumbing', 'Yes', '', 9888282467, 'plumbing', '2024-04-02', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(11) NOT NULL,
  `type` text NOT NULL,
  `mobno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`ID`, `type`, `mobno`) VALUES
(1, 'Shashi-Admin', 8688864002),
(2, 'POLICE', 100);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `ID` int(11) NOT NULL,
  `type` text NOT NULL,
  `date` date NOT NULL,
  `time` varchar(25) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`ID`, `type`, `date`, `time`, `no`) VALUES
(1, 'Party', '2023-11-15', '11.00AM', 50),
(2, 'Meeting', '2023-11-17', '11.00AM', 5),
(5, 'brithday', '2024-02-02', '9 30', 10);

-- --------------------------------------------------------

--
-- Table structure for table `issue_details`
--

CREATE TABLE `issue_details` (
  `id` int(255) NOT NULL,
  `worker_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `block` varchar(255) NOT NULL,
  `door` varchar(255) NOT NULL,
  `issue` varchar(255) NOT NULL,
  `repeated` varchar(255) NOT NULL,
  `replacement` varchar(255) NOT NULL,
  `mob_num` varchar(255) NOT NULL,
  `issues` varchar(255) NOT NULL,
  `dateofreporting` date NOT NULL,
  `worker_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue_details`
--

INSERT INTO `issue_details` (`id`, `worker_name`, `user_name`, `block`, `door`, `issue`, `repeated`, `replacement`, `mob_num`, `issues`, `dateofreporting`, `worker_id`, `user_id`, `status`) VALUES
(43, 'divakar', 'jeswanth', 'A-Block', 'A-120', 'plumbing', 'Yes', '', '9888282467', 'plumbing', '2024-04-02', '4', '28', 'completed'),
(45, 'divakar', 'jeswanth', 'B-Block', 'A-101', 'plumbing', 'Yes', '', '9888282467', 'plumbing', '2024-04-02', '4', '31', 'pending'),
(47, 'suresh', 'jeswanth', 'A-Block', 'A-120', 'plumbing', 'Yes', '', '9888282467', 'plumbing', '2024-04-02', '3', '28', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `role` text NOT NULL,
  `assignblock` varchar(25) NOT NULL,
  `mobno` bigint(20) NOT NULL,
  `dob` date NOT NULL,
  `nationality` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `name`, `username`, `password`, `role`, `assignblock`, `mobno`, `dob`, `nationality`) VALUES
(1, 'ammer', 'd12', '123', 'admin', 'b-block', 8688864002, '2023-11-01', 'Indian'),
(2, 'reddy', 'm12', '123', 'manager', 'A block', 9676224762, '2023-11-02', 'Indian'),
(3, 'suresh', 's12', '123', 'staff', 'C block', 99864246789, '2023-09-12', 'Indian'),
(4, 'divakar', 's13', '123', 'staff', 'A block', 8688864002, '2023-11-15', 'Indian'),
(5, 'jeswanth', 'n12', '123', 'user', 'A block', 9440025814, '2024-04-03', '');

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `allotment` varchar(25) NOT NULL,
  `mobno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`ID`, `name`, `allotment`, `mobno`) VALUES
(1, 'reddy', 'worker', 9876543210),
(12, 'ashu', 'worker', 9440025814),
(14, 'Reddy S', 'p-15', 5678909765),
(15, 'Reddy S', 'p-15', 5678909765),
(16, 'anitha', 'yes', 907654321);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` text NOT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `name`, `status`, `comment`, `rate`, `date`) VALUES
(1, 'keerthi', 'completed', 'good', 4, '2023-10-04'),
(2, 'harsha', 'pending', 'need maintanence ', 1, '2023-10-02'),
(3, 'keerthi', 'completed', 'good', 4, '0000-00-00'),
(0, 'karthik', 'completed', 'good', 5, '0000-00-00'),
(21, 'karthik', 'completed', 'good', 5, '0000-00-00'),
(22, 'karthik', 'completed', 'good', 5, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE `security` (
  `ID` varchar(255) NOT NULL,
  `camera` varchar(255) NOT NULL,
  `carbon` varchar(255) NOT NULL,
  `alarm` varchar(255) NOT NULL,
  `blockname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`ID`, `camera`, `carbon`, `alarm`, `blockname`) VALUES
('1', '10', '5', '5', 'SSE'),
('2', '15', '10', '5', 'AHS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `issue_details`
--
ALTER TABLE `issue_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `issue_details`
--
ALTER TABLE `issue_details`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `parking`
--
ALTER TABLE `parking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
