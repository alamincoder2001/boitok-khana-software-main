-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2022 at 02:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boithok_khan_cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_link` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'd',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upazila_id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_link` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(130) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainImage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_profiles`
--

CREATE TABLE `company_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_2` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_headline` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cashback` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_vision_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_vision` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trams_condition_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trams_condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_profiles`
--

INSERT INTO `company_profiles` (`id`, `company_name`, `slogan`, `phone_1`, `phone_2`, `email`, `address`, `news_headline`, `logo`, `office_time`, `free_shipping`, `cashback`, `about_title`, `about_description`, `about_image`, `facebook`, `youtube`, `linkedin`, `instagram`, `welcome_title`, `welcome_note`, `welcome_image`, `mission_vision_title`, `mission_vision`, `trams_condition_title`, `trams_condition`, `faq_title`, `faq_details`, `refund_title`, `refund_details`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Link Up Technology', NULL, 'admin', NULL, 'john@gmail.com', 'admin', NULL, NULL, NULL, NULL, NULL, 'about_title', 'about_description', NULL, NULL, NULL, NULL, NULL, 'welcome_title', 'welcome_note', 'welcome_image', 'mission_vision_title', 'mission_vision', NULL, NULL, 'faq_title', 'faq_details', 'refund_title', 'refund_details', NULL, NULL, '2022-07-30 06:15:25', '2022-07-30 06:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upazila_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thum_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `code`, `name`, `phone`, `email`, `address`, `country_id`, `district_id`, `upazila_id`, `area_id`, `profile_picture`, `thum_picture`, `username`, `password`, `status`, `save_by`, `updated_by`, `deleted_at`, `ip_address`, `cus_message`, `created_at`, `updated_at`) VALUES
(1, 'C000001', 'Md Rana Miah', '01777664786', NULL, 'null', NULL, NULL, NULL, NULL, NULL, NULL, '01777664786', '$2y$10$fajYjM1ROu0CQEB22NdCOODoUxPeREi0dxkhZApHZEK6Kt35qDv8a', 'p', '0', '0', NULL, '127.0.0.1', NULL, '2022-07-30 12:04:42', '2022-07-30 12:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', NULL, NULL);

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_19_101530_create_categories_table', 1),
(6, '2021_09_19_135805_create_sub_categories_table', 1),
(7, '2021_09_20_102416_create_services_table', 1),
(8, '2021_09_20_125332_create_messages_table', 2),
(9, '2021_09_20_133359_create_company_profiles_table', 3),
(10, '2021_09_21_110416_create_photo_galleries_table', 3),
(11, '2021_09_28_031648_create_countries_table', 4),
(14, '2022_02_16_175002_create_contacts_table', 6),
(15, '2022_03_12_032209_create_customers_table', 7),
(16, '2022_03_12_041645_create_orders_table', 8),
(17, '2022_03_12_094505_create_order_details_table', 9),
(18, '2022_03_24_111451_create_wishlists_table', 10),
(19, '2022_07_30_120521_create_published_categories_table', 10),
(20, '2022_07_30_120629_create_product_publisheds_table', 10),
(21, '2021_12_03_150615_create_districts_table', 11),
(22, '2022_02_13_142510_create_upazilas_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `upazila_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bphone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(18,2) NOT NULL,
  `discount_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `service_charge` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(18,2) NOT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `cus_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(18,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `photo_galleries`
--

CREATE TABLE `photo_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_publisheds`
--

CREATE TABLE `product_publisheds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `published_category_id` bigint(20) UNSIGNED NOT NULL,
  `is_deal` int(11) NOT NULL DEFAULT 0,
  `start_date` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `published_categories`
--

CREATE TABLE `published_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `published_categories`
--

INSERT INTO `published_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot Deal', 1, NULL, NULL),
(2, 'Top Selling', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shapes`
--

CREATE TABLE `shapes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(130) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a',
  `save_by` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `Acc_SlNo` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `Acc_Code` varchar(50) NOT NULL,
  `Acc_Tr_Type` varchar(25) DEFAULT NULL,
  `Acc_Name` varchar(200) NOT NULL,
  `Acc_Type` varchar(50) NOT NULL,
  `Acc_Description` varchar(255) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assets`
--

CREATE TABLE `tbl_assets` (
  `as_id` int(11) NOT NULL,
  `as_date` date DEFAULT NULL,
  `as_name` varchar(50) DEFAULT NULL,
  `as_sp_name` varchar(100) DEFAULT NULL,
  `as_qty` int(11) DEFAULT NULL,
  `as_rate` decimal(10,2) DEFAULT NULL,
  `as_amount` decimal(10,2) DEFAULT NULL,
  `buy_or_sale` enum('buy','sale') NOT NULL DEFAULT 'buy',
  `valuation` decimal(20,2) DEFAULT 0.00,
  `unit_valuation` decimal(20,2) DEFAULT 0.00,
  `as_note` text DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_accounts`
--

CREATE TABLE `tbl_bank_accounts` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(500) NOT NULL,
  `account_number` varchar(250) NOT NULL,
  `account_type` varchar(200) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `branch_name` varchar(250) DEFAULT NULL,
  `initial_balance` float NOT NULL,
  `description` varchar(2000) NOT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_transactions`
--

CREATE TABLE `tbl_bank_transactions` (
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(10) NOT NULL,
  `amount` float NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` datetime NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_SiNo` int(11) NOT NULL,
  `ProductCategory_SlNo` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `status` char(2) NOT NULL,
  `brand_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_SiNo`, `ProductCategory_SlNo`, `brand_name`, `status`, `brand_branchid`) VALUES
(1, 0, 'Apple', 'a', 1),
(2, 0, 'Samsung', 'a', 1),
(3, 0, 'HP', 'a', 1),
(4, 0, 'Asus', 'a', 1),
(5, 0, 'test', 'a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brunch`
--

CREATE TABLE `tbl_brunch` (
  `brunch_id` int(11) NOT NULL,
  `Brunch_name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Brunch_title` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Brunch_address` text CHARACTER SET utf8 NOT NULL,
  `Brunch_sales` varchar(1) NOT NULL COMMENT 'Wholesales = 1, Retail = 2',
  `add_date` date NOT NULL,
  `add_time` datetime NOT NULL,
  `add_by` char(50) NOT NULL,
  `update_by` char(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brunch`
--

INSERT INTO `tbl_brunch` (`brunch_id`, `Brunch_name`, `Brunch_title`, `Brunch_address`, `Brunch_sales`, `add_date`, `add_time`, `add_by`, `update_by`, `status`) VALUES
(1, 'Main Branch', 'ভাই হার্ডওয়্যার এবং স্যানিটারি', '187- East Kazi Para, Mirpur-10, \nDhaka-1216\nPhone : 01911-978897', '', '2022-06-04', '2022-06-04 13:10:33', '', 'Admin', 'a'),
(2, 'anika telicom', 'asses', 'seedstore bazar', '2', '0000-00-00', '2022-06-11 17:39:09', 'Admin', '', 'a'),
(3, 'Kazipara ', 'Kazipara ', 'Kazipara ', '2', '0000-00-00', '2022-06-12 10:23:47', 'Admin', '', 'a'),
(4, 'ameera bd', 'ameera bd', 'gff', '2', '0000-00-00', '2022-06-26 18:29:19', 'Admin', '', 'd'),
(5, 'Sayed', 'Sayed', 'Sayed', '2', '0000-00-00', '2022-07-24 09:51:16', 'Admin', '', 'd'),
(6, 'Sayed Nazi', 'Sayed Nazi', 'Dhaka', '2', '0000-00-00', '2022-07-24 09:51:48', 'Admin', 'Admin', 'a'),
(7, 'Hai', 'Hai', 'Hai', '2', '0000-00-00', '2022-07-24 18:46:12', 'Admin', '', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashtransaction`
--

CREATE TABLE `tbl_cashtransaction` (
  `Tr_SlNo` int(11) NOT NULL,
  `Tr_Id` varchar(50) NOT NULL,
  `Tr_date` date NOT NULL,
  `Tr_Type` varchar(20) NOT NULL,
  `Tr_account_Type` varchar(50) NOT NULL,
  `Acc_SlID` int(11) NOT NULL,
  `Tr_Description` varchar(255) NOT NULL,
  `In_Amount` decimal(18,2) NOT NULL,
  `Out_Amount` decimal(18,2) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(100) NOT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Tr_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checks`
--

CREATE TABLE `tbl_checks` (
  `id` int(20) UNSIGNED NOT NULL,
  `cus_id` int(20) DEFAULT NULL,
  `SM_id` int(20) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(250) DEFAULT NULL,
  `branch_name` varchar(250) DEFAULT NULL,
  `check_no` varchar(250) DEFAULT NULL,
  `check_amount` decimal(18,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `check_date` timestamp NULL DEFAULT NULL,
  `remid_date` timestamp NULL DEFAULT NULL,
  `sub_date` timestamp NULL DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `check_status` char(5) DEFAULT 'Pe' COMMENT 'Pe =Pending, Pa = Paid',
  `status` char(5) NOT NULL DEFAULT 'a',
  `created_by` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `branch_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_SiNo` int(11) NOT NULL,
  `color_name` varchar(100) NOT NULL,
  `status` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `Company_SlNo` int(11) NOT NULL,
  `Company_Name` varchar(150) NOT NULL,
  `Repot_Heading` text NOT NULL,
  `Company_Logo_org` varchar(250) NOT NULL,
  `Company_Logo_thum` varchar(250) NOT NULL,
  `Invoice_Type` int(11) NOT NULL,
  `Currency_Name` varchar(50) DEFAULT NULL,
  `Currency_Symbol` varchar(10) DEFAULT NULL,
  `SubCurrency_Name` varchar(50) DEFAULT NULL,
  `print_type` int(11) NOT NULL,
  `company_BrunchId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`Company_SlNo`, `Company_Name`, `Repot_Heading`, `Company_Logo_org`, `Company_Logo_thum`, `Invoice_Type`, `Currency_Name`, `Currency_Symbol`, `SubCurrency_Name`, `print_type`, `company_BrunchId`) VALUES
(1, 'Link Up', '187- East Kazi Para, Mirpur, Dhaka-1216\r\nPhone : 01911-978897', 'linkup.jpg', 'linkup.jpg', 1, 'BDT', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `Country_SlNo` int(11) NOT NULL,
  `CountryName` varchar(50) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currentinventory`
--

CREATE TABLE `tbl_currentinventory` (
  `inventory_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_quantity` float NOT NULL,
  `purchase_return_quantity` float NOT NULL,
  `sales_quantity` float NOT NULL,
  `sales_return_quantity` float NOT NULL,
  `damage_quantity` float NOT NULL,
  `transfer_from_quantity` float NOT NULL,
  `transfer_to_quantity` float NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `Customer_SlNo` int(11) NOT NULL,
  `Customer_Code` varchar(50) NOT NULL,
  `Customer_Name` varchar(150) NOT NULL,
  `Customer_Type` varchar(50) NOT NULL,
  `Customer_Phone` varchar(50) NOT NULL,
  `Customer_Mobile` varchar(15) NOT NULL,
  `Customer_Email` varchar(50) NOT NULL,
  `Customer_OfficePhone` varchar(50) NOT NULL,
  `Customer_Address` varchar(300) NOT NULL,
  `owner_name` varchar(250) DEFAULT NULL,
  `Country_SlNo` int(11) NOT NULL,
  `area_ID` int(11) NOT NULL,
  `Customer_Web` varchar(50) NOT NULL,
  `Customer_Credit_Limit` decimal(18,2) NOT NULL,
  `previous_due` decimal(18,2) NOT NULL,
  `image_name` varchar(1000) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Customer_brunchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_payment`
--

CREATE TABLE `tbl_customer_payment` (
  `CPayment_id` int(11) NOT NULL,
  `CPayment_date` date DEFAULT NULL,
  `CPayment_invoice` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `CPayment_customerID` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `CPayment_TransactionType` varchar(20) DEFAULT NULL,
  `CPayment_amount` decimal(18,2) DEFAULT NULL,
  `out_amount` float NOT NULL DEFAULT 0,
  `CPayment_Paymentby` varchar(50) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `CPayment_notes` varchar(225) CHARACTER SET latin1 DEFAULT NULL,
  `CPayment_brunchid` int(11) DEFAULT NULL,
  `CPayment_previous_due` float NOT NULL DEFAULT 0,
  `CPayment_Addby` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `CPayment_AddDAte` date DEFAULT NULL,
  `CPayment_status` varchar(1) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `CPayment_UpdateDAte` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer_payment`
--

INSERT INTO `tbl_customer_payment` (`CPayment_id`, `CPayment_date`, `CPayment_invoice`, `CPayment_customerID`, `CPayment_TransactionType`, `CPayment_amount`, `out_amount`, `CPayment_Paymentby`, `account_id`, `CPayment_notes`, `CPayment_brunchid`, `CPayment_previous_due`, `CPayment_Addby`, `CPayment_AddDAte`, `CPayment_status`, `update_by`, `CPayment_UpdateDAte`) VALUES
(1, '2022-06-12', 'TR00001', '7', 'CR', '700.00', 0, 'cash', NULL, '', 1, 4700, 'Admin', '2022-06-12', 'a', NULL, NULL),
(2, '2022-06-13', 'TR00002', '7', 'CR', '1000.00', 0, 'cash', NULL, 'cash', 1, 4000, 'Admin', '2022-06-13', 'a', NULL, NULL),
(3, '2022-06-20', '220100031', '10', 'CP', '1200.00', 0, 'cash', NULL, NULL, 1, 0, 'Admin', '2022-06-20', 'a', NULL, NULL),
(4, '2022-06-23', 'TR00004', '12', 'CR', '1000.00', 0, 'cash', NULL, '', 1, 1650, 'Admin', '2022-06-23', 'a', NULL, NULL),
(5, '2022-06-26', 'TR00005', '12', 'CR', '20.00', 0, 'cash', NULL, '', 1, -350, 'Admin', '2022-06-26', 'a', NULL, NULL),
(6, '2022-06-27', 'TR00006', '11', 'CR', '5000.00', 0, 'cash', NULL, 'Payment ', 1, 7350, 'Admin', '2022-06-27', 'a', NULL, NULL),
(7, '2022-06-30', '220100069', '22', 'CP', '12000.00', 0, 'cash', NULL, NULL, 1, 0, 'Admin', '2022-06-30', 'a', NULL, NULL),
(8, '2022-07-06', '220100068', '21', 'CP', '6000.00', 0, 'cash', NULL, NULL, 1, 0, 'Admin', '2022-07-06', 'a', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_damage`
--

CREATE TABLE `tbl_damage` (
  `Damage_SlNo` int(11) NOT NULL,
  `Damage_InvoiceNo` varchar(50) NOT NULL,
  `Damage_Date` date NOT NULL,
  `Damage_Description` varchar(300) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Damage_brunchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_damagedetails`
--

CREATE TABLE `tbl_damagedetails` (
  `DamageDetails_SlNo` int(11) NOT NULL,
  `Damage_SlNo` int(11) NOT NULL,
  `Product_SlNo` int(11) NOT NULL,
  `DamageDetails_DamageQuantity` float NOT NULL,
  `damage_rate` float NOT NULL,
  `damage_amount` float NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `Department_SlNo` int(11) NOT NULL,
  `Department_Name` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`Department_SlNo`, `Department_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`) VALUES
(1, 'Sales', 'a', 'Admin', '2022-06-14 14:10:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `Designation_SlNo` int(11) NOT NULL,
  `Designation_Name` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`Designation_SlNo`, `Designation_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`) VALUES
(1, 'Manager', 'a', 'Admin', '2022-06-14 14:10:55', NULL, NULL),
(2, 'ACCOUNTANT', 'a', 'Admin', '2022-07-23 16:04:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `District_SlNo` int(11) NOT NULL,
  `District_Name` varchar(50) NOT NULL,
  `status` char(10) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`District_SlNo`, `District_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`) VALUES
(1, 'dhaka', 'd', 'Admin', '2022-06-05 21:53:49', NULL, NULL),
(2, 'Bhola ', 'd', 'Admin', '2022-06-12 10:22:16', NULL, NULL),
(3, 'hh', 'a', 'Admin', '2022-07-19 00:46:34', NULL, NULL),
(4, 'chh', 'a', 'Admin', '2022-07-25 00:22:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `Employee_SlNo` int(11) NOT NULL,
  `Designation_ID` int(11) NOT NULL,
  `Department_ID` int(11) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL,
  `bio_id` varchar(50) DEFAULT NULL,
  `Employee_Name` varchar(150) NOT NULL,
  `Employee_JoinDate` date NOT NULL,
  `Employee_Gender` varchar(20) NOT NULL,
  `Employee_BirthDate` date NOT NULL,
  `Employee_NID` varchar(50) NOT NULL,
  `Employee_ContactNo` varchar(20) NOT NULL,
  `Employee_Email` varchar(50) NOT NULL,
  `Employee_MaritalStatus` varchar(50) NOT NULL,
  `Employee_FatherName` varchar(150) NOT NULL,
  `Employee_MotherName` varchar(150) NOT NULL,
  `Employee_PrasentAddress` text NOT NULL,
  `Employee_PermanentAddress` text NOT NULL,
  `Employee_Pic_org` varchar(250) NOT NULL,
  `Employee_Pic_thum` varchar(250) NOT NULL,
  `salary_range` int(11) NOT NULL,
  `Employee_Reference` text DEFAULT NULL,
  `status` char(10) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) NOT NULL,
  `AddTime` varchar(50) NOT NULL,
  `UpdateBy` varchar(50) NOT NULL,
  `UpdateTime` varchar(50) NOT NULL,
  `Employee_brinchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_payment`
--

CREATE TABLE `tbl_employee_payment` (
  `id` int(11) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `month_id` int(11) NOT NULL,
  `total_payment_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `status` char(2) DEFAULT 'a',
  `saved_by` int(11) NOT NULL,
  `saved_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_payment_details`
--

CREATE TABLE `tbl_employee_payment_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `salary` decimal(20,2) NOT NULL DEFAULT 0.00,
  `benefit` decimal(20,2) NOT NULL DEFAULT 0.00,
  `deduction` decimal(20,2) NOT NULL DEFAULT 0.00,
  `net_payable` decimal(20,2) NOT NULL DEFAULT 0.00,
  `payment` decimal(20,2) NOT NULL DEFAULT 0.00,
  `comment` text DEFAULT NULL,
  `saved_by` int(11) UNSIGNED DEFAULT NULL,
  `saved_at` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` char(2) NOT NULL DEFAULT 'a',
  `branch_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_head`
--

CREATE TABLE `tbl_expense_head` (
  `id` int(11) NOT NULL,
  `head_name` varchar(100) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `status` enum('a','d') DEFAULT 'a',
  `saved_by` int(11) DEFAULT NULL,
  `saved_datetime` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_investment_account`
--

CREATE TABLE `tbl_investment_account` (
  `Acc_SlNo` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `Acc_Code` varchar(50) NOT NULL,
  `Acc_Tr_Type` varchar(25) DEFAULT NULL,
  `Acc_Name` varchar(200) NOT NULL,
  `Acc_Type` varchar(50) NOT NULL,
  `Acc_Description` varchar(255) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_investment_transactions`
--

CREATE TABLE `tbl_investment_transactions` (
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(10) NOT NULL,
  `amount` float NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` datetime NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_accounts`
--

CREATE TABLE `tbl_loan_accounts` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(500) NOT NULL,
  `account_number` varchar(250) NOT NULL,
  `account_type` varchar(200) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `branch_name` varchar(250) DEFAULT NULL,
  `initial_balance` float NOT NULL,
  `description` varchar(2000) NOT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` datetime NOT NULL,
  `save_date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_transactions`
--

CREATE TABLE `tbl_loan_transactions` (
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(30) NOT NULL,
  `amount` float NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` datetime NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_month`
--

CREATE TABLE `tbl_month` (
  `month_id` int(11) NOT NULL,
  `month_name` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_month`
--

INSERT INTO `tbl_month` (`month_id`, `month_name`) VALUES
(1, 'January');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `Product_SlNo` int(11) NOT NULL,
  `Product_Code` varchar(50) NOT NULL,
  `Product_Name` varchar(150) NOT NULL,
  `ProductCategory_ID` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `size` varchar(11) NOT NULL DEFAULT 'na',
  `vat` float NOT NULL,
  `Product_ReOrederLevel` int(11) NOT NULL,
  `Product_Purchase_Rate` decimal(18,2) NOT NULL,
  `Product_SellingPrice` decimal(18,2) NOT NULL,
  `Product_MinimumSellingPrice` decimal(18,2) NOT NULL,
  `Product_WholesaleRate` decimal(18,2) NOT NULL,
  `one_cartun_equal` varchar(20) NOT NULL,
  `is_service` varchar(10) NOT NULL DEFAULT 'false',
  `is_website` varchar(10) DEFAULT 'true',
  `Unit_ID` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(100) NOT NULL,
  `AddTime` varchar(30) NOT NULL,
  `UpdateBy` varchar(50) NOT NULL,
  `UpdateTime` varchar(30) NOT NULL,
  `Product_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productcategory`
--

CREATE TABLE `tbl_productcategory` (
  `ProductCategory_SlNo` int(11) NOT NULL,
  `ProductCategory_Name` varchar(150) NOT NULL,
  `ProductCategory_Description` varchar(300) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` varchar(50) NOT NULL,
  `AddTime` varchar(30) NOT NULL,
  `UpdateBy` varchar(50) NOT NULL,
  `UpdateTime` varchar(30) NOT NULL,
  `category_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_productcategory`
--

INSERT INTO `tbl_productcategory` (`ProductCategory_SlNo`, `ProductCategory_Name`, `ProductCategory_Description`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `category_branchid`) VALUES
(1, 'Car Sent', '', 'a', 'Admin', '2022-06-05 21:44:08', '', '', 1),
(2, 'Horn', '', 'a', 'Admin', '2022-06-05 22:10:37', '', '', 1),
(3, 'Led Bulb', '', 'a', 'Admin', '2022-06-06 13:33:09', '', '', 1),
(4, 'Hid Bulb', '', 'a', 'Admin', '2022-06-06 13:33:27', '', '', 1),
(5, 'Polish', '', 'a', 'Admin', '2022-06-06 13:33:53', '', '', 1),
(6, 'Spray', '', 'a', 'Admin', '2022-06-06 13:34:20', '', '', 1),
(7, 'Car Body cover', '', 'a', 'Admin', '2022-06-06 18:27:35', '', '', 1),
(8, 'Daster ', '', 'a', 'Admin', '2022-06-06 19:57:55', '', '', 1),
(9, 'Ticket', '', 'a', 'Admin', '2022-06-22 17:00:37', '', '', 1),
(10, 'Visa ', '', 'a', 'Admin', '2022-06-22 17:00:46', '', '', 1),
(11, 'Sanitary', 'Sanitary', 'd', 'Admin', '2022-06-23 14:11:47', '', '', 1),
(12, 'Demai', '180gsm', 'd', 'Admin', '2022-06-26 01:49:21', '', '', 1),
(13, 'LED TV', '', 'a', 'Admin', '2022-06-28 13:42:55', '', '', 1),
(14, 'key ring', '', 'a', 'Admin', '2022-06-28 20:09:24', '', '', 1),
(15, 'Wheel Mat', '', 'a', 'Admin', '2022-06-28 20:10:06', '', '', 1),
(16, 'Staring Cover', '', 'a', 'Admin', '2022-06-28 20:10:28', '', '', 1),
(17, 'Seat Coution', '', 'a', 'Admin', '2022-06-28 20:12:03', '', '', 1),
(18, 'Break oil', '', 'a', 'Admin', '2022-06-28 20:13:24', '', '', 1),
(19, 'Power Stering Oil', '', 'a', 'Admin', '2022-06-28 20:13:46', '', '', 1),
(20, 'Octane Buster', '', 'a', 'Admin', '2022-06-28 20:14:03', '', '', 1),
(21, 'red', '', 'a', 'Admin', '2022-07-18 11:28:27', '', '', 1),
(22, 'sotota', '', 'a', 'Admin', '2022-07-22 21:18:44', '', '', 1),
(23, 'vitalac', '', 'a', 'Admin', '2022-07-22 21:40:29', '', '', 1),
(24, 'chips', '', 'a', 'Admin', '2022-07-22 23:32:14', '', '', 1),
(25, 'RICE', '', 'a', 'Admin', '2022-07-23 16:19:42', '', '', 1),
(26, 'Comod', '', 'a', 'Admin', '2022-07-24 10:46:25', '', '', 6),
(27, 'Agrivita', '', 'a', 'Admin', '2022-07-24 22:44:03', '', '', 1),
(28, 'Vita Can', '', 'a', 'Admin', '2022-07-24 22:46:39', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasedetails`
--

CREATE TABLE `tbl_purchasedetails` (
  `PurchaseDetails_SlNo` int(11) NOT NULL,
  `PurchaseMaster_IDNo` int(11) NOT NULL,
  `Product_IDNo` int(11) NOT NULL,
  `PurchaseDetails_TotalQuantity` float NOT NULL,
  `PurchaseDetails_Rate` decimal(18,2) NOT NULL,
  `purchase_cost` decimal(18,2) NOT NULL,
  `PurchaseDetails_Discount` decimal(18,2) NOT NULL,
  `PurchaseDetails_TotalAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `PurchaseDetails_branchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasemaster`
--

CREATE TABLE `tbl_purchasemaster` (
  `PurchaseMaster_SlNo` int(11) NOT NULL,
  `Supplier_SlNo` int(11) NOT NULL,
  `Employee_SlNo` int(11) NOT NULL,
  `PurchaseMaster_InvoiceNo` varchar(50) NOT NULL,
  `PurchaseMaster_OrderDate` date NOT NULL,
  `PurchaseMaster_PurchaseFor` varchar(50) NOT NULL,
  `PurchaseMaster_Description` longtext NOT NULL,
  `PurchaseMaster_TotalAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_DiscountAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_Tax` decimal(18,2) NOT NULL,
  `PurchaseMaster_Freight` decimal(18,2) NOT NULL,
  `PurchaseMaster_SubTotalAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_PaidAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_DueAmount` decimal(18,2) NOT NULL,
  `previous_due` float DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `PurchaseMaster_BranchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasereturn`
--

CREATE TABLE `tbl_purchasereturn` (
  `PurchaseReturn_SlNo` int(11) NOT NULL,
  `PurchaseMaster_InvoiceNo` varchar(50) NOT NULL,
  `Supplier_IDdNo` int(11) NOT NULL,
  `PurchaseReturn_ReturnDate` date NOT NULL,
  `PurchaseReturn_ReturnAmount` decimal(18,2) NOT NULL,
  `PurchaseReturn_Description` varchar(300) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `PurchaseReturn_brunchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasereturndetails`
--

CREATE TABLE `tbl_purchasereturndetails` (
  `PurchaseReturnDetails_SlNo` int(11) NOT NULL,
  `PurchaseReturn_SlNo` int(11) NOT NULL,
  `PurchaseReturnDetailsProduct_SlNo` int(11) NOT NULL,
  `PurchaseReturnDetails_ReturnQuantity` float NOT NULL,
  `PurchaseReturnDetails_ReturnAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `PurchaseReturnDetails_brachid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotaion_customer`
--

CREATE TABLE `tbl_quotaion_customer` (
  `quotation_customer_id` int(11) NOT NULL,
  `customer_name` char(50) NOT NULL,
  `contact_number` varchar(35) NOT NULL,
  `customer_address` text NOT NULL,
  `quation_customer_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation_details`
--

CREATE TABLE `tbl_quotation_details` (
  `SaleDetails_SlNo` int(11) NOT NULL,
  `SaleMaster_IDNo` int(11) NOT NULL,
  `Product_IDNo` int(11) NOT NULL,
  `SaleDetails_TotalQuantity` float NOT NULL,
  `SaleDetails_Rate` decimal(18,2) NOT NULL,
  `SaleDetails_Discount` decimal(18,2) NOT NULL,
  `SaleDetails_Tax` decimal(18,2) NOT NULL,
  `SaleDetails_Freight` decimal(18,2) NOT NULL,
  `SaleDetails_TotalAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleDetails_BranchId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation_master`
--

CREATE TABLE `tbl_quotation_master` (
  `SaleMaster_SlNo` int(11) NOT NULL,
  `SaleMaster_InvoiceNo` varchar(50) NOT NULL,
  `SaleMaster_customer_name` varchar(500) NOT NULL,
  `SaleMaster_customer_mobile` varchar(50) NOT NULL,
  `SaleMaster_customer_address` varchar(1000) NOT NULL,
  `SaleMaster_SaleDate` date NOT NULL,
  `SaleMaster_Description` longtext DEFAULT NULL,
  `SaleMaster_TotalSaleAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TotalDiscountAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TaxAmount` decimal(18,2) NOT NULL,
  `SaleMaster_Freight` decimal(18,2) NOT NULL,
  `SaleMaster_SubTotalAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleMaster_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saledetails`
--

CREATE TABLE `tbl_saledetails` (
  `SaleDetails_SlNo` int(11) NOT NULL,
  `SaleMaster_IDNo` int(11) NOT NULL,
  `Product_IDNo` int(11) NOT NULL,
  `SaleDetails_TotalQuantity` float NOT NULL,
  `Purchase_Rate` decimal(18,2) DEFAULT NULL,
  `SaleDetails_Rate` decimal(18,2) NOT NULL,
  `SaleDetails_Discount` decimal(18,2) NOT NULL,
  `Discount_amount` decimal(18,2) DEFAULT NULL,
  `SaleDetails_Tax` decimal(18,2) NOT NULL,
  `SaleDetails_TotalAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleDetails_BranchId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salereturn`
--

CREATE TABLE `tbl_salereturn` (
  `SaleReturn_SlNo` int(11) NOT NULL,
  `SaleMaster_InvoiceNo` varchar(50) NOT NULL,
  `SaleReturn_ReturnDate` date NOT NULL,
  `SaleReturn_ReturnAmount` decimal(18,2) NOT NULL,
  `SaleReturn_Description` varchar(300) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleReturn_brunchId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salereturndetails`
--

CREATE TABLE `tbl_salereturndetails` (
  `SaleReturnDetails_SlNo` int(11) NOT NULL,
  `SaleReturn_IdNo` int(11) NOT NULL,
  `SaleReturnDetailsProduct_SlNo` int(11) NOT NULL,
  `SaleReturnDetails_ReturnQuantity` float NOT NULL,
  `SaleReturnDetails_ReturnAmount` decimal(18,2) NOT NULL,
  `Status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleReturnDetails_brunchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salesmaster`
--

CREATE TABLE `tbl_salesmaster` (
  `SaleMaster_SlNo` int(11) NOT NULL,
  `SaleMaster_InvoiceNo` varchar(50) NOT NULL,
  `SalseCustomer_IDNo` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `SaleMaster_SaleDate` date NOT NULL,
  `SaleMaster_Description` longtext DEFAULT NULL,
  `SaleMaster_SaleType` varchar(50) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT 'Cash',
  `SaleMaster_TotalSaleAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TotalDiscountAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TaxAmount` decimal(18,2) NOT NULL,
  `SaleMaster_Freight` decimal(18,2) DEFAULT 0.00,
  `SaleMaster_SubTotalAmount` decimal(18,2) NOT NULL,
  `SaleMaster_PaidAmount` decimal(18,2) NOT NULL,
  `SaleMaster_DueAmount` decimal(18,2) NOT NULL,
  `SaleMaster_Previous_Due` double(18,2) DEFAULT NULL,
  `Status` char(1) NOT NULL DEFAULT 'a',
  `is_service` varchar(10) NOT NULL DEFAULT 'false',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `SaleMaster_branchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms`
--

CREATE TABLE `tbl_sms` (
  `row_id` int(11) NOT NULL,
  `number` varchar(30) NOT NULL,
  `sms_text` varchar(500) NOT NULL,
  `sent_by` int(11) NOT NULL,
  `sent_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_settings`
--

CREATE TABLE `tbl_sms_settings` (
  `sms_enabled` varchar(50) NOT NULL DEFAULT 'false',
  `api_key` varchar(500) DEFAULT NULL,
  `sms_type` varchar(50) NOT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `bulk_url` varchar(1000) DEFAULT NULL,
  `url_2` varchar(1000) DEFAULT NULL,
  `bulk_url_2` varchar(1000) DEFAULT NULL,
  `sender_id` varchar(200) DEFAULT NULL,
  `sender_id_2` varchar(200) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `sender_name` varchar(200) NOT NULL,
  `sender_phone` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sms_settings`
--

INSERT INTO `tbl_sms_settings` (`sms_enabled`, `api_key`, `sms_type`, `url`, `bulk_url`, `url_2`, `bulk_url_2`, `sender_id`, `sender_id_2`, `user_id`, `password`, `country_code`, `sender_name`, `sender_phone`) VALUES
('gateway2', 'C2003631601c03803cde57.82758523', 'unicode', 'http://esms.linktechbd.com/smsapi', 'http://esms.linktechbd.com/smsapimany', 'http://mshastra.com/sendurl.aspx', 'http://mshastra.com/sendurlcomma.aspx', 'Link-UpTech', 'BigTech Ltd', '20102047', 'BTL@432', '+880', 'Link-Up Technology', '01911-978897');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `Supplier_SlNo` int(11) NOT NULL,
  `Supplier_Code` varchar(50) NOT NULL,
  `Supplier_Name` varchar(150) NOT NULL,
  `Supplier_Type` varchar(50) NOT NULL,
  `Supplier_Phone` varchar(50) NOT NULL,
  `Supplier_Mobile` varchar(15) NOT NULL,
  `Supplier_Email` varchar(50) NOT NULL,
  `Supplier_OfficePhone` varchar(50) NOT NULL,
  `Supplier_Address` varchar(300) NOT NULL,
  `contact_person` varchar(250) DEFAULT NULL,
  `District_SlNo` int(11) NOT NULL,
  `Country_SlNo` int(11) NOT NULL,
  `Supplier_Web` varchar(150) NOT NULL,
  `previous_due` decimal(18,2) NOT NULL,
  `image_name` varchar(1000) DEFAULT NULL,
  `Status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Supplier_brinchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`Supplier_SlNo`, `Supplier_Code`, `Supplier_Name`, `Supplier_Type`, `Supplier_Phone`, `Supplier_Mobile`, `Supplier_Email`, `Supplier_OfficePhone`, `Supplier_Address`, `contact_person`, `District_SlNo`, `Country_SlNo`, `Supplier_Web`, `previous_due`, `image_name`, `Status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `Supplier_brinchid`) VALUES
(1, 'S00001', 'Famous Enterprise', '', '', '01716244372', '', '', '', 'md Monir Hussion', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-05 21:50:18', NULL, NULL, 1),
(2, 'S00002', 'Zahid Car Decoration', '', '', '01712041993', '', '', 'Banglamotor', 'Md Jahid', 0, 0, '', '0.00', NULL, 'd', 'Admin', '2022-06-05 22:18:38', NULL, NULL, 1),
(3, 'S00003', 'Rekha Car Decoration', '', '', '01942548553', '', '', 'Bangla motor', 'Mrs.Rekha', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-06 02:03:37', NULL, NULL, 1),
(4, 'S00004', 'Malek Enterprise', '', '', '01913070495', '', '', 'Easkaton', 'Md. Noshed', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-06 19:37:35', NULL, NULL, 1),
(5, 'S00005', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-06 20:02:08', NULL, NULL, 1),
(6, 'S00006', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-09 22:39:04', NULL, NULL, 1),
(7, 'S00007', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-12 10:28:10', NULL, NULL, 1),
(8, 'S00008', 'Mr.Shamim Hasan ', 'G', '', '01672', '', '', 'Dhaka ', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-20 21:41:50', NULL, NULL, 1),
(9, 'S00009', 'rk traders', '', '', '01818725706', '', '', '', '', 0, 0, '', '0.00', NULL, 'd', 'Admin', '2022-06-22 13:41:01', NULL, NULL, 1),
(10, 'S00010', 'rinku', '', '', '017858565', '', '', 'dhaka', 'ggg', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-23 17:34:39', NULL, NULL, 2),
(11, 'S00011', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-26 18:48:57', NULL, NULL, 4),
(12, 'S00012', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-28 13:44:07', NULL, NULL, 1),
(13, 'S00013', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-28 13:45:58', NULL, NULL, 1),
(14, 'S00014', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-29 12:39:01', NULL, NULL, 1),
(15, 'S00015', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-06-29 14:48:50', NULL, NULL, 3),
(16, 'S00016', 'zxcvb', 'G', '', '0178998', '', '', ';yidtuci', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-18 11:30:34', NULL, NULL, 1),
(17, 'S00017', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-18 17:45:38', NULL, NULL, 1),
(18, 'S00018', 'Sotota Telecom', '', '', '01713705076', '', '', 'gsdes', 'bf', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-18 22:13:23', NULL, NULL, 3),
(19, 'S00019', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-18 22:19:09', NULL, NULL, 3),
(20, 'S00020', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-19 10:10:03', NULL, NULL, 1),
(21, 'S00021', 'vitalac', '', '', '01711418040', '', '', '', '', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-22 21:47:48', NULL, NULL, 1),
(22, 'S00022', 'maa confactionery', '', '', '01711414266', '', '', 'rajshahi', '', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-22 23:28:05', NULL, NULL, 1),
(23, 'S00023', 'sotota telecom', '', '', '01711417788', '', '', 'chapai', '', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-22 23:30:56', NULL, NULL, 1),
(24, 'S00024', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-23 18:06:09', NULL, NULL, 1),
(25, 'S00025', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-23 18:17:20', NULL, NULL, 1),
(26, 'S00026', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-23 18:30:52', NULL, NULL, 1),
(27, 'S00027', 'Rak ', '', '', '017', '', '', 'dhaka', 'rak', 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-24 10:48:32', NULL, NULL, 6),
(28, 'S00028', 'Sayed', '', '', '0177', '', '', 'Dhaka', 'Sayed', 0, 0, '', '-10000.00', NULL, 'a', 'Admin', '2022-07-24 18:38:12', 'Admin', '2022-07-24 18:43:24', 1),
(29, 'S00029', 'Rafi Enter', '', '', '017644', '', '', 'Dhaka', 'Rafi Enter', 0, 0, '', '0.00', NULL, 'd', 'Admin', '2022-07-24 18:49:13', 'Admin', '2022-07-24 19:37:07', 7),
(30, 'S00030', '', 'G', '', '', '', '', '', NULL, 0, 0, '', '0.00', NULL, 'a', 'Admin', '2022-07-24 19:05:22', NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_payment`
--

CREATE TABLE `tbl_supplier_payment` (
  `SPayment_id` int(11) NOT NULL,
  `SPayment_date` date DEFAULT NULL,
  `SPayment_invoice` varchar(20) DEFAULT NULL,
  `SPayment_customerID` varchar(20) DEFAULT NULL,
  `SPayment_TransactionType` varchar(25) DEFAULT NULL,
  `SPayment_amount` decimal(18,2) DEFAULT NULL,
  `SPayment_Paymentby` varchar(20) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `SPayment_notes` varchar(225) DEFAULT NULL,
  `SPayment_brunchid` int(11) DEFAULT NULL,
  `SPayment_status` varchar(2) DEFAULT NULL,
  `SPayment_Addby` varchar(100) DEFAULT NULL,
  `SPayment_AddDAte` date DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `SPayment_UpdateDAte` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transferdetails`
--

CREATE TABLE `tbl_transferdetails` (
  `transferdetails_id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `purchase_rate` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total` decimal(18,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfermaster`
--

CREATE TABLE `tbl_transfermaster` (
  `transfer_id` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  `transfer_by` int(11) NOT NULL,
  `transfer_from` int(11) NOT NULL,
  `transfer_to` int(11) NOT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `note` varchar(500) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `added_datetime` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit`
--

CREATE TABLE `tbl_unit` (
  `Unit_SlNo` int(11) NOT NULL,
  `Unit_Name` varchar(150) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_unit`
--

INSERT INTO `tbl_unit` (`Unit_SlNo`, `Unit_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`) VALUES
(1, 'PCS', 'a', NULL, NULL, NULL, NULL),
(2, 'SET', 'a', 'Admin', '2022-06-05 22:13:12', NULL, NULL),
(3, 'Box ', 'a', 'Admin', '2022-06-12 10:21:50', NULL, NULL),
(4, 'Lbs', 'a', 'Admin', '2022-06-12 17:05:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `User_SlNo` int(11) NOT NULL,
  `User_ID` varchar(50) NOT NULL,
  `FullName` varchar(150) NOT NULL,
  `User_Name` varchar(150) NOT NULL,
  `UserEmail` varchar(200) NOT NULL,
  `userBrunch_id` int(11) NOT NULL,
  `User_Password` varchar(50) NOT NULL,
  `UserType` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `verifycode` int(11) NOT NULL,
  `image_name` varchar(1000) DEFAULT NULL,
  `AddBy` varchar(50) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Brunch_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`User_SlNo`, `User_ID`, `FullName`, `User_Name`, `UserEmail`, `userBrunch_id`, `User_Password`, `UserType`, `status`, `verifycode`, `image_name`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `Brunch_ID`) VALUES
(1, 'U0001', 'Admin', 'admin', 'admin@host.com', 1, 'c4ca4238a0b923820dcc509a6f75849b', 'm', 'a', 1, '1.png', NULL, NULL, NULL, NULL, 1),
(2, '', 'a', 'a4', 'a@host.com', 1, 'c4ca4238a0b923820dcc509a6f75849b', 'u', 'a', 0, NULL, NULL, '2022-07-19 10:04:59', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_access`
--

CREATE TABLE `tbl_user_access` (
  `access_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access` text NOT NULL,
  `saved_by` int(11) NOT NULL,
  `saved_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_access`
--

INSERT INTO `tbl_user_access` (`access_id`, `user_id`, `access`, `saved_by`, `saved_datetime`) VALUES
(1, 2, '[\"sales\\/product\",\"sales\\/service\",\"salesReturn\",\"salesrecord\"]', 1, '2022-07-19 14:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_activity`
--

CREATE TABLE `tbl_user_activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  `status` char(2) NOT NULL DEFAULT 'a',
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_activity`
--

INSERT INTO `tbl_user_activity` (`id`, `user_id`, `ip_address`, `login_time`, `logout_time`, `status`, `branch_id`) VALUES
(1, 1, '103.148.178.15', '2022-06-05 11:52:51', NULL, 'a', 1),
(2, 1, '43.245.123.25', '2022-06-05 12:53:29', NULL, 'a', 1),
(3, 1, '103.159.73.31', '2022-06-05 15:08:27', '2022-06-05 15:39:18', 'a', 1),
(4, 1, '103.159.73.31', '2022-06-05 15:24:04', NULL, 'a', 1),
(5, 1, '103.159.73.31', '2022-06-05 15:36:19', NULL, 'a', 1),
(6, 1, '103.159.73.31', '2022-06-05 17:20:04', NULL, 'a', 1),
(7, 1, '103.167.17.13', '2022-06-05 20:44:29', NULL, 'a', 1),
(8, 1, '221.120.100.5', '2022-06-06 01:59:44', NULL, 'a', 1),
(9, 1, '45.114.88.178', '2022-06-06 02:02:32', NULL, 'a', 1),
(10, 1, '221.120.100.5', '2022-06-06 02:07:46', NULL, 'a', 1),
(11, 1, '221.120.100.5', '2022-06-06 02:08:04', '2022-06-06 02:30:04', 'a', 1),
(12, 1, '37.187.147.158', '2022-06-06 11:04:21', NULL, 'a', 1),
(13, 1, '103.148.178.15', '2022-06-06 12:50:38', NULL, 'a', 1),
(14, 1, '103.167.17.13', '2022-06-06 13:32:21', NULL, 'a', 1),
(15, 1, '103.154.158.44', '2022-06-06 14:06:18', NULL, 'a', 1),
(16, 1, '103.148.178.15', '2022-06-06 14:09:55', NULL, 'a', 1),
(17, 2, '103.148.178.15', '2022-06-06 14:25:21', NULL, 'a', 1),
(18, 1, '103.154.158.44', '2022-06-06 15:43:50', NULL, 'a', 1),
(19, 1, '37.111.218.164', '2022-06-06 18:43:07', NULL, 'a', 1),
(20, 1, '103.154.158.44', '2022-06-06 18:43:45', NULL, 'a', 1),
(21, 1, '103.159.73.31', '2022-06-07 15:58:48', NULL, 'a', 1),
(22, 1, '103.159.73.31', '2022-06-07 16:16:16', NULL, 'a', 1),
(23, 1, '103.167.17.13', '2022-06-07 17:33:11', NULL, 'a', 1),
(24, 1, '27.147.205.235', '2022-06-08 09:54:38', NULL, 'a', 1),
(25, 1, '103.100.234.178', '2022-06-08 13:54:22', '2022-06-08 13:55:23', 'a', 1),
(26, 1, '103.135.254.242', '2022-06-08 23:42:52', NULL, 'a', 1),
(27, 1, '103.100.234.178', '2022-06-09 10:47:37', NULL, 'a', 1),
(28, 1, '103.100.234.178', '2022-06-09 10:53:50', '2022-06-09 10:59:40', 'a', 1),
(29, 1, '103.154.158.44', '2022-06-09 12:23:08', NULL, 'a', 1),
(30, 1, '103.154.158.44', '2022-06-09 12:39:57', NULL, 'a', 1),
(31, 1, '103.167.17.13', '2022-06-09 20:00:05', NULL, 'a', 1),
(32, 1, '118.179.22.226', '2022-06-09 22:37:55', NULL, 'a', 1),
(33, 1, '103.253.44.253', '2022-06-11 14:00:00', NULL, 'a', 1),
(34, 1, '103.159.73.31', '2022-06-11 14:17:22', NULL, 'a', 1),
(35, 1, '103.171.142.33', '2022-06-11 16:39:10', NULL, 'a', 1),
(36, 1, '103.171.142.33', '2022-06-11 16:42:01', NULL, 'a', 1),
(37, 1, '103.159.73.31', '2022-06-11 17:16:29', NULL, 'a', 1),
(38, 1, '103.129.211.118', '2022-06-11 17:38:00', '2022-06-11 17:40:41', 'a', 1),
(39, 1, '103.159.73.31', '2022-06-11 17:57:24', NULL, 'a', 1),
(40, 1, '119.30.32.89', '2022-06-11 20:06:24', NULL, 'a', 1),
(41, 1, '119.30.32.89', '2022-06-11 20:11:17', '2022-06-11 20:12:04', 'a', 1),
(42, 1, '119.30.32.89', '2022-06-11 20:12:10', NULL, 'a', 1),
(43, 1, '119.30.32.192', '2022-06-11 21:52:57', NULL, 'a', 1),
(44, 1, '119.30.32.192', '2022-06-11 21:54:19', NULL, 'a', 1),
(45, 1, '119.30.32.192', '2022-06-12 03:02:27', NULL, 'a', 1),
(46, 1, '103.159.73.31', '2022-06-12 09:49:04', NULL, 'a', 1),
(47, 1, '103.159.73.31', '2022-06-12 10:09:29', NULL, 'a', 1),
(48, 1, '103.159.73.31', '2022-06-12 10:30:47', NULL, 'a', 1),
(49, 1, '43.245.121.208', '2022-06-12 10:40:21', '2022-06-12 10:53:47', 'a', 1),
(50, 1, '43.245.123.228', '2022-06-12 13:03:33', '2022-06-12 13:29:08', 'a', 1),
(51, 1, '103.159.73.31', '2022-06-12 13:38:54', NULL, 'a', 1),
(52, 1, '27.147.205.235', '2022-06-12 14:42:39', NULL, 'a', 1),
(53, 1, '103.159.73.31', '2022-06-12 17:04:00', NULL, 'a', 1),
(54, 1, '103.134.202.25', '2022-06-12 17:09:06', NULL, 'a', 1),
(55, 1, '103.159.73.31', '2022-06-12 18:44:13', NULL, 'a', 1),
(56, 1, '37.111.213.235', '2022-06-13 09:16:00', NULL, 'a', 1),
(57, 1, '103.159.73.31', '2022-06-13 10:01:11', NULL, 'a', 1),
(58, 1, '103.159.73.31', '2022-06-13 10:15:02', NULL, 'a', 1),
(59, 1, '103.159.73.31', '2022-06-13 18:27:09', NULL, 'a', 1),
(60, 1, '103.159.73.31', '2022-06-14 11:06:16', NULL, 'a', 1),
(61, 1, '103.159.73.31', '2022-06-14 11:34:45', NULL, 'a', 1),
(62, 1, '103.159.73.31', '2022-06-14 12:16:13', '2022-06-14 12:16:41', 'a', 1),
(63, 1, '103.107.40.8', '2022-06-14 14:07:47', NULL, 'a', 1),
(64, 1, '116.58.202.231', '2022-06-14 15:48:01', NULL, 'a', 1),
(65, 1, '103.159.73.31', '2022-06-14 16:28:10', NULL, 'a', 1),
(66, 1, '103.159.73.31', '2022-06-15 10:29:56', NULL, 'a', 1),
(67, 1, '103.159.73.31', '2022-06-15 10:49:40', NULL, 'a', 1),
(68, 1, '103.159.73.31', '2022-06-15 12:37:52', NULL, 'a', 1),
(69, 1, '103.159.73.31', '2022-06-15 18:10:29', NULL, 'a', 1),
(70, 1, '103.159.73.31', '2022-06-15 18:57:46', NULL, 'a', 1),
(71, 1, '103.159.73.31', '2022-06-16 11:54:07', NULL, 'a', 1),
(72, 1, '103.159.73.31', '2022-06-16 11:58:01', NULL, 'a', 1),
(73, 1, '103.159.73.31', '2022-06-16 12:04:42', NULL, 'a', 1),
(74, 1, '103.159.73.31', '2022-06-16 12:12:29', '2022-06-16 12:16:43', 'a', 1),
(75, 1, '203.189.224.254', '2022-06-16 18:00:53', NULL, 'a', 1),
(76, 1, '119.30.47.232', '2022-06-18 09:00:08', NULL, 'a', 1),
(77, 1, '103.159.73.31', '2022-06-18 10:31:22', NULL, 'a', 1),
(78, 1, '103.159.73.31', '2022-06-18 11:21:06', NULL, 'a', 1),
(79, 1, '103.253.46.117', '2022-06-18 16:11:56', '2022-06-18 16:36:24', 'a', 1),
(80, 1, '103.126.13.133', '2022-06-18 17:12:18', NULL, 'a', 1),
(81, 1, '103.126.13.133', '2022-06-18 17:14:21', NULL, 'a', 1),
(82, 1, '103.159.73.31', '2022-06-18 17:35:35', NULL, 'a', 1),
(83, 1, '103.159.73.31', '2022-06-18 19:16:24', NULL, 'a', 1),
(84, 1, '103.159.73.31', '2022-06-19 09:21:09', NULL, 'a', 1),
(85, 1, '103.159.73.31', '2022-06-19 09:21:09', NULL, 'a', 1),
(86, 1, '103.67.158.86', '2022-06-19 11:19:07', NULL, 'a', 1),
(87, 1, '103.67.158.86', '2022-06-19 11:20:19', NULL, 'a', 1),
(88, 1, '103.159.73.31', '2022-06-19 16:24:35', NULL, 'a', 1),
(89, 1, '182.48.80.209', '2022-06-19 17:31:09', '2022-06-19 17:31:47', 'a', 1),
(90, 1, '103.150.68.197', '2022-06-20 12:32:06', NULL, 'a', 1),
(91, 1, '103.159.73.31', '2022-06-20 12:58:07', NULL, 'a', 1),
(92, 1, '103.159.73.31', '2022-06-20 13:59:15', NULL, 'a', 1),
(93, 1, '103.159.73.31', '2022-06-20 14:27:06', NULL, 'a', 1),
(94, 1, '103.159.73.31', '2022-06-20 14:27:10', NULL, 'a', 1),
(95, 1, '103.159.73.31', '2022-06-20 15:13:33', NULL, 'a', 1),
(96, 1, '118.179.22.226', '2022-06-20 21:20:59', NULL, 'a', 1),
(97, 1, '103.67.159.206', '2022-06-21 11:45:39', NULL, 'a', 1),
(98, 1, '103.159.73.31', '2022-06-21 16:35:27', NULL, 'a', 1),
(99, 1, '103.29.127.126', '2022-06-22 11:55:34', NULL, 'a', 1),
(100, 1, '103.151.1.226', '2022-06-22 13:07:38', NULL, 'a', 1),
(101, 1, '103.151.1.226', '2022-06-22 13:40:02', NULL, 'a', 1),
(102, 1, '103.151.1.226', '2022-06-22 13:46:19', NULL, 'a', 1),
(103, 1, '103.151.1.226', '2022-06-22 13:47:24', NULL, 'a', 1),
(104, 1, '103.159.73.31', '2022-06-22 16:13:16', NULL, 'a', 1),
(105, 1, '103.159.73.31', '2022-06-22 16:57:23', NULL, 'a', 1),
(106, 1, '103.159.73.31', '2022-06-22 19:08:09', NULL, 'a', 1),
(107, 1, '119.30.35.76', '2022-06-22 22:26:40', NULL, 'a', 1),
(108, 1, '103.100.234.177', '2022-06-23 10:09:19', NULL, 'a', 1),
(109, 1, '103.154.158.44', '2022-06-23 11:52:55', NULL, 'a', 1),
(110, 1, '37.111.218.110', '2022-06-23 11:56:57', '2022-06-23 12:12:35', 'a', 1),
(111, 1, '103.100.234.177', '2022-06-23 12:10:05', NULL, 'a', 1),
(112, 1, '103.100.234.177', '2022-06-23 12:45:17', NULL, 'a', 1),
(113, 1, '103.100.234.177', '2022-06-23 13:00:01', NULL, 'a', 1),
(114, 1, '114.130.157.153', '2022-06-23 14:26:15', NULL, 'a', 1),
(115, 1, '114.130.157.153', '2022-06-23 14:30:42', NULL, 'a', 1),
(116, 1, '103.159.73.31', '2022-06-23 14:32:09', NULL, 'a', 1),
(117, 1, '103.159.73.31', '2022-06-23 16:15:37', NULL, 'a', 1),
(118, 1, '45.248.150.113', '2022-06-23 17:08:13', NULL, 'a', 1),
(119, 1, '43.245.123.155', '2022-06-23 20:05:23', NULL, 'a', 1),
(120, 1, '103.25.250.243', '2022-06-23 20:15:50', NULL, 'a', 1),
(121, 1, '103.167.17.13', '2022-06-23 20:19:22', NULL, 'a', 1),
(122, 1, '103.167.17.13', '2022-06-23 20:23:33', NULL, 'a', 1),
(123, 1, '103.67.158.90', '2022-06-24 02:18:56', NULL, 'a', 1),
(124, 1, '103.25.250.243', '2022-06-24 09:45:36', NULL, 'a', 1),
(125, 1, '103.151.1.226', '2022-06-24 13:32:15', NULL, 'a', 1),
(126, 1, '103.151.1.226', '2022-06-24 13:33:36', NULL, 'a', 1),
(127, 1, '103.167.17.13', '2022-06-24 17:32:02', NULL, 'a', 1),
(128, 1, '103.25.248.230', '2022-06-24 20:20:36', NULL, 'a', 1),
(129, 1, '103.100.234.177', '2022-06-25 11:03:31', NULL, 'a', 1),
(130, 1, '103.159.73.31', '2022-06-25 11:27:40', NULL, 'a', 1),
(131, 1, '103.159.73.31', '2022-06-25 11:53:28', NULL, 'a', 1),
(132, 1, '103.159.73.31', '2022-06-25 12:34:33', NULL, 'a', 1),
(133, 1, '103.151.1.226', '2022-06-25 12:58:41', NULL, 'a', 1),
(134, 1, '114.130.157.44', '2022-06-25 13:04:32', NULL, 'a', 1),
(135, 1, '103.159.73.31', '2022-06-25 13:35:28', NULL, 'a', 1),
(136, 1, '103.151.1.226', '2022-06-25 15:10:12', NULL, 'a', 1),
(137, 1, '114.130.157.44', '2022-06-25 16:19:05', NULL, 'a', 1),
(138, 1, '103.100.234.177', '2022-06-25 16:53:31', NULL, 'a', 1),
(139, 1, '103.159.73.31', '2022-06-25 17:43:58', NULL, 'a', 1),
(140, 1, '103.25.248.245', '2022-06-25 22:29:07', NULL, 'a', 1),
(141, 1, '116.58.203.70', '2022-06-26 01:43:07', NULL, 'a', 1),
(142, 1, '116.58.203.70', '2022-06-26 01:45:22', NULL, 'a', 1),
(143, 1, '103.100.234.177', '2022-06-26 10:21:07', '2022-06-26 10:21:38', 'a', 1),
(144, 1, '103.100.234.177', '2022-06-26 10:21:41', NULL, 'a', 1),
(145, 1, '103.159.73.31', '2022-06-26 10:27:34', NULL, 'a', 1),
(146, 1, '103.100.234.177', '2022-06-26 10:29:05', NULL, 'a', 1),
(147, 1, '114.130.156.102', '2022-06-26 12:22:23', NULL, 'a', 1),
(148, 1, '114.130.156.102', '2022-06-26 12:27:49', NULL, 'a', 1),
(149, 1, '103.159.73.31', '2022-06-26 14:08:58', NULL, 'a', 1),
(150, 1, '103.159.73.31', '2022-06-26 14:20:49', NULL, 'a', 1),
(151, 1, '103.159.73.31', '2022-06-26 15:19:27', NULL, 'a', 1),
(152, 1, '103.100.234.177', '2022-06-26 16:26:43', NULL, 'a', 1),
(153, 1, '103.159.73.31', '2022-06-26 16:43:27', NULL, 'a', 1),
(154, 1, '103.126.13.133', '2022-06-26 17:11:51', NULL, 'a', 1),
(155, 1, '103.126.13.133', '2022-06-26 18:20:06', NULL, 'a', 1),
(156, 1, '103.126.13.133', '2022-06-26 18:31:04', NULL, 'a', 1),
(157, 1, '103.126.13.133', '2022-06-26 18:42:18', '2022-06-26 18:55:21', 'a', 1),
(158, 1, '114.130.157.177', '2022-06-26 20:19:43', NULL, 'a', 1),
(159, 1, '103.159.73.31', '2022-06-27 09:42:46', NULL, 'a', 1),
(160, 1, '103.166.59.125', '2022-06-27 10:39:04', NULL, 'a', 1),
(161, 1, '103.100.234.177', '2022-06-27 11:21:42', NULL, 'a', 1),
(162, 1, '103.130.172.231', '2022-06-27 11:48:31', NULL, 'a', 1),
(163, 1, '103.130.172.231', '2022-06-27 12:09:53', NULL, 'a', 1),
(164, 1, '103.130.172.231', '2022-06-27 12:10:25', NULL, 'a', 1),
(165, 1, '103.130.172.231', '2022-06-27 13:12:42', NULL, 'a', 1),
(166, 1, '202.134.14.148', '2022-06-27 13:34:18', NULL, 'a', 1),
(167, 1, '103.130.172.231', '2022-06-27 13:36:55', NULL, 'a', 1),
(168, 1, '103.109.238.195', '2022-06-27 14:52:27', NULL, 'a', 1),
(169, 1, '103.167.17.13', '2022-06-27 16:56:09', NULL, 'a', 1),
(170, 1, '103.85.193.13', '2022-06-27 17:01:22', NULL, 'a', 1),
(171, 1, '103.92.152.22', '2022-06-27 18:02:03', NULL, 'a', 1),
(172, 1, '103.92.152.22', '2022-06-27 18:06:11', NULL, 'a', 1),
(173, 1, '103.167.17.13', '2022-06-27 18:51:09', NULL, 'a', 1),
(174, 1, '43.250.80.230', '2022-06-27 22:54:39', NULL, 'a', 1),
(175, 1, '43.250.80.230', '2022-06-27 23:03:12', NULL, 'a', 1),
(176, 1, '103.126.13.133', '2022-06-28 12:26:35', NULL, 'a', 1),
(177, 1, '103.159.73.31', '2022-06-28 13:41:45', NULL, 'a', 1),
(178, 1, '45.120.114.192', '2022-06-28 15:00:52', NULL, 'a', 1),
(179, 1, '103.167.17.13', '2022-06-28 17:14:28', NULL, 'a', 1),
(180, 1, '103.167.17.13', '2022-06-28 20:08:38', NULL, 'a', 1),
(181, 1, '103.183.63.20', '2022-06-28 21:01:47', NULL, 'a', 1),
(182, 1, '37.111.214.163', '2022-06-28 23:11:54', NULL, 'a', 1),
(183, 1, '37.111.214.163', '2022-06-28 23:11:56', NULL, 'a', 1),
(184, 1, '103.159.73.31', '2022-06-29 09:34:30', NULL, 'a', 1),
(185, 1, '103.159.73.31', '2022-06-29 10:03:52', NULL, 'a', 1),
(186, 1, '103.159.73.31', '2022-06-29 10:21:11', NULL, 'a', 1),
(187, 1, '103.100.234.177', '2022-06-29 11:07:50', NULL, 'a', 1),
(188, 1, '103.167.17.13', '2022-06-29 13:39:59', NULL, 'a', 1),
(189, 1, '103.159.73.31', '2022-06-29 14:36:32', NULL, 'a', 1),
(190, 1, '103.100.234.177', '2022-06-29 14:50:07', NULL, 'a', 1),
(191, 1, '103.159.73.31', '2022-06-29 15:05:15', NULL, 'a', 1),
(192, 1, '103.167.17.13', '2022-06-29 16:07:40', NULL, 'a', 1),
(193, 1, '103.159.73.31', '2022-06-29 16:15:39', NULL, 'a', 1),
(194, 1, '103.159.73.31', '2022-06-29 16:56:47', NULL, 'a', 1),
(195, 1, '103.159.73.31', '2022-06-30 09:12:50', NULL, 'a', 1),
(196, 1, '103.159.73.31', '2022-06-30 09:24:08', NULL, 'a', 1),
(197, 1, '103.154.158.44', '2022-06-30 10:21:18', NULL, 'a', 1),
(198, 1, '37.111.196.40', '2022-06-30 11:36:19', NULL, 'a', 1),
(199, 1, '103.159.73.31', '2022-06-30 12:56:01', NULL, 'a', 1),
(200, 1, '103.159.73.31', '2022-06-30 14:31:45', NULL, 'a', 1),
(201, 1, '103.159.73.31', '2022-06-30 14:33:49', NULL, 'a', 1),
(202, 1, '103.159.73.31', '2022-06-30 14:37:49', NULL, 'a', 1),
(203, 1, '103.159.73.31', '2022-06-30 16:32:07', NULL, 'a', 1),
(204, 1, '103.159.73.31', '2022-06-30 16:38:19', NULL, 'a', 1),
(205, 1, '103.167.17.13', '2022-06-30 17:10:42', NULL, 'a', 1),
(206, 1, '202.134.14.152', '2022-07-01 11:47:19', NULL, 'a', 1),
(207, 1, '103.159.73.31', '2022-07-02 14:33:51', NULL, 'a', 1),
(208, 1, '103.159.73.31', '2022-07-02 17:30:15', NULL, 'a', 1),
(209, 1, '103.159.73.31', '2022-07-02 17:39:35', NULL, 'a', 1),
(210, 1, '103.159.73.31', '2022-07-03 10:03:36', NULL, 'a', 1),
(211, 1, '43.245.120.63', '2022-07-03 12:16:40', NULL, 'a', 1),
(212, 1, '43.245.120.63', '2022-07-03 12:17:08', NULL, 'a', 1),
(213, 1, '43.245.120.63', '2022-07-03 12:17:18', NULL, 'a', 1),
(214, 1, '103.159.73.31', '2022-07-03 12:21:30', NULL, 'a', 1),
(215, 1, '103.159.73.31', '2022-07-03 12:39:05', NULL, 'a', 1),
(216, 1, '103.159.73.31', '2022-07-03 15:36:56', NULL, 'a', 1),
(217, 1, '103.159.73.31', '2022-07-03 15:44:45', NULL, 'a', 1),
(218, 1, '103.159.73.31', '2022-07-03 16:15:08', NULL, 'a', 1),
(219, 1, '114.130.156.78', '2022-07-03 16:53:32', NULL, 'a', 1),
(220, 1, '114.130.156.78', '2022-07-03 16:53:51', NULL, 'a', 1),
(221, 1, '114.130.156.123', '2022-07-03 21:18:37', NULL, 'a', 1),
(222, 1, '202.134.10.130', '2022-07-04 02:11:42', NULL, 'a', 1),
(223, 1, '103.100.234.177', '2022-07-04 10:48:07', '2022-07-04 10:48:24', 'a', 1),
(224, 1, '103.159.73.31', '2022-07-04 10:51:56', NULL, 'a', 1),
(225, 1, '37.111.193.46', '2022-07-04 12:23:22', NULL, 'a', 1),
(226, 1, '119.30.35.232', '2022-07-04 12:42:47', '2022-07-04 13:01:48', 'a', 1),
(227, 1, '103.100.234.177', '2022-07-05 09:48:34', NULL, 'a', 1),
(228, 1, '103.159.73.31', '2022-07-05 09:51:23', NULL, 'a', 1),
(229, 1, '103.159.73.31', '2022-07-05 10:16:26', NULL, 'a', 1),
(230, 1, '103.159.73.31', '2022-07-05 15:36:54', NULL, 'a', 1),
(231, 1, '103.159.73.31', '2022-07-05 16:19:43', NULL, 'a', 1),
(232, 1, '103.159.73.31', '2022-07-06 09:12:20', NULL, 'a', 1),
(233, 1, '103.159.73.31', '2022-07-06 11:38:31', NULL, 'a', 1),
(234, 1, '103.159.73.31', '2022-07-06 11:54:17', NULL, 'a', 1),
(235, 1, '103.159.73.31', '2022-07-06 12:21:18', NULL, 'a', 1),
(236, 1, '43.245.123.16', '2022-07-06 14:00:46', NULL, 'a', 1),
(237, 1, '103.67.158.141', '2022-07-06 14:08:03', NULL, 'a', 1),
(238, 1, '103.159.73.31', '2022-07-06 15:58:59', NULL, 'a', 1),
(239, 1, '103.159.73.31', '2022-07-06 16:32:32', NULL, 'a', 1),
(240, 1, '103.159.73.31', '2022-07-06 16:58:47', '2022-07-06 18:09:04', 'a', 1),
(241, 1, '103.159.73.31', '2022-07-06 18:09:07', NULL, 'a', 1),
(242, 1, '103.159.73.31', '2022-07-07 08:57:16', NULL, 'a', 1),
(243, 1, '103.159.73.31', '2022-07-16 12:41:35', NULL, 'a', 1),
(244, 1, '103.159.73.31', '2022-07-16 15:04:16', NULL, 'a', 1),
(245, 1, '103.159.73.31', '2022-07-16 15:08:43', NULL, 'a', 1),
(246, 1, '103.159.73.31', '2022-07-17 09:33:16', '2022-07-17 11:39:01', 'a', 1),
(247, 1, '103.159.73.31', '2022-07-17 11:39:25', '2022-07-17 11:43:47', 'a', 1),
(248, 1, '103.159.73.31', '2022-07-17 11:44:00', '2022-07-17 11:45:24', 'a', 1),
(249, 1, '103.159.73.31', '2022-07-17 11:45:45', NULL, 'a', 1),
(250, 1, '103.177.74.254', '2022-07-17 17:07:34', NULL, 'a', 1),
(251, 1, '103.177.74.254', '2022-07-17 17:15:14', NULL, 'a', 1),
(252, 1, '103.159.73.31', '2022-07-18 10:23:45', NULL, 'a', 1),
(253, 1, '37.111.194.111', '2022-07-18 13:45:16', NULL, 'a', 1),
(254, 1, '37.111.194.111', '2022-07-18 14:12:39', NULL, 'a', 1),
(255, 1, '37.111.194.111', '2022-07-18 14:17:51', NULL, 'a', 1),
(256, 1, '37.111.194.111', '2022-07-18 14:18:45', NULL, 'a', 1),
(257, 1, '37.111.194.111', '2022-07-18 14:29:07', NULL, 'a', 1),
(258, 1, '103.9.187.52', '2022-07-18 14:40:02', NULL, 'a', 1),
(259, 1, '103.9.187.52', '2022-07-18 14:49:25', NULL, 'a', 1),
(260, 1, '45.125.220.232', '2022-07-18 15:10:58', NULL, 'a', 1),
(261, 1, '103.159.73.31', '2022-07-18 17:02:58', NULL, 'a', 1),
(262, 1, '103.108.146.53', '2022-07-18 17:05:19', NULL, 'a', 1),
(263, 1, '45.125.220.232', '2022-07-18 18:39:40', NULL, 'a', 1),
(264, 1, '202.134.14.137', '2022-07-18 20:46:28', NULL, 'a', 1),
(265, 1, '45.125.220.232', '2022-07-18 21:36:45', NULL, 'a', 1),
(266, 1, '103.159.73.31', '2022-07-19 09:52:46', NULL, 'a', 1),
(267, 1, '103.159.73.31', '2022-07-19 10:02:19', NULL, 'a', 1),
(268, 2, '103.159.73.31', '2022-07-19 10:06:04', NULL, 'a', 1),
(269, 1, '103.159.73.31', '2022-07-19 11:04:52', NULL, 'a', 1),
(270, 1, '103.159.73.31', '2022-07-19 12:34:17', '2022-07-19 12:58:44', 'a', 1),
(271, 1, '103.203.176.10', '2022-07-19 14:19:35', NULL, 'a', 1),
(272, 1, '160.202.145.40', '2022-07-19 16:05:43', NULL, 'a', 1),
(273, 1, '45.125.220.232', '2022-07-19 23:43:52', NULL, 'a', 1),
(274, 1, '103.159.73.31', '2022-07-20 10:35:21', NULL, 'a', 1),
(275, 1, '202.134.13.135', '2022-07-20 15:07:05', NULL, 'a', 1),
(276, 1, '103.15.141.37', '2022-07-20 16:12:53', NULL, 'a', 1),
(277, 1, '103.159.73.31', '2022-07-20 16:17:25', NULL, 'a', 1),
(278, 1, '103.159.73.31', '2022-07-20 16:53:45', NULL, 'a', 1),
(279, 1, '103.159.73.31', '2022-07-21 00:50:21', NULL, 'a', 1),
(280, 1, '103.159.73.31', '2022-07-21 09:02:36', NULL, 'a', 1),
(281, 1, '103.159.73.31', '2022-07-21 10:30:37', NULL, 'a', 1),
(282, 1, '103.159.73.31', '2022-07-21 12:21:34', NULL, 'a', 1),
(283, 1, '113.212.108.16', '2022-07-21 14:02:41', '2022-07-21 14:08:10', 'a', 1),
(284, 1, '103.159.73.31', '2022-07-21 14:56:14', NULL, 'a', 1),
(285, 1, '43.250.80.230', '2022-07-21 20:23:59', NULL, 'a', 1),
(286, 1, '45.125.220.232', '2022-07-22 21:17:12', NULL, 'a', 1),
(287, 1, '103.159.73.31', '2022-07-23 09:05:41', NULL, 'a', 1),
(288, 1, '103.159.73.31', '2022-07-23 10:16:46', NULL, 'a', 1),
(289, 1, '43.245.123.245', '2022-07-23 12:46:48', NULL, 'a', 1),
(290, 1, '113.212.108.16', '2022-07-23 13:25:27', '2022-07-23 13:57:25', 'a', 1),
(291, 1, '113.212.108.16', '2022-07-23 13:58:48', '2022-07-23 13:59:28', 'a', 1),
(292, 1, '113.212.108.16', '2022-07-23 14:50:29', NULL, 'a', 1),
(293, 1, '113.212.108.16', '2022-07-23 15:12:18', NULL, 'a', 1),
(294, 1, '113.212.108.16', '2022-07-23 15:13:31', NULL, 'a', 1),
(295, 1, '103.159.73.31', '2022-07-23 15:14:13', '2022-07-23 17:23:35', 'a', 1),
(296, 1, '113.212.108.16', '2022-07-23 15:35:37', NULL, 'a', 1),
(297, 1, '103.100.234.178', '2022-07-23 16:24:13', NULL, 'a', 1),
(298, 1, '113.212.108.16', '2022-07-23 16:42:32', NULL, 'a', 1),
(299, 1, '103.100.234.178', '2022-07-23 17:51:07', NULL, 'a', 1),
(300, 1, '103.100.234.178', '2022-07-23 18:00:13', NULL, 'a', 1),
(301, 1, '103.100.234.178', '2022-07-23 18:00:26', NULL, 'a', 1),
(302, 1, '103.100.234.178', '2022-07-23 18:13:55', NULL, 'a', 1),
(303, 1, '103.100.234.178', '2022-07-23 18:16:51', NULL, 'a', 1),
(304, 1, '103.100.234.178', '2022-07-23 19:30:54', NULL, 'a', 1),
(305, 1, '45.125.220.232', '2022-07-23 21:48:10', NULL, 'a', 1),
(306, 1, '45.125.220.232', '2022-07-23 23:49:40', NULL, 'a', 1),
(307, 1, '103.159.73.31', '2022-07-24 09:40:02', '2022-07-24 10:02:15', 'a', 1),
(308, 1, '103.25.248.252', '2022-07-24 09:48:53', NULL, 'a', 1),
(309, 1, '103.25.248.252', '2022-07-24 09:48:53', NULL, 'a', 1),
(310, 1, '103.25.248.252', '2022-07-24 10:07:06', NULL, 'a', 1),
(311, 1, '103.25.248.252', '2022-07-24 10:07:06', NULL, 'a', 1),
(312, 1, '103.25.248.252', '2022-07-24 10:07:53', NULL, 'a', 1),
(313, 1, '103.25.248.252', '2022-07-24 10:07:53', NULL, 'a', 1),
(314, 1, '103.25.248.252', '2022-07-24 10:07:53', NULL, 'a', 1),
(315, 1, '103.159.73.31', '2022-07-24 10:10:01', NULL, 'a', 1),
(316, 1, '103.100.234.177', '2022-07-24 10:41:46', NULL, 'a', 1),
(317, 1, '103.100.234.177', '2022-07-24 10:44:24', NULL, 'a', 1),
(318, 1, '103.100.234.177', '2022-07-24 11:38:41', NULL, 'a', 1),
(319, 1, '103.130.175.33', '2022-07-24 12:11:04', NULL, 'a', 1),
(320, 1, '103.100.234.177', '2022-07-24 12:20:52', NULL, 'a', 1),
(321, 1, '103.25.251.249', '2022-07-24 15:51:35', NULL, 'a', 1),
(322, 1, '103.100.234.177', '2022-07-24 16:39:47', NULL, 'a', 1),
(323, 1, '103.100.234.177', '2022-07-24 16:43:47', NULL, 'a', 1),
(324, 1, '103.100.234.177', '2022-07-24 17:47:46', NULL, 'a', 1),
(325, 1, '103.100.234.177', '2022-07-24 17:58:06', NULL, 'a', 1),
(326, 1, '103.100.234.177', '2022-07-24 18:35:15', NULL, 'a', 1),
(327, 1, '103.100.234.177', '2022-07-24 18:46:43', NULL, 'a', 1),
(328, 1, '103.100.234.177', '2022-07-24 19:41:23', NULL, 'a', 1),
(329, 1, '45.125.220.232', '2022-07-24 22:43:16', '2022-07-24 22:43:20', 'a', 1),
(330, 1, '45.125.220.232', '2022-07-24 22:43:25', NULL, 'a', 1),
(331, 1, '103.159.73.31', '2022-07-25 09:11:46', NULL, 'a', 1),
(332, 1, '103.109.237.177', '2022-07-25 16:22:22', '2022-07-25 16:42:13', 'a', 1),
(333, 1, '45.125.220.232', '2022-07-25 17:24:22', '2022-07-25 17:24:26', 'a', 1),
(334, 1, '45.125.220.232', '2022-07-25 17:26:54', NULL, 'a', 1),
(335, 1, '202.134.9.153', '2022-07-25 18:21:38', NULL, 'a', 1),
(336, 1, '45.125.220.232', '2022-07-25 22:18:40', NULL, 'a', 1),
(337, 1, '103.159.73.31', '2022-07-26 09:51:02', NULL, 'a', 1),
(338, 1, '::1', '2022-07-26 10:07:51', NULL, 'a', 1),
(339, 1, '::1', '2022-07-26 14:47:45', NULL, 'a', 1),
(340, 1, '::1', '2022-07-27 09:30:44', NULL, 'a', 1),
(341, 1, '::1', '2022-07-27 12:59:42', NULL, 'a', 1),
(342, 1, '::1', '2022-07-28 09:56:25', '2022-07-28 10:22:52', 'a', 1),
(343, 1, '::1', '2022-07-28 10:42:47', NULL, 'a', 1),
(344, 1, '::1', '2022-07-30 11:54:16', NULL, 'a', 1),
(345, 1, '::1', '2022-07-31 09:23:09', NULL, 'a', 1),
(346, 1, '103.159.73.31', '2022-07-31 09:46:00', NULL, 'a', 1),
(347, 1, '103.159.73.31', '2022-07-31 11:16:42', NULL, 'a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mirpur', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thum_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `save_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `image`, `thum_image`, `role`, `password`, `status`, `save_by`, `updated_by`, `ip_address`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'MD Sazzat Hossain', 'admin', 'admin@gmail.com', NULL, 'images/avatar.png', NULL, '1', '$2y$10$.7v9zmDzS0pO/lJeJYTw4.63dzc2TzUrozR4CMEIHnWuPL4/xf55a', '1', NULL, NULL, NULL, NULL, NULL, '2022-07-26 09:13:13', '2022-07-26 09:13:13'),
(2, 'Md. shamim Miah', 'admin2', 'admin2@gmail.com', NULL, 'images/avatar.png', NULL, '1', '$2y$10$d7UotDQA3v36/myAKOkv1uwN9PwSnYQbJ6cWeTz6h7bG1ebyhQIHG', '1', NULL, NULL, NULL, NULL, NULL, '2022-07-26 09:13:14', '2022-07-26 09:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 28, '2022-07-31 15:09:32', '2022-07-31 15:09:32'),
(2, 1, 30, '2022-07-31 15:09:34', '2022-07-31 15:09:34'),
(3, 1, 1, '2022-07-31 15:19:28', '2022-07-31 15:19:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_upazila_id_foreign` (`upazila_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `company_profiles`
--
ALTER TABLE `company_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_country_id_foreign` (`country_id`),
  ADD KEY `customers_district_id_foreign` (`district_id`),
  ADD KEY `customers_upazila_id_foreign` (`upazila_id`),
  ADD KEY `customers_area_id_foreign` (`area_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

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
-- Indexes for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_publisheds`
--
ALTER TABLE `product_publisheds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `published_categories`
--
ALTER TABLE `published_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shapes`
--
ALTER TABLE `shapes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`Acc_SlNo`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  ADD PRIMARY KEY (`as_id`),
  ADD KEY `as_date` (`as_date`),
  ADD KEY `status` (`status`),
  ADD KEY `branchid` (`branchid`);

--
-- Indexes for table `tbl_bank_accounts`
--
ALTER TABLE `tbl_bank_accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_bank_transactions`
--
ALTER TABLE `tbl_bank_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `transaction_date` (`transaction_date`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_SiNo`),
  ADD KEY `ProductCategory_SlNo` (`ProductCategory_SlNo`),
  ADD KEY `status` (`status`),
  ADD KEY `brand_branchid` (`brand_branchid`);

--
-- Indexes for table `tbl_brunch`
--
ALTER TABLE `tbl_brunch`
  ADD PRIMARY KEY (`brunch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_cashtransaction`
--
ALTER TABLE `tbl_cashtransaction`
  ADD PRIMARY KEY (`Tr_SlNo`),
  ADD KEY `Tr_SlNo` (`Tr_SlNo`),
  ADD KEY `Tr_Id` (`Tr_Id`),
  ADD KEY `Tr_date` (`Tr_date`),
  ADD KEY `Tr_Type` (`Tr_Type`),
  ADD KEY `Acc_SlID` (`Acc_SlID`),
  ADD KEY `status` (`status`),
  ADD KEY `Tr_branchid` (`Tr_branchid`);

--
-- Indexes for table `tbl_checks`
--
ALTER TABLE `tbl_checks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `SM_id` (`SM_id`),
  ADD KEY `date` (`date`),
  ADD KEY `remid_date` (`remid_date`),
  ADD KEY `check_status` (`check_status`),
  ADD KEY `status` (`status`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_SiNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`Company_SlNo`),
  ADD KEY `Invoice_Type` (`Invoice_Type`),
  ADD KEY `print_type` (`print_type`),
  ADD KEY `company_BrunchId` (`company_BrunchId`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`Country_SlNo`),
  ADD KEY `Status` (`Status`);

--
-- Indexes for table `tbl_currentinventory`
--
ALTER TABLE `tbl_currentinventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `transfer_from_quantity` (`transfer_from_quantity`),
  ADD KEY `transfer_to_quantity` (`transfer_to_quantity`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`Customer_SlNo`),
  ADD KEY `Customer_Code` (`Customer_Code`),
  ADD KEY `Customer_Mobile` (`Customer_Mobile`),
  ADD KEY `Customer_Type` (`Customer_Type`),
  ADD KEY `Country_SlNo` (`Country_SlNo`),
  ADD KEY `area_ID` (`area_ID`),
  ADD KEY `status` (`status`),
  ADD KEY `Customer_brunchid` (`Customer_brunchid`);

--
-- Indexes for table `tbl_customer_payment`
--
ALTER TABLE `tbl_customer_payment`
  ADD PRIMARY KEY (`CPayment_id`),
  ADD KEY `CPayment_date` (`CPayment_date`),
  ADD KEY `CPayment_invoice` (`CPayment_invoice`),
  ADD KEY `CPayment_customerID` (`CPayment_customerID`),
  ADD KEY `CPayment_TransactionType` (`CPayment_TransactionType`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `CPayment_brunchid` (`CPayment_brunchid`),
  ADD KEY `CPayment_status` (`CPayment_status`);

--
-- Indexes for table `tbl_damage`
--
ALTER TABLE `tbl_damage`
  ADD PRIMARY KEY (`Damage_SlNo`),
  ADD KEY `Damage_InvoiceNo` (`Damage_InvoiceNo`),
  ADD KEY `Damage_Date` (`Damage_Date`),
  ADD KEY `status` (`status`),
  ADD KEY `Damage_brunchid` (`Damage_brunchid`);

--
-- Indexes for table `tbl_damagedetails`
--
ALTER TABLE `tbl_damagedetails`
  ADD PRIMARY KEY (`DamageDetails_SlNo`),
  ADD KEY `Damage_SlNo` (`Damage_SlNo`),
  ADD KEY `Product_SlNo` (`Product_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`Department_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`Designation_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`District_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`Employee_SlNo`),
  ADD KEY `Designation_ID` (`Designation_ID`),
  ADD KEY `Department_ID` (`Department_ID`),
  ADD KEY `Employee_ID` (`Employee_ID`),
  ADD KEY `status` (`status`),
  ADD KEY `Employee_brinchid` (`Employee_brinchid`);

--
-- Indexes for table `tbl_employee_payment`
--
ALTER TABLE `tbl_employee_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_date` (`payment_date`),
  ADD KEY `month_id` (`month_id`),
  ADD KEY `status` (`status`),
  ADD KEY `paymentBranch_id` (`branch_id`),
  ADD KEY `saved_by` (`saved_by`);

--
-- Indexes for table `tbl_employee_payment_details`
--
ALTER TABLE `tbl_employee_payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `branch_id` (`branch_id`) USING BTREE,
  ADD KEY `payment_id` (`payment_id`) USING BTREE,
  ADD KEY `employee_id` (`employee_id`) USING BTREE,
  ADD KEY `saved_by` (`saved_by`) USING BTREE;

--
-- Indexes for table `tbl_expense_head`
--
ALTER TABLE `tbl_expense_head`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_investment_account`
--
ALTER TABLE `tbl_investment_account`
  ADD PRIMARY KEY (`Acc_SlNo`),
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `branch_id` (`branch_id`) USING BTREE,
  ADD KEY `Acc_Code` (`Acc_Code`) USING BTREE;

--
-- Indexes for table `tbl_investment_transactions`
--
ALTER TABLE `tbl_investment_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `transaction_date` (`transaction_date`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `status` (`status`),
  ADD KEY `saved_by` (`saved_by`) USING BTREE,
  ADD KEY `account_id` (`account_id`) USING BTREE;

--
-- Indexes for table `tbl_loan_accounts`
--
ALTER TABLE `tbl_loan_accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `save_date` (`save_date`),
  ADD KEY `branch_id` (`branch_id`) USING BTREE,
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_loan_transactions`
--
ALTER TABLE `tbl_loan_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `transaction_date` (`transaction_date`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`),
  ADD KEY `saved_by` (`saved_by`) USING BTREE;

--
-- Indexes for table `tbl_month`
--
ALTER TABLE `tbl_month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`Product_SlNo`),
  ADD UNIQUE KEY `Product_Code` (`Product_Code`),
  ADD KEY `ProductCategory_ID` (`ProductCategory_ID`),
  ADD KEY `is_service` (`is_service`),
  ADD KEY `Unit_ID` (`Unit_ID`),
  ADD KEY `status` (`status`),
  ADD KEY `Product_branchid` (`Product_branchid`);

--
-- Indexes for table `tbl_productcategory`
--
ALTER TABLE `tbl_productcategory`
  ADD PRIMARY KEY (`ProductCategory_SlNo`),
  ADD KEY `status` (`status`),
  ADD KEY `category_branchid` (`category_branchid`);

--
-- Indexes for table `tbl_purchasedetails`
--
ALTER TABLE `tbl_purchasedetails`
  ADD PRIMARY KEY (`PurchaseDetails_SlNo`),
  ADD KEY `PurchaseMaster_IDNo` (`PurchaseMaster_IDNo`),
  ADD KEY `Product_IDNo` (`Product_IDNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `PurchaseDetails_branchID` (`PurchaseDetails_branchID`);

--
-- Indexes for table `tbl_purchasemaster`
--
ALTER TABLE `tbl_purchasemaster`
  ADD PRIMARY KEY (`PurchaseMaster_SlNo`),
  ADD KEY `Supplier_SlNo` (`Supplier_SlNo`),
  ADD KEY `Employee_SlNo` (`Employee_SlNo`),
  ADD KEY `PurchaseMaster_InvoiceNo` (`PurchaseMaster_InvoiceNo`),
  ADD KEY `PurchaseMaster_OrderDate` (`PurchaseMaster_OrderDate`),
  ADD KEY `status` (`status`),
  ADD KEY `PurchaseMaster_BranchID` (`PurchaseMaster_BranchID`);

--
-- Indexes for table `tbl_purchasereturn`
--
ALTER TABLE `tbl_purchasereturn`
  ADD PRIMARY KEY (`PurchaseReturn_SlNo`),
  ADD KEY `PurchaseMaster_InvoiceNo` (`PurchaseMaster_InvoiceNo`),
  ADD KEY `Supplier_IDdNo` (`Supplier_IDdNo`),
  ADD KEY `PurchaseReturn_ReturnDate` (`PurchaseReturn_ReturnDate`),
  ADD KEY `Status` (`Status`),
  ADD KEY `PurchaseReturn_brunchID` (`PurchaseReturn_brunchID`);

--
-- Indexes for table `tbl_purchasereturndetails`
--
ALTER TABLE `tbl_purchasereturndetails`
  ADD PRIMARY KEY (`PurchaseReturnDetails_SlNo`),
  ADD KEY `PurchaseReturn_SlNo` (`PurchaseReturn_SlNo`),
  ADD KEY `PurchaseReturnDetailsProduct_SlNo` (`PurchaseReturnDetailsProduct_SlNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `PurchaseReturnDetails_brachid` (`PurchaseReturnDetails_brachid`);

--
-- Indexes for table `tbl_quotaion_customer`
--
ALTER TABLE `tbl_quotaion_customer`
  ADD PRIMARY KEY (`quotation_customer_id`),
  ADD KEY `quation_customer_branchid` (`quation_customer_branchid`);

--
-- Indexes for table `tbl_quotation_details`
--
ALTER TABLE `tbl_quotation_details`
  ADD PRIMARY KEY (`SaleDetails_SlNo`),
  ADD KEY `SaleMaster_IDNo` (`SaleMaster_IDNo`),
  ADD KEY `Product_IDNo` (`Product_IDNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `SaleDetails_BranchId` (`SaleDetails_BranchId`);

--
-- Indexes for table `tbl_quotation_master`
--
ALTER TABLE `tbl_quotation_master`
  ADD PRIMARY KEY (`SaleMaster_SlNo`),
  ADD KEY `SaleMaster_InvoiceNo` (`SaleMaster_InvoiceNo`),
  ADD KEY `SaleMaster_SaleDate` (`SaleMaster_SaleDate`),
  ADD KEY `Status` (`Status`),
  ADD KEY `SaleMaster_branchid` (`SaleMaster_branchid`);

--
-- Indexes for table `tbl_saledetails`
--
ALTER TABLE `tbl_saledetails`
  ADD PRIMARY KEY (`SaleDetails_SlNo`),
  ADD KEY `SaleMaster_IDNo` (`SaleMaster_IDNo`),
  ADD KEY `Product_IDNo` (`Product_IDNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `SaleDetails_BranchId` (`SaleDetails_BranchId`);

--
-- Indexes for table `tbl_salereturn`
--
ALTER TABLE `tbl_salereturn`
  ADD PRIMARY KEY (`SaleReturn_SlNo`),
  ADD KEY `SaleMaster_InvoiceNo` (`SaleMaster_InvoiceNo`),
  ADD KEY `SaleReturn_ReturnDate` (`SaleReturn_ReturnDate`),
  ADD KEY `Status` (`Status`),
  ADD KEY `SaleReturn_brunchId` (`SaleReturn_brunchId`);

--
-- Indexes for table `tbl_salereturndetails`
--
ALTER TABLE `tbl_salereturndetails`
  ADD PRIMARY KEY (`SaleReturnDetails_SlNo`),
  ADD KEY `SaleReturn_IdNo` (`SaleReturn_IdNo`),
  ADD KEY `SaleReturnDetailsProduct_SlNo` (`SaleReturnDetailsProduct_SlNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `SaleReturnDetails_brunchID` (`SaleReturnDetails_brunchID`);

--
-- Indexes for table `tbl_salesmaster`
--
ALTER TABLE `tbl_salesmaster`
  ADD PRIMARY KEY (`SaleMaster_SlNo`),
  ADD KEY `SaleMaster_InvoiceNo` (`SaleMaster_InvoiceNo`),
  ADD KEY `SalseCustomer_IDNo` (`SalseCustomer_IDNo`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `SaleMaster_SaleDate` (`SaleMaster_SaleDate`),
  ADD KEY `Status` (`Status`),
  ADD KEY `is_service` (`is_service`),
  ADD KEY `SaleMaster_branchid` (`SaleMaster_branchid`);

--
-- Indexes for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`Supplier_SlNo`),
  ADD KEY `Supplier_Code` (`Supplier_Code`),
  ADD KEY `Supplier_Mobile` (`Supplier_Mobile`),
  ADD KEY `District_SlNo` (`District_SlNo`),
  ADD KEY `Country_SlNo` (`Country_SlNo`),
  ADD KEY `Status` (`Status`),
  ADD KEY `Supplier_brinchid` (`Supplier_brinchid`);

--
-- Indexes for table `tbl_supplier_payment`
--
ALTER TABLE `tbl_supplier_payment`
  ADD PRIMARY KEY (`SPayment_id`),
  ADD KEY `SPayment_date` (`SPayment_date`),
  ADD KEY `SPayment_invoice` (`SPayment_invoice`),
  ADD KEY `SPayment_customerID` (`SPayment_customerID`),
  ADD KEY `SPayment_TransactionType` (`SPayment_TransactionType`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `SPayment_brunchid` (`SPayment_brunchid`),
  ADD KEY `SPayment_status` (`SPayment_status`);

--
-- Indexes for table `tbl_transferdetails`
--
ALTER TABLE `tbl_transferdetails`
  ADD PRIMARY KEY (`transferdetails_id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tbl_transfermaster`
--
ALTER TABLE `tbl_transfermaster`
  ADD PRIMARY KEY (`transfer_id`),
  ADD KEY `transfer_date` (`transfer_date`),
  ADD KEY `transfer_from` (`transfer_from`),
  ADD KEY `transfer_to` (`transfer_to`);

--
-- Indexes for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  ADD PRIMARY KEY (`Unit_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`User_SlNo`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `User_Name` (`User_Name`),
  ADD KEY `User_Password` (`User_Password`),
  ADD KEY `UserType` (`UserType`),
  ADD KEY `status` (`status`),
  ADD KEY `Brunch_ID` (`Brunch_ID`);

--
-- Indexes for table `tbl_user_access`
--
ALTER TABLE `tbl_user_access`
  ADD PRIMARY KEY (`access_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_user_activity`
--
ALTER TABLE `tbl_user_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upazilas_district_id_foreign` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_publisheds`
--
ALTER TABLE `product_publisheds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `published_categories`
--
ALTER TABLE `published_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shapes`
--
ALTER TABLE `shapes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `Acc_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bank_accounts`
--
ALTER TABLE `tbl_bank_accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bank_transactions`
--
ALTER TABLE `tbl_bank_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_SiNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_brunch`
--
ALTER TABLE `tbl_brunch`
  MODIFY `brunch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cashtransaction`
--
ALTER TABLE `tbl_cashtransaction`
  MODIFY `Tr_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_checks`
--
ALTER TABLE `tbl_checks`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_SiNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `Company_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `Country_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_currentinventory`
--
ALTER TABLE `tbl_currentinventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `Customer_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_payment`
--
ALTER TABLE `tbl_customer_payment`
  MODIFY `CPayment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_damage`
--
ALTER TABLE `tbl_damage`
  MODIFY `Damage_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_damagedetails`
--
ALTER TABLE `tbl_damagedetails`
  MODIFY `DamageDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `Department_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `Designation_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `District_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `Employee_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_payment`
--
ALTER TABLE `tbl_employee_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_payment_details`
--
ALTER TABLE `tbl_employee_payment_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expense_head`
--
ALTER TABLE `tbl_expense_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_investment_account`
--
ALTER TABLE `tbl_investment_account`
  MODIFY `Acc_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_investment_transactions`
--
ALTER TABLE `tbl_investment_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_loan_accounts`
--
ALTER TABLE `tbl_loan_accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_loan_transactions`
--
ALTER TABLE `tbl_loan_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_month`
--
ALTER TABLE `tbl_month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `Product_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_productcategory`
--
ALTER TABLE `tbl_productcategory`
  MODIFY `ProductCategory_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_purchasedetails`
--
ALTER TABLE `tbl_purchasedetails`
  MODIFY `PurchaseDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchasemaster`
--
ALTER TABLE `tbl_purchasemaster`
  MODIFY `PurchaseMaster_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchasereturn`
--
ALTER TABLE `tbl_purchasereturn`
  MODIFY `PurchaseReturn_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchasereturndetails`
--
ALTER TABLE `tbl_purchasereturndetails`
  MODIFY `PurchaseReturnDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quotaion_customer`
--
ALTER TABLE `tbl_quotaion_customer`
  MODIFY `quotation_customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quotation_details`
--
ALTER TABLE `tbl_quotation_details`
  MODIFY `SaleDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quotation_master`
--
ALTER TABLE `tbl_quotation_master`
  MODIFY `SaleMaster_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_saledetails`
--
ALTER TABLE `tbl_saledetails`
  MODIFY `SaleDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salereturn`
--
ALTER TABLE `tbl_salereturn`
  MODIFY `SaleReturn_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salereturndetails`
--
ALTER TABLE `tbl_salereturndetails`
  MODIFY `SaleReturnDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salesmaster`
--
ALTER TABLE `tbl_salesmaster`
  MODIFY `SaleMaster_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  MODIFY `row_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `Supplier_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_supplier_payment`
--
ALTER TABLE `tbl_supplier_payment`
  MODIFY `SPayment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transferdetails`
--
ALTER TABLE `tbl_transferdetails`
  MODIFY `transferdetails_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transfermaster`
--
ALTER TABLE `tbl_transfermaster`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  MODIFY `Unit_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `User_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user_access`
--
ALTER TABLE `tbl_user_access`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user_activity`
--
ALTER TABLE `tbl_user_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customers_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customers_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customers_upazila_id_foreign` FOREIGN KEY (`upazila_id`) REFERENCES `upazilas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD CONSTRAINT `upazilas_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
