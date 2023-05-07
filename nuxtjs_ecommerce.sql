-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2023 at 09:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nuxtjs_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 0, 'پیتزا', NULL, NULL, '2022-05-10 05:28:26', '2022-05-10 06:16:42'),
(2, 0, 'برگر', 'Dignissimos vel odit aliquam et cupiditate sunt minus aut impedit.', NULL, '2022-05-10 05:33:04', '2022-05-10 05:33:04'),
(3, 0, 'پیش غذا و سالاد', 'Labore eos velit laboriosam in.', NULL, '2022-05-10 05:33:31', '2022-05-10 05:33:31'),
(4, 0, 'نوشیدنی', 'Ipsam numquam dolores eveniet modi non hic.', NULL, '2022-05-10 05:33:40', '2022-05-10 05:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `province_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'تهران', 1, NULL, NULL, NULL),
(5, 'شیراز', 2, NULL, NULL, NULL),
(6, 'آباده', 2, NULL, NULL, NULL),
(7, 'اصفهان', 3, NULL, NULL, NULL),
(8, 'خمینی شهر', 3, NULL, NULL, NULL),
(9, 'قدس', 1, NULL, NULL, NULL),
(10, 'شهریار', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` int(10) UNSIGNED NOT NULL,
  `expired_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `percentage`, `expired_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '123', 5, '2023-01-24 11:02:33', NULL, NULL, '2022-06-01 10:02:33'),
(2, '1234', 10, '2023-01-30 12:13:10', NULL, '2022-06-01 09:45:21', '2022-06-01 09:51:01'),
(3, '12345', 10, '2023-01-30 12:13:12', NULL, '2022-06-01 09:50:38', '2022-06-11 06:07:57');

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
(1, '2014_10_11_092110_create_provinces_table', 1),
(2, '2014_10_11_092247_create_cities_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_05_10_084136_create_categories_table', 1),
(8, '2022_05_10_084137_create_products_table', 1),
(9, '2022_05_10_091917_create_product_images_table', 1),
(10, '2022_05_10_092236_create_orders_table', 1),
(11, '2022_05_10_092251_create_order_items_table', 1),
(12, '2022_05_10_092343_create_transactions_table', 1),
(13, '2022_05_10_092747_create_contact_us_table', 1),
(14, '2022_05_18_161832_create_coupons_table', 2),
(15, '2022_05_18_181337_create_user_addresses_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `total_amount` int(10) UNSIGNED NOT NULL,
  `coupon_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paying_amount` int(10) UNSIGNED NOT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address_id`, `coupon_id`, `status`, `total_amount`, `coupon_amount`, `paying_amount`, `payment_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 0, 290000, 0, 290000, 0, NULL, '2022-12-26 19:58:32', '2022-12-26 19:58:32'),
(2, 1, 1, NULL, 0, 693000, 0, 693000, 0, NULL, '2022-12-26 20:13:36', '2022-12-26 20:13:36'),
(3, 1, 1, NULL, 0, 693000, 0, 693000, 0, NULL, '2022-12-26 20:14:18', '2022-12-26 20:14:18'),
(4, 1, 1, 1, 0, 693000, 34650, 658350, 0, NULL, '2022-12-26 20:15:26', '2022-12-26 20:15:26'),
(5, 1, 1, NULL, 1, 290000, 0, 290000, 1, NULL, '2022-12-27 06:09:24', '2022-12-27 06:10:21'),
(6, 1, 1, NULL, 1, 693000, 0, 693000, 1, NULL, '2022-12-27 06:13:04', '2022-12-27 06:13:17'),
(7, 1, 2, 1, 1, 345000, 17250, 327750, 1, NULL, '2022-12-27 06:59:20', '2022-12-27 06:59:32'),
(8, 1, 1, NULL, 0, 345000, 0, 345000, 0, NULL, '2022-12-27 07:03:26', '2022-12-27 07:03:26'),
(9, 1, 2, NULL, 1, 261500, 0, 261500, 1, NULL, '2022-12-27 07:06:49', '2022-12-27 07:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `subtotal` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `price`, `quantity`, `subtotal`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 145000, 2, 290000, NULL, '2022-12-26 19:58:32', '2022-12-26 19:58:32'),
(2, 2, 16, 126500, 2, 253000, NULL, '2022-12-26 20:13:36', '2022-12-26 20:13:36'),
(3, 2, 8, 80000, 3, 240000, NULL, '2022-12-26 20:13:36', '2022-12-26 20:13:36'),
(4, 2, 3, 100000, 2, 260000, NULL, '2022-12-26 20:13:36', '2022-12-26 20:13:36'),
(5, 3, 16, 126500, 2, 253000, NULL, '2022-12-26 20:14:18', '2022-12-26 20:14:18'),
(6, 3, 8, 80000, 3, 240000, NULL, '2022-12-26 20:14:18', '2022-12-26 20:14:18'),
(7, 3, 3, 100000, 2, 260000, NULL, '2022-12-26 20:14:18', '2022-12-26 20:14:18'),
(8, 4, 16, 126500, 2, 253000, NULL, '2022-12-26 20:15:26', '2022-12-26 20:15:26'),
(9, 4, 8, 80000, 3, 240000, NULL, '2022-12-26 20:15:26', '2022-12-26 20:15:26'),
(10, 4, 3, 100000, 2, 260000, NULL, '2022-12-26 20:15:26', '2022-12-26 20:15:26'),
(11, 5, 5, 145000, 2, 290000, NULL, '2022-12-27 06:09:24', '2022-12-27 06:09:24'),
(12, 6, 16, 126500, 2, 253000, NULL, '2022-12-27 06:13:04', '2022-12-27 06:13:04'),
(13, 6, 8, 80000, 3, 240000, NULL, '2022-12-27 06:13:04', '2022-12-27 06:13:04'),
(14, 6, 3, 100000, 2, 260000, NULL, '2022-12-27 06:13:04', '2022-12-27 06:13:04'),
(15, 7, 3, 100000, 2, 260000, NULL, '2022-12-27 06:59:20', '2022-12-27 06:59:20'),
(16, 7, 5, 145000, 1, 145000, NULL, '2022-12-27 06:59:20', '2022-12-27 06:59:20'),
(17, 8, 3, 100000, 2, 260000, NULL, '2022-12-27 07:03:26', '2022-12-27 07:03:26'),
(18, 8, 5, 145000, 1, 145000, NULL, '2022-12-27 07:03:26', '2022-12-27 07:03:26'),
(19, 9, 16, 126500, 1, 126500, NULL, '2022-12-27 07:06:49', '2022-12-27 07:06:49'),
(20, 9, 6, 45000, 3, 135000, NULL, '2022-12-27 07:06:49', '2022-12-27 07:06:49');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(13, 'App\\Models\\User', 4, 'myApp', '13f86270dc5a4bbceaf407879d3dad0f00b1ca963a8c9a141e29531943c1008e', '[\"*\"]', '2022-05-26 10:51:29', '2022-05-20 08:38:21', '2022-05-26 10:51:29'),
(30, 'App\\Models\\User', 18, 'myApp', '81761b08061d3e23c1eff4c625ae76ef0de47b6d5b4d5c6e9597d9b8831959c1', '[\"user\"]', '2022-06-01 13:46:37', '2022-06-01 13:43:33', '2022-06-01 13:46:37'),
(42, 'App\\Models\\User', 18, 'myApp', '582b8126b296e612e2714183bfec9743d33c518210fc15a91a3efced18bb6992', '[\"user\"]', '2022-11-18 07:34:11', '2022-11-18 07:26:47', '2022-11-18 07:34:11'),
(60, 'App\\Models\\User', 1, 'myApp', '80f6c5981a271b551293a216b997dee3faded9848a84db588b5077507b9f6c4b', '[\"admin\"]', '2023-01-02 08:54:47', '2022-12-27 10:19:42', '2023-01-02 08:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `primary_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `sale_price` int(10) UNSIGNED DEFAULT 0,
  `date_on_sale_from` timestamp NULL DEFAULT NULL,
  `date_on_sale_to` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `primary_image`, `description`, `price`, `quantity`, `status`, `sale_price`, `date_on_sale_from`, `date_on_sale_to`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'پیتزا رست بیف', 'پیتزا-رست-بیف', 1, '371167.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است', 130000, 4, 1, 100000, '2022-12-22 13:51:39', '2022-12-31 13:51:44', NULL, '2022-05-10 07:43:15', '2022-12-27 06:59:32'),
(5, 'پیتزا پپرونی', 'پیتزا-پپرونی', 1, '434825.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است', 145000, 47, 1, 0, NULL, NULL, NULL, '2022-05-10 07:54:16', '2022-12-27 06:59:32'),
(6, 'برگر گوشت ذغالی', 'برگر-گوشت-ذغالی', 2, '750670.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است', 45000, 6, 1, 0, NULL, NULL, NULL, '2022-05-10 07:58:13', '2022-12-27 07:07:04'),
(7, 'برگر بوقلمون ذغالی', 'برگر-بوقلمون-ذغالی', 2, '915791.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است', 51000, 10, 1, 0, NULL, NULL, NULL, '2022-05-10 07:59:31', '2022-05-10 07:59:31'),
(8, 'دوبل برگر گوشت ذغالی', 'دوبل-برگر-گوشت-ذغالی', 2, '131608.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است', 80000, 5, 1, 0, NULL, NULL, NULL, '2022-05-10 08:01:08', '2022-12-27 06:13:17'),
(9, 'سیب زمینی ساده', 'سیب-زمینی-ساده', 3, '107085.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است', 40000, 10, 1, NULL, NULL, NULL, NULL, '2022-05-10 08:08:40', '2022-05-10 08:08:40'),
(10, 'سالاد', 'سالاد', 3, '832255.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است', 44000, 10, 1, NULL, NULL, NULL, NULL, '2022-05-10 08:10:39', '2022-05-10 08:10:39'),
(11, 'نوشابه قوطی', 'نوشابه-قوطی', 4, '848139.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است', 10000, 10, 1, NULL, NULL, NULL, NULL, '2022-05-10 08:12:36', '2022-05-10 08:12:36'),
(12, 'نوشابه قوطی زرد', 'نوشابه-قوطی-زرد', 4, '39277.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است', 10000, 10, 1, NULL, NULL, NULL, NULL, '2022-05-10 08:13:28', '2022-05-10 08:13:28'),
(16, 'پیتزا مخصوص', 'پیتزا-مخصوص', 1, '453429.jpg', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است', 126500, 7, 1, NULL, NULL, NULL, NULL, '2022-05-27 14:23:24', '2022-12-27 07:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 3, '390017.jpg', NULL, '2022-05-10 07:43:15', '2022-05-10 07:43:15'),
(6, 3, '396758.jpg', NULL, '2022-05-10 07:43:15', '2022-05-10 07:43:15'),
(9, 5, '453429.jpg', NULL, '2022-05-10 07:54:16', '2022-05-10 07:54:16'),
(10, 5, '548214.jpg', NULL, '2022-05-10 07:54:16', '2022-05-10 07:54:16'),
(11, 6, '762669.jpg', NULL, '2022-05-10 07:58:13', '2022-05-10 07:58:13'),
(12, 6, '768993.jpg', NULL, '2022-05-10 07:58:13', '2022-05-10 07:58:13'),
(13, 7, '938729.jpg', NULL, '2022-05-10 07:59:31', '2022-05-10 07:59:31'),
(14, 7, '942937.jpg', NULL, '2022-05-10 07:59:31', '2022-05-10 07:59:31'),
(15, 8, '341653.jpg', NULL, '2022-05-10 08:01:08', '2022-05-10 08:01:08'),
(16, 8, '345242.jpg', NULL, '2022-05-10 08:01:08', '2022-05-10 08:01:08'),
(17, 9, '146451.jpg', NULL, '2022-05-10 08:08:40', '2022-05-10 08:08:40'),
(18, 9, '150561.jpg', NULL, '2022-05-10 08:08:40', '2022-05-10 08:08:40'),
(19, 10, '849319.jpg', NULL, '2022-05-10 08:10:39', '2022-05-10 08:10:39'),
(20, 10, '853029.jpg', NULL, '2022-05-10 08:10:39', '2022-05-10 08:10:39'),
(21, 11, '860749.jpg', NULL, '2022-05-10 08:12:36', '2022-05-10 08:12:36'),
(22, 12, '53835.jpg', NULL, '2022-05-10 08:13:28', '2022-05-10 08:13:28'),
(28, 16, '4591.jpg', NULL, '2022-05-27 14:23:24', '2022-05-27 14:23:24'),
(29, 16, '11197.jpg', NULL, '2022-05-27 14:23:24', '2022-05-27 14:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'تهران', NULL, NULL, NULL),
(2, 'فارس', NULL, NULL, NULL),
(3, 'اصفهان', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `amount`, `token`, `trans_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 290000, 'cJWXqpk', NULL, 0, NULL, '2022-12-26 19:58:32', '2022-12-26 19:58:32'),
(2, 1, 2, 693000, 'cJWXqpo', NULL, 0, NULL, '2022-12-26 20:13:36', '2022-12-26 20:13:36'),
(3, 1, 3, 693000, 'cJWXqps', NULL, 0, NULL, '2022-12-26 20:14:18', '2022-12-26 20:14:18'),
(4, 1, 4, 658350, 'cJWXqpw', NULL, 0, NULL, '2022-12-26 20:15:26', '2022-12-26 20:15:26'),
(5, 1, 5, 290000, 'cJWXrJc', '33692', 1, NULL, '2022-12-27 06:09:24', '2022-12-27 06:10:21'),
(6, 1, 6, 693000, 'cJWXrJg', '33693', 1, NULL, '2022-12-27 06:13:04', '2022-12-27 06:13:17'),
(7, 1, 7, 327750, 'cJWXrJo', '33695', 1, NULL, '2022-12-27 06:59:20', '2022-12-27 06:59:32'),
(8, 1, 8, 345000, 'cJWXrJs', NULL, 0, NULL, '2022-12-27 07:03:26', '2022-12-27 07:03:26'),
(9, 1, 9, 261500, 'cJWXrJw', '33697', 1, NULL, '2022-12-27 07:06:49', '2022-12-27 07:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cellphone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `login_token` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `cellphone`, `otp`, `login_token`, `is_admin`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'علی شیخ', 'ali@gmail.com', NULL, '$2y$10$SR.HcahR/dcL681A6yEWieISlpdH8cQ64VmLDYBMDQbb3l5AS09jy', NULL, '09100000000', 472424, '$2y$10$PYKdbt.er4lVatZYuJArsO6vt3L.yY97bSj5XbcP/mkKXSxc0GFSm', 1, NULL, NULL, '2022-12-27 07:08:22'),
(3, 'وب پروگ', 'webprog@gmail.com', NULL, '$2y$10$nB6AebKJ3UpvOqYZcY/n3OwHVY1xgqHG0k/9E3uoPRa2iKgecYHp6', NULL, '09150000000', 685843, '$2y$10$IiX7cZTLYQabLZDVx2OM/eztW2s2NdSUmKAO5BaGP8lFYNRUqioE2', 1, NULL, '2022-05-19 12:50:17', '2022-05-27 11:32:27'),
(10, 'test', 'test@gmail.com', NULL, '$2y$10$I0ckcHQ/.WfhFohZlRqyHOXtbRNO.3m.BiNl.u2zI.G1pVxrQ5udm', NULL, '09110000000', NULL, NULL, 0, NULL, NULL, '2022-05-27 10:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cellphone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `title`, `address`, `cellphone`, `postal_code`, `user_id`, `province_id`, `city_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'محل کار', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. ', '09100000000', '1234567489', 1, 2, 6, NULL, NULL, '2022-12-25 14:08:32'),
(2, 'منزل', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. ', '09120000000', '1234567892', 1, 1, 4, NULL, NULL, '2022-12-25 13:47:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_province_id_foreign` (`province_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `cellphone` (`cellphone`) USING HASH;

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
