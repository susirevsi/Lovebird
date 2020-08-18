-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2020 at 12:14 PM
-- Server version: 10.1.46-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soba4974_sistempakarlovebird`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_user` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_user`, `username`, `password`, `nama`, `phone`, `email`) VALUES
(1, 'admin', 'admin', 'Revsi', '+6281947472218', 'mailizar22@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(3) NOT NULL,
  `kode_gejala` varchar(10) NOT NULL,
  `nama_gejala` text NOT NULL,
  `bobot` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`, `bobot`) VALUES
(52, 'G1', 'Nafsu makan berkurang', 5),
(61, 'G10', 'Sulit menelan', 5),
(60, 'G9', 'Sesak Nafas', 5),
(59, 'G8', 'Tampak stress', 5),
(58, 'G7', 'Kotoran lunak sampai encer', 5),
(57, 'G6', 'Kotoran berwarna putih encer', 5),
(56, 'G5', 'Mata terlihat kemerahan', 5),
(55, 'G4', 'Mata berair dan membengkak', 5),
(54, 'G3', 'Kurang bergairah', 5),
(53, 'G2', 'Terlihat lesu', 5),
(62, 'G11', 'Nafas cepat tapi pendek', 5),
(63, 'G12', 'Tubuh hewan terlihat kurus', 5),
(64, 'G13', 'Bintik putih di selaput lender kerongkongan', 5),
(65, 'G14', 'Bintik cair pada kaki', 5),
(66, 'G15', 'Bintik benjolan berisi cairan', 5),
(67, 'G16', 'Bagian mulut dan sudut mulut terdapat luka berwarna putih dan berdarah bila dikupas', 5),
(68, 'G17', 'Mulut mengeluarkan lender yang agak berbau', 5),
(69, 'G18', 'Menggigit bulunya', 5),
(70, 'G19', 'Terlihat pucat', 5),
(71, 'G20', 'Terlihat kutu di bulunya', 5),
(72, 'G21', 'Pada stadium tertentu burung kesulitan membuang kotoran', 5),
(73, 'G22', 'Tubuh hewan bergemetar', 5),
(74, 'G23', 'Pada bagian leher terlihat bengkak', 5),
(75, 'G24', 'Paruh sering terliha membuka dan sayap terkulai kebawah', 5),
(76, 'G25', 'Sinar mata tampak layu', 5),
(77, 'G26', 'Bulu kusam', 5),
(78, 'G27', 'Terdapat caplak atau kutil dengan tekstur keras', 5),
(79, 'G28', 'Kuku burung memanjang', 5),
(80, 'G29', 'Kaki terlihat membengkak', 5),
(81, 'G30', 'Sisik di kaki melebar dari ukuran aslinya', 5);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_konsultasi`
--

CREATE TABLE `hasil_konsultasi` (
  `id_konsultasi` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `konsultasi` int(10) NOT NULL,
  `id_gejala` int(3) NOT NULL,
  `bobot` int(3) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_konsultasi`
--

INSERT INTO `hasil_konsultasi` (`id_konsultasi`, `id_user`, `konsultasi`, `id_gejala`, `bobot`, `waktu`) VALUES
(133, 0, 5, 54, 0, '2020-06-27 12:26:33'),
(191, 0, 22, 79, 5, '2020-06-27 13:54:01'),
(190, 0, 21, 81, 5, '2020-06-27 13:31:38'),
(189, 0, 21, 80, 5, '2020-06-27 13:31:38'),
(188, 0, 21, 79, 5, '2020-06-27 13:31:38'),
(187, 0, 21, 78, 5, '2020-06-27 13:31:38'),
(186, 0, 21, 53, 5, '2020-06-27 13:31:38'),
(185, 0, 20, 81, 5, '2020-06-27 13:30:34'),
(184, 0, 20, 80, 5, '2020-06-27 13:30:34'),
(183, 0, 20, 79, 5, '2020-06-27 13:30:34'),
(182, 0, 20, 78, 5, '2020-06-27 13:30:34'),
(181, 0, 20, 53, 5, '2020-06-27 13:30:34'),
(180, 0, 19, 71, 5, '2020-06-27 13:26:34'),
(179, 0, 19, 70, 5, '2020-06-27 13:26:34'),
(178, 0, 19, 69, 5, '2020-06-27 13:26:34'),
(177, 0, 19, 53, 5, '2020-06-27 13:26:34'),
(176, 0, 18, 81, 5, '2020-06-27 13:25:25'),
(175, 0, 18, 80, 5, '2020-06-27 13:25:25'),
(174, 0, 18, 79, 5, '2020-06-27 13:25:25'),
(173, 0, 17, 58, 5, '2020-06-27 13:12:26'),
(172, 0, 17, 59, 5, '2020-06-27 13:12:26'),
(171, 0, 17, 61, 5, '2020-06-27 13:12:26'),
(170, 0, 17, 52, 5, '2020-06-27 13:12:26'),
(169, 0, 16, 81, 0, '2020-06-27 13:00:17'),
(168, 0, 16, 80, 0, '2020-06-27 13:00:17'),
(167, 0, 16, 79, 0, '2020-06-27 13:00:17'),
(166, 0, 16, 78, 0, '2020-06-27 13:00:17'),
(165, 0, 16, 58, 0, '2020-06-27 13:00:17'),
(164, 0, 16, 59, 0, '2020-06-27 13:00:17'),
(163, 0, 15, 58, 0, '2020-06-27 12:50:29'),
(162, 0, 15, 59, 0, '2020-06-27 12:50:29'),
(161, 0, 14, 59, 0, '2020-06-27 12:49:59'),
(160, 0, 14, 60, 0, '2020-06-27 12:49:59'),
(159, 0, 13, 59, 0, '2020-06-27 12:40:23'),
(158, 0, 13, 60, 0, '2020-06-27 12:40:23'),
(157, 0, 12, 59, 0, '2020-06-27 12:39:35'),
(156, 0, 12, 60, 0, '2020-06-27 12:39:35'),
(155, 0, 12, 52, 0, '2020-06-27 12:39:35'),
(154, 0, 11, 59, 0, '2020-06-27 12:34:52'),
(153, 0, 11, 60, 0, '2020-06-27 12:34:52'),
(152, 0, 11, 52, 0, '2020-06-27 12:34:52'),
(151, 0, 10, 81, 0, '2020-06-27 12:33:20'),
(150, 0, 10, 80, 0, '2020-06-27 12:33:20'),
(149, 0, 10, 79, 0, '2020-06-27 12:33:20'),
(148, 0, 10, 78, 0, '2020-06-27 12:33:20'),
(147, 0, 9, 81, 0, '2020-06-27 12:33:08'),
(146, 0, 9, 80, 0, '2020-06-27 12:33:08'),
(145, 0, 9, 79, 0, '2020-06-27 12:33:08'),
(144, 0, 8, 81, 0, '2020-06-27 12:31:00'),
(143, 0, 8, 80, 0, '2020-06-27 12:31:00'),
(142, 0, 8, 79, 0, '2020-06-27 12:31:00'),
(141, 0, 7, 81, 0, '2020-06-27 12:30:49'),
(140, 0, 7, 80, 0, '2020-06-27 12:30:49'),
(139, 0, 7, 79, 0, '2020-06-27 12:30:49'),
(138, 0, 6, 53, 0, '2020-06-27 12:28:01'),
(137, 0, 6, 54, 0, '2020-06-27 12:28:01'),
(136, 0, 6, 60, 0, '2020-06-27 12:28:01'),
(135, 0, 6, 52, 0, '2020-06-27 12:28:01'),
(134, 0, 5, 53, 0, '2020-06-27 12:26:33'),
(132, 0, 5, 52, 0, '2020-06-27 12:26:33'),
(131, 0, 4, 53, 0, '2020-06-27 12:24:59'),
(130, 0, 4, 54, 0, '2020-06-27 12:24:59'),
(129, 0, 4, 55, 0, '2020-06-27 12:24:59'),
(128, 0, 4, 52, 0, '2020-06-27 12:24:59'),
(127, 0, 3, 81, 0, '2020-06-27 12:21:06'),
(126, 0, 3, 80, 0, '2020-06-27 12:21:06'),
(125, 0, 3, 79, 0, '2020-06-27 12:21:06'),
(124, 0, 2, 72, 0, '2020-06-27 12:20:21'),
(123, 0, 2, 67, 0, '2020-06-27 12:20:21'),
(122, 0, 2, 62, 0, '2020-06-27 12:20:21'),
(121, 0, 1, 78, 0, '2020-06-27 12:14:04'),
(120, 0, 1, 69, 0, '2020-06-27 12:14:04'),
(119, 0, 1, 66, 0, '2020-06-27 12:14:04'),
(192, 0, 22, 80, 5, '2020-06-27 13:54:01'),
(193, 0, 22, 81, 5, '2020-06-27 13:54:01'),
(194, 0, 23, 78, 5, '2020-06-27 16:09:49'),
(195, 0, 23, 79, 5, '2020-06-27 16:09:49'),
(196, 0, 23, 80, 5, '2020-06-27 16:09:49'),
(197, 0, 23, 81, 5, '2020-06-27 16:09:49'),
(198, 0, 24, 79, 5, '2020-06-27 16:39:11'),
(199, 0, 24, 80, 5, '2020-06-27 16:39:11'),
(200, 0, 25, 78, 5, '2020-06-27 16:43:36'),
(201, 0, 25, 79, 5, '2020-06-27 16:43:36'),
(202, 0, 25, 80, 5, '2020-06-27 16:43:36'),
(203, 0, 26, 78, 5, '2020-06-27 16:49:46'),
(204, 0, 26, 79, 5, '2020-06-27 16:49:46'),
(205, 0, 26, 80, 5, '2020-06-27 16:49:46'),
(206, 0, 27, 78, 5, '2020-06-27 16:50:31'),
(207, 0, 27, 79, 5, '2020-06-27 16:50:31'),
(208, 0, 27, 80, 5, '2020-06-27 16:50:31'),
(209, 0, 28, 79, 5, '2020-06-27 16:51:32'),
(210, 0, 28, 81, 5, '2020-06-27 16:51:32'),
(211, 0, 29, 78, 5, '2020-06-27 16:52:55'),
(212, 0, 29, 79, 5, '2020-06-27 16:52:55'),
(213, 0, 29, 80, 5, '2020-06-27 16:52:55'),
(214, 0, 30, 78, 5, '2020-06-27 16:54:44'),
(215, 0, 30, 79, 5, '2020-06-27 16:54:44'),
(216, 0, 30, 80, 5, '2020-06-27 16:54:44'),
(217, 0, 31, 78, 5, '2020-06-27 16:55:37'),
(218, 0, 31, 79, 5, '2020-06-27 16:55:37'),
(219, 0, 31, 80, 5, '2020-06-27 16:55:37'),
(220, 0, 32, 78, 5, '2020-06-27 16:56:38'),
(221, 0, 32, 79, 5, '2020-06-27 16:56:38'),
(222, 0, 32, 80, 5, '2020-06-27 16:56:38'),
(223, 0, 33, 78, 5, '2020-06-27 16:57:13'),
(224, 0, 33, 79, 5, '2020-06-27 16:57:13'),
(225, 0, 33, 80, 5, '2020-06-27 16:57:13'),
(226, 0, 34, 79, 5, '2020-06-27 16:57:52'),
(227, 0, 34, 80, 5, '2020-06-27 16:57:52'),
(228, 0, 34, 81, 5, '2020-06-27 16:57:52'),
(229, 0, 35, 54, 5, '2020-06-27 16:58:56'),
(230, 0, 35, 65, 5, '2020-06-27 16:58:56'),
(231, 0, 35, 78, 5, '2020-06-27 16:58:56'),
(232, 0, 36, 55, 5, '2020-06-27 17:05:39'),
(233, 0, 36, 66, 5, '2020-06-27 17:05:39'),
(234, 0, 36, 79, 5, '2020-06-27 17:05:39'),
(235, 0, 37, 78, 5, '2020-06-27 17:07:16'),
(236, 0, 37, 79, 5, '2020-06-27 17:07:16'),
(237, 0, 37, 80, 5, '2020-06-27 17:07:16'),
(238, 0, 38, 78, 5, '2020-06-27 17:08:43'),
(239, 0, 38, 79, 5, '2020-06-27 17:08:43'),
(240, 0, 38, 81, 5, '2020-06-27 17:08:43'),
(241, 0, 39, 52, 5, '2020-06-27 17:08:57'),
(242, 0, 39, 61, 5, '2020-06-27 17:08:57'),
(243, 0, 39, 60, 5, '2020-06-27 17:08:57'),
(244, 0, 39, 59, 5, '2020-06-27 17:08:57'),
(245, 0, 40, 66, 5, '2020-06-27 17:44:54'),
(246, 0, 40, 73, 5, '2020-06-27 17:44:54'),
(247, 0, 40, 77, 5, '2020-06-27 17:44:54'),
(248, 0, 41, 78, 5, '2020-06-27 17:49:16'),
(249, 0, 41, 79, 5, '2020-06-27 17:49:16'),
(250, 0, 41, 80, 5, '2020-06-27 17:49:16'),
(251, 0, 41, 81, 5, '2020-06-27 17:49:16'),
(252, 0, 42, 56, 5, '2020-06-27 17:49:31'),
(253, 0, 42, 55, 5, '2020-06-27 17:49:31'),
(254, 0, 42, 54, 5, '2020-06-27 17:49:31'),
(255, 0, 42, 53, 5, '2020-06-27 17:49:31'),
(256, 0, 43, 78, 5, '2020-06-28 02:57:05'),
(257, 0, 43, 79, 5, '2020-06-28 02:57:05'),
(258, 0, 43, 81, 5, '2020-06-28 02:57:05'),
(259, 0, 44, 77, 5, '2020-06-28 02:58:24'),
(260, 0, 44, 81, 5, '2020-06-28 02:58:24'),
(261, 0, 45, 60, 5, '2020-06-28 03:15:30'),
(262, 0, 45, 59, 5, '2020-06-28 03:15:30'),
(263, 0, 45, 57, 5, '2020-06-28 03:15:30'),
(264, 0, 46, 52, 5, '2020-06-28 03:15:52'),
(265, 0, 46, 56, 5, '2020-06-28 03:15:52'),
(266, 0, 46, 55, 5, '2020-06-28 03:15:52'),
(267, 0, 46, 54, 5, '2020-06-28 03:15:52'),
(268, 0, 46, 53, 5, '2020-06-28 03:15:52'),
(269, 0, 47, 78, 5, '2020-06-28 03:19:11'),
(270, 0, 47, 79, 5, '2020-06-28 03:19:11'),
(271, 0, 47, 81, 5, '2020-06-28 03:19:11'),
(272, 0, 48, 52, 5, '2020-06-28 05:25:41'),
(273, 0, 48, 61, 5, '2020-06-28 05:25:41'),
(274, 0, 48, 60, 5, '2020-06-28 05:25:41'),
(275, 0, 48, 59, 5, '2020-06-28 05:25:41'),
(276, 0, 48, 54, 5, '2020-06-28 05:25:41'),
(277, 0, 48, 53, 5, '2020-06-28 05:25:41'),
(278, 0, 48, 74, 5, '2020-06-28 05:25:41'),
(279, 0, 48, 76, 5, '2020-06-28 05:25:41'),
(280, 0, 48, 77, 5, '2020-06-28 05:25:41'),
(281, 0, 49, 52, 5, '2020-06-28 05:49:06'),
(282, 0, 49, 61, 5, '2020-06-28 05:49:06'),
(283, 0, 49, 60, 5, '2020-06-28 05:49:06'),
(284, 0, 49, 59, 5, '2020-06-28 05:49:06'),
(285, 0, 49, 54, 5, '2020-06-28 05:49:06'),
(286, 0, 49, 53, 5, '2020-06-28 05:49:06'),
(287, 0, 49, 74, 5, '2020-06-28 05:49:06'),
(288, 0, 49, 76, 5, '2020-06-28 05:49:06'),
(289, 0, 49, 77, 5, '2020-06-28 05:49:06'),
(290, 0, 50, 75, 5, '2020-06-28 10:21:09'),
(291, 0, 50, 78, 5, '2020-06-28 10:21:09'),
(292, 0, 50, 81, 5, '2020-06-28 10:21:09'),
(293, 0, 51, 60, 5, '2020-06-28 10:21:24'),
(294, 0, 51, 58, 5, '2020-06-28 10:21:24'),
(295, 0, 51, 56, 5, '2020-06-28 10:21:24'),
(296, 0, 52, 52, 5, '2020-06-28 12:28:45'),
(297, 0, 52, 60, 5, '2020-06-28 12:28:45'),
(298, 0, 52, 58, 5, '2020-06-28 12:28:45'),
(299, 0, 52, 56, 5, '2020-06-28 12:28:45'),
(300, 0, 52, 55, 5, '2020-06-28 12:28:45'),
(301, 0, 53, 52, 5, '2020-06-29 00:57:41'),
(302, 0, 53, 61, 5, '2020-06-29 00:57:41'),
(303, 0, 53, 60, 5, '2020-06-29 00:57:41'),
(304, 0, 53, 77, 5, '2020-06-29 00:57:41'),
(305, 0, 54, 79, 5, '2020-06-29 01:00:23'),
(306, 0, 54, 80, 5, '2020-06-29 01:00:23'),
(307, 0, 54, 81, 5, '2020-06-29 01:00:23'),
(308, 0, 55, 75, 5, '2020-06-29 01:00:36'),
(309, 0, 55, 76, 5, '2020-06-29 01:00:36'),
(310, 0, 55, 79, 5, '2020-06-29 01:00:36'),
(311, 0, 56, 76, 5, '2020-07-01 00:50:24'),
(312, 0, 56, 77, 5, '2020-07-01 00:50:24'),
(313, 0, 56, 78, 5, '2020-07-01 00:50:24'),
(314, 0, 56, 79, 5, '2020-07-01 00:50:24'),
(315, 0, 57, 52, 5, '2020-07-18 00:12:44'),
(316, 0, 57, 73, 5, '2020-07-18 00:12:44'),
(317, 0, 57, 77, 5, '2020-07-18 00:12:44'),
(318, 0, 58, 52, 5, '2020-07-27 04:38:28'),
(319, 0, 58, 57, 5, '2020-07-27 04:38:28'),
(320, 0, 58, 56, 5, '2020-07-27 04:38:28'),
(321, 0, 58, 55, 5, '2020-07-27 04:38:28'),
(322, 0, 58, 54, 5, '2020-07-27 04:38:28'),
(323, 0, 58, 53, 5, '2020-07-27 04:38:28'),
(324, 0, 59, 52, 5, '2020-07-27 04:39:04'),
(325, 0, 59, 59, 5, '2020-07-27 04:39:04'),
(326, 0, 59, 58, 5, '2020-07-27 04:39:04'),
(327, 0, 59, 53, 5, '2020-07-27 04:39:04'),
(328, 0, 60, 52, 5, '2020-07-30 00:25:42'),
(329, 0, 60, 60, 5, '2020-07-30 00:25:42'),
(330, 0, 60, 58, 5, '2020-07-30 00:25:42'),
(331, 0, 60, 55, 5, '2020-07-30 00:25:42'),
(332, 0, 60, 54, 5, '2020-07-30 00:25:42'),
(333, 0, 60, 53, 5, '2020-07-30 00:25:42'),
(334, 0, 60, 62, 5, '2020-07-30 00:25:42'),
(335, 0, 60, 63, 5, '2020-07-30 00:25:42'),
(336, 0, 60, 65, 5, '2020-07-30 00:25:42'),
(337, 0, 61, 52, 5, '2020-07-30 00:26:36'),
(338, 0, 61, 61, 5, '2020-07-30 00:26:36'),
(339, 0, 61, 60, 5, '2020-07-30 00:26:36'),
(340, 0, 61, 59, 5, '2020-07-30 00:26:36'),
(341, 0, 61, 58, 5, '2020-07-30 00:26:36'),
(342, 0, 61, 57, 5, '2020-07-30 00:26:36'),
(343, 0, 61, 56, 5, '2020-07-30 00:26:36'),
(344, 0, 61, 55, 5, '2020-07-30 00:26:36'),
(345, 0, 61, 54, 5, '2020-07-30 00:26:36'),
(346, 0, 61, 53, 5, '2020-07-30 00:26:36'),
(347, 0, 61, 62, 5, '2020-07-30 00:26:36'),
(348, 0, 61, 63, 5, '2020-07-30 00:26:36'),
(349, 0, 61, 64, 5, '2020-07-30 00:26:36'),
(350, 0, 61, 65, 5, '2020-07-30 00:26:36'),
(351, 0, 61, 66, 5, '2020-07-30 00:26:36'),
(352, 0, 61, 67, 5, '2020-07-30 00:26:36'),
(353, 0, 61, 68, 5, '2020-07-30 00:26:36'),
(354, 0, 61, 69, 5, '2020-07-30 00:26:36'),
(355, 0, 61, 70, 5, '2020-07-30 00:26:36'),
(356, 0, 61, 71, 5, '2020-07-30 00:26:36'),
(357, 0, 61, 72, 5, '2020-07-30 00:26:36'),
(358, 0, 61, 73, 5, '2020-07-30 00:26:36'),
(359, 0, 61, 74, 5, '2020-07-30 00:26:36'),
(360, 0, 61, 75, 5, '2020-07-30 00:26:36'),
(361, 0, 62, 68, 5, '2020-07-30 00:27:08'),
(362, 0, 62, 72, 5, '2020-07-30 00:27:08'),
(363, 0, 62, 73, 5, '2020-07-30 00:27:08'),
(364, 0, 62, 75, 5, '2020-07-30 00:27:08'),
(365, 0, 62, 76, 5, '2020-07-30 00:27:08'),
(366, 0, 63, 53, 5, '2020-07-30 00:29:02'),
(367, 0, 63, 77, 5, '2020-07-30 00:29:02'),
(368, 0, 63, 79, 5, '2020-07-30 00:29:02'),
(369, 0, 64, 60, 5, '2020-08-01 04:56:51'),
(370, 0, 64, 53, 5, '2020-08-01 04:56:51'),
(371, 0, 64, 62, 5, '2020-08-01 04:56:51'),
(372, 0, 64, 70, 5, '2020-08-01 04:56:51'),
(373, 0, 64, 77, 5, '2020-08-01 04:56:51'),
(374, 0, 65, 52, 5, '2020-08-01 04:58:36'),
(375, 0, 65, 61, 5, '2020-08-01 04:58:36'),
(376, 0, 66, 60, 5, '2020-08-01 06:28:25'),
(377, 0, 66, 59, 5, '2020-08-01 06:28:25'),
(378, 0, 66, 58, 5, '2020-08-01 06:28:25'),
(379, 0, 66, 57, 5, '2020-08-01 06:28:25'),
(380, 0, 66, 72, 5, '2020-08-01 06:28:25'),
(381, 0, 66, 74, 5, '2020-08-01 06:28:25'),
(382, 0, 67, 60, 5, '2020-08-01 06:30:59'),
(383, 0, 67, 59, 5, '2020-08-01 06:30:59'),
(384, 0, 67, 58, 5, '2020-08-01 06:30:59'),
(385, 0, 67, 57, 5, '2020-08-01 06:30:59'),
(386, 0, 67, 72, 5, '2020-08-01 06:30:59'),
(387, 0, 67, 74, 5, '2020-08-01 06:30:59'),
(388, 0, 68, 52, 5, '2020-08-01 06:31:09'),
(389, 0, 68, 61, 5, '2020-08-01 06:31:09'),
(390, 0, 68, 60, 5, '2020-08-01 06:31:09'),
(391, 0, 68, 59, 5, '2020-08-01 06:31:09'),
(392, 0, 68, 58, 5, '2020-08-01 06:31:09'),
(393, 0, 68, 57, 5, '2020-08-01 06:31:09'),
(394, 0, 68, 55, 5, '2020-08-01 06:31:09'),
(395, 0, 69, 53, 5, '2020-08-01 07:36:20'),
(396, 0, 69, 62, 5, '2020-08-01 07:36:20'),
(397, 0, 70, 52, 5, '2020-08-01 07:36:28'),
(398, 0, 70, 61, 5, '2020-08-01 07:36:28'),
(399, 0, 71, 52, 5, '2020-08-01 07:36:57'),
(400, 0, 71, 61, 5, '2020-08-01 07:36:57'),
(401, 0, 71, 60, 5, '2020-08-01 07:36:57'),
(402, 0, 71, 59, 5, '2020-08-01 07:36:57'),
(403, 0, 72, 52, 5, '2020-08-01 07:38:23'),
(404, 0, 72, 61, 5, '2020-08-01 07:38:23'),
(405, 0, 72, 59, 5, '2020-08-01 07:38:23'),
(406, 0, 72, 58, 5, '2020-08-01 07:38:23'),
(407, 0, 73, 80, 5, '2020-08-01 07:38:33'),
(408, 0, 73, 81, 5, '2020-08-01 07:38:33'),
(409, 0, 74, 77, 5, '2020-08-01 07:38:45'),
(410, 0, 74, 78, 5, '2020-08-01 07:38:45'),
(411, 0, 75, 54, 5, '2020-08-01 07:38:51'),
(412, 0, 75, 53, 5, '2020-08-01 07:38:51'),
(413, 0, 76, 52, 5, '2020-08-01 10:24:24'),
(414, 0, 76, 61, 5, '2020-08-01 10:24:24'),
(415, 0, 77, 52, 5, '2020-08-01 10:25:50'),
(416, 0, 77, 61, 5, '2020-08-01 10:25:50'),
(417, 0, 77, 60, 5, '2020-08-01 10:25:50'),
(418, 0, 77, 59, 5, '2020-08-01 10:25:50'),
(419, 0, 77, 58, 5, '2020-08-01 10:25:50'),
(420, 0, 77, 57, 5, '2020-08-01 10:25:50'),
(421, 0, 77, 56, 5, '2020-08-01 10:25:50'),
(422, 0, 77, 55, 5, '2020-08-01 10:25:50'),
(423, 0, 77, 54, 5, '2020-08-01 10:25:50'),
(424, 0, 77, 53, 5, '2020-08-01 10:25:50'),
(425, 0, 77, 62, 5, '2020-08-01 10:25:50'),
(426, 0, 77, 63, 5, '2020-08-01 10:25:50'),
(427, 0, 77, 64, 5, '2020-08-01 10:25:50'),
(428, 0, 77, 65, 5, '2020-08-01 10:25:50'),
(429, 0, 77, 66, 5, '2020-08-01 10:25:50'),
(430, 0, 77, 67, 5, '2020-08-01 10:25:50'),
(431, 0, 77, 68, 5, '2020-08-01 10:25:50'),
(432, 0, 77, 69, 5, '2020-08-01 10:25:50'),
(433, 0, 77, 70, 5, '2020-08-01 10:25:50'),
(434, 0, 77, 71, 5, '2020-08-01 10:25:50'),
(435, 0, 77, 72, 5, '2020-08-01 10:25:50'),
(436, 0, 77, 73, 5, '2020-08-01 10:25:50'),
(437, 0, 77, 74, 5, '2020-08-01 10:25:50'),
(438, 0, 77, 75, 5, '2020-08-01 10:25:50'),
(439, 0, 77, 76, 5, '2020-08-01 10:25:50'),
(440, 0, 77, 77, 5, '2020-08-01 10:25:50'),
(441, 0, 78, 59, 5, '2020-08-03 23:51:24'),
(442, 0, 78, 57, 5, '2020-08-03 23:51:24'),
(443, 0, 78, 78, 5, '2020-08-03 23:51:24'),
(444, 0, 79, 52, 5, '2020-08-10 12:35:33'),
(445, 0, 79, 61, 5, '2020-08-10 12:35:33'),
(446, 0, 79, 60, 5, '2020-08-10 12:35:33'),
(447, 0, 79, 59, 5, '2020-08-10 12:35:33'),
(448, 12, 80, 52, 5, '2020-08-10 12:52:57'),
(449, 12, 80, 61, 5, '2020-08-10 12:52:57'),
(450, 12, 80, 60, 5, '2020-08-10 12:52:57'),
(451, 0, 81, 52, 5, '2020-08-10 12:56:14'),
(452, 0, 81, 57, 5, '2020-08-10 12:56:14'),
(453, 0, 81, 54, 5, '2020-08-10 12:56:14'),
(454, 0, 81, 53, 5, '2020-08-10 12:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(10) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `tgl` date NOT NULL,
  `ket` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `judul`, `isi`, `tgl`, `ket`) VALUES
(21, 'Pemberian pakan yang mengandung unsur mineral', 'Mineral berguna untuk pembentukan darah dan tulang, penyeimbangan cairan tubuh,  memfungsikan saraf, memfungsikan sistem pembuluh darah jantung, dan lain-lain. Contoh mineral yang diperlukan burung lovebird diantaranya kalsium, fosfor, zat besi, mangan, yodium, cuprum, zink, magnesium, sodium, klorin dan kalium. ', '2020-07-27', 'Show'),
(20, 'Pemberian pakan yang mengandung unsur vitamin dan asam amino', 'Unsur vitamin dan asam amino dalam pemberian pakan burung berfungsi untuk membantu pembentukan dan pemeliharaan sel-sel jaringan epitel, memperlancar metabolisme, membentuk jaringan pengikat, membantu pembentukan tulang dan membantu proses pembentukan darah.', '2020-07-27', 'Show'),
(19, 'Pemberian pakan yang mengandung unsur lemak', 'Lemak berfungsi sebagai sumber energi, apabila burung terlalu banyak mengonsumsi lemak maka burung berpeluang untuk mencret atau gemuk. Padahal burung yang gemuk cenderung malas berkicau dan berbiak.', '2020-07-27', 'Show'),
(15, 'Pemberian pakan yang mengandung unsur karbohidrat', 'Karbohidrat merupakan unsur di dalam pakan yang berfungsi sebagai sumber energi.  pembakaran lemak, memperkecil oksidasi protein menjadi energi, dan memelihara fungsi normal alat-alat pencernaan. Kadar karbohidrat dalam tubuh burung adalah 2%, sementara pakan burung yang baik adalah yang mengandung 70% karbohidrat, yaitu terdapat pada kacang tanah, kacang hijau, kacang kedelai dan pisang. ', '2020-07-27', 'Show'),
(18, 'Pemberian pakan yang mengandung unsur protein', 'Protein merupakan zat pembangun tubuh, pengganti jaringan tubuh yang rusak, mengatur peredaran cairan tubuh dan zat yang larut didalamnya. Kekurangan protein pada burung menyebabkan burung menjadi kurus, bulu rusak, kerdil, murung, enggan berkicau dan sering berprilaku mencabuti bulunya sendiri. Burung berkicau membutuhkan 35% protein dari berat badannya. Protein ini dapat diperoleh dari ikan, susu, cacing, kacang tanah, kacang panjang, kacang hijau dan kacang kedelai.', '2020-07-27', 'Show'),
(22, 'Waktu pemberian pakan', 'Pemberian pakan dilakukan dengan frekuensi 2x sehari yaitu pagi dan siang hari. Pada pagi hari, biasanya jumlahnya lebih banyak daripada pakan yang diberikan di siang hari karena pagi hari burung lebih aktif makan. Setiap hari pakan harus diganti dengan yang baru, terutama bila pakan berupa buah-buahan dan sayur-sayuran mudah basi dan pakan yang basi dapat menyebabkan burung menjadi sakit.', '2020-07-27', 'Show'),
(23, 'Penjemuran', 'Penjemuran sebaiknya dilakukan sepagi mungkin, bahkan bisa dilakukan sebelum waktu fajar sehingga sekaligus untuk pengembunan agar burung bisa mendapatkan kesegaran udara di pagi hari. Jangan jemur sampai terlalu siang, sebaiknya tidak melewati pukul 09.00, karena selepas waktu itu sinar ultraviolet bisa membuat bulu burung rusak dan burung merasa kepanasan. Jangan menjemur dengan sangkar berkerodong karena bisa menyebabkan burung mendapat panas yang berlebihan karena sirkulasi udara tidak lancar secara normal.\r\n\r\n', '2020-07-27', 'Show'),
(24, 'Perawatan burung pada masa mabung (rontok bulu)', 'Burung yang mengalami masa mabung memerlukan energi besar untuk memproduksi bulu baru. Keperluan energi yang diperlukan untuk memenuhi kebutuhan protein menyebabkan burung harus mengonsumsi lebih banyak makanan untuk dapat mempertahankan pertumbuhan bulu baru. ', '2020-07-27', 'Show'),
(25, 'Penanganan burung lovebird yang overbirahi', 'Frekuensi mandi dibuat lebih sering misalnya pagi, siang dan sore. Lama penjemuran dikurangi hanya menjadi 15 menit/hari. Waktu pengumbaran dibuat lebih sering dan lebih lama.', '2020-07-27', 'Show'),
(26, 'Pembersihan Sangkar burung', 'Bersihkan sangkar  burung setiap hari dan ukuran sangkar juga sangat penting untuk lovebird agar bisa meregangkan dan mengepakkan sayapnya. Kandang yang cocok untuk lovebird berbentuk horizontal. Lovebird memerlukan waktu minimal 10 jam untuk tidur, jadi tempatkan sangkar burung di dekat jendela jika memungkinkan dan apabila sudah senja sebaiknya sangkar lovebird di kerodong burung agar tidak terganggu.', '2020-07-27', 'Show');

-- --------------------------------------------------------

--
-- Table structure for table `keterangan`
--

CREATE TABLE `keterangan` (
  `id_keterangan` int(10) NOT NULL,
  `id_konsultasi` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nilai` double NOT NULL,
  `kode_penyakit` varchar(3) NOT NULL,
  `tgl_konsultasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keterangan`
--

INSERT INTO `keterangan` (`id_keterangan`, `id_konsultasi`, `nama`, `nilai`, `kode_penyakit`, `tgl_konsultasi`) VALUES
(17, 1, 'yaya', 0.19047619047619, 'P03', '2015-12-28 07:31:11'),
(37, 2, '', 0, '', '2020-06-27 12:20:23'),
(38, 3, '', 0, '', '2020-06-27 12:21:08'),
(41, 4, '', 0, '', '2020-06-27 12:25:01'),
(42, 5, '', 0, 'P1', '2020-06-27 12:26:35'),
(43, 6, '', 0, 'P1', '2020-06-27 12:28:03'),
(44, 7, '', 0, 'P1', '2020-06-27 12:30:51'),
(45, 8, '', 0, 'P1', '2020-06-27 12:31:01'),
(46, 9, '', 0, 'P1', '2020-06-27 12:33:09'),
(47, 10, '', 0, 'P1', '2020-06-27 12:33:22'),
(48, 11, '', 0, 'P1', '2020-06-27 12:34:53'),
(49, 12, '', 0, 'P1', '2020-06-27 12:39:36'),
(50, 13, '', 0, 'P1', '2020-06-27 12:40:25'),
(57, 14, '', 0, 'P01', '2020-06-27 12:50:01'),
(58, 15, '', 0, 'P01', '2020-06-27 12:50:30'),
(62, 16, '', 0, 'P01', '2020-06-27 13:00:19'),
(66, 17, '', 0.75, 'P02', '2020-06-27 13:12:28'),
(67, 18, '', 0, 'P01', '2020-06-27 13:25:26'),
(68, 19, '', 1.5384615384615, 'P05', '2020-06-27 13:26:35'),
(70, 20, '', 0.38461538461538, 'P05', '2020-06-27 13:30:36'),
(71, 21, '', 0.38461538461538, 'P05', '2020-06-27 13:31:40'),
(77, 22, '', 0, 'P01', '2020-06-27 13:54:02'),
(81, 23, '', 0.83333333333333, 'P09', '2020-06-27 16:09:50'),
(82, 24, '', 0.41666666666667, 'P09', '2020-06-27 16:39:12'),
(88, 25, '', 0.625, 'P09', '2020-06-27 16:43:38'),
(100, 26, '', 0.625, 'P09', '2020-06-27 16:49:48'),
(101, 27, '', 0.625, 'P09', '2020-06-27 16:50:32'),
(108, 28, '', 0.41666666666667, 'P09', '2020-06-27 16:51:36'),
(114, 29, '', 0.625, 'P09', '2020-06-27 16:52:57'),
(125, 30, '', 0.625, 'P09', '2020-06-27 16:54:45'),
(128, 31, '', 0.625, 'P09', '2020-06-27 16:55:45'),
(129, 32, '', 0.625, 'P09', '2020-06-27 16:56:40'),
(130, 33, '', 0.625, 'P09', '2020-06-27 16:57:13'),
(134, 34, '', 0.625, 'P09', '2020-06-27 16:57:53'),
(136, 35, '', 0.33333333333333, 'P07', '2020-06-27 16:58:56'),
(155, 36, '', 0.29411764705882, 'P04', '2020-06-27 17:05:39'),
(157, 37, '', 0.625, 'P09', '2020-06-27 17:07:16'),
(161, 38, '', 0.625, 'P09', '2020-06-27 17:08:43'),
(162, 39, '', 0.71428571428571, 'P03', '2020-06-27 17:08:58'),
(163, 40, '', 0.41666666666667, 'P08', '2020-06-27 17:44:55'),
(164, 41, '', 0.83333333333333, 'P09', '2020-06-27 17:49:16'),
(165, 42, '', 0.68965517241379, 'P01', '2020-06-27 17:49:31'),
(166, 43, '', 0.625, 'P09', '2020-06-28 02:57:05'),
(168, 44, '', 0.20833333333333, 'P08', '2020-06-28 02:58:24'),
(170, 45, '', 0.25, 'P02', '2020-06-28 03:15:30'),
(171, 46, '', 0.86206896551724, 'P01', '2020-06-28 03:15:52'),
(173, 47, '', 0.625, 'P09', '2020-06-28 03:19:12'),
(174, 48, '', 1.3333333333333, 'P07', '2020-06-28 05:25:41'),
(175, 49, '', 1.3333333333333, 'P07', '2020-06-28 05:49:11'),
(177, 50, '', 0.41666666666667, 'P09', '2020-06-28 10:21:10'),
(178, 51, '', 0.33333333333333, 'P07', '2020-06-28 10:21:24'),
(180, 52, '', 0.51724137931034, 'P01', '2020-06-28 12:28:45'),
(181, 53, '', 0.71428571428571, 'P03', '2020-06-29 00:57:42'),
(183, 54, '', 0.625, 'P09', '2020-06-29 01:00:23'),
(185, 55, '', 0.66666666666667, 'P07', '2020-06-29 01:00:36'),
(187, 56, '', 0.41666666666667, 'P09', '2020-07-01 00:50:24'),
(188, 57, '', 0.41666666666667, 'P08', '2020-07-18 00:12:45'),
(190, 58, '', 1.0344827586207, 'P01', '2020-07-27 04:38:28'),
(191, 59, '', 1, 'P02', '2020-07-27 04:39:04'),
(193, 60, '', 1, 'P07', '2020-07-30 00:25:43'),
(194, 61, '', 2, 'P07', '2020-07-30 00:26:36'),
(195, 62, '', 1, 'P07', '2020-07-30 00:27:08'),
(200, 63, '', 0.41666666666667, 'P08', '2020-07-30 00:29:02'),
(202, 64, '', 0.76923076923077, 'P05', '2020-08-01 04:56:52'),
(203, 65, '', 0.47619047619048, 'P03', '2020-08-01 04:58:36'),
(205, 66, '', 0.66666666666667, 'P07', '2020-08-01 06:28:25'),
(206, 67, '', 0.66666666666667, 'P07', '2020-08-01 06:30:59'),
(207, 68, '', 0.75, 'P02', '2020-08-01 06:31:09'),
(208, 69, '', 0.38461538461538, 'P05', '2020-08-01 07:36:20'),
(209, 70, '', 0.47619047619048, 'P03', '2020-08-01 07:36:29'),
(210, 71, '', 0.71428571428571, 'P03', '2020-08-01 07:36:57'),
(211, 72, '', 0.75, 'P02', '2020-08-01 07:38:23'),
(212, 73, '', 0.41666666666667, 'P09', '2020-08-01 07:38:33'),
(213, 74, '', 0.20833333333333, 'P08', '2020-08-01 07:38:45'),
(214, 75, '', 0.66666666666667, 'P07', '2020-08-01 07:38:52'),
(215, 76, '', 0.47619047619048, 'P03', '2020-08-01 10:24:24'),
(216, 77, '', 2.3333333333333, 'P07', '2020-08-01 10:25:50'),
(217, 78, '', 0.25, 'P02', '2020-08-03 23:51:24'),
(218, 79, '', 0.71428571428571, 'P03', '2020-08-10 12:35:33'),
(220, 80, 'Rizki Danang  Kartiko Kuncoro', 0.71428571428571, 'P03', '2020-08-10 12:52:57'),
(222, 81, '', 0.68965517241379, 'P01', '2020-08-10 12:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` varchar(10) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `ket` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `ket`, `solusi`) VALUES
('P04', 'Pox (Cacar)', 'Cacar (Pox) merupakan penyakit cacar pada burung yang cepat menular yang disebabkan oleh virus.', 'Taruh kandang ditempat yang hangat, bebas dari serangan angina kencang atau udara dingin. Berikan obat antibiotic seperti Tetracycline atau Ampicilin per oral dengan dosis 50-125 mg per hari kemudian berikan vitamin A dosis tinggi.'),
('P03', 'Aspergillosis', 'Aspergillosis merupakan penyakit saluran pernapasan yang paling fatal. Penyakit ini merupakan penyakit infeksi jamur yang sering terjadi pada burung yang menyebabkan terjadinya gangguan pernapasan berupa sesak nafas.', 'Hindari sayuran atau buah â€“ buahan yang kotor dan mengandung residu pestisida karena dapat menyebabkan keracunan bagi burung. Burung yang sudah terserang penyakit mencret harus segera dikarantina agar tidak menular pada burung â€“ burung yang lain.'),
('P02', 'Infeksi bakteri dan jamur', 'Infeksi bateri dan jamur adalah penyaki yang meimiliki gejala: Nafsu makan menurun, terlihat lesu, kurang bergairah, kotoran lunak sampai encer, tampak stress.', 'Tempatkan burung ditempat yang sejuk, tenang, dan berudara bersih. Berikan vitamin C dosis tinggi untuk mempercepat penyembuhan.'),
('P01', 'SNOT (Coryza)', 'SNOT (Coryza) merupakan penyakit yang disebabkan oleh virus Hemophillus galinarum yang menyerang sekitar bagian muka burung sehingga menyebabkan bengkak dan muncul benjolan berwarna merah disekitar hidung, mata dan telinga.', 'Jauhkan burung yang terserang penyakit dari kelompok burung lain agar tidak menular. Disamping itu, sangkar tempat makan dan minuman harus selalu dibersihkan dan segala kotoran.'),
('P05', 'Mite', 'Mite adalah penyakit burung', 'Kebersihan Sangkar, tempat makan dan minum harus selalu dibersihkan dan segala kotoran. Jauhkan burung yang terserang penyakit dari kelompok burung lain agar tidak menular.'),
('P06', 'Berak Kapur (Pullorum)', 'Berak Kapur adalah penyakit dengan gejala:Nafsu makan menurun, kotoran berbentuk cair, bulu berantakan, tidak bergairah, sayap menggantung, muka pucat, kotoran berwarna putih seperti kapur.', 'Menjaga kebersihan sangkar, makanan dan minuman. Gunakan desinfektan atau bioseptik untuk mencuci sangkar. Berikan obat antibiotic secara intensif sesuai dengan petunjuk yang ada.'),
('P07', 'Newcastle Disease (Tetelo)', 'Merupakan penyakit yang disebabkan oleh bakteri atau jamur.', 'Jika penyakit disebabkan oleh bakteri maka diberikan Antibiotik, sedangkan jika penyakit disebabkan oleh jamur maka diberikan Antifungal.'),
('P08', 'Gumboro', 'Gumboro adalah penyakit gangguan pernafasan', 'Segera diisolasi burung yang terkena penyakit dan diobati agar tidak menular kepada burung yang lain. Sangkar, tempat minum dan makan selalu dikontrol dan semua kotoran yang terdapat di dalam sangkar atau wadah makanan / minuman dibersihkan. Makanan yang akan diberikan dicuci bersih dan dikeringkan untuk menghilangkan adanya residu pestisida pertanian. Minuman yang kotor segera diganti dengan air bersih.'),
('P09', 'Bubul', 'Bubul adalah penyakit dengan gejala: Kaki membengkak, kuku memanjang, sisik kaki melebar atau merenggang.', 'Menjaga kebersihan sangkar dan tempat betengger burung.');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit_gejala`
--

CREATE TABLE `penyakit_gejala` (
  `id_pg` int(3) NOT NULL,
  `kode_penyakit` varchar(10) NOT NULL,
  `id_gejala` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit_gejala`
--

INSERT INTO `penyakit_gejala` (`id_pg`, `kode_penyakit`, `id_gejala`) VALUES
(192, 'P03', 63),
(191, 'P03', 62),
(190, 'P03', 60),
(189, 'P03', 61),
(188, 'P03', 52),
(186, 'P02', 58),
(185, 'P02', 59),
(184, 'P02', 52),
(183, 'P01', 53),
(182, 'P01', 54),
(181, 'P01', 55),
(180, 'P01', 56),
(179, 'P01', 57),
(178, 'P01', 52),
(216, 'P08', 53),
(215, 'P08', 57),
(214, 'P07', 76),
(213, 'P07', 75),
(212, 'P07', 74),
(187, 'P02', 53),
(195, 'P04', 65),
(194, 'P04', 64),
(193, 'P04', 52),
(199, 'P05', 53),
(198, 'P04', 68),
(197, 'P04', 67),
(196, 'P04', 66),
(205, 'P06', 54),
(204, 'P06', 57),
(203, 'P06', 52),
(202, 'P05', 71),
(201, 'P05', 70),
(200, 'P05', 69),
(208, 'P07', 58),
(207, 'P06', 72),
(206, 'P06', 53),
(211, 'P07', 73),
(210, 'P07', 53),
(209, 'P07', 54),
(217, 'P08', 73),
(218, 'P08', 77),
(219, 'P09', 78),
(220, 'P09', 79),
(221, 'P09', 80),
(222, 'P09', 81);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `tgl_konsultasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `jk`, `alamat`, `nohp`, `tgl_konsultasi`) VALUES
(1, 'sdsd', '21', '', '', '2015-12-11 11:07:57'),
(12, 'Rizki Danang  Kartiko Kuncoro', 'Laki-Laki', 'Semarang', '081232464069', '2020-08-10 12:52:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`),
  ADD UNIQUE KEY `kode_gejala` (`kode_gejala`);

--
-- Indexes for table `hasil_konsultasi`
--
ALTER TABLE `hasil_konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `keterangan`
--
ALTER TABLE `keterangan`
  ADD PRIMARY KEY (`id_keterangan`),
  ADD UNIQUE KEY `id_konsultasi` (`id_konsultasi`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `penyakit_gejala`
--
ALTER TABLE `penyakit_gejala`
  ADD PRIMARY KEY (`id_pg`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `hasil_konsultasi`
--
ALTER TABLE `hasil_konsultasi`
  MODIFY `id_konsultasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `keterangan`
--
ALTER TABLE `keterangan`
  MODIFY `id_keterangan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `penyakit_gejala`
--
ALTER TABLE `penyakit_gejala`
  MODIFY `id_pg` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
