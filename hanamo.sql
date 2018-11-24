-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2018 at 04:12 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hanamo`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_stock` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `in_stock`, `created_at`, `updated_at`) VALUES
(3, '31', '345523234', '2018-11-23 00:43:18', '2018-11-23 04:02:48'),
(4, '32', '1', '2018-11-23 04:04:29', '2018-11-23 04:04:29'),
(5, '33', '1', '2018-11-23 04:04:58', '2018-11-23 04:04:58'),
(6, '34', '1', '2018-11-23 04:05:58', '2018-11-23 04:05:58'),
(7, '35', '1', NULL, NULL),
(8, '36', '1', NULL, NULL),
(9, '37', '1', NULL, NULL),
(11, '39', '5657', '2018-11-23 18:31:20', '2018-11-23 18:40:58'),
(12, '40', '1', NULL, NULL),
(13, '41', '1', NULL, NULL),
(14, '42', '1', NULL, NULL),
(15, '43', '1', NULL, NULL),
(16, '44', '1', NULL, NULL),
(17, '45', '1', NULL, NULL),
(18, '46', '1', NULL, NULL),
(19, '47', '1', NULL, NULL),
(20, '48', '1', NULL, NULL),
(21, '49', '1', NULL, NULL),
(22, '50', '1', NULL, NULL),
(23, '51', '1', NULL, NULL),
(24, '52', '1', NULL, NULL),
(25, '53', '1', NULL, NULL),
(26, '54', '1', NULL, NULL),
(27, '55', '1', NULL, NULL),
(28, '56', '1', NULL, NULL),
(29, '57', '1', NULL, NULL),
(30, '58', '1', NULL, NULL),
(31, '59', '1', NULL, NULL),
(32, '60', '1', NULL, NULL),
(33, '61', '1', NULL, NULL),
(34, '62', '1', NULL, NULL),
(35, '63', '1', NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_group_id`, `name`, `created_at`, `updated_at`) VALUES
(5, '7', 'tseter', '2018-11-22 19:20:57', '2018-11-22 19:23:13'),
(6, '10', 'dfgdh', '2018-11-22 19:21:06', '2018-11-22 19:22:56'),
(7, '7', 'asdf', '2018-11-22 19:23:09', '2018-11-22 19:23:09'),
(8, '7', 'dsaf', '2018-11-22 19:28:57', '2018-11-22 19:53:43'),
(9, '7', 'asdasfxzcsadg', '2018-11-22 21:46:08', '2018-11-22 21:46:08'),
(11, '7', 'dfg', '2018-11-22 21:47:03', '2018-11-22 21:47:03'),
(12, '7', 'asdfg', '2018-11-22 22:39:33', '2018-11-22 22:39:33'),
(13, '20', 'TESTER APP', '2018-11-22 22:40:00', '2018-11-22 22:40:00'),
(14, '15', 'asdf', '2018-11-22 22:43:42', '2018-11-22 22:43:42'),
(15, '16', 'asdaf', '2018-11-22 22:44:16', '2018-11-22 22:44:16'),
(16, '8', 'ad', '2018-11-22 22:46:18', '2018-11-22 22:46:18'),
(17, '7', 'asdafa', '2018-11-22 22:51:31', '2018-11-22 22:51:31'),
(18, '7', 'asdafa', '2018-11-22 22:51:48', '2018-11-22 22:51:48'),
(22, '7', 'sdfgfsdsh', '2018-11-22 22:53:38', '2018-11-22 22:59:35'),
(23, '7', 'dfgh', '2018-11-22 23:01:19', '2018-11-22 23:01:19'),
(24, '10', 'fshhdjdj', '2018-11-22 23:01:52', '2018-11-22 23:01:52'),
(25, '21', 'DFGDH', '2018-11-22 23:21:01', '2018-11-22 23:21:01'),
(31, '56', 'pahinga ka muna', '2018-11-23 00:43:18', '2018-11-23 00:43:18'),
(32, '57', 'tester', '2018-11-23 04:04:29', '2018-11-23 04:04:29'),
(33, '56', 'yahaha', '2018-11-23 04:04:58', '2018-11-23 04:04:58'),
(34, '56', 'et', '2018-11-23 04:05:58', '2018-11-23 04:05:58'),
(35, 'A', 'Product A', NULL, NULL),
(36, 'B', 'Product B', NULL, NULL),
(37, 'C', 'Product C', NULL, NULL),
(39, '58', 'Test', '2018-11-23 18:31:20', '2018-11-23 18:31:20'),
(40, '7', 'tseter', NULL, NULL),
(41, '10', 'dfgdh', NULL, NULL),
(42, '7', 'asdf', NULL, NULL),
(43, '7', 'dsaf', NULL, NULL),
(44, '7', 'asdasfxzcsadg', NULL, NULL),
(45, '7', 'dfg', NULL, NULL),
(46, '7', 'asdfg', NULL, NULL),
(47, '20', 'TESTER APP', NULL, NULL),
(48, '15', 'asdf', NULL, NULL),
(49, '16', 'asdaf', NULL, NULL),
(50, '8', 'ad', NULL, NULL),
(51, '7', 'asdafa', NULL, NULL),
(52, '7', 'asdafa', NULL, NULL),
(53, '7', 'sdfgfsdsh', NULL, NULL),
(54, '7', 'dfgh', NULL, NULL),
(55, '10', 'fshhdjdj', NULL, NULL),
(56, '21', 'DFGDH', NULL, NULL),
(57, '56', 'pahinga ka muna', NULL, NULL),
(58, '57', 'tester', NULL, NULL),
(59, '56', 'yahaha', NULL, NULL),
(60, '56', 'et', NULL, NULL),
(61, 'A', 'Product A', NULL, NULL),
(62, 'B', 'Product B', NULL, NULL),
(63, 'C', 'Product C', NULL, NULL);

--
-- Triggers `products`
--
DELIMITER $$
CREATE TRIGGER `DeleteProducts` AFTER DELETE ON `products` FOR EACH ROW BEGIN
DELETE FROM inventories
    WHERE inventories.product_id= old.id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `InsertProducts` AFTER INSERT ON `products` FOR EACH ROW BEGIN

INSERT INTO inventories (product_id,in_stock,created_at,updated_at) VALUES (NEW.id,1,NEW.created_at,NEW.updated_at);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `product_groups`
--

CREATE TABLE `product_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_groups`
--

INSERT INTO `product_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(56, 'Testerr', '2018-11-23 00:21:41', '2018-11-23 00:22:49'),
(57, 'Haha', '2018-11-23 03:42:50', '2018-11-23 03:42:50'),
(58, 'dont hold it against me', '2018-11-23 18:31:10', '2018-11-23 18:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'jarem1234', 'admin', 'jaremexample@gmail.com', NULL, '$2y$10$tSzHVuGYNgtqZdPquYKaT.EuRWw1r4K6dKfpOyA2tij.bjqskY6na', 'QMskAZmhaXzeuxiw0Ec19p2Aw5chl7E5ygGOb5UKo9qSiOhsaMl7gBU8UHXs', '2018-11-22 22:17:23', '2018-11-23 18:56:19'),
(3, 'Stock Master', 'stock_master', 'stock_master@gmail.com', NULL, '$2y$10$ee.lfkvV/.7cEasE5gHAcO4zzncA3qj27IdqSOxKuEcCus.NZ86Y2', '1U1U0IMVb3j9qrOygYlbxWH0ly6G972Fv2mAcx1KdNNtBKQmzyq1JZKJcKSG', '2018-11-23 18:37:51', '2018-11-23 18:56:33'),
(4, 'Administrator', 'admin', 'admin@gmail.com', NULL, '$2y$10$lQey4jLWPE76smkbwyYbpu7U2TuoeM9KoqEjmUN2xjVtt4YuNcGDa', 'L8hb2owgsdkmEKnhxYiZgRntyNACinxccsTubOvYNqUsBVbtBzdzODgkU66B', '2018-11-23 19:06:01', '2018-11-23 19:06:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_groups`
--
ALTER TABLE `product_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_groups`
--
ALTER TABLE `product_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
