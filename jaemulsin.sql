-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 31, 2020 at 03:27 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `jaemulsin`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_download` int(20) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `name`, `package_name`, `version`, `num_download`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '天音短视频', 'com.androidapp.mibo', '1.0.7', 0, 0, '2003-04-28 14:22:09', '2020-08-30 07:48:47'),
(2, '凹音短视频', 'com.aoyindsptv.phonelive', '64', 0, 0, '1983-07-06 23:14:11', '2020-08-30 07:22:25'),
(4, '掌上宝短视频', 'com.bogokjvideo.videoline', '1.25', 0, 0, '2020-08-30 14:42:41', '2020-08-30 14:42:41'),
(5, 'CHMV', 'com.hkprchmv.youyouvideo', '1.1.1', 0, 0, '1994-04-25 10:56:15', '2020-08-30 07:49:38'),
(6, '本色世界', 'com.hr.bense', '1.6.7', 0, 0, '1983-03-19 00:39:23', '2020-08-30 07:50:11'),
(7, '欢乐兑', 'com.lcwl.hld', '1.1.9', 0, 0, '2020-08-30 14:46:51', '2020-08-30 14:46:51'),
(8, '蚂蚁短视频', 'com.lnkj.antvideo', '3.2', 0, 0, '2002-11-22 00:09:10', '2020-08-30 07:50:59'),
(9, '秘乐短视频', 'com.milecn.milevideo', '2.2.3', 0, 0, '1993-12-27 21:20:08', '1985-11-06 06:14:15'),
(10, '交易吧', 'com.my.transactionbar', '0.0.38', 0, 0, '2020-08-30 14:49:59', '2020-08-30 14:49:59'),
(11, '火爆乐园', 'com.myth.pokemon', '1.3.6', 0, 0, '2002-10-06 19:49:01', '2020-08-30 07:52:24'),
(12, '众赢兼职', 'com.mz.cjjz', '2.4.6', 0, 0, '1977-04-22 19:30:59', '2020-08-30 07:52:42'),
(13, '玩乐喵', 'com.mz.wlm', '1.3.27', 0, 0, '2018-09-25 22:28:41', '2020-08-30 07:53:02'),
(14, '兼职视界', 'com.quyum.store', '1.2.1', 0, 0, '1983-11-04 03:48:37', '1992-01-02 03:10:17'),
(15, '火山极速版', 'com.ss.android.ugc.livelite', '8.0.0', 0, 0, '2020-08-22 11:21:45', '2020-08-30 07:54:07'),
(16, '芝嫲视频', 'com.ss.sesame', '1.0.27', 0, 0, '2017-08-29 09:28:47', '2020-08-30 07:54:42'),
(17, '拉手', 'com.stwlkj.lashou', '1.1.3', 0, 0, '2020-08-30 14:53:54', '2020-08-30 14:53:54'),
(18, '优贝', 'com.ubei365.youbei', '1.0.5', 0, 0, '1988-10-27 19:28:10', '2020-08-30 07:55:41'),
(19, '趣充', 'com.whwy.equchong', '1.6.4', 0, 0, '2020-08-30 14:55:06', '2020-08-30 14:55:06'),
(20, '好玩吧', 'com.x7game', '2.5.1', 0, 0, '2020-08-30 14:56:28', '2020-08-30 14:56:28'),
(21, '影粉世家极速版', 'com.yfsj.mh', '2.0.0', 0, 0, '1975-10-18 12:52:48', '2020-08-30 07:56:48'),
(22, '趣约惠', 'com.yunliantao.cn', '2.1.0', 0, 0, '2020-08-30 14:57:26', '2020-08-30 14:57:26'),
(23, 'U比生活', 'uni.UNI63344FD', '2.13', 0, 0, '1992-04-23 13:06:35', '2020-08-30 07:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `app_resources`
--

CREATE TABLE `app_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_resources`
--

INSERT INTO `app_resources` (`id`, `app_id`, `type_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-08-30 09:57:34', '2020-08-30 09:57:34'),
(2, 2, 1, '2020-08-30 09:58:16', '2020-08-30 09:58:16'),
(3, 5, 1, '2020-08-30 10:58:54', '2020-08-30 10:58:54'),
(4, 6, 1, '2020-08-30 10:59:16', '2020-08-30 10:59:16'),
(5, 19, 1, '2020-08-30 11:02:53', '2020-08-30 11:02:53'),
(6, 8, 1, '2020-08-30 11:03:57', '2020-08-30 11:03:57'),
(7, 9, 1, '2020-08-30 11:06:33', '2020-08-30 11:06:33'),
(8, 7, 1, '2020-08-30 11:07:25', '2020-08-30 11:09:05'),
(9, 4, 1, '2020-08-30 11:10:01', '2020-08-30 11:10:01'),
(10, 10, 1, '2020-08-30 11:10:15', '2020-08-30 12:35:59'),
(11, 11, 1, '2020-08-30 11:19:25', '2020-08-30 11:19:25'),
(12, 12, 1, '2020-08-30 12:09:11', '2020-08-30 12:09:11'),
(13, 13, 1, '2020-08-30 12:09:37', '2020-08-30 12:09:37'),
(14, 14, 1, '2020-08-30 12:09:49', '2020-08-30 12:09:49'),
(15, 15, 1, '2020-08-30 12:11:23', '2020-08-30 18:03:19'),
(16, 16, 1, '2020-08-30 12:11:35', '2020-08-30 12:11:35'),
(17, 20, 1, '2020-08-30 12:11:57', '2020-08-30 12:11:57'),
(18, 21, 1, '2020-08-30 12:12:10', '2020-08-30 12:12:10'),
(19, 22, 1, '2020-08-30 12:14:49', '2020-08-30 12:14:49'),
(20, 15, 2, '2020-08-30 17:34:34', '2020-08-30 18:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL DEFAULT '1',
  `note` text COLLATE utf8mb4_unicode_ci,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` timestamp NULL DEFAULT NULL,
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `email`, `phone`, `user_name`, `device_id`, `gender`, `note`, `province`, `city`, `street`, `address1`, `address2`, `phone_verified_at`, `password`, `expire_at`, `is_blocked`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'pch@qq.com', '1234567890', 'pch', '5', 1, 'tretr', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zrg/Ya7tMlPNGAUQeLw..eIljq.gOGwISAzRR.BHl2g9/IPSBIYYm', '2020-10-27 16:00:00', 0, NULL, '2020-08-25 07:22:23', '2020-08-29 03:36:14'),
(7, 'pch@mail.china.com', '86123456789', 'pch2', '4', 2, 'test', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$L31TOaExIIM5FhK5GD6xKO/3pprhF7TGupkDuEYDxXBrLIZkzNYLO', '2020-08-30 16:00:00', 0, NULL, '2020-08-25 09:41:17', '2020-08-29 01:11:48'),
(8, 'pch@mail.com', '86458794654', 'pch3', '6', 2, 'asdfasefdf', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$B.ZUGc/sn6mCA8bq8FYpTup2TGhFMa7ZaV9OdzCEA7c9KrlK70wgi', '2020-10-14 16:00:00', 0, NULL, '2020-08-26 02:12:28', '2020-08-29 01:11:17'),
(10, 'bjyjdwit@126.com', '13354159770', 'rcjms', '3', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DoW3XsutKVQwJPHE8YPaBeVv3jRlzYE.kL/B6ABnJJW9rpTboS/mq', '2020-11-23 16:00:00', 0, NULL, '2020-08-30 17:56:49', '2020-08-30 17:59:45'),
(11, 'tiancaiwesley@163.com', '13358786800', 'happy', '8', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ppZwhb5hxx7XqRqP.e20POAT75Cr20XqXkVqhVLzsi1Ls4RLrkMoa', '2020-10-28 16:00:00', 0, NULL, '2020-08-30 18:56:45', '2020-08-30 19:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imei` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `imei`, `type_id`, `created_at`, `updated_at`) VALUES
(3, '863604039313098', 2, '2020-08-25 05:55:47', '2020-08-25 05:55:47'),
(4, '864695048076360', 1, '2020-08-25 06:03:11', '2020-08-25 06:03:11'),
(5, '863938050707766', 1, '2020-08-25 06:03:40', '2020-08-25 06:03:40'),
(6, '353418119122726', 1, '2020-08-25 06:03:59', '2020-08-25 06:03:59'),
(8, '863938054424335', 1, '2020-08-30 18:44:35', '2020-08-30 18:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `device_types`
--

CREATE TABLE `device_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `device_types`
--

INSERT INTO `device_types` (`id`, `name`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Redmi', 'Redmi', '2020-08-30 09:57:13', '2020-08-30 09:57:13'),
(2, 'Honor6x', NULL, '2020-08-30 17:34:15', '2020-08-30 17:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2020_08_20_082646_create_apps_table', 1),
(17, '2020_08_25_002909_create_device_types_table', 2),
(18, '2020_08_25_013011_create_devices_table', 3),
(19, '2020_08_20_082632_create_customers_table', 4),
(20, '2020_08_26_154722_create_app_resources_table', 5),
(21, '2020_08_29_100616_create_news_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kunimoto', 'mobilestar920@gmail.com', NULL, '$2y$10$auwoWacBwK8o4rsBUDkYk.UPrrZYPxNyCEocbY.7OFhAAZwDu6X5W', NULL, '2020-08-20 01:45:50', '2020-08-20 01:45:50'),
(2, 'admin', 'admin@admin.com', NULL, '$2y$10$33ahyMVQDats1jqHL2VTzeHpogL/9HtthpfY2IDH5/fatfjSjAvLa', NULL, '2020-08-26 08:31:34', '2020-08-26 08:31:34'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$NUWLA6giupS6sYRmGR968eE/h0tVtLria2SKhIwfoJhK4iV53FC.K', NULL, '2020-08-30 17:47:54', '2020-08-30 17:47:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_resources`
--
ALTER TABLE `app_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `customers_device_id_unique` (`device_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `devices_emei_unique` (`imei`);

--
-- Indexes for table `device_types`
--
ALTER TABLE `device_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `device_types_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `app_resources`
--
ALTER TABLE `app_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `device_types`
--
ALTER TABLE `device_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
