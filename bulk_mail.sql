-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 08:02 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bulk_mail`
--

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `email`, `status`, `create_date`) VALUES
(2, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(3, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(4, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(5, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(6, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(7, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(8, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(9, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(10, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(11, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(12, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(13, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(14, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(15, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(16, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(17, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(18, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(19, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(20, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(21, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(22, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(23, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(24, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(25, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(26, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(27, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(28, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(29, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(30, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(31, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(32, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(33, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(34, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(35, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(36, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(37, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(38, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(39, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(40, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(41, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(42, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(43, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(44, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(45, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(46, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(47, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(48, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(49, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(50, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(51, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(52, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(53, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(54, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(55, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(56, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(57, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(58, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(59, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(60, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(61, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(62, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(63, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(64, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(65, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(66, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(67, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(68, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(69, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(70, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(71, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(72, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(73, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(74, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(75, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(76, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(77, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(78, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(79, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(80, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(81, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(82, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(83, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(84, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(85, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(86, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(87, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(88, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(89, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(90, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(91, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(92, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(93, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(94, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(95, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(96, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(97, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(98, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(99, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(100, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(101, 'alexsmithseo79@gmail.com', 1, '2020-09-15 10:59:14'),
(102, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(103, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(104, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(105, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(106, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(107, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(108, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(109, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(110, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(111, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(112, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(113, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(114, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(115, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(116, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(117, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(118, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(119, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(120, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(121, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:09'),
(122, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(123, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(124, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(125, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(126, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(127, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(128, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(129, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(130, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(131, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(132, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(133, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(134, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(135, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(136, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(137, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(138, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(139, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(140, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(141, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(142, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(143, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(144, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(145, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(146, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(147, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(148, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(149, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(150, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(151, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(152, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(153, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(154, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(155, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(156, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(157, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(158, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(159, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(160, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(161, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(162, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(163, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(164, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(165, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(166, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(167, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(168, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(169, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(170, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(171, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(172, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(173, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(174, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(175, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(176, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(177, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(178, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(179, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(180, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(181, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(182, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(183, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(184, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(185, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(186, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(187, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(188, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(189, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(190, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(191, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(192, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(193, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(194, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(195, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(196, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(197, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(198, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(199, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(200, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10'),
(201, 'manpreetbattersea@gmail.com', 1, '2020-09-15 11:29:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
