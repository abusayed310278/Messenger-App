-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2024 at 08:55 PM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `favorite_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `favorite_id`, `created_at`, `updated_at`) VALUES
(2, 30, 29, '2024-10-31 13:34:56', '2024-10-31 13:34:56'),
(3, 30, 31, '2024-10-31 13:35:05', '2024-10-31 13:35:05'),
(4, 30, 11, '2024-10-31 13:52:00', '2024-10-31 13:52:00'),
(5, 30, 3, '2024-10-31 13:52:07', '2024-10-31 13:52:07'),
(6, 30, 1, '2024-10-31 13:52:54', '2024-10-31 13:52:54'),
(7, 29, 28, '2024-11-01 10:10:41', '2024-11-01 10:10:41'),
(8, 29, 1, '2024-11-01 10:10:44', '2024-11-01 10:10:44'),
(9, 29, 30, '2024-11-01 10:10:54', '2024-11-01 10:10:54'),
(10, 32, 30, '2024-11-01 12:50:40', '2024-11-01 12:50:40'),
(11, 32, 1, '2024-11-01 13:00:21', '2024-11-01 13:00:21'),
(12, 33, 13, '2024-11-01 13:17:32', '2024-11-01 13:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `body` text DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attachment`)),
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
(1, 26, 1, 'hello', NULL, 0, '2024-10-29 15:51:08', '2024-10-29 15:51:08'),
(2, 26, 2, 'hello', NULL, 0, '2024-10-29 15:52:08', '2024-10-29 15:52:08'),
(3, 27, 5, 'hey james how are you', NULL, 0, '2024-10-29 22:51:43', '2024-10-29 22:51:43'),
(4, 27, 3, 'james hey', NULL, 0, '2024-10-29 22:58:38', '2024-10-29 22:58:38'),
(5, 27, 1, 'hello woo', NULL, 0, '2024-10-29 23:04:13', '2024-10-29 23:04:13'),
(6, 27, 1, 'james', NULL, 0, '2024-10-29 23:04:27', '2024-10-29 23:04:27'),
(7, 27, 1, 'hey', NULL, 0, '2024-10-29 23:05:29', '2024-10-29 23:05:29'),
(8, 27, 10, 'hey', NULL, 0, '2024-10-29 23:10:02', '2024-10-29 23:10:02'),
(9, 27, 7, 'hei', NULL, 0, '2024-10-29 23:10:45', '2024-10-29 23:10:45'),
(10, 27, 1, 'jey', NULL, 0, '2024-10-29 23:39:02', '2024-10-29 23:39:02'),
(11, 27, 10, 'kkk', NULL, 0, '2024-10-29 23:39:33', '2024-10-29 23:39:33'),
(12, 28, 1, 'hh', '\"\\/uploads\\/media_672216cceb7e0.jpeg\"', 0, '2024-10-30 05:21:48', '2024-10-30 05:21:48'),
(13, 28, 3, 'dd', '\"\\/uploads\\/media_67221d266c624.jpeg\"', 0, '2024-10-30 05:48:54', '2024-10-30 05:48:54'),
(14, 28, 1, 'jh', '\"\\/uploads\\/media_67221d3cc38aa.png\"', 0, '2024-10-30 05:49:16', '2024-10-30 05:49:16'),
(15, 28, 21, 'ui', '\"\\/uploads\\/media_67221ddc6b87e.jpeg\"', 0, '2024-10-30 05:51:56', '2024-10-30 05:51:56'),
(16, 28, 15, NULL, '\"\\/uploads\\/media_67221e093700b.jpeg\"', 0, '2024-10-30 05:52:41', '2024-10-30 05:52:41'),
(17, 28, 15, 'fe', NULL, 0, '2024-10-30 06:05:20', '2024-10-30 06:05:20'),
(18, 28, 15, 'feuu', '\"\\/uploads\\/media_672223acb03c2.jpeg\"', 0, '2024-10-30 06:16:44', '2024-10-30 06:16:44'),
(19, 28, 2, 'gg', '\"\\/uploads\\/media_672223bfe462c.jpeg\"', 0, '2024-10-30 06:17:03', '2024-10-30 06:17:03'),
(20, 28, 2, 'james', '\"\\/uploads\\/media_672223d02fae9.png\"', 0, '2024-10-30 06:17:20', '2024-10-30 06:17:20'),
(21, 28, 2, '😁', NULL, 0, '2024-10-30 06:17:24', '2024-10-30 06:17:24'),
(22, 28, 4, NULL, '\"\\/uploads\\/media_6722249f806e0.jpeg\"', 0, '2024-10-30 06:20:47', '2024-10-30 06:20:47'),
(23, 28, 1, NULL, '\"\\/uploads\\/media_672225948ea19.jpeg\"', 0, '2024-10-30 06:24:52', '2024-10-30 06:24:52'),
(24, 28, 2, NULL, '\"\\/uploads\\/media_672225a8723eb.jpeg\"', 0, '2024-10-30 06:25:12', '2024-10-30 06:25:12'),
(25, 28, 5, 'fe', NULL, 0, '2024-10-30 06:42:10', '2024-10-30 06:42:10'),
(26, 28, 1, 'hello', NULL, 0, '2024-10-30 08:01:43', '2024-10-30 08:01:43'),
(27, 28, 1, '😇', NULL, 0, '2024-10-30 08:02:35', '2024-10-30 08:02:35'),
(28, 28, 1, 'hello', NULL, 0, '2024-10-30 08:35:51', '2024-10-30 08:35:51'),
(29, 28, 1, 'hello me', NULL, 0, '2024-10-30 11:42:39', '2024-10-30 11:42:39'),
(30, 29, 1, 'hey roob', NULL, 0, '2024-10-30 11:45:20', '2024-10-30 11:45:20'),
(31, 28, 29, 'hey zohan', NULL, 1, '2024-10-30 11:47:32', '2024-10-31 11:54:23'),
(32, 28, 1, 'hey', NULL, 0, '2024-10-30 11:53:18', '2024-10-30 11:53:18'),
(33, 29, 1, 'golam', NULL, 0, '2024-10-30 11:53:30', '2024-10-30 11:53:30'),
(34, 28, 26, 'hey', NULL, 0, '2024-10-30 11:54:19', '2024-10-30 11:54:19'),
(35, 28, 28, 'hey porter', NULL, 0, '2024-10-30 11:55:41', '2024-10-30 11:55:41'),
(36, 29, 28, 'hey jo', NULL, 0, '2024-10-30 11:56:26', '2024-10-30 11:56:26'),
(37, 28, 29, 'are you ok', NULL, 1, '2024-10-30 11:56:37', '2024-10-31 11:54:23'),
(38, 28, 29, '😊', NULL, 1, '2024-10-30 11:57:20', '2024-10-31 11:54:23'),
(39, 29, 28, '🙂', NULL, 0, '2024-10-30 11:57:27', '2024-10-30 11:57:27'),
(40, 28, 29, 'hello', NULL, 1, '2024-10-30 12:44:21', '2024-10-31 11:54:23'),
(41, 28, 29, '😄', NULL, 1, '2024-10-30 12:46:07', '2024-10-31 11:54:23'),
(42, 28, 29, NULL, '\"\\/uploads\\/media_67227efd906cf.jpeg\"', 1, '2024-10-30 12:46:21', '2024-10-31 11:54:23'),
(43, 28, 29, '🤑', NULL, 1, '2024-10-30 12:46:43', '2024-10-31 11:54:23'),
(44, 28, 29, '😈', NULL, 1, '2024-10-30 12:46:47', '2024-10-31 11:54:23'),
(45, 28, 29, NULL, '\"\\/uploads\\/media_67227f1f110c3.jpg\"', 1, '2024-10-30 12:46:55', '2024-10-31 11:54:23'),
(46, 28, 29, '😢', NULL, 1, '2024-10-30 12:47:02', '2024-10-31 11:54:23'),
(47, 28, 29, 'send', NULL, 1, '2024-10-30 12:48:26', '2024-10-31 11:54:23'),
(48, 30, 31, 'he', NULL, 0, '2024-10-30 23:45:01', '2024-10-30 23:45:01'),
(49, 30, 29, 'are you fine', NULL, 1, '2024-10-31 02:35:51', '2024-10-31 11:54:21'),
(50, 30, 1, 'hel', NULL, 0, '2024-10-31 04:27:10', '2024-10-31 04:27:10'),
(51, 30, 30, 'je', NULL, 1, '2024-10-31 04:27:24', '2024-10-31 12:23:08'),
(52, 30, 3, 'dw', NULL, 0, '2024-10-31 04:27:34', '2024-10-31 04:27:34'),
(53, 30, 13, 'et', NULL, 0, '2024-10-31 04:27:51', '2024-10-31 04:27:51'),
(54, 30, 9, 'rw', NULL, 0, '2024-10-31 04:28:04', '2024-10-31 04:28:04'),
(55, 30, 5, 'wet', NULL, 0, '2024-10-31 04:28:17', '2024-10-31 04:28:17'),
(56, 30, 11, 'tu', NULL, 0, '2024-10-31 04:28:36', '2024-10-31 04:28:36'),
(57, 30, 13, 'ry', NULL, 0, '2024-10-31 04:28:53', '2024-10-31 04:28:53'),
(58, 30, 16, 'uo', NULL, 0, '2024-10-31 04:31:03', '2024-10-31 04:31:03'),
(59, 30, 11, 'ok', NULL, 0, '2024-10-31 07:22:06', '2024-10-31 07:22:06'),
(60, 30, 16, 'wr', NULL, 0, '2024-10-31 10:03:07', '2024-10-31 10:03:07'),
(61, 30, 16, 'et', NULL, 0, '2024-10-31 10:07:30', '2024-10-31 10:07:30'),
(62, 30, 31, 'et', NULL, 0, '2024-10-31 10:59:32', '2024-10-31 10:59:32'),
(63, 30, 5, 'et', NULL, 0, '2024-10-31 11:09:40', '2024-10-31 11:09:40'),
(64, 29, 30, 'he', NULL, 1, '2024-10-31 11:54:35', '2024-10-31 11:54:41'),
(65, 30, 30, 'he', NULL, 1, '2024-10-31 12:23:14', '2024-11-01 03:15:43'),
(66, 29, 30, NULL, '\"\\/uploads\\/media_6723e4b23748d.jpeg\"', 1, '2024-10-31 14:12:34', '2024-10-31 14:12:41'),
(67, 29, 30, NULL, '\"\\/uploads\\/media_6723e5e6ca835.jpeg\"', 1, '2024-10-31 14:17:42', '2024-10-31 14:17:50'),
(68, 29, 30, NULL, '\"\\/uploads\\/media_6723e889c463f.png\"', 1, '2024-10-31 14:28:57', '2024-10-31 14:29:14'),
(69, 29, 30, NULL, '\"\\/uploads\\/media_6723e894a447c.jpeg\"', 1, '2024-10-31 14:29:08', '2024-10-31 14:29:14'),
(70, 29, 30, NULL, '\"\\/uploads\\/media_6723e8c0ae0ba.jpeg\"', 1, '2024-10-31 14:29:52', '2024-10-31 14:29:59'),
(71, 30, 5, 'he', NULL, 0, '2024-10-31 21:03:51', '2024-10-31 21:03:51'),
(72, 30, 29, 'hello', NULL, 1, '2024-10-31 23:35:11', '2024-10-31 23:48:07'),
(73, 29, 30, 'hello', NULL, 1, '2024-10-31 23:48:14', '2024-10-31 23:48:26'),
(74, 29, 30, 'james', NULL, 1, '2024-10-31 23:49:05', '2024-10-31 23:56:40'),
(75, 29, 30, 'ge', NULL, 1, '2024-10-31 23:56:47', '2024-10-31 23:56:50'),
(76, 29, 30, 'name', NULL, 1, '2024-11-01 00:00:19', '2024-11-01 00:05:05'),
(77, 29, 30, 'hei', NULL, 1, '2024-11-01 00:04:55', '2024-11-01 00:05:05'),
(78, 29, 30, 'e', NULL, 1, '2024-11-01 00:06:55', '2024-11-01 02:42:11'),
(79, 30, 29, 'yu', NULL, 1, '2024-11-01 02:42:16', '2024-11-01 03:13:03'),
(80, 30, 5, 'ffff', NULL, 0, '2024-11-01 02:44:31', '2024-11-01 02:44:31'),
(81, 29, 30, 'hey man', NULL, 1, '2024-11-01 03:13:09', '2024-11-01 03:13:16'),
(82, 29, 30, 'are you good', NULL, 1, '2024-11-01 03:13:28', '2024-11-01 03:15:11'),
(83, 29, 30, 'james', NULL, 1, '2024-11-01 03:15:21', '2024-11-01 03:16:15'),
(84, 29, 30, 'are you ok', NULL, 1, '2024-11-01 03:16:00', '2024-11-01 03:16:15'),
(85, 29, 30, 'je', NULL, 1, '2024-11-01 03:16:21', '2024-11-01 05:06:24'),
(86, 29, 30, 'ok', NULL, 1, '2024-11-01 03:16:46', '2024-11-01 05:06:24'),
(87, 29, 30, 'ar', NULL, 1, '2024-11-01 05:16:54', '2024-11-01 05:17:02'),
(88, 29, 30, 'same', NULL, 1, '2024-11-01 05:17:13', '2024-11-01 05:17:40'),
(89, 30, 29, 'same', NULL, 1, '2024-11-01 05:17:45', '2024-11-01 05:17:53'),
(90, 29, 30, 'ar', NULL, 1, '2024-11-01 05:18:34', '2024-11-01 05:18:58'),
(91, 30, 29, 'sw', NULL, 1, '2024-11-01 05:18:41', '2024-11-01 05:19:03'),
(92, 30, 29, 'gme', NULL, 1, '2024-11-01 05:19:15', '2024-11-01 05:19:24'),
(93, 30, 29, 'heo', NULL, 1, '2024-11-01 05:23:50', '2024-11-01 05:26:33'),
(94, 30, 29, 'gae', NULL, 1, '2024-11-01 05:23:57', '2024-11-01 05:26:33'),
(95, 30, 29, 'ee', NULL, 1, '2024-11-01 05:24:08', '2024-11-01 05:26:33'),
(96, 30, 29, 'rt', NULL, 1, '2024-11-01 05:24:38', '2024-11-01 05:26:33'),
(97, 29, 30, 'gr', NULL, 1, '2024-11-01 05:26:36', '2024-11-01 05:26:47'),
(98, 29, 30, 'ty', NULL, 1, '2024-11-01 05:26:55', '2024-11-01 05:27:10'),
(99, 29, 30, 'ge', NULL, 1, '2024-11-01 05:28:13', '2024-11-01 05:37:57'),
(100, 30, 29, 'hello', NULL, 1, '2024-11-01 05:59:05', '2024-11-01 05:59:21'),
(101, 30, 29, 'hello t', NULL, 1, '2024-11-01 06:01:40', '2024-11-01 06:05:13'),
(102, 30, 29, 'james', NULL, 1, '2024-11-01 06:05:19', '2024-11-01 06:06:54'),
(103, 30, 29, 'he', NULL, 1, '2024-11-01 06:07:02', '2024-11-01 06:07:50'),
(104, 30, 29, 'rt', NULL, 1, '2024-11-01 06:07:54', '2024-11-01 06:09:10'),
(105, 30, 29, 'wt', NULL, 1, '2024-11-01 06:08:05', '2024-11-01 06:09:10'),
(106, 30, 29, 'aaa', NULL, 1, '2024-11-01 06:08:28', '2024-11-01 06:09:10'),
(107, 30, 29, 'rtu', NULL, 1, '2024-11-01 06:09:17', '2024-11-01 06:15:17'),
(108, 29, 30, 'he', NULL, 1, '2024-11-01 06:11:43', '2024-11-01 06:15:20'),
(109, 30, 29, 'he', NULL, 1, '2024-11-01 06:15:29', '2024-11-01 06:15:47'),
(110, 30, 29, 'er', NULL, 1, '2024-11-01 06:15:57', '2024-11-01 06:17:50'),
(111, 29, 30, 'fy', NULL, 1, '2024-11-01 06:16:30', '2024-11-01 06:17:51'),
(112, 30, 29, 'df', NULL, 1, '2024-11-01 06:18:11', '2024-11-01 07:26:02'),
(113, 29, 30, 'wr', NULL, 1, '2024-11-01 06:18:18', '2024-11-01 07:26:04'),
(114, 30, 29, 'e', NULL, 1, '2024-11-01 07:25:52', '2024-11-01 07:26:02'),
(115, 30, 29, 'rt', NULL, 1, '2024-11-01 07:26:07', '2024-11-01 07:30:05'),
(116, 29, 30, 'sd', NULL, 1, '2024-11-01 07:26:13', '2024-11-01 07:30:10'),
(117, 30, 29, 'et', NULL, 1, '2024-11-01 07:57:28', '2024-11-01 08:18:54'),
(118, 29, 30, 'ga', NULL, 1, '2024-11-01 07:57:33', '2024-11-01 08:18:55'),
(119, 30, 29, 'df', NULL, 1, '2024-11-01 08:19:27', '2024-11-01 08:24:11'),
(120, 29, 30, 'et', NULL, 1, '2024-11-01 08:19:39', '2024-11-01 08:24:10'),
(121, 30, 29, 'et', NULL, 1, '2024-11-01 08:24:28', '2024-11-01 08:25:34'),
(122, 30, 29, '🙃', NULL, 1, '2024-11-01 08:25:17', '2024-11-01 08:25:34'),
(123, 30, 29, '🙃', NULL, 1, '2024-11-01 08:25:32', '2024-11-01 08:25:34'),
(124, 30, 29, '😉', NULL, 1, '2024-11-01 08:25:38', '2024-11-01 08:29:01'),
(125, 30, 29, NULL, '\"\\/uploads\\/media_6724e4edbc990.jpeg\"', 1, '2024-11-01 08:25:49', '2024-11-01 08:29:01'),
(126, 29, 30, 'jame', NULL, 1, '2024-11-01 08:29:26', '2024-11-01 08:29:33'),
(127, 30, 29, '😛', NULL, 1, '2024-11-01 08:35:56', '2024-11-01 08:56:07'),
(128, 29, 30, '😚', NULL, 1, '2024-11-01 08:36:02', '2024-11-01 08:41:21'),
(129, 30, 5, 'hey man', NULL, 0, '2024-11-01 08:41:37', '2024-11-01 08:41:37'),
(130, 29, 30, 'play sound', NULL, 1, '2024-11-01 08:56:43', '2024-11-01 08:56:47'),
(131, 29, 30, 'allow me', NULL, 1, '2024-11-01 08:59:48', '2024-11-01 08:59:57'),
(132, 29, 30, 'allow me', NULL, 1, '2024-11-01 09:00:03', '2024-11-01 09:00:08'),
(133, 30, 29, 'allow me', NULL, 1, '2024-11-01 09:00:18', '2024-11-01 10:10:09'),
(134, 30, 29, 'hey', NULL, 1, '2024-11-01 11:08:45', '2024-11-01 12:20:39'),
(135, 30, 29, '😝james', NULL, 1, '2024-11-01 11:10:03', '2024-11-01 12:20:39'),
(136, 30, 29, 'hey', NULL, 1, '2024-11-01 12:12:50', '2024-11-01 12:20:39'),
(137, 30, 29, 'hey', NULL, 1, '2024-11-01 12:12:54', '2024-11-01 12:20:39'),
(138, 30, 29, NULL, '\"\\/uploads\\/media_6725200f65748.jpeg\"', 1, '2024-11-01 12:38:07', '2024-11-01 12:43:03'),
(139, 32, 30, 'hello', NULL, 1, '2024-11-01 12:50:46', '2024-11-01 13:24:42'),
(140, 32, 30, 'jame', NULL, 1, '2024-11-01 13:08:00', '2024-11-01 13:24:42'),
(141, 32, 30, 'et', NULL, 1, '2024-11-01 13:09:12', '2024-11-01 13:24:42'),
(142, 32, 30, 'set', NULL, 1, '2024-11-01 13:09:21', '2024-11-01 13:24:42'),
(143, 32, 30, 'ete', NULL, 1, '2024-11-01 13:10:23', '2024-11-01 13:24:42'),
(145, 33, 13, 'hel', NULL, 0, '2024-11-01 13:18:12', '2024-11-01 13:18:12'),
(146, 30, 32, 'ok', NULL, 0, '2024-11-01 13:24:49', '2024-11-01 13:24:49'),
(147, 30, 32, 'etssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', NULL, 0, '2024-11-01 13:27:05', '2024-11-01 13:27:05'),
(148, 30, 29, NULL, '\"\\/uploads\\/media_67252c1af1e6b.jpg\"', 1, '2024-11-01 13:29:31', '2024-11-01 13:29:33'),
(149, 30, 29, NULL, '\"\\/uploads\\/media_67252c353d86a.jpg\"', 1, '2024-11-01 13:29:57', '2024-11-01 13:30:02'),
(150, 30, 29, NULL, '\"\\/uploads\\/media_67252c46b7f74.jpg\"', 1, '2024-11-01 13:30:14', '2024-11-01 13:30:22'),
(151, 30, 29, '😃', NULL, 1, '2024-11-01 13:31:23', '2024-11-01 13:31:25'),
(152, 30, 29, NULL, '\"\\/uploads\\/media_67252d8136ec2.jpg\"', 1, '2024-11-01 13:35:29', '2024-11-01 13:35:32'),
(153, 30, 29, '😇', NULL, 1, '2024-11-01 13:35:36', '2024-11-01 13:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_28_170540_create_messages_table', 2),
(6, '2024_10_31_190106_create_favorites_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'default/avatar.png',
  `name` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `user_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'default/avatar.png', 'Hayden Roob', 'grant.parker', 'lazaro.renner@example.com', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ttYHirmj0a', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(2, 'default/avatar.png', 'Krystel Stanton', 'heath.green', 'tkrajcik@example.org', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZXS98GR3I7sObRh6WSufIz00dliVuWaHqxuQ1fVZsuM8am1nJeK23Pewl7iY', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(3, 'default/avatar.png', 'Cierra Nicolas', 'xlubowitz', 'lgrant@example.org', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2x9OvAZG4L', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(4, 'default/avatar.png', 'Emerson Kshlerin', 'nhintz', 'kathlyn86@example.net', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8bw3CNFWlj', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(5, 'default/avatar.png', 'Drake Upton', 'raynor.isom', 'ebony.kris@example.com', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kVXIC7phZH', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(6, 'default/avatar.png', 'Mrs. Mable Bashirian III', 'marco.berge', 'estefania64@example.com', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LvaJO29eTa', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(7, 'default/avatar.png', 'Duncan Weber', 'runolfsdottir.lue', 'skoch@example.org', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rLoewi6Cye', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(8, 'default/avatar.png', 'Ms. Naomi Conn MD', 'shanon64', 'antoinette97@example.org', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gfmuJSUF77', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(9, 'default/avatar.png', 'Mrs. Elouise Ratke', 'ryan51', 'darrion.larkin@example.net', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5WqJ5WWuqz', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(10, 'default/avatar.png', 'Jovani Rowe', 'tbrown', 'reinhold.lockman@example.com', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BUc0W1A9R0', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(11, 'default/avatar.png', 'Jamil Kozey Sr.', 'eulah09', 'avery19@example.net', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GS82DDlF8y', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(12, 'default/avatar.png', 'Ignatius Jones', 'devon18', 'nikolaus.jayce@example.org', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L0Ey4t9zXl', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(13, 'default/avatar.png', 'Friedrich Kemmer', 'dwiegand', 'miguel46@example.com', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm6jVLGpDML', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(14, 'default/avatar.png', 'Carole Jaskolski', 'twaelchi', 'tyshawn57@example.org', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w8eH30x9jW', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(15, 'default/avatar.png', 'Linwood Huels', 'fritsch.cielo', 'markus.schultz@example.org', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uKicMf4LPt', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(16, 'default/avatar.png', 'Malcolm Ortiz MD', 'frami.elmira', 'jonathon82@example.org', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mcf2sgh81H', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(17, 'default/avatar.png', 'Joany Ortiz', 'marcos.kertzmann', 'dereck.little@example.org', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Exbc7dCQKZ', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(18, 'default/avatar.png', 'Laurel Ratke', 'mpurdy', 'tcummerata@example.net', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uoI8Gsaz33', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(19, 'default/avatar.png', 'Clovis Labadie DDS', 'connelly.tiana', 'adeline.kuhic@example.com', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SIqmrZCqBm', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(20, 'default/avatar.png', 'Otha Greenholt', 'schmitt.shaylee', 'gianni64@example.net', '2024-10-28 11:01:41', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yuuosspc1b', '2024-10-28 11:01:41', '2024-10-28 11:01:41'),
(21, 'default/avatar.png', 'Caryn Griffith', NULL, 'wejarap@mailinator.com', NULL, '$2y$10$0i6Y.I3Zzxx0UKWGmnZwauI86AP2c3LbCVkYUF9cVTRWU5Wmd0NbC', NULL, '2024-10-28 11:04:30', '2024-10-28 11:04:30'),
(22, 'default/avatar.png', 'Clio Montoya', NULL, 'lahin@mailinator.com', NULL, '$2y$10$RkFRnwV.XhMw/ezkBpvdMubZWzOuGtN.5cI/8JCXZ8hxqRjWnqiZ2', NULL, '2024-10-28 12:15:21', '2024-10-28 12:15:21'),
(23, '/uploads/media_671ffb357e58d.jpg', 'Lani Burch', 'james123', 'hanicaw@mailinator.com', NULL, '$2y$10$mlWh2etvluKNFYL1DCWXg.Q/3kB.RezIrWYe2ZnYOhRC1ZQ3NCEqS', NULL, '2024-10-28 12:35:52', '2024-10-28 14:59:33'),
(24, 'default/avatar.png', 'Quincy Frye', '@Quincy Frye_59', 'wyxoqife@mailinator.com', NULL, '$2y$10$9q7VFSbKkRJZSC/AHuYinezFcJAb.F7e2GXr.lALTeC58PqmdURMS', NULL, '2024-10-28 15:31:52', '2024-10-28 15:34:48'),
(25, 'default/avatar.png', 'MacKensie Odom', '@MacKensie Odom_5199', 'facagun@mailinator.com', NULL, '$2y$10$iF.P5vEYaE0OAbQ12157BO2Pv/bcV4UFr1YAIsfGm2qNnp8C.L.yy', NULL, '2024-10-29 01:53:42', '2024-10-29 01:53:42'),
(26, '/uploads/media_672132b0b6c60.jpeg', 'john doe', '@john doe_9683', 'john@gmail.com', NULL, '$2y$10$YOgZXaBMEpo5NEtyl3D6N.iKy01/WBhcz6xaSzrnTiJfVN7.NrxfC', NULL, '2024-10-29 08:06:35', '2024-10-29 13:08:32'),
(27, 'default/avatar.png', 'Clark Morris', '@Clark Morris_3965', 'sivepi@mailinator.com', NULL, '$2y$10$diXqsjW3g3y36ubNqX8xbOTVbeEDD8tSi.2GZA4kIuK5x1scQ.7zW', NULL, '2024-10-29 22:47:05', '2024-10-29 22:47:05'),
(28, 'default/avatar.png', 'Porter Prince', '@Porter Prince_7751', 'dynepezexy@mailinator.com', NULL, '$2y$10$F1SP7i78XMSyNdNn/yQfUetobzT.ChyJJFKJxVN/GhWwD2O0kLvpe', NULL, '2024-10-30 04:45:32', '2024-10-30 04:45:32'),
(29, '/uploads/media_6724fe36a982d.jpeg', 'zohan', '@zohan_3670', 'zohan@gmail.com', NULL, '$2y$10$YEZsRoFu4rf1rc588GttdugdpmZNjvPvPVz/tuVwI0zvybTfwr7.i', NULL, '2024-10-30 11:44:47', '2024-11-01 10:13:42'),
(30, '/uploads/media_67252b26d2f21.jpg', 'abu', '@abu_5170', 'abu@gmail.com', NULL, '$2y$10$EVLivWOvwCoC77CIu5PRzOLe4pbLuWUaX1dBtih4jJslmjNgo1I7y', NULL, '2024-10-30 23:43:54', '2024-11-01 13:25:26'),
(31, 'default/avatar.png', 'palash', '@palash_2532', 'palash@gmail.com', NULL, '$2y$10$/xL6fkKPpRQo08meFzos8.C9QT57DkF.d1PQxrpZuTY6DrmQOLqUK', NULL, '2024-10-30 23:44:40', '2024-10-30 23:44:40'),
(32, 'default/avatar.png', 'Rebecca Mcdonald', '@Rebecca Mcdonald_3326', 'kapu@mailinator.com', NULL, '$2y$10$XCwGMF6P/DtKAsr5ID1Lm.CHnn7md00oz03i/vJUTr6gPH8tMIcdy', NULL, '2024-11-01 12:40:14', '2024-11-01 12:40:14'),
(33, 'default/avatar.png', 'Dalton Stevens', '@Dalton Stevens_88', 'cofateby@mailinator.com', NULL, '$2y$10$erG4LB1xgPYU6Fg0Ex5cv.x5fz//zHAIxsuyabsBCmMiSTxJBIodO', NULL, '2024-11-01 13:13:22', '2024-11-01 13:13:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
