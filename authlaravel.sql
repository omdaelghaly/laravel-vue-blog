-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2023 at 04:26 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authlaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `commentlikes`
--

CREATE TABLE `commentlikes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentlikes`
--

INSERT INTO `commentlikes` (`id`, `user_id`, `post_id`, `comment_id`, `owner_id`, `created_at`, `updated_at`) VALUES
(16, 1, 56, 46, 1, '2022-12-30', '2022-12-30'),
(17, 1, 56, 48, 1, '2022-12-30', '2022-12-30'),
(20, 1, 56, 31, 1, '2022-12-30', '2022-12-30'),
(22, 1, 57, 29, 1, '2022-12-31', '2022-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 33, 'commmentssssss sssssssssss saaaaaaaaaaaa rree ', '2022-12-22 01:00:00', NULL),
(2, 1, 33, 'commmentssssss sssssssssss saaaaaaaaaaaa rree ', '2022-12-22 01:00:00', NULL),
(3, 1, 33, 'nbbbbbbbbbbbb ffdd hyyyyyyyyy', '2022-12-21 01:00:00', NULL),
(4, 1, 33, 'nbbbbbbbbbbbb ffdd hyyyyyyyyy', '2022-12-21 01:00:00', NULL),
(5, 1, 34, 'hhhhhhhh ggggggg rrrrrr eeeeeeeee', '2022-12-21 00:00:00', NULL),
(6, 1, 34, 'hhhhhhhh ggggggg rrrrrr eeeeeeeee', '2022-12-21 00:00:00', NULL),
(7, 1, 34, 'wwwwwwwwwwwwwwwww', '2022-12-24 11:30:04', '2022-12-24 11:30:04'),
(8, 1, 34, 'sssssd fff gggg', '2022-12-24 11:36:25', '2022-12-24 11:36:25'),
(9, 1, 34, 'vvvvvvvvvvvvvvvvv', '2022-12-24 11:37:55', '2022-12-24 11:37:55'),
(10, 1, 34, 'mmmmm', '2022-12-24 11:39:34', '2022-12-24 11:39:34'),
(11, 1, 34, 'ggggggggg', '2022-12-24 11:53:48', '2022-12-24 11:53:48'),
(12, 1, 34, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2022-12-24 11:55:50', '2022-12-24 11:55:50'),
(13, 1, 34, 'fffffffffffffffffffffffffffff', '2022-12-24 12:00:23', '2022-12-24 12:00:23'),
(14, 1, 34, 'ffff22222222', '2022-12-24 12:04:41', '2022-12-24 12:04:41'),
(15, 1, 34, 'gxxxxxxxxxxxxxx', '2022-12-24 12:07:20', '2022-12-24 12:07:20'),
(16, 1, 34, 'nnbb', '2022-12-24 12:09:58', '2022-12-24 12:09:58'),
(17, 1, 34, 'dddddddddddddddd', '2022-12-24 12:19:06', '2022-12-24 12:19:06'),
(18, 1, 34, 'ffffcccccccccccccc', '2022-12-24 18:52:37', '2022-12-24 18:52:37'),
(19, 1, 33, 'bbbbb', '2022-12-24 18:54:11', '2022-12-24 18:54:11'),
(22, 1, 33, 'hhhhhhhhhhh', '2022-12-25 14:29:40', '2022-12-25 14:29:40'),
(23, 1, 33, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', '2022-12-25 14:38:34', '2022-12-25 14:38:34'),
(24, 1, 33, 'hhhhhhhhhhh', '2022-12-25 14:41:30', '2022-12-25 14:41:30'),
(26, 1, 57, 'hello new moon', '2022-12-29 15:01:20', '2022-12-29 15:01:20'),
(28, 1, 57, 'igh', '2022-12-29 15:21:40', '2022-12-29 15:21:40'),
(29, 1, 57, 'rtrre', '2022-12-29 15:33:41', '2023-01-03 20:27:07'),
(31, 1, 56, 'uuyy', '2022-12-30 06:33:33', '2022-12-30 06:33:33'),
(32, 1, 56, 'hhhhh', '2022-12-30 06:36:36', '2022-12-30 06:36:36'),
(43, 1, 56, '44444444444', '2022-12-30 15:36:59', '2022-12-30 15:36:59'),
(45, 1, 55, 'commmebtnn', '2022-12-31 20:07:34', '2022-12-31 20:07:34'),
(47, 1, 55, 'yuyy', '2022-12-31 20:13:39', '2022-12-31 20:13:39'),
(48, 1, 54, 'ggfffffffffffffffffff', '2023-01-01 03:26:43', '2023-01-01 03:26:43'),
(49, 1, 56, 'dd', '2023-01-01 03:32:03', '2023-01-03 08:02:26'),
(50, 1, 55, 'comment 2222222w', '2023-01-01 03:40:14', '2023-01-01 03:40:14'),
(51, 1, 55, 'comment 33333w', '2023-01-01 03:42:15', '2023-01-01 03:42:15'),
(52, 1, 54, 'yyyyyyy', '2023-01-01 03:48:30', '2023-01-01 03:48:30'),
(53, 1, 30, 'hiiiiiiiiiiiiiii', '2023-01-01 03:52:11', '2023-01-01 03:52:11'),
(54, 1, 54, 'ttt', '2023-01-01 03:54:31', '2023-01-01 03:54:31'),
(55, 1, 47, 'commme nw', '2023-01-01 03:57:17', '2023-01-01 03:57:17'),
(56, 2, 57, 'hello 77new user', '2023-01-06 07:07:55', '2023-01-06 07:09:21'),
(57, 2, 57, 'hhhgg', '2023-01-06 07:12:53', '2023-01-06 07:12:53'),
(58, 2, 58, 'igh', '2023-01-06 07:13:16', '2023-01-06 07:13:16'),
(59, 2, 58, 'yytt', '2023-01-06 07:13:48', '2023-01-06 07:13:48'),
(60, 2, 59, 'hgg', '2023-01-06 07:51:17', '2023-01-06 07:51:17'),
(61, 2, 59, 'trrrt', '2023-01-06 07:51:27', '2023-01-06 07:51:27'),
(62, 2, 59, '433', '2023-01-06 09:10:52', '2023-01-06 09:10:52'),
(63, 2, 59, 'yyah', '2023-01-06 09:11:20', '2023-01-06 09:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `grade_id` int(100) NOT NULL,
  `subject_id` int(100) NOT NULL,
  `term_id` int(100) NOT NULL,
  `name` text NOT NULL,
  `mark` int(100) NOT NULL,
  `unit` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`) VALUES
(1, 'الصف الثالث الاعدادى'),
(2, 'الصف الثانى الاعدادى'),
(3, 'الصف الاول الاعدادى'),
(4, 'nxt3'),
(5, 'nxt2'),
(6, 'next');

-- --------------------------------------------------------

--
-- Table structure for table `imagecomments`
--

CREATE TABLE `imagecomments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imagecomments`
--

INSERT INTO `imagecomments` (`id`, `user_id`, `post_id`, `comment_id`, `name`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 56, 30, '121672385250.jpg', NULL, '2022-12-30 05:27:30', '2022-12-30 05:27:30'),
(2, 1, 56, 31, '641672389213.jpeg', NULL, '2022-12-30 06:33:33', '2022-12-30 06:33:33'),
(3, 1, 56, 32, '321672389396.jpeg', NULL, '2022-12-30 06:36:36', '2022-12-30 06:36:36'),
(4, 2, 59, 63, '941673003480.png', NULL, '2023-01-06 09:11:20', '2023-01-06 09:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `user_id`, `post_id`, `name`, `file`, `created_at`, `updated_at`) VALUES
(85, 1, 17, '41671482214.jpg', NULL, '2022-12-19 18:36:54', '2022-12-19 18:36:54'),
(86, 1, 30, '681671722600.jpeg', NULL, '2022-12-22 13:23:21', '2022-12-22 13:23:21'),
(87, 1, 31, '781671722847.jpg', NULL, '2022-12-22 13:27:27', '2022-12-22 13:27:27'),
(88, 1, 32, '181671724500.jpg', NULL, '2022-12-22 13:55:00', '2022-12-22 13:55:00'),
(89, 1, 37, '301671729880.jpg', NULL, '2022-12-22 15:24:40', '2022-12-22 15:24:40'),
(95, 1, 46, '', '481672002010.docx', '2022-12-25 19:00:10', '2022-12-25 19:00:10'),
(96, 1, 47, NULL, '741672002376.doc', '2022-12-25 19:06:16', '2022-12-25 19:06:16'),
(98, 1, 50, '911672086880.jpg', NULL, '2022-12-26 18:34:40', '2022-12-26 18:34:40'),
(99, 1, 51, '221672087064.jpg', NULL, '2022-12-26 18:37:44', '2022-12-26 18:37:44'),
(100, 1, 51, NULL, '531672087064.docx', '2022-12-26 18:37:44', '2022-12-26 18:37:44'),
(107, 1, 55, NULL, '181672087460.docx', '2022-12-26 18:44:20', '2022-12-26 18:44:20'),
(116, 1, 54, '521672723404.jpg', NULL, '2023-01-03 03:23:24', '2023-01-03 03:23:24'),
(117, 1, 54, NULL, '441672723404.txt', '2023-01-03 03:23:24', '2023-01-03 03:23:24'),
(118, 2, 58, '51672996323.png', NULL, '2023-01-06 07:12:03', '2023-01-06 07:12:03'),
(119, 2, 58, NULL, '191672996324.xlsx', '2023-01-06 07:12:04', '2023-01-06 07:12:04'),
(120, 2, 59, '71672997493.jpg', NULL, '2023-01-06 07:31:33', '2023-01-06 07:31:33'),
(121, 2, 59, NULL, '601672997493.pdf', '2023-01-06 07:31:33', '2023-01-06 07:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `owner_id`, `created_at`, `updated_at`) VALUES
(97, 2, 56, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 3, 56, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 1, 55, 1, '2022-12-28 18:31:29', '2022-12-28 18:31:29'),
(103, 1, 57, 1, '2022-12-30 14:35:03', '2022-12-30 14:35:03'),
(104, 2, 59, 2, '2023-01-06 09:11:59', '2023-01-06 09:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_15_205018_create_verifyusers_table', 1),
(6, '2022_12_16_192625_create_posts_table', 1),
(7, '2022_12_16_194625_create_images_table', 1),
(8, '2022_12_16_195953_create_comments_table', 1),
(9, '2022_12_16_200758_create_imagecomments_table', 1),
(10, '2022_12_16_202440_create_likes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\User', 2, 'my-app', 'd1e53c11e81754a1f36b6c4498806d98bd202e5f0c77d4249086c9fa200ed3f1', '[\"*\"]', '2023-01-27 15:01:02', '2023-01-06 07:31:03', '2023-01-27 15:01:02'),
(8, 'App\\Models\\User', 2, 'my-app', '4e33677f685eb84cfeb70a13117a30615ce38b59d42989810100828c17be3c6b', '[\"*\"]', '2023-01-06 09:11:59', '2023-01-06 09:10:20', '2023-01-06 09:11:59'),
(9, 'App\\Models\\User', 1, 'my-app', '2c0f0cf658e52fe088d87bf3a3282406cc2a1a89f32c5f8a3b1f431292e126de', '[\"*\"]', '2023-03-02 03:23:39', '2023-01-17 12:07:52', '2023-03-02 03:23:39'),
(10, 'App\\Models\\User', 1, 'my-app', '84e3c35c92674932fea16d5d09b96a4fbb2cb4b731983f4510bdbf221c532250', '[\"*\"]', '2023-03-04 04:43:31', '2023-03-04 04:20:08', '2023-03-04 04:43:31'),
(11, 'App\\Models\\User', 1, 'my-app', '87a796b41205ac7033bb87133148a0d775e9f4f7ea3146bdde63eb141f680baf', '[\"*\"]', NULL, '2023-03-04 15:02:34', '2023-03-04 15:02:34'),
(12, 'App\\Models\\User', 1, 'my-app', '21d3fe729023dc2a4fefa701bcc828e04e56484afb38ab4f202e40c54e35de22', '[\"*\"]', NULL, '2023-03-05 12:57:29', '2023-03-05 12:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES
(27, 1, 'iiiiiiiiiiiiiiii', '2022-12-22 08:26:52', '2023-01-02 18:32:31'),
(28, 1, 'ggggggggg', '2022-12-22 08:34:03', '2023-01-02 18:01:56'),
(29, 1, 'nnnnnnnnnnnnnnn', '2022-12-22 08:43:30', '2022-12-22 08:43:30'),
(30, 1, 'aaaaaaaaaaaaaaaaaaaaanxxxxx', '2022-12-22 13:23:20', '2022-12-22 13:23:20'),
(35, 1, 'هلا بيكم نورتونما', '2022-12-25 17:54:31', '2022-12-25 17:54:31'),
(36, 1, 'مرة اهرى غبسسان الحبايب', '2022-12-25 17:55:36', '2022-12-25 17:55:36'),
(38, 1, 'first file', '2022-12-25 18:48:02', '2022-12-25 18:48:02'),
(47, 1, 'nnnnnnnnnnnnnn', '2022-12-25 19:06:16', '2022-12-25 19:06:16'),
(54, 1, 'اهلا بكم اليوم وكل  يوم قبل 56hhhhh٢ ساعة — تتوقع هيئة الأرصاد الجوية أن يشهد اليوم الإثنين، استمرار انخفاض فى درجات الحرارة، ليسود طقس خريفى مائل للبرودة فى الصباح الباكر، لطيف نهاراً ...', '2022-12-26 18:43:44', '2023-01-03 03:23:24'),
(55, 1, 'اهلا بكم اليوم وكل  يوم قبل ٢٢ ساعة — تتوقع هيئة الأرصاد الجوية أن يشهد اليوم الإثنين، استمرار انخفاض فى درجات الحرارة، ليسود طقس خريفى مائل للبرودة فى الصباح الباكر، لطيف نهاراً ...', '2022-12-26 18:44:20', '2022-12-26 18:44:20'),
(56, 1, 'اهلا بكم اليوم وكل يوم قبل ٢٢ ساعة — تتوقع هيئة الأرصاد الجوية أن يشهد اليوم الإثنين، استمرار انخفاض فى درجات الحرارة، ليسود طقس خريفى مائل للبرودة فى الصباح الباكر، لطيف نهاراً ...', '2022-12-27 04:48:51', '2022-12-27 04:48:51'),
(57, 1, '76hello000', '2022-12-29 12:07:28', '2023-01-03 20:27:21'),
(58, 2, 'tttttt', '2023-01-06 07:12:03', '2023-01-06 07:12:03'),
(59, 2, 'yyyyyyy', '2023-01-06 07:31:33', '2023-01-06 07:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `grade_id` int(100) NOT NULL,
  `subject_id` int(100) NOT NULL,
  `term_id` int(100) NOT NULL,
  `exam_id` int(100) DEFAULT NULL,
  `q` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `x` text NOT NULL,
  `i` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `user_id`, `grade_id`, `subject_id`, `term_id`, `exam_id`, `q`, `a`, `b`, `c`, `d`, `x`, `i`) VALUES
(2, 1, 2, 4, 2, NULL, 'whats your name ?', 'ali', 'samy', 'yasser', 'fathy', 'a', 'yeah'),
(3, 1, 2, 5, 1, NULL, 'where do u live ?', 'alex', 'aswan', 'luxor', 'matrouh', 'c', 'hello'),
(4, 1, 2, 4, 2, NULL, 'how are u ?', 'fine', '5 years old', 'thanks', 'you are welcome', 'a', 'fine'),
(5, 1, 2, 6, 1, NULL, 'how are u today ?', 'ok', 'fine', 'thanks', 'nice', 'a', 'hello'),
(6, 1, 2, 6, 2, NULL, 'where ....... you come from?', 'are', 'does', 'do', 'have', 'c', 'do + inf'),
(7, 1, 2, 6, 2, NULL, 'i think he .................. be happy', 'go', 'going to', 'will', 'is going to', 'c', 'will + inf ,, think'),
(8, 1, 2, 6, 2, NULL, 'if i have money i.................. buy a car', 'would', 'will', 'has', 'have', 'b', 'if (case1)'),
(9, 1, 2, 6, 2, NULL, '5 +7 = ....................', '10', '12', '14', '16', 'b', 'dd'),
(10, 1, 2, 6, 2, NULL, '70 + 11 =.....................', '80', '81', '82', '83', 'b', '32');

-- --------------------------------------------------------

--
-- Table structure for table `repls`
--

CREATE TABLE `repls` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `comment_id` int(100) NOT NULL,
  `reply` text,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `repls`
--

INSERT INTO `repls` (`id`, `user_id`, `post_id`, `comment_id`, `reply`, `created_at`, `updated_at`) VALUES
(1, 1, 57, 26, 'replygggggggg', '0000-00-00', '0000-00-00'),
(2, 1, 57, 29, 'replygggggggg', '0000-00-00', '0000-00-00'),
(5, 1, 57, 29, '444', '2022-12-31', '2023-01-03'),
(6, 1, 57, 29, 'gffgf', '2022-12-31', '2022-12-31'),
(7, 1, 57, 29, 'ttttttttt', '2022-12-31', '2022-12-31'),
(8, 1, 57, 29, 'tttttttttttr', '2022-12-31', '2022-12-31'),
(9, 1, 57, 29, 'dddddd dddddddddd', '2022-12-31', '2022-12-31'),
(10, 1, 57, 29, 'rrrrrrrr', '2022-12-31', '2022-12-31'),
(12, 1, 57, 29, 'wwwwwwwwwww', '2022-12-31', '2022-12-31'),
(13, 1, 57, 29, 'gg', '2022-12-31', '2022-12-31'),
(14, 1, 54, 52, 'reply', '2023-01-01', '2023-01-01'),
(15, 1, 54, 52, '545', '2023-01-01', '2023-01-01'),
(16, 1, 47, 55, 'new replyy', '2023-01-01', '2023-01-01'),
(17, 1, 47, 55, 're', '2023-01-01', '2023-01-01'),
(18, 2, 57, 29, '54reply', '2023-01-06', '2023-01-06'),
(19, 2, 58, 58, 'gggf', '2023-01-06', '2023-01-06'),
(20, 2, 59, 63, 'uuuu', '2023-01-06', '2023-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(1, 'حاسب الى'),
(2, 'الدراسات الاجتماعية'),
(4, 'الرياضيات'),
(5, 'العلوم'),
(6, 'اللغة الانجليزية'),
(7, 'اللغة العربية');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `name`) VALUES
(1, 'الفصل الدراسى الاول'),
(2, 'الفصل الدراسى الثانى');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `verifyemail` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `job` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `verifyemail`, `level`, `job`, `about`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Omdaa', 'emad.nour54@yahoo.com', '871672949952.jpeg', 1, 0, '..teacher', '..prep school', '$2y$10$UCM9HIVvxEiEGopVsUoWEOM.m1uUFAPZ7Lxb8kR9.2.PIvyC5sQqi', NULL, NULL, '2022-12-18 13:00:45', '2023-03-02 02:53:48'),
(2, 'ali123', 'aaa@yahoo.com', 'default.jpg', 1, 0, NULL, NULL, '$2y$10$7/4vt1fl6aFT.yyPsNQwwuLeIf08QwxvE67ZcfrkxgBIJ1WupmOwy', NULL, NULL, '2023-01-06 07:05:25', '2023-01-06 07:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `verifyusers`
--

CREATE TABLE `verifyusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` int(11) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commentlikes`
--
ALTER TABLE `commentlikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imagecomments`
--
ALTER TABLE `imagecomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repls`
--
ALTER TABLE `repls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `verifyusers`
--
ALTER TABLE `verifyusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commentlikes`
--
ALTER TABLE `commentlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `imagecomments`
--
ALTER TABLE `imagecomments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `repls`
--
ALTER TABLE `repls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `verifyusers`
--
ALTER TABLE `verifyusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
