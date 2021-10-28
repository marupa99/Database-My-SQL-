-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 03:09 PM
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
-- Database: `ecom_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts_us`
--

CREATE TABLE `abouts_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'about us',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts_us`
--

INSERT INTO `abouts_us` (`id`, `body`, `created_at`, `updated_at`) VALUES
(1, 'about us', '2021-09-17 21:34:32', '2021-09-17 21:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_home_page` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `in_home_page`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Computer', 'computer', '1', 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(2, 'Samsung', 'samsung', '0', 1, NULL, '2021-09-21 07:54:41', '2021-09-21 07:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `registered` tinyint(4) NOT NULL DEFAULT 1,
  `qty` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_attr_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `registered`, `qty`, `product_id`, `product_attr_id`, `created_at`, `updated_at`) VALUES
(3, 5, 1, 9, 1, 1, '2021-09-30 03:33:40', '2021-09-30 03:33:40'),
(4, 5, 1, 9, 1, 2, '2021-09-30 03:33:43', '2021-09-30 03:33:43'),
(5, 6, 1, 1, 1, 1, '2021-09-30 03:38:51', '2021-09-30 03:38:51'),
(6, 6, 1, 1, 1, 2, '2021-09-30 03:38:57', '2021-09-30 03:38:57'),
(9, 11, 1, 5, 1, 1, '2021-09-30 13:14:26', '2021-09-30 13:14:44'),
(11, 8921981133, 0, 1, 1, 1, '2021-10-16 10:59:23', '2021-10-16 10:59:23'),
(12, 8921981133, 0, 1, 1, 2, '2021-10-27 09:45:40', '2021-10-27 09:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_home_page` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `parent_category` bigint(20) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `in_home_page`, `status`, `parent_category`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Computer', 'computer', '1', 1, NULL, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(2, 'Mobile', 'mobile', '1', 1, NULL, NULL, '2021-09-21 07:50:28', '2021-09-21 07:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `value`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '#d4cece', 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(2, '#f76262', 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(3, '#6b6b6b', 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(4, '#78b6f5', 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `registered` tinyint(4) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `readed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `body`, `registered`, `deleted_at`, `readed_at`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', 'lol', 'kiki', 1, NULL, NULL, '2021-09-30 13:12:35', '2021-09-30 13:12:35'),
(2, 'Marupa Akter', 'mhpohely99@gmail.com', 'i love you', 'what do you  do', 1, NULL, NULL, '2021-09-30 13:13:30', '2021-09-30 13:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` bigint(20) NOT NULL,
  `cart_min_value` bigint(20) NOT NULL,
  `type` enum('P','F') COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_on` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `limit` bigint(20) NOT NULL DEFAULT 0,
  `used` bigint(20) NOT NULL DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `code`, `value`, `cart_min_value`, `type`, `expired_on`, `status`, `limit`, `used`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'First Shop', 'first123', 100, 300, 'F', '2026-09-18', 1, 0, 0, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_id` bigint(20) NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_id`, `model_type`, `url`, `public_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'App\\Models\\Slider', 'https://res.cloudinary.com/nishanbd-shop/image/upload/v1631940291/slider/2-1631940286.jpg', 'slider/2-1631940286', '2021-09-17 22:44:51', '2021-09-17 22:44:51'),
(3, 1, 'App\\Models\\Category', 'https://res.cloudinary.com/nishanbd-shop/image/upload/v1631940533/category/computer-1631940531.jpg', 'category/computer-1631940531', '2021-09-17 22:48:53', '2021-09-17 22:48:53'),
(4, 1, 'App\\Models\\Brand', 'https://res.cloudinary.com/nishanbd-shop/image/upload/v1631940562/brand/computer-1631940560.jpg', 'brand/computer-1631940560', '2021-09-17 22:49:22', '2021-09-17 22:49:22'),
(5, 2, 'App\\Models\\ProductDetail', 'https://res.cloudinary.com/nishanbd-shop/image/upload/v1631940732/products/desktop-computer__1-1631940731.jpg', 'products/desktop-computer__1-1631940731', '2021-09-17 22:52:13', '2021-09-17 22:52:13'),
(6, 1, 'App\\Models\\ProductDetail', 'https://res.cloudinary.com/nishanbd-shop/image/upload/v1631941273/products/desktop-computer__0-1631941272.jpg', 'products/desktop-computer__0-1631941272', '2021-09-17 23:01:14', '2021-09-17 23:01:14'),
(7, 1, 'logo_primary', 'https://res.cloudinary.com/nishanbd-shop/image/upload/v1631941441/My%20Shop/logo_primary-1631941440.png', 'My Shop/logo_primary-1631941440', '2021-09-17 23:04:02', '2021-09-17 23:04:02'),
(8, 1, 'logo_secondary', 'https://res.cloudinary.com/nishanbd-shop/image/upload/v1631941443/My%20Shop/logo_secondary-1631941442.png', 'My Shop/logo_secondary-1631941442', '2021-09-17 23:04:03', '2021-09-17 23:04:03'),
(9, 1, 'favicon', 'https://res.cloudinary.com/nishanbd-shop/image/upload/v1631941445/My%20Shop/favicon-1631941443.png', 'My Shop/favicon-1631941443', '2021-09-17 23:04:05', '2021-09-17 23:04:05'),
(10, 1, 'App\\Models\\Slider', 'https://res.cloudinary.com/nishanbd-shop/image/upload/v1631941557/slider/1-1631941555.jpg', 'slider/1-1631941555', '2021-09-17 23:05:58', '2021-09-17 23:05:58'),
(11, 2, 'App\\Models\\Category', 'https://res.cloudinary.com/nishanbd-shop/image/upload/v1632232226/category/mobile-1632232224.jpg', 'category/mobile-1632232224', '2021-09-21 07:50:28', '2021-09-21 07:50:28'),
(12, 2, 'App\\Models\\Brand', 'https://res.cloudinary.com/nishanbd-shop/image/upload/v1632232479/brand/samsung-1632232478.jpg', 'brand/samsung-1632232478', '2021-09-21 07:54:41', '2021-09-21 07:54:41');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_02_15_060829_create_categories_table', 1),
(6, '2021_02_23_083436_create_cache_table', 1),
(7, '2021_02_24_110610_create_coupons_table', 1),
(8, '2021_02_24_143654_sizes', 1),
(9, '2021_02_25_120532_create_brands_table', 1),
(10, '2021_02_26_084510_create_colors_table', 1),
(11, '2021_02_28_121819_create_products_table', 1),
(12, '2021_02_28_124727_create_product_details_table', 1),
(13, '2021_03_05_165742_create_taxes_table', 1),
(14, '2021_03_07_143250_create_sliders_table', 1),
(15, '2021_03_09_122029_create_carts_table', 1),
(16, '2021_03_10_143901_create_wishlists_table', 1),
(17, '2021_03_17_111750_create_abouts_us_table', 1),
(18, '2021_03_17_120344_create_my_shops_table', 1),
(19, '2021_03_18_074142_create_contacts_table', 1),
(20, '2021_04_06_145141_create_orders_table', 1),
(21, '2021_04_06_153351_create_order_details_table', 1),
(22, '2021_04_07_072638_create_reviews_table', 1),
(23, '2021_05_07_074433_create_jobs_table', 1),
(24, '2021_05_08_123326_add_rows_to_orders_table', 1),
(25, '2021_05_13_085756_create_permission_tables', 1),
(26, '2021_05_13_153332_add_rows_to_permissions_table', 1),
(27, '2021_07_13_182746_create_media_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 1),
(11, 'App\\Models\\User', 1),
(12, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 1),
(14, 'App\\Models\\User', 1),
(15, 'App\\Models\\User', 1),
(16, 'App\\Models\\User', 1),
(17, 'App\\Models\\User', 1),
(18, 'App\\Models\\User', 1),
(19, 'App\\Models\\User', 1),
(20, 'App\\Models\\User', 1),
(21, 'App\\Models\\User', 1),
(22, 'App\\Models\\User', 1),
(23, 'App\\Models\\User', 1),
(24, 'App\\Models\\User', 1),
(25, 'App\\Models\\User', 1),
(26, 'App\\Models\\User', 1),
(27, 'App\\Models\\User', 1),
(28, 'App\\Models\\User', 1),
(29, 'App\\Models\\User', 1),
(30, 'App\\Models\\User', 1),
(31, 'App\\Models\\User', 1),
(32, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `my_shops`
--

CREATE TABLE `my_shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Laravel',
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Laravel E-Com',
  `mobile1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0xxxxxxxxxx',
  `mobile2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'laravel@mail.com',
  `mail2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Address of our shop',
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'map url',
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UTC',
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_shops`
--

INSERT INTO `my_shops` (`id`, `name`, `short_description`, `mobile1`, `mobile2`, `mail1`, `mail2`, `address`, `map`, `timezone`, `youtube`, `facebook`, `twitter`, `instagram`, `linkedin`, `google_plus`) VALUES
(1, 'laravel', 'Laravel E-Com', '0xxxxxxxxxx', NULL, 'laravel@mail.com', NULL, 'Address of our shop', 'map url', 'UTC', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` bigint(20) NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_price` bigint(20) NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_on` datetime DEFAULT NULL,
  `delivered_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_attr_id` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group_by`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view user', 'user', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(2, 'view dashboard', 'dashboard', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(3, 'view contacts', 'contacts', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(4, 'view order', 'order', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(5, 'manage order', 'order', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(6, 'edit user', 'user', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(7, 'manage about us', 'about us', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(8, 'manage my shop', 'my shop', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(9, 'view category', 'category', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(10, 'add category', 'category', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(11, 'edit category', 'category', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(12, 'view coupon', 'coupon', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(13, 'add coupon', 'coupon', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(14, 'edit coupon', 'coupon', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(15, 'view size', 'size', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(16, 'add size', 'size', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(17, 'edit size', 'size', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(18, 'view brand', 'brand', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(19, 'add brand', 'brand', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(20, 'edit brand', 'brand', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(21, 'view color', 'color', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(22, 'add color', 'color', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(23, 'edit color', 'color', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(24, 'view product', 'product', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(25, 'add product', 'product', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(26, 'edit product', 'product', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(27, 'view tax', 'tax', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(28, 'add tax', 'tax', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(29, 'edit tax', 'tax', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(30, 'view slider', 'slider', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(31, 'add slider', 'slider', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(32, 'edit slider', 'slider', 'web', '2021-09-17 21:34:32', '2021-09-17 21:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `technical_specification` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usage` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warrenty` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `promo` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `discounted` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `best_seller` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `slug`, `model`, `short_description`, `description`, `keywords`, `technical_specification`, `usage`, `warrenty`, `lead_time`, `tax_id`, `promo`, `featured`, `discounted`, `trending`, `best_seller`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Desktop Computer', 'desktop-computer', NULL, '<h1>&nbsp;</h1><p>Short Description</p>', '<h1>&nbsp;</h1><p>Description</p>', 'desktop, computer', '', '', '', '10', 1, 0, 1, 0, 0, 0, 1, NULL, '2021-09-17 21:34:32', '2021-09-17 22:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mrp` bigint(20) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL DEFAULT 0,
  `size_id` bigint(20) NOT NULL,
  `color_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `order_id` tinyint(4) NOT NULL DEFAULT 1,
  `alert` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `sku`, `mrp`, `price`, `qty`, `size_id`, `color_id`, `product_id`, `status`, `order_id`, `alert`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'sku', 3567, 3450, 100, 1, 1, 1, 1, 1, 0, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(2, 'digi', 700, 650, 200, 1, 1, 1, 1, 2, 0, NULL, '2021-09-17 22:52:11', '2021-09-17 22:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` tinyint(4) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_attr_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'xs', 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(2, 'sm', 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(3, 'md', 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(4, 'lg', 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(5, 'xl', 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `sub_heading`, `heading`, `link`, `link_text`, `order_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Shop from here', 'Shop', 'http://localhost/shop', 'Shop Now', 1, 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32'),
(2, 'This is our shop', 'Our Shop', 'http://localhost/shop', 'Shop Now', 2, 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `value`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 10, '10% tax', 1, NULL, '2021-09-17 21:34:32', '2021-09-17 21:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `verification_code`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `mobile`, `address`, `city`, `state`, `zip`, `company`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'Admin', 'admin@gmail.com', NULL, NULL, '$2y$10$wRSfKXxKOEfbXqLpw0ukZ.6qoSMZAN7rWKVl5d8DqOgeGAdk4loDW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-10-16 19:35:22', '2021-10-16 19:35:22'),
(13, 'laravel', 'ecom@mail.com', NULL, NULL, '$2y$10$2VkZVTWnD6TxyvcAywVUDOlxGk1Sg6knN/OA/tGYeA4QdsJIFPj/.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-10-16 19:39:30', '2021-10-16 19:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_attr_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `product_attr_id`, `created_at`, `updated_at`) VALUES
(2, 6, 1, 2, '2021-09-30 03:38:58', '2021-09-30 03:38:58'),
(3, 11, 1, 1, '2021-09-30 13:10:27', '2021-09-30 13:10:27'),
(4, 11, 1, 2, '2021-09-30 13:10:45', '2021-09-30 13:10:45'),
(5, 1, 1, 1, '2021-10-03 11:54:48', '2021-10-03 11:54:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts_us`
--
ALTER TABLE `abouts_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

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
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `my_shops`
--
ALTER TABLE `my_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
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
-- AUTO_INCREMENT for table `abouts_us`
--
ALTER TABLE `abouts_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `my_shops`
--
ALTER TABLE `my_shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
