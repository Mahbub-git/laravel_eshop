-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2019 at 03:11 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'New Collection jeans', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '1577562424.jpg', '2019-12-28 13:47:04', '2019-12-28 13:47:04'),
(3, 'Another Clothes', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '1577562460.png', '2019-12-28 13:47:40', '2019-12-28 13:47:40'),
(4, 'Easy brand', 'new collection', '1577799584.jpg', '2019-12-31 07:39:44', '2019-12-31 07:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(11, 'Dress', 'Mens Shirt', 'shirt.jpg', NULL, '2019-12-27 16:54:34', '2019-12-27 16:54:34'),
(12, 'Pants', 'New Category Pants', '1577465738.jpg', 11, '2019-12-27 10:55:38', '2019-12-27 10:55:38'),
(13, 'Cap', 'Cap Cap Cap Cap Cap Cap Cap Cap Cap Cap Cap Cap', '1577465800.jpg', 11, '2019-12-27 10:56:40', '2019-12-27 10:56:40'),
(14, 'Shoes', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', '1577547602.jpg', NULL, '2019-12-28 09:40:02', '2019-12-28 09:40:02'),
(15, 'Dress', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', '1577547687.jpg', 11, '2019-12-28 09:41:27', '2019-12-28 09:41:27'),
(16, 'Food', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', '1577547733.png', NULL, '2019-12-28 09:42:13', '2019-12-28 09:42:13'),
(17, 'Fruits', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1577551062.jpg', 16, '2019-12-28 10:37:42', '2019-12-28 10:37:42'),
(18, 'Another Shoes', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', '1577552221.jpg', 14, '2019-12-28 10:57:01', '2019-12-28 10:57:01'),
(19, 'Women\'s shoes', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', '1577552247.jpg', 14, '2019-12-28 10:57:27', '2019-12-28 10:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL COMMENT 'Division Table Id',
  `district` int(10) UNSIGNED NOT NULL COMMENT 'District Table Id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `phone_no`, `email`, `password`, `street_address`, `division_id`, `district`, `created_at`, `updated_at`) VALUES
(5, 'Md Rakibul', 'Islam', '01768618xxx', 'admin@gmail.com', '$2y$10$C0UZwLmgnFy0MTXKc88YseznjUiNI4qJONSiZEOQR1R14xryDKcJ6', 'K.C Road', 1, 1, '2019-12-31 07:35:46', '2019-12-31 07:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Munshiganj -District', 1, '2019-12-30 07:13:19', '2019-12-30 07:28:09'),
(3, 'Barguna district', 4, '2019-12-30 07:16:56', '2019-12-30 07:16:56'),
(4, 'Narail', 5, '2019-12-30 07:17:50', '2019-12-30 07:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, '2019-12-30 05:39:45', '2019-12-30 05:39:45'),
(4, 'Barishal', 2, '2019-12-30 07:16:30', '2019-12-30 07:16:30'),
(5, 'Khulna', 4, '2019-12-30 07:17:37', '2019-12-30 07:17:37');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featureds`
--

CREATE TABLE `featureds` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_24_102508_create_categories_table', 1),
(6, '2019_12_24_102625_create_brands_table', 1),
(7, '2019_12_24_102653_create_admins_table', 1),
(8, '2019_12_24_103508_create_product_images_table', 1),
(9, '2019_12_24_110226_create_featureds_table', 1),
(11, '2019_12_24_220419_create_products_table', 2),
(14, '2019_12_30_105611_create_divisions_table', 4),
(15, '2019_12_30_105834_create_districts_table', 4),
(17, '2019_12_31_091712_create_customers_table', 6),
(18, '2014_10_12_000000_create_users_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mdrakibul.islam8001@gmail.com', '$2y$10$VjGTEX8cg0HWnrLDQIZhauXn2Vdaq5HXaq8FP/rVun1jMjGdTdmmC', '2019-12-29 13:45:16'),
('15255017@uits.edu.bd', '$2y$10$3RDFOrwJoaRQcZ2nPZ5.V.r6.7/SQOdnu0uDeX1nWoYc09LVRNceS', '2019-12-29 14:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `product_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `offer_price` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_title`, `short_desc`, `product_price`, `offer_price`, `quantity`, `status`, `admin_id`, `created_at`, `updated_at`) VALUES
(21, 14, 3, 'Electronics', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 10000, NULL, 3, 1, 1, '2019-12-27 04:22:34', '2019-12-28 12:31:13'),
(25, 14, 3, 'flag', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 100, NULL, 1, 1, 1, '2019-12-28 11:01:39', '2019-12-28 11:01:39'),
(26, 14, 3, 'New Shoes', 'Women\'s shoes', 2000, NULL, 5, 1, 1, '2019-12-29 04:04:17', '2019-12-29 04:04:17'),
(27, 15, 3, 'Shirt', 'Men\'s Nice Shirt', 1200, NULL, 2, 0, 1, '2019-12-29 04:24:33', '2019-12-29 04:24:33'),
(28, 15, 3, 'New Dress --Winter dress', 'Recently collection dress', 2500, NULL, 5, 0, 1, '2019-12-29 04:26:08', '2019-12-29 08:53:39'),
(29, 16, 2, 'Multiple Products', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 20000, NULL, 3, 1, 1, '2019-12-29 09:04:43', '2019-12-29 09:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(6, 8, '1577260023.jpg', '2019-12-25 01:47:04', '2019-12-25 01:47:04'),
(7, 9, '1577282162.jpg', '2019-12-25 07:56:02', '2019-12-25 07:56:02'),
(8, 10, '1577284218.jpg', '2019-12-25 08:30:18', '2019-12-25 08:30:18'),
(9, 10, '1577284218.jpg', '2019-12-25 08:30:18', '2019-12-25 08:30:18'),
(10, 10, '1577284218.jpg', '2019-12-25 08:30:18', '2019-12-25 08:30:18'),
(11, 11, '1577306281.jpg', '2019-12-25 14:38:01', '2019-12-25 14:38:01'),
(12, 12, '1577359127.jpg', '2019-12-26 05:18:47', '2019-12-26 05:18:47'),
(13, 13, '1577388430.jpeg', '2019-12-26 13:27:10', '2019-12-26 13:27:10'),
(14, 14, '1577390676.jpeg', '2019-12-26 14:04:36', '2019-12-26 14:04:36'),
(15, 14, '1577390676.jpg', '2019-12-26 14:04:36', '2019-12-26 14:04:36'),
(16, 14, '1577390676.jpg', '2019-12-26 14:04:36', '2019-12-26 14:04:36'),
(17, 15, '1577394873.jpg', '2019-12-26 15:14:33', '2019-12-26 15:14:33'),
(18, 16, '1577394931.jpeg', '2019-12-26 15:15:31', '2019-12-26 15:15:31'),
(19, 17, '1577394972.jpg', '2019-12-26 15:16:12', '2019-12-26 15:16:12'),
(20, 20, '1577396775.jpeg', '2019-12-26 15:46:15', '2019-12-26 15:46:15'),
(21, 21, '1577442154.jpg', '2019-12-27 04:22:34', '2019-12-27 04:22:34'),
(22, 21, '1577442239.jpg', '2019-12-27 04:23:59', '2019-12-27 04:23:59'),
(23, 21, '1577475675.jpg', '2019-12-27 13:41:15', '2019-12-27 13:41:15'),
(24, 21, '1577475752.jpg', '2019-12-27 13:42:32', '2019-12-27 13:42:32'),
(25, 25, '1577552499.jpg', '2019-12-28 11:01:39', '2019-12-28 11:01:39'),
(26, 26, '1577613857.jpg', '2019-12-29 04:04:17', '2019-12-29 04:04:17'),
(27, 27, '1577615073.jpg', '2019-12-29 04:24:33', '2019-12-29 04:24:33'),
(28, 28, '1577615168.jpg', '2019-12-29 04:26:08', '2019-12-29 04:26:08'),
(29, 29, '15776318830.png', '2019-12-29 09:04:44', '2019-12-29 09:04:44'),
(30, 29, '15776318841.png', '2019-12-29 09:04:44', '2019-12-29 09:04:44'),
(31, 29, '15776318842.png', '2019-12-29 09:04:44', '2019-12-29 09:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_phone_no_unique` (`phone_no`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featureds`
--
ALTER TABLE `featureds`
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
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featureds`
--
ALTER TABLE `featureds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
