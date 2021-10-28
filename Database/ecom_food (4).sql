-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 03:08 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin Pohely', 'pohely@gmail.com', NULL, '$2y$10$Pmz9qy.YUas65SCZH2jALOLBcA.VNSsFT.YixVmxn6uQd2AYf35Ui', '01727387478', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cocacola', 1, '2021-10-21 13:35:47', NULL),
(2, 'DesiDosh', 0, '2021-10-21 13:35:53', '2021-10-21 13:36:12'),
(3, 'fizz up', 1, '2021-10-21 22:25:18', NULL),
(4, '7+up', 1, '2021-10-21 22:25:21', NULL),
(5, 'indian', 1, '2021-10-21 22:25:24', NULL),
(6, 'Daraz', 1, '2021-10-21 22:25:36', NULL),
(7, 'Bata', 1, '2021-10-21 22:25:41', NULL),
(8, 'Panasonic', 1, '2021-10-21 22:25:57', NULL),
(9, 'Sony', 1, '2021-10-21 22:26:02', NULL),
(10, 'Pakistani', 1, '2021-10-21 22:26:13', NULL),
(11, 'Appex', 1, '2021-10-21 22:26:23', NULL),
(12, 'Organic', 1, '2021-10-21 23:57:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `user_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `qty`, `price`, `user_ip`, `created_at`, `updated_at`) VALUES
(37, 8, 1, 300, '127.0.0.1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MobilePhone', 1, '2021-10-21 13:35:17', NULL),
(2, 'Clothes', 1, '2021-10-21 13:35:22', '2021-10-22 00:48:55'),
(3, 'Food', 1, '2021-10-21 22:15:38', NULL),
(4, 'lovely', 0, '2021-10-21 22:23:33', '2021-10-22 00:48:41'),
(5, 'Electronics', 1, '2021-10-21 22:23:44', NULL),
(6, 'Male Clothing', 1, '2021-10-21 22:23:52', '2021-10-22 00:04:54'),
(7, 'Fast Food', 0, '2021-10-21 22:24:05', '2021-10-22 00:05:07'),
(8, 'Vegetables', 1, '2021-10-21 22:24:10', NULL),
(9, 'Medicine', 0, '2021-10-21 22:24:15', '2021-10-22 00:04:59'),
(10, 'Jwellery', 0, '2021-10-21 22:24:25', '2021-10-22 00:47:55'),
(11, 'Gold', 0, '2021-10-21 22:24:37', '2021-10-22 00:04:49'),
(12, 'Dimond', 0, '2021-10-21 22:24:45', '2021-10-21 23:08:15'),
(13, 'Female Items', 1, '2021-10-21 23:52:46', NULL),
(14, 'Fresh Fruits', 1, '2021-10-21 23:57:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `coupon_Validity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `discount`, `coupon_Validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'POHELY', 90, '2021-10-27', 1, '2021-10-26 07:06:00', NULL),
(2, 'POHELYT55', 20, '2021-10-27', 1, '2021-10-26 07:06:27', '2021-10-26 07:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2021_10_18_030949_create_admins_table', 1),
(15, '2021_10_20_124822_create_categories_table', 1),
(16, '2021_10_21_050436_create_brands_table', 1),
(17, '2021_10_21_082437_create_products_table', 1),
(18, '2021_10_21_182624_create_coupons_table', 1),
(19, '2021_10_22_113759_create_carts_table', 2),
(20, '2021_10_22_124953_create_carts_table', 3),
(21, '2021_10_23_153748_create_wishlists_table', 4),
(22, '2021_10_23_154600_create_wishlists_table', 5),
(29, '2021_10_23_191634_create_orders_table', 6),
(30, '2021_10_23_191713_create_order_items_table', 6),
(31, '2021_10_23_191750_create_shippings_table', 6),
(32, '2021_10_26_125405_create_coupons_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice_no`, `payment_type`, `total`, `subtotal`, `coupon_discount`, `created_at`, `updated_at`) VALUES
(1, 5, '76773640', 'handcash', '7200', '9000', 20, '2021-10-26 13:08:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 1, '2021-10-26 13:08:11', NULL),
(2, 1, 5, 1, '2021-10-26 13:08:12', NULL),
(3, 1, 9, 2, '2021-10-26 13:08:12', NULL),
(4, 1, 14, 1, '2021-10-26 13:08:12', NULL);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_slug`, `product_code`, `product_quantity`, `short_description`, `long_description`, `price`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(5, 13, 5, 'Three Piece', 'three-piece', 'th1', '10', '<p>vdgrgtbgbg</p>', '<p>gbrgbgbgbg</p>', 1300, 'fontend/img/product/upload/1714298196702221.jpg', 'fontend/img/product/upload/1714298196728994.jpg', 'fontend/img/product/upload/1714298196742461.jpg', 1, '2021-10-21 23:56:00', NULL),
(6, 14, 12, 'Orange Fruit', 'orange-fruit', 'Or1', '10000', '<p>jujhnhnt</p>', '<p>tujujjh</p>', 500, 'fontend/img/product/upload/1714298355248813.jpg', 'fontend/img/product/upload/1714298355268088.jpg', 'fontend/img/product/upload/1714298355280843.jpg', 1, '2021-10-21 23:58:32', NULL),
(7, 3, 12, 'Chips', 'chips', 'CH1', '1000', '<p>NHNBB BDVB</p>', '<p>hyhhbhb</p>', 10, 'fontend/img/product/upload/1714298469200441.jpg', 'fontend/img/product/upload/1714298469217563.jpg', 'fontend/img/product/upload/1714298469230075.jpg', 1, '2021-10-22 00:00:20', NULL),
(8, 8, 12, 'Vegetables', 'vegetables', 'v1', '3000', '<p>ujhnh</p>', '<p>nnbgn</p>', 300, 'fontend/img/product/upload/1714298527212172.jpg', 'fontend/img/product/upload/1714298527235473.jpg', 'fontend/img/product/upload/1714298527248222.jpg', 1, '2021-10-22 00:01:16', '2021-10-22 01:20:32'),
(9, 6, 7, 'Shoes', 'shoes', 'sh1', '50', '<p>8molmo8kujh</p>', '<p>ytgrgthyhn</p>', 1100, 'fontend/img/product/upload/1714298579836365.jpg', 'fontend/img/product/upload/1714298579853096.jpg', 'fontend/img/product/upload/1714298579865959.jpg', 1, '2021-10-22 00:02:06', NULL),
(10, 14, 12, 'Red Meat', 'red-meat', 'rd1', '100', '<p>j8j98hihyh</p>', '<p>vvbgbgbhh</p>', 2000, 'fontend/img/product/upload/1714298631465766.jpg', 'fontend/img/product/upload/1714298631482744.jpg', 'fontend/img/product/upload/1714298631495444.jpg', 1, '2021-10-22 00:02:55', NULL),
(11, 6, 10, 'Jumper', 'jumper', 'ju1', '100', '<p>9kuyhghgbgbvb</p>', '<p>ghnjkl</p>', 1000, 'fontend/img/product/upload/1714298687524745.jpg', 'fontend/img/product/upload/1714298687594301.jpg', 'fontend/img/product/upload/1714298687608769.jpg', 1, '2021-10-22 00:03:49', NULL),
(12, 1, 9, 'Mobile phone', 'mobile-phone', 'mblph1', '50', '<p>v v&nbsp;&nbsp;</p>', '<p>oliklk</p>', 100000, 'fontend/img/product/upload/1714303595559336.png', 'fontend/img/product/upload/1714303595673000.png', 'fontend/img/product/upload/1714303595700642.png', 1, '2021-10-22 01:21:49', NULL),
(13, 5, 9, 'Watch', 'watch', 'wt1', '10', '<p>kkikiki</p>', '<p>kki</p>', 1000, 'fontend/img/product/upload/1714303645540264.jpg', 'fontend/img/product/upload/1714303645557115.jpg', 'fontend/img/product/upload/1714303645570844.jpg', 1, '2021-10-22 01:22:37', NULL),
(14, 2, 10, 'sharee', 'sharee', 'sh1', '2000', '<p>vcvbbnnmmjhb</p>', '<p>bgbgngjjcb</p>', 5000, 'fontend/img/product/upload/1714303731946805.jpg', 'fontend/img/product/upload/1714303731967679.jpg', 'fontend/img/product/upload/1714303731982568.jpg', 1, '2021-10-22 01:23:59', NULL),
(15, 2, 6, 'Tops', 'tops', 'tp1', '100', '<p>k,kmm hn&nbsp;</p>', '<p>vfgfhhjg</p>', 200, 'fontend/img/product/upload/1714303778004240.jpg', 'fontend/img/product/upload/1714303778022724.jpg', 'fontend/img/product/upload/1714303778037626.jpg', 1, '2021-10-22 01:24:43', NULL),
(16, 6, 5, 'Kids Duti', 'kids-duti', 'kd12', '100', '<p>jkmjmh</p>', '<p>hnhmj,mj</p>', 250, 'fontend/img/product/upload/1714303818995766.jpg', 'fontend/img/product/upload/1714303819023476.jpg', 'fontend/img/product/upload/1714303819042132.jpg', 1, '2021-10-22 01:25:22', '2021-10-25 22:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `shipping_first_name`, `shipping_last_name`, `shipping_email`, `shipping_phone`, `address`, `state`, `post_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'Marupa', 'Akter', 'mhpohely99@gmail.com', '01727387478', 'Oskhali Bazar, N/A', 'N/A', 3890, '2021-10-26 13:08:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Marupa Akter', 'mhpohely99@gmail.com', NULL, '$2y$10$UYW04XSLvx1Vi9nRZmIuh.VSFZbuM/EHtNlYClM25j7NqpulnV.Ca', NULL, '2021-10-25 12:50:04', '2021-10-25 12:50:04'),
(6, 'pp', 'mp@gm', NULL, '$2y$10$9FuhAeQz6IFSFWURTsFntuDS3FtK2k7uvGB.oo1zzuRxgHwxLuWTS', NULL, '2021-10-27 10:17:53', '2021-10-27 10:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 2, 6, NULL, NULL),
(4, 2, 6, NULL, NULL),
(5, 1, 6, NULL, NULL),
(6, 5, 5, NULL, NULL),
(7, 5, 15, NULL, NULL),
(8, 5, 14, NULL, NULL),
(10, 5, 13, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
