-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2020 at 03:35 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `irondotc_diva`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_us_id` int(11) NOT NULL,
  `about_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_us_id`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 'about/GF5ISpztVdDT4DOyQBV1fWfUfKjTziERuAStOQ9X.png', '2020-02-27 10:42:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `about_us_description`
--

CREATE TABLE `about_us_description` (
  `about_us_description_id` int(11) NOT NULL,
  `about_description_part` varchar(100) NOT NULL,
  `about_description_full` text NOT NULL,
  `our_value` varchar(255) NOT NULL,
  `mission` varchar(255) NOT NULL,
  `our_vision` varchar(255) NOT NULL,
  `about_us_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_us_description`
--

INSERT INTO `about_us_description` (`about_us_description_id`, `about_description_part`, `about_description_full`, `our_value`, `mission`, `our_vision`, `about_us_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'test test test test test test test test test test test test test test test test test test test test ', '<p>test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test&nbsp;test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test&nbsp;test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test&nbsp;test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test&nbsp;test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test&nbsp;test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test&nbsp;</p>', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium poeyi doloremque laudantium, totam rem aperiam, eaque ipsa quae apsb illo inventore veritatis et quasi architecto beiatae vitae dicta sunt explicabo', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium poeyi doloremque laudantium, totam rem aperiam, eaque ipsa quae apsb illo inventore veritatis et quasi architecto beiatae vitae dicta sunt explicabo', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium poeyi doloremque laudantium, totam rem aperiam, eaque ipsa quae apsb illo inventore veritatis et quasi architecto beiatae vitae dicta sunt explicabo', 1, 1, '2020-02-27 10:42:27', NULL),
(2, 'محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجر', '<p>محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي&nbsp;محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي&nbsp;محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي&nbsp;محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي&nbsp;محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي محتوي تجريبي&nbsp;</p>', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من', 1, 2, '2020-02-27 10:42:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `action_recorder`
--

CREATE TABLE `action_recorder` (
  `id` int(11) NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `entry_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  `entry_latitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_longitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `user_id`, `entry_gender`, `customers_id`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`, `entry_latitude`, `entry_longitude`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'Diva', 'D', 'sadsadasd', NULL, '0000', 'Alexandria', NULL, 63, 0, NULL, NULL, '2020-02-20 10:50:50', NULL),
(2, 0, '1', NULL, NULL, 'Alex', 'Burger', 'San', NULL, '0000', 'Alexandria', '0', 4, 0, NULL, NULL, '2020-02-20 10:50:50', NULL),
(5, 0, NULL, NULL, NULL, 'hassan', 'gamal', 'bakuuussssssssssss', NULL, '00000', 'Alexandria', 'Alexandria', 63, 0, '', '', '2020-02-23 07:35:46', NULL),
(7, 2, NULL, NULL, NULL, 'tech', 'irondot', 'address', NULL, '21500', 'alex', NULL, 63, 0, NULL, NULL, '2020-02-29 01:25:40', NULL),
(11, 0, NULL, NULL, NULL, 'fxf', 'ctc', 'cgtc', NULL, 'uhu', 'drdr', 'jn', 56, 0, '', '', '2020-03-23 09:22:55', NULL),
(13, 0, NULL, NULL, NULL, 'fgregt', 'grg', 'grg', NULL, 'grfg', 'gvfdg', 'grfg', 9, 0, '', '', '2020-03-23 09:45:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `address_format`
--

CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL,
  `address_format` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_summary` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alert_categories`
--

CREATE TABLE `alert_categories` (
  `alert_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alert_categories`
--

INSERT INTO `alert_categories` (`alert_id`, `category_id`, `customers_id`, `created_at`, `updated_at`) VALUES
(20, 10, 15, '2020-05-20 12:38:05', NULL),
(22, 11, 15, '2020-05-23 15:35:32', NULL),
(23, 10, 38, '2020-05-23 16:08:44', NULL),
(24, 13, 38, '2020-05-28 11:23:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `alert_id` int(11) NOT NULL,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT '0',
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_notification` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_email` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_notification` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_email` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_notification` tinyint(1) NOT NULL DEFAULT '0',
  `news_email` tinyint(1) NOT NULL DEFAULT '0',
  `news_notification` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_email` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_notification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_calls_list`
--

CREATE TABLE `api_calls_list` (
  `id` int(11) NOT NULL,
  `nonce` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_calls_list`
--

INSERT INTO `api_calls_list` (`id`, `nonce`, `url`, `device_id`, `created_at`) VALUES
(1, '6380121376617662', 'alertMe', 'ABCDEF', '2020-05-20 18:13:58'),
(2, '6380121376617663', 'myAlert', 'ABCDEF', '2020-05-20 18:14:48'),
(3, '6380121376617664', 'myAlert', 'ABCDEF', '2020-05-20 18:15:44'),
(4, '6380121376617663', 'alertMe', 'ABCDEF', '2020-05-20 18:20:16'),
(5, '6380121376617665', 'myAlert', 'ABCDEF', '2020-05-20 18:20:30'),
(6, '6380121376617655', 'deleteAlert', 'ABCDEF', '2020-05-20 18:21:22'),
(7, '6380121376617641', 'homePage', 'ABCDEF', '2020-05-20 18:29:07'),
(8, '2020-05-20 15:29:16.113229', 'homePage', '', '2020-05-20 18:29:26'),
(9, '2020-05-20 15:31:00.475466', 'getallproducts', '', '2020-05-20 18:31:11'),
(10, '6380121376617664', 'alertMe', 'ABCDEF', '2020-05-20 18:38:05'),
(11, '2020-05-20 15:41:47.386069', 'homePage', '', '2020-05-20 18:41:59'),
(12, '2020-05-20 15:42:10.351731', 'getallproducts', '', '2020-05-20 18:42:21'),
(13, '2020-05-20 15:42:13.984677', 'getallproducts', '', '2020-05-20 18:42:24'),
(14, '2020-05-20 15:42:15.566729', 'getallproducts', '', '2020-05-20 18:42:26'),
(15, '6380121376617642', 'homePage', 'ABCDEF', '2020-05-20 18:43:04'),
(16, '6380121376617657', 'contactus', 'ABCDEF', '2020-05-20 18:44:16'),
(17, '6380121376617658', 'contactus', 'ABCDEF', '2020-05-20 18:45:58'),
(18, '2020-05-20 15:53:12.185993', 'homePage', '', '2020-05-20 18:53:24'),
(19, '2020-05-20 16:01:02.658564', 'homePage', '', '2020-05-20 07:01:14'),
(20, '2020-05-20 16:01:08.416281', 'getallproducts', '', '2020-05-20 07:01:19'),
(21, '2020-05-20 16:01:12.879111', 'getallproducts', '', '2020-05-20 07:01:23'),
(22, '2020-05-20 16:01:16.095220', 'getallproducts', '', '2020-05-20 07:01:26'),
(23, '2020-05-20 16:01:18.395269', 'getallproducts', '', '2020-05-20 07:01:28'),
(24, '2020-05-20 16:01:18.533557', 'getallproducts', '', '2020-05-20 07:01:29'),
(25, '2020-05-20 16:01:18.801168', 'getallproducts', '', '2020-05-20 07:01:29'),
(26, '2020-05-20 16:01:23.862160', 'getallproducts', '', '2020-05-20 07:01:34'),
(27, '2020-05-20 16:01:26.938513', 'getallproducts', '', '2020-05-20 07:01:37'),
(28, '2020-05-20 16:01:30.249801', 'getallproducts', '', '2020-05-20 07:01:40'),
(29, '2020-05-20 16:01:35.014949', 'getallproducts', '', '2020-05-20 07:01:46'),
(30, '2020-05-20 16:01:35.128337', 'getallproducts', '', '2020-05-20 07:01:46'),
(31, '2020-05-20 16:01:35.401384', 'getallproducts', '', '2020-05-20 07:01:46'),
(32, '2020-05-20 16:01:42.517405', 'getallproducts', '', '2020-05-20 07:01:53'),
(33, '2020-05-20 16:01:42.625093', 'getallproducts', '', '2020-05-20 07:01:53'),
(34, '2020-05-20 16:01:42.895063', 'getallproducts', '', '2020-05-20 07:01:53'),
(35, '2020-05-20 16:02:15.507009', 'homePage', '', '2020-05-20 07:02:28'),
(36, '2020-05-20 16:02:23.490022', 'getallproducts', '', '2020-05-20 07:02:34'),
(37, '2020-05-20 16:02:36.028618', 'getallproducts', '', '2020-05-20 07:02:46'),
(38, '2020-05-20 16:02:42.913545', 'getallproducts', '', '2020-05-20 07:02:54'),
(39, '2020-05-20 16:02:43.330828', 'getallproducts', '', '2020-05-20 07:02:54'),
(40, '2020-05-20 16:02:43.057536', 'getallproducts', '', '2020-05-20 07:02:54'),
(41, '2020-05-20 16:02:46.945366', 'getallproducts', '', '2020-05-20 07:02:57'),
(42, '2020-05-20 16:02:47.059169', 'getallproducts', '', '2020-05-20 07:02:57'),
(43, '2020-05-20 16:02:47.327853', 'getallproducts', '', '2020-05-20 07:02:57'),
(44, '2020-05-20 16:02:48.829475', 'getallproducts', '', '2020-05-20 07:02:59'),
(45, '2020-05-20 16:02:48.950368', 'getallproducts', '', '2020-05-20 07:02:59'),
(46, '2020-05-20 16:02:49.200076', 'getallproducts', '', '2020-05-20 07:02:59'),
(47, '2020-05-20 16:26:57.502206', 'homePage', '', '2020-05-20 07:27:10'),
(48, '2020-05-20 16:27:00.914343', 'homePage', '', '2020-05-20 07:27:11'),
(49, '2020-05-20 16:27:05.881785', 'getallproducts', '', '2020-05-20 07:27:16'),
(50, '2020-05-20 16:27:10.715901', 'getallproducts', '', '2020-05-20 07:27:21'),
(51, '2020-05-20 16:27:23.580362', 'homePage', '', '2020-05-20 07:27:35'),
(52, '2020-05-20 16:27:35.775613', 'getallproducts', '', '2020-05-20 07:27:46'),
(53, '2020-05-20 16:27:40.409161', 'getallproducts', '', '2020-05-20 07:27:51'),
(54, '2020-05-20 16:27:42.802640', 'getallproducts', '', '2020-05-20 07:27:53'),
(55, '2020-05-20 16:27:45.000830', 'getallproducts', '', '2020-05-20 07:27:55'),
(56, '2020-05-20 16:27:45.152292', 'getallproducts', '', '2020-05-20 07:27:55'),
(57, '2020-05-20 16:27:45.394661', 'getallproducts', '', '2020-05-20 07:27:56'),
(58, '2020-05-20 16:27:59.532437', 'getallproducts', '', '2020-05-20 07:28:10'),
(59, '2020-05-20 16:28:05.826491', 'getallproducts', '', '2020-05-20 07:28:16'),
(60, '2020-05-20 16:28:09.685160', 'getallproducts', '', '2020-05-20 07:28:20'),
(61, '2020-05-20 16:28:09.786747', 'getallproducts', '', '2020-05-20 07:28:20'),
(62, '2020-05-20 16:28:10.059129', 'getallproducts', '', '2020-05-20 07:28:20'),
(63, '2020-05-20 15:31:53.301651', 'homePage', '', '2020-05-20 07:31:57'),
(64, '2020-05-20 15:31:55.836688', 'homePage', '', '2020-05-20 07:31:57'),
(65, '2020-05-20 15:32:15.117877', 'homePage', '', '2020-05-20 07:32:15'),
(66, '2020-05-20 15:32:37.763629', 'processlogin', '', '2020-05-20 07:32:38'),
(67, '2020-05-20 15:32:40.312461', 'homePage', '', '2020-05-20 07:32:40'),
(68, '2020-05-20 15:32:42.193925', 'getallproducts', '', '2020-05-20 07:32:42'),
(69, '2020-05-20 15:32:47.189538', 'getallproducts', '', '2020-05-20 07:32:47'),
(70, '2020-05-20 15:32:47.237215', 'getallproducts', '', '2020-05-20 07:32:48'),
(71, '2020-05-20 15:32:47.498787', 'getallproducts', '', '2020-05-20 07:32:48'),
(72, '2020-05-20 15:32:53.985157', 'getallproducts', '', '2020-05-20 07:32:54'),
(73, '2020-05-20 15:33:30.818933', 'getallproducts', '', '2020-05-20 07:33:31'),
(74, '2020-05-20 15:33:31.184452', 'getallproducts', '', '2020-05-20 07:33:32'),
(75, '2020-05-20 15:33:31.368161', 'getallproducts', '', '2020-05-20 07:33:32'),
(76, '2020-05-20 15:33:34.251444', 'getallproducts', '', '2020-05-20 07:33:34'),
(77, '2020-05-20 15:33:36.830245', 'getallproducts', '', '2020-05-20 07:33:37'),
(78, '2020-05-20 15:33:38.840454', 'getallproducts', '', '2020-05-20 07:33:39'),
(79, '2020-05-20 15:33:38.900796', 'getallproducts', '', '2020-05-20 07:33:39'),
(80, '2020-05-20 15:33:39.202139', 'getallproducts', '', '2020-05-20 07:33:40'),
(81, '2020-05-20 15:34:12.835560', 'getallproducts', '', '2020-05-20 07:34:13'),
(82, '2020-05-20 15:34:27.348058', 'getallproducts', '', '2020-05-20 07:34:28'),
(83, '2020-05-20 15:34:27.269609', 'getallproducts', '', '2020-05-20 07:34:28'),
(84, '2020-05-20 15:34:27.651517', 'getallproducts', '', '2020-05-20 07:34:28'),
(85, '2020-05-20 15:34:29.591605', 'getallproducts', '', '2020-05-20 07:34:30'),
(86, '2020-05-20 15:34:29.662285', 'getallproducts', '', '2020-05-20 07:34:30'),
(87, '2020-05-20 15:34:30.038852', 'getallproducts', '', '2020-05-20 07:34:30'),
(88, '2020-05-20 15:34:32.163728', 'getallproducts', '', '2020-05-20 07:34:32'),
(89, '2020-05-20 15:34:32.243499', 'getallproducts', '', '2020-05-20 07:34:32'),
(90, '2020-05-20 15:34:32.532841', 'getallproducts', '', '2020-05-20 07:34:33'),
(91, '2020-05-20 15:34:34.091706', 'getallproducts', '', '2020-05-20 07:34:34'),
(92, '2020-05-20 15:34:36.899090', 'getallproducts', '', '2020-05-20 07:34:37'),
(93, '2020-05-20 15:36:08.190226', 'getallproducts', '', '2020-05-20 07:36:09'),
(94, '2020-05-20 15:36:10.760922', 'getallproducts', '', '2020-05-20 07:36:11'),
(95, '2020-05-20 15:36:10.790141', 'getallproducts', '', '2020-05-20 07:36:11'),
(96, '2020-05-20 15:36:11.127057', 'getallproducts', '', '2020-05-20 07:36:11'),
(97, '2020-05-20 15:36:13.835312', 'getallproducts', '', '2020-05-20 07:36:14'),
(98, '2020-05-20 15:36:13.882844', 'getallproducts', '', '2020-05-20 07:36:14'),
(99, '2020-05-20 15:36:14.181210', 'getallproducts', '', '2020-05-20 07:36:14'),
(100, '2020-05-20 15:36:19.152217', 'getallproducts', '', '2020-05-20 07:36:19'),
(101, '2020-05-20 15:36:19.195556', 'getallproducts', '', '2020-05-20 07:36:19'),
(102, '2020-05-20 15:36:19.486718', 'getallproducts', '', '2020-05-20 07:36:20'),
(103, '2020-05-20 15:36:22.455602', 'getallproducts', '', '2020-05-20 07:36:23'),
(104, '2020-05-20 15:36:24.893592', 'getallproducts', '', '2020-05-20 07:36:25'),
(105, '2020-05-20 15:57:25.928654', 'getallproducts', '', '2020-05-20 07:57:27'),
(106, '2020-05-20 15:57:27.889510', 'getallproducts', '', '2020-05-20 07:57:28'),
(107, '2020-05-20 15:57:28.663869', 'getallproducts', '', '2020-05-20 07:57:29'),
(108, '2020-05-20 15:57:53.537680', 'homePage', '', '2020-05-20 07:57:54'),
(109, '2020-05-20 16:02:59.600446', 'unlikeproduct', '', '2020-05-20 08:03:00'),
(110, '2020-05-20 16:04:05.697499', 'likeproduct', '', '2020-05-20 08:04:06'),
(111, '638012137661764955', 'moreproducts', 'ABCDEF', '2020-05-20 08:05:00'),
(112, '6380121376617625333', 'productDetail', 'ABCDEF', '2020-05-20 08:07:58'),
(113, '2020-05-20 16:33:07.111954', 'homePage', '', '2020-05-20 08:33:17'),
(114, '2020-05-20 16:33:11.762485', 'homePage', '', '2020-05-20 08:33:17'),
(115, '2020-05-20 16:33:16.636514', 'homePage', '', '2020-05-20 08:33:18'),
(116, '2020-05-20 16:34:57.112175', 'getallproducts', '', '2020-05-20 08:34:57'),
(117, '2020-05-20 16:35:04.542346', 'getallproducts', '', '2020-05-20 08:35:05'),
(118, '6380121376617649', 'moreproducts', 'ABCDEF', '2020-05-20 11:21:28'),
(119, '6380121376617649', 'moreflashes', 'ABCDEF', '2020-05-20 11:22:14'),
(120, '2020-05-21 00:45:58.052272', 'homePage', '', '2020-05-20 15:46:10'),
(121, '2020-05-21 00:45:54.422486', 'homePage', '', '2020-05-20 15:46:10'),
(122, '638012137661764933', 'moreproducts', 'ABCDEF', '2020-05-20 15:47:44'),
(123, '63801213766176493', 'moreflashes', 'ABCDEF', '2020-05-20 16:14:18'),
(124, '2020-05-21 01:26:30.837870', 'homePage', '', '2020-05-20 16:26:43'),
(125, '2020-05-21 01:26:39.041908', 'moreproducts', '', '2020-05-20 16:26:50'),
(126, '2020-05-21 01:26:54.489951', 'moreproducts', '', '2020-05-20 16:27:05'),
(127, '2020-05-21 01:40:59.043135', 'homePage', '', '2020-05-20 16:41:11'),
(128, '2020-05-21 01:41:04.739381', 'homePage', '', '2020-05-20 16:41:15'),
(129, '2020-05-21 01:41:10.269902', 'moreproducts', '', '2020-05-20 16:41:21'),
(130, '2020-05-21 01:53:15.279667', 'homePage', '', '2020-05-20 16:53:27'),
(131, '2020-05-21 01:53:21.956719', 'homePage', '', '2020-05-20 16:53:33'),
(132, '2020-05-21 01:55:23.528175', 'homePage', '', '2020-05-20 16:55:36'),
(133, '2020-05-21 01:55:27.213829', 'homePage', '', '2020-05-20 16:55:38'),
(134, '2020-05-21 01:55:46.388775', 'homePage', '', '2020-05-20 16:56:00'),
(135, '2020-05-21 01:55:50.106623', 'homePage', '', '2020-05-20 16:56:02'),
(136, '2020-05-21 01:55:54.150074', 'likeproduct', '', '2020-05-20 16:56:04'),
(137, '2020-05-21 01:55:55.768646', 'unlikeproduct', '', '2020-05-20 16:56:06'),
(138, '2020-05-21 01:56:01.354984', 'getallproducts', '', '2020-05-20 16:56:12'),
(139, '2020-05-21 02:00:22.202246', 'homePage', '', '2020-05-20 17:00:34'),
(140, '2020-05-21 02:04:41.086208', 'homePage', '', '2020-05-20 17:04:53'),
(141, '2020-05-21 02:06:43.371413', 'homePage', '', '2020-05-20 17:06:55'),
(142, '2020-05-21 02:06:47.082846', 'homePage', '', '2020-05-20 17:06:57'),
(143, '2020-05-21 02:07:03.261077', 'homePage', '', '2020-05-20 17:07:15'),
(144, '2020-05-21 02:07:06.975295', 'homePage', '', '2020-05-20 17:07:17'),
(145, '2020-05-21 02:07:35.301566', 'homePage', '', '2020-05-20 17:07:47'),
(146, '2020-05-21 02:07:39.021190', 'homePage', '', '2020-05-20 17:07:49'),
(147, '2020-05-21 02:07:55.796059', 'homePage', '', '2020-05-20 17:08:08'),
(148, '2020-05-21 02:07:59.518274', 'homePage', '', '2020-05-20 17:08:10'),
(149, '2020-05-21 02:08:23.334336', 'homePage', '', '2020-05-20 17:08:35'),
(150, '2020-05-21 02:09:08.648098', 'homePage', '', '2020-05-20 17:09:21'),
(151, '2020-05-21 02:09:42.394838', 'homePage', '', '2020-05-20 17:09:54'),
(152, '2020-05-21 02:09:46.096083', 'homePage', '', '2020-05-20 17:09:56'),
(153, '2020-05-21 02:10:03.780675', 'homePage', '', '2020-05-20 17:10:16'),
(154, '2020-05-21 02:10:52.524726', 'homePage', '', '2020-05-20 17:11:04'),
(155, '2020-05-21 02:11:40.843747', 'homePage', '', '2020-05-20 17:11:53'),
(156, '2020-05-21 02:11:44.553610', 'homePage', '', '2020-05-20 17:11:55'),
(157, '2020-05-21 02:11:56.767724', 'homePage', '', '2020-05-20 17:12:08'),
(158, '2020-05-21 02:12:04.681898', 'likeproduct', '', '2020-05-20 17:12:15'),
(159, '2020-05-21 02:13:04.707080', 'homePage', '', '2020-05-20 17:13:17'),
(160, '2020-05-21 02:13:14.270324', 'unlikeproduct', '', '2020-05-20 17:13:25'),
(161, '2020-05-21 02:14:29.636680', 'moreproducts', '', '2020-05-20 17:14:40'),
(162, '2020-05-21 02:18:40.892622', 'homePage', '', '2020-05-20 17:18:53'),
(163, '2020-05-21 02:18:48.110293', 'moreproducts', '', '2020-05-20 17:18:58'),
(164, '2020-05-21 02:56:53.739910', 'homePage', '', '2020-05-20 17:57:06'),
(165, '2020-05-21 02:57:41.533200', 'homePage', '', '2020-05-20 17:57:54'),
(166, '2020-05-21 02:57:48.310858', 'likeproduct', '', '2020-05-20 17:57:59'),
(167, '2020-05-21 02:59:09.557526', 'homePage', '', '2020-05-20 17:59:21'),
(168, '2020-05-21 02:59:16.400116', 'unlikeproduct', '', '2020-05-20 17:59:27'),
(169, '2020-05-21 02:59:22.929565', 'homePage', '', '2020-05-20 17:59:34'),
(170, '2020-05-21 03:00:23.459423', 'likeproduct', '', '2020-05-21 18:00:34'),
(171, '2020-05-21 03:00:55.656975', 'unlikeproduct', '', '2020-05-21 18:01:06'),
(172, '2020-05-21 03:00:58.320141', 'unlikeproduct', '', '2020-05-21 18:01:08'),
(173, '2020-05-21 03:01:02.017695', 'homePage', '', '2020-05-21 18:01:12'),
(174, '2020-05-21 03:02:14.172071', 'homePage', '', '2020-05-21 18:02:26'),
(175, '2020-05-21 03:04:17.836699', 'homePage', '', '2020-05-21 18:04:30'),
(176, '2020-05-21 03:04:25.923675', 'unlikeproduct', '', '2020-05-21 18:04:36'),
(177, '2020-05-21 03:04:28.485629', 'likeproduct', '', '2020-05-21 18:04:39'),
(178, '2020-05-21 03:04:59.802317', 'likeproduct', '', '2020-05-21 18:05:10'),
(179, '2020-05-21 03:05:04.558979', 'unlikeproduct', '', '2020-05-21 18:05:15'),
(180, '2020-05-21 03:06:16.129740', 'unlikeproduct', '', '2020-05-21 18:06:27'),
(181, '2020-05-21 03:09:23.721648', 'homePage', '', '2020-05-21 18:09:35'),
(182, '2020-05-21 03:48:34.505682', 'homePage', '', '2020-05-21 18:48:46'),
(183, '6380121376617650', 'moreflashes', 'ABCDEF', '2020-05-21 18:55:31'),
(184, '6380121376617651', 'moreflashes', 'ABCDEF', '2020-05-21 18:56:08'),
(185, '6380121376617650', 'moreproducts', 'ABCDEF', '2020-05-21 18:56:47'),
(186, '2020-05-21 03:59:05.149535', 'likeproduct', '', '2020-05-21 18:59:16'),
(187, '2020-05-21 04:01:06.122282', 'likeproduct', '', '2020-05-21 07:01:17'),
(188, '2020-05-21 04:03:00.498507', 'likeproduct', '', '2020-05-21 07:03:11'),
(189, '2020-05-21 04:03:03.636991', 'unlikeproduct', '', '2020-05-21 07:03:14'),
(190, '2020-05-21 04:07:56.164627', 'unlikeproduct', '', '2020-05-21 07:08:07'),
(191, '2020-05-21 04:28:46.280336', 'homePage', '', '2020-05-21 07:28:58'),
(192, '2020-05-21 04:31:22.161733', 'homePage', '', '2020-05-21 07:31:34'),
(193, '2020-05-21 10:10:58.414616', 'homePage', '', '2020-05-21 13:11:11'),
(194, '2020-05-21 10:11:13.167943', 'homePage', '', '2020-05-21 13:11:25'),
(195, '2020-05-21 10:11:36.691036', 'getallproducts', '', '2020-05-21 13:11:48'),
(196, '2020-05-21 10:11:36.693329', 'getallproducts', '', '2020-05-21 13:11:48'),
(197, '2020-05-21 10:11:38.323789', 'getallproducts', '', '2020-05-21 13:11:49'),
(198, '2020-05-21 10:11:38.383184', 'getallproducts', '', '2020-05-21 13:11:49'),
(199, '2020-05-21 10:11:39.468748', 'getallproducts', '', '2020-05-21 13:11:50'),
(200, '2020-05-21 10:11:39.527537', 'getallproducts', '', '2020-05-21 13:11:50'),
(201, '2020-05-21 10:11:40.566421', 'getallproducts', '', '2020-05-21 13:11:51'),
(202, '2020-05-21 10:11:40.633776', 'getallproducts', '', '2020-05-21 13:11:51'),
(203, '2020-05-21 10:11:41.644927', 'getallproducts', '', '2020-05-21 13:11:52'),
(204, '2020-05-21 10:11:41.724700', 'getallproducts', '', '2020-05-21 13:11:52'),
(205, '2020-05-21 10:11:50.417492', 'getallproducts', '', '2020-05-21 13:12:01'),
(206, '2020-05-21 10:12:21.344113', 'getallproducts', '', '2020-05-21 13:12:32'),
(207, '2020-05-21 10:12:52.440882', 'getallproducts', '', '2020-05-21 13:13:03'),
(208, '2020-05-21 10:12:54.104660', 'getallproducts', '', '2020-05-21 13:13:05'),
(209, '2020-05-21 10:13:02.611894', 'getallproducts', '', '2020-05-21 13:13:13'),
(210, '2020-05-21 10:13:04.181156', 'getallproducts', '', '2020-05-21 13:13:15'),
(211, '2020-05-21 10:13:05.302041', 'getallproducts', '', '2020-05-21 13:13:16'),
(212, '2020-05-21 10:14:18.835965', 'homePage', '', '2020-05-21 13:14:31'),
(213, '2020-05-21 10:15:20.955945', 'homePage', '', '2020-05-21 13:15:33'),
(214, '2020-05-21 10:17:19.799720', 'unlikeproduct', '', '2020-05-21 13:17:31'),
(215, '2020-05-21 10:25:38.114561', 'getallproducts', '', '2020-05-21 13:25:49'),
(216, '2020-05-21 10:34:01.046945', 'homePage', '', '2020-05-21 13:34:13'),
(217, '2020-05-21 10:35:00.047901', 'likeproduct', '', '2020-05-21 13:35:11'),
(218, '2020-05-21 10:35:22.585157', 'unlikeproduct', '', '2020-05-21 13:35:33'),
(219, '2020-05-21 10:40:54.747092', 'homePage', '', '2020-05-21 13:41:07'),
(220, '2020-05-21 10:41:31.259988', 'homePage', '', '2020-05-21 13:41:43'),
(221, '2020-05-21 10:41:55.134891', 'homePage', '', '2020-05-21 13:42:07'),
(222, '2020-05-21 10:42:01.082655', 'likeproduct', '', '2020-05-21 13:42:12'),
(223, '2020-05-21 11:01:35.554273', 'unlikeproduct', '', '2020-05-21 14:01:46'),
(224, '2020-05-21 11:02:17.759726', 'likeproduct', '', '2020-05-21 14:02:29'),
(225, '2020-05-21 11:06:50.286948', 'homePage', '', '2020-05-21 14:07:02'),
(226, '2020-05-21 11:08:47.297310', 'homePage', '', '2020-05-21 14:08:59'),
(227, '2020-05-21 11:09:05.796969', 'unlikeproduct', '', '2020-05-21 14:09:16'),
(228, '2020-05-21 11:18:09.749766', 'homePage', '', '2020-05-21 14:18:22'),
(229, '2020-05-21 11:18:33.043535', 'likeproduct', '', '2020-05-21 14:18:44'),
(230, '2020-05-21 11:18:53.957526', 'homePage', '', '2020-05-21 14:19:06'),
(231, '2020-05-21 11:31:59.282737', 'homePage', '', '2020-05-21 14:32:11'),
(232, '2020-05-21 11:32:06.708638', 'likeproduct', '', '2020-05-21 14:32:17'),
(233, '2020-05-21 11:32:09.316121', 'homePage', '', '2020-05-21 14:32:20'),
(234, '2020-05-21 11:33:57.101941', 'homePage', '', '2020-05-21 14:34:09'),
(235, '2020-05-21 11:34:05.913168', 'homePage', '', '2020-05-21 14:34:17'),
(236, '2020-05-21 11:34:48.858055', 'unlikeproduct', '', '2020-05-21 14:35:00'),
(237, '2020-05-21 11:34:52.699933', 'likeproduct', '', '2020-05-21 14:35:03'),
(238, '2020-05-21 11:34:56.952179', 'unlikeproduct', '', '2020-05-21 14:35:08'),
(239, '2020-05-21 11:35:17.189475', 'homePage', '', '2020-05-21 14:35:29'),
(240, '2020-05-21 11:35:29.111462', 'unlikeproduct', '', '2020-05-21 14:35:40'),
(241, '2020-05-21 11:35:32.089783', 'unlikeproduct', '', '2020-05-21 14:35:43'),
(242, '2020-05-21 11:35:33.196734', 'likeproduct', '', '2020-05-21 14:35:44'),
(243, '2020-05-21 11:35:36.006808', 'homePage', '', '2020-05-21 14:35:46'),
(244, '2020-05-21 11:37:14.416092', 'likeproduct', '', '2020-05-21 14:37:25'),
(245, '2020-05-21 11:39:42.805308', 'homePage', '', '2020-05-21 14:39:55'),
(246, '2020-05-21 11:39:54.542548', 'unlikeproduct', '', '2020-05-21 14:40:05'),
(247, '2020-05-21 11:39:59.916929', 'likeproduct', '', '2020-05-21 14:40:11'),
(248, '2020-05-21 11:41:45.338354', 'likeproduct', '', '2020-05-21 14:41:56'),
(249, '2020-05-21 11:41:49.469160', 'homePage', '', '2020-05-21 14:42:00'),
(250, '2020-05-21 11:41:52.458424', 'unlikeproduct', '', '2020-05-21 14:42:03'),
(251, '2020-05-21 11:42:49.020652', 'homePage', '', '2020-05-21 14:43:00'),
(252, '2020-05-21 11:42:52.005524', 'likeproduct', '', '2020-05-21 14:43:03'),
(253, '2020-05-21 11:42:53.793272', 'unlikeproduct', '', '2020-05-21 14:43:04'),
(254, '2020-05-21 11:42:58.666204', 'likeproduct', '', '2020-05-21 14:43:09'),
(255, '2020-05-21 11:43:01.148654', 'likeproduct', '', '2020-05-21 14:43:12'),
(256, '2020-05-21 11:43:03.634912', 'unlikeproduct', '', '2020-05-21 14:43:14'),
(257, '2020-05-21 11:45:28.887448', 'homePage', '', '2020-05-21 14:45:40'),
(258, '2020-05-21 11:45:31.668004', 'likeproduct', '', '2020-05-21 14:45:42'),
(259, '2020-05-21 11:45:33.695090', 'likeproduct', '', '2020-05-21 14:45:44'),
(260, '2020-05-21 11:45:36.338871', 'homePage', '', '2020-05-21 14:45:47'),
(261, '2020-05-21 11:45:47.609817', 'likeproduct', '', '2020-05-21 14:45:58'),
(262, '2020-05-21 11:48:01.768744', 'homePage', '', '2020-05-21 14:48:22'),
(263, '2020-05-21 11:48:06.538577', 'homePage', '', '2020-05-21 14:48:22'),
(264, '2020-05-21 11:48:25.522762', 'homePage', '', '2020-05-21 14:48:38'),
(265, '2020-05-21 11:48:29.248149', 'homePage', '', '2020-05-21 14:48:40'),
(266, '2020-05-21 11:49:38.816697', 'homePage', '', '2020-05-21 14:49:51'),
(267, '2020-05-21 11:49:47.216973', 'unlikeproduct', '', '2020-05-21 14:49:58'),
(268, '2020-05-21 11:50:32.463182', 'unlikeproduct', '', '2020-05-21 14:50:43'),
(269, '2020-05-21 11:50:43.680514', 'homePage', '', '2020-05-21 14:50:54'),
(270, '2020-05-21 11:50:48.494102', 'homePage', '', '2020-05-21 14:51:10'),
(271, '2020-05-21 11:51:05.666027', 'homePage', '', '2020-05-21 14:51:19'),
(272, '2020-05-21 11:51:09.363302', 'homePage', '', '2020-05-21 14:51:20'),
(273, '2020-05-21 11:51:35.832324', 'homePage', '', '2020-05-21 14:51:48'),
(274, '2020-05-21 11:51:32.123325', 'homePage', '', '2020-05-21 14:51:53'),
(275, '2020-05-21 11:52:12.740567', 'homePage', '', '2020-05-21 14:52:25'),
(276, '2020-05-21 11:52:43.957913', 'homePage', '', '2020-05-21 14:53:02'),
(277, '2020-05-21 11:52:51.503725', 'homePage', '', '2020-05-21 14:53:31'),
(278, '2020-05-21 11:58:58.214068', 'homePage', '', '2020-05-21 14:59:22'),
(279, '2020-05-21 12:09:46.475718', 'likeproduct', '', '2020-05-21 15:09:57'),
(280, '2020-05-21 12:09:49.037440', 'likeproduct', '', '2020-05-21 15:10:00'),
(281, '2020-05-21 12:09:51.927395', 'homePage', '', '2020-05-21 15:10:03'),
(282, '2020-05-21 12:09:55.705454', 'unlikeproduct', '', '2020-05-21 15:10:06'),
(283, '2020-05-21 12:10:10.136599', 'unlikeproduct', '', '2020-05-21 15:10:21'),
(284, '2020-05-21 12:10:28.526691', 'likeproduct', '', '2020-05-21 15:10:39'),
(285, '2020-05-21 12:10:41.311037', 'unlikeproduct', '', '2020-05-21 15:10:52'),
(286, '2020-05-21 12:10:43.511324', 'likeproduct', '', '2020-05-21 15:10:54'),
(287, '2020-05-21 12:10:53.980498', 'unlikeproduct', '', '2020-05-21 15:11:05'),
(288, '2020-05-21 12:10:55.917579', 'unlikeproduct', '', '2020-05-21 15:11:06'),
(289, '2020-05-21 12:15:29.640108', 'getallproducts', '', '2020-05-21 15:15:41'),
(290, '2020-05-21 12:17:19.259470', 'homePage', '', '2020-05-21 15:17:31'),
(291, '2020-05-21 12:17:25.336084', 'getallproducts', '', '2020-05-21 15:17:36'),
(292, '2020-05-21 12:17:25.337236', 'getallproducts', '', '2020-05-21 15:17:36'),
(293, '2020-05-21 12:17:25.606109', 'getallproducts', '', '2020-05-21 15:17:36'),
(294, '2020-05-21 12:17:25.684103', 'getallproducts', '', '2020-05-21 15:17:36'),
(295, '2020-05-21 12:17:25.743021', 'getallproducts', '', '2020-05-21 15:17:37'),
(296, '2020-05-21 12:17:26.003874', 'getallproducts', '', '2020-05-21 15:17:37'),
(297, '2020-05-21 12:17:25.875103', 'getallproducts', '', '2020-05-21 15:17:37'),
(298, '2020-05-21 12:17:25.806412', 'getallproducts', '', '2020-05-21 15:17:37'),
(299, '2020-05-21 12:17:25.937626', 'getallproducts', '', '2020-05-21 15:17:37'),
(300, '2020-05-21 12:17:26.163457', 'getallproducts', '', '2020-05-21 15:17:38'),
(301, '2020-05-21 12:17:26.238749', 'getallproducts', '', '2020-05-21 15:17:38'),
(302, '2020-05-21 12:17:26.305664', 'getallproducts', '', '2020-05-21 15:17:38'),
(303, '2020-05-21 12:17:27.174547', 'getallproducts', '', '2020-05-21 15:17:38'),
(304, '2020-05-21 12:17:27.606560', 'getallproducts', '', '2020-05-21 15:17:38'),
(305, '2020-05-21 12:17:28.229878', 'getallproducts', '', '2020-05-21 15:17:39'),
(306, '2020-05-21 12:17:28.546753', 'getallproducts', '', '2020-05-21 15:17:39'),
(307, '2020-05-21 12:17:28.824805', 'getallproducts', '', '2020-05-21 15:17:39'),
(308, '2020-05-21 12:17:29.005708', 'getallproducts', '', '2020-05-21 15:17:40'),
(309, '2020-05-21 12:17:29.059935', 'getallproducts', '', '2020-05-21 15:17:40'),
(310, '2020-05-21 12:17:29.111649', 'getallproducts', '', '2020-05-21 15:17:40'),
(311, '2020-05-21 12:17:29.155443', 'getallproducts', '', '2020-05-21 15:17:40'),
(312, '2020-05-21 12:17:29.213375', 'getallproducts', '', '2020-05-21 15:17:40'),
(313, '2020-05-21 12:17:29.256023', 'getallproducts', '', '2020-05-21 15:17:40'),
(314, '2020-05-21 12:17:29.837930', 'getallproducts', '', '2020-05-21 15:17:40'),
(315, '2020-05-21 12:17:30.125970', 'getallproducts', '', '2020-05-21 15:17:41'),
(316, '2020-05-21 12:17:30.382307', 'getallproducts', '', '2020-05-21 15:17:41'),
(317, '2020-05-21 12:17:30.638039', 'getallproducts', '', '2020-05-21 15:17:41'),
(318, '2020-05-21 12:17:30.781067', 'getallproducts', '', '2020-05-21 15:17:41'),
(319, '2020-05-21 12:17:30.840752', 'getallproducts', '', '2020-05-21 15:17:41'),
(320, '2020-05-21 12:17:30.896377', 'getallproducts', '', '2020-05-21 15:17:41'),
(321, '2020-05-21 12:17:31.403517', 'getallproducts', '', '2020-05-21 15:17:42'),
(322, '2020-05-21 12:17:31.605560', 'getallproducts', '', '2020-05-21 15:17:42'),
(323, '2020-05-21 12:17:31.674793', 'getallproducts', '', '2020-05-21 15:17:42'),
(324, '2020-05-21 12:17:32.131419', 'getallproducts', '', '2020-05-21 15:17:43'),
(325, '2020-05-21 12:17:32.345575', 'getallproducts', '', '2020-05-21 15:17:43'),
(326, '2020-05-21 12:17:32.508137', 'getallproducts', '', '2020-05-21 15:17:43'),
(327, '2020-05-21 12:17:32.950701', 'getallproducts', '', '2020-05-21 15:17:43'),
(328, '2020-05-21 12:17:33.185919', 'getallproducts', '', '2020-05-21 15:17:44'),
(329, '2020-05-21 12:17:33.446253', 'getallproducts', '', '2020-05-21 15:17:44'),
(330, '2020-05-21 12:17:33.657176', 'getallproducts', '', '2020-05-21 15:17:44'),
(331, '2020-05-21 12:17:33.860857', 'getallproducts', '', '2020-05-21 15:17:44'),
(332, '2020-05-21 12:17:33.994618', 'getallproducts', '', '2020-05-21 15:17:45'),
(333, '2020-05-21 12:17:34.032628', 'getallproducts', '', '2020-05-21 15:17:45'),
(334, '2020-05-21 12:17:34.063044', 'getallproducts', '', '2020-05-21 15:17:45'),
(335, '2020-05-21 12:17:34.105249', 'getallproducts', '', '2020-05-21 15:17:45'),
(336, '2020-05-21 12:17:34.156367', 'getallproducts', '', '2020-05-21 15:17:45'),
(337, '2020-05-21 12:17:34.561074', 'getallproducts', '', '2020-05-21 15:17:45'),
(338, '2020-05-21 12:17:34.894817', 'getallproducts', '', '2020-05-21 15:17:45'),
(339, '2020-05-21 12:17:34.761363', 'getallproducts', '', '2020-05-21 15:17:46'),
(340, '2020-05-21 12:17:35.317883', 'getallproducts', '', '2020-05-21 15:17:46'),
(341, '2020-05-21 12:17:35.583126', 'getallproducts', '', '2020-05-21 15:17:46'),
(342, '2020-05-21 12:17:35.792229', 'getallproducts', '', '2020-05-21 15:17:46'),
(343, '2020-05-21 12:17:35.996897', 'getallproducts', '', '2020-05-21 15:17:46'),
(344, '2020-05-21 12:17:36.107509', 'getallproducts', '', '2020-05-21 15:17:47'),
(345, '2020-05-21 12:17:36.515872', 'getallproducts', '', '2020-05-21 15:17:47'),
(346, '2020-05-21 12:17:36.722075', 'getallproducts', '', '2020-05-21 15:17:47'),
(347, '2020-05-21 12:17:36.832960', 'getallproducts', '', '2020-05-21 15:17:47'),
(348, '2020-05-21 12:17:37.240835', 'getallproducts', '', '2020-05-21 15:17:48'),
(349, '2020-05-21 12:17:37.428928', 'getallproducts', '', '2020-05-21 15:17:48'),
(350, '2020-05-21 12:17:37.561026', 'getallproducts', '', '2020-05-21 15:17:48'),
(351, '2020-05-21 12:17:37.965299', 'getallproducts', '', '2020-05-21 15:17:49'),
(352, '2020-05-21 12:17:38.167282', 'getallproducts', '', '2020-05-21 15:17:49'),
(353, '2020-05-21 12:17:38.377771', 'getallproducts', '', '2020-05-21 15:17:49'),
(354, '2020-05-21 12:17:38.314046', 'getallproducts', '', '2020-05-21 15:17:49'),
(355, '2020-05-21 12:17:38.345384', 'getallproducts', '', '2020-05-21 15:17:49'),
(356, '2020-05-21 12:17:38.444997', 'getallproducts', '', '2020-05-21 15:17:49'),
(357, '2020-05-21 12:17:38.841937', 'getallproducts', '', '2020-05-21 15:17:50'),
(358, '2020-05-21 12:17:38.408261', 'getallproducts', '', '2020-05-21 15:17:50'),
(359, '2020-05-21 12:17:39.157655', 'getallproducts', '', '2020-05-21 15:17:50'),
(360, '2020-05-21 12:17:39.585406', 'getallproducts', '', '2020-05-21 15:17:50'),
(361, '2020-05-21 12:17:39.043719', 'getallproducts', '', '2020-05-21 15:17:50'),
(362, '2020-05-21 12:17:39.790404', 'getallproducts', '', '2020-05-21 15:17:50'),
(363, '2020-05-21 12:17:39.917118', 'getallproducts', '', '2020-05-21 15:17:50'),
(364, '2020-05-21 12:17:40.303919', 'getallproducts', '', '2020-05-21 15:17:51'),
(365, '2020-05-21 12:17:40.521138', 'getallproducts', '', '2020-05-21 15:17:51'),
(366, '2020-05-21 12:17:40.635916', 'getallproducts', '', '2020-05-21 15:17:51'),
(367, '2020-05-21 12:17:41.042568', 'getallproducts', '', '2020-05-21 15:17:51'),
(368, '2020-05-21 12:17:41.233858', 'getallproducts', '', '2020-05-21 15:17:52'),
(369, '2020-05-21 12:17:41.337493', 'getallproducts', '', '2020-05-21 15:17:52'),
(370, '2020-05-21 12:17:41.726088', 'getallproducts', '', '2020-05-21 15:17:52'),
(371, '2020-05-21 12:17:41.922855', 'getallproducts', '', '2020-05-21 15:17:52'),
(372, '2020-05-21 12:17:42.035839', 'getallproducts', '', '2020-05-21 15:17:52'),
(373, '2020-05-21 12:17:42.417624', 'getallproducts', '', '2020-05-21 15:17:53'),
(374, '2020-05-21 12:17:42.612578', 'getallproducts', '', '2020-05-21 15:17:53'),
(375, '2020-05-21 12:17:42.740781', 'getallproducts', '', '2020-05-21 15:17:53'),
(376, '2020-05-21 12:17:43.122167', 'getallproducts', '', '2020-05-21 15:17:54'),
(377, '2020-05-21 12:17:43.349315', 'getallproducts', '', '2020-05-21 15:17:54'),
(378, '2020-05-21 12:17:43.462724', 'getallproducts', '', '2020-05-21 15:17:54'),
(379, '2020-05-21 12:17:43.852427', 'getallproducts', '', '2020-05-21 15:17:54'),
(380, '2020-05-21 12:17:44.040303', 'getallproducts', '', '2020-05-21 15:17:55'),
(381, '2020-05-21 12:17:44.155912', 'getallproducts', '', '2020-05-21 15:17:55'),
(382, '2020-05-21 12:17:44.294375', 'getallproducts', '', '2020-05-21 15:17:55'),
(383, '2020-05-21 12:17:44.253715', 'getallproducts', '', '2020-05-21 15:17:55'),
(384, '2020-05-21 12:17:44.669786', 'getallproducts', '', '2020-05-21 15:17:55'),
(385, '2020-05-21 12:17:44.188955', 'getallproducts', '', '2020-05-21 15:17:55'),
(386, '2020-05-21 12:17:45.009772', 'getallproducts', '', '2020-05-21 15:17:56'),
(387, '2020-05-21 12:17:45.219497', 'getallproducts', '', '2020-05-21 15:17:56'),
(388, '2020-05-21 12:17:45.318639', 'getallproducts', '', '2020-05-21 15:17:56'),
(389, '2020-05-21 12:17:45.778206', 'getallproducts', '', '2020-05-21 15:17:56'),
(390, '2020-05-21 12:17:45.984185', 'getallproducts', '', '2020-05-21 15:17:57'),
(391, '2020-05-21 12:17:46.084471', 'getallproducts', '', '2020-05-21 15:17:57'),
(392, '2020-05-21 12:17:46.439856', 'getallproducts', '', '2020-05-21 15:17:57'),
(393, '2020-05-21 12:17:46.534745', 'getallproducts', '', '2020-05-21 15:17:57'),
(394, '2020-05-21 12:17:46.571702', 'getallproducts', '', '2020-05-21 15:17:57'),
(395, '2020-05-21 12:17:46.718227', 'getallproducts', '', '2020-05-21 15:17:57'),
(396, '2020-05-21 12:17:46.611486', 'getallproducts', '', '2020-05-21 15:17:58'),
(397, '2020-05-21 12:17:46.657288', 'getallproducts', '', '2020-05-21 15:17:58'),
(398, '2020-05-21 12:17:47.066946', 'getallproducts', '', '2020-05-21 15:17:58'),
(399, '2020-05-21 12:17:47.272503', 'getallproducts', '', '2020-05-21 15:17:58'),
(400, '2020-05-21 12:17:47.377414', 'getallproducts', '', '2020-05-21 15:17:58'),
(401, '2020-05-21 12:17:47.824863', 'getallproducts', '', '2020-05-21 15:17:58'),
(402, '2020-05-21 12:17:48.162108', 'getallproducts', '', '2020-05-21 15:17:59'),
(403, '2020-05-21 12:19:13.457933', 'getallproducts', '', '2020-05-21 15:19:24'),
(404, '2020-05-21 12:22:27.955294', 'homePage', '', '2020-05-21 15:22:40'),
(405, '2020-05-21 12:25:01.781596', 'likeproduct', '', '2020-05-21 15:25:12'),
(406, '2020-05-21 12:25:03.716602', 'likeproduct', '', '2020-05-21 15:25:14'),
(407, '2020-05-21 12:25:06.629547', 'homePage', '', '2020-05-21 15:25:17'),
(408, '2020-05-21 12:25:09.732122', 'likeproduct', '', '2020-05-21 15:25:20'),
(409, '2020-05-21 12:30:26.058938', 'unlikeproduct', '', '2020-05-21 15:30:37'),
(410, '2020-05-21 12:30:29.156541', 'unlikeproduct', '', '2020-05-21 15:30:40'),
(411, '2020-05-21 12:30:43.068821', 'likeproduct', '', '2020-05-21 15:30:54'),
(412, '2020-05-21 12:31:37.588921', 'homePage', '', '2020-05-21 15:31:48'),
(413, '2020-05-21 12:31:42.040268', 'unlikeproduct', '', '2020-05-21 15:31:53'),
(414, '2020-05-21 12:31:45.177801', 'likeproduct', '', '2020-05-21 15:31:56'),
(415, '2020-05-21 12:35:04.463977', 'unlikeproduct', '', '2020-05-21 15:35:20'),
(416, '2020-05-21 12:35:13.070934', 'likeproduct', '', '2020-05-21 15:35:24'),
(417, '2020-05-21 12:35:15.984290', 'unlikeproduct', '', '2020-05-21 15:35:26'),
(418, '2020-05-21 12:35:17.709524', 'homePage', '', '2020-05-21 15:35:28'),
(419, '2020-05-21 12:37:26.791812', 'likeproduct', '', '2020-05-21 15:37:38'),
(420, '2020-05-21 12:37:26.789557', 'likeproduct', '', '2020-05-21 15:37:38'),
(421, '2020-05-21 12:37:32.932335', 'homePage', '', '2020-05-21 15:37:44'),
(422, '2020-05-21 12:37:54.823531', 'unlikeproduct', '', '2020-05-21 15:38:06'),
(423, '2020-05-21 12:37:54.825885', 'unlikeproduct', '', '2020-05-21 15:38:06'),
(424, '2020-05-21 12:39:08.677611', 'homePage', '', '2020-05-21 15:39:20'),
(425, '2020-05-21 12:39:11.791547', 'likeproduct', '', '2020-05-21 15:39:22'),
(426, '2020-05-21 12:39:16.475227', 'unlikeproduct', '', '2020-05-21 15:39:27'),
(427, '2020-05-21 12:39:24.432598', 'likeproduct', '', '2020-05-21 15:39:35'),
(428, '2020-05-21 12:39:34.206408', 'likeproduct', '', '2020-05-21 15:39:45'),
(429, '2020-05-21 12:39:34.207148', 'likeproduct', '', '2020-05-21 15:39:45'),
(430, '2020-05-21 12:42:21.127337', 'unlikeproduct', '', '2020-05-21 15:42:32'),
(431, '2020-05-21 12:42:21.126376', 'unlikeproduct', '', '2020-05-21 15:42:32'),
(432, '2020-05-21 12:43:23.036557', 'homePage', '', '2020-05-21 15:43:34'),
(433, '2020-05-21 12:43:26.828345', 'likeproduct', '', '2020-05-21 15:43:37'),
(434, '2020-05-21 12:43:31.703799', 'homePage', '', '2020-05-21 15:43:42'),
(435, '2020-05-21 12:43:37.617094', 'unlikeproduct', '', '2020-05-21 15:43:48'),
(436, '2020-05-21 12:49:59.029350', 'homePage', '', '2020-05-21 15:50:10'),
(437, '2020-05-21 12:50:03.172370', 'likeproduct', '', '2020-05-21 15:50:14'),
(438, '2020-05-21 12:50:12.046250', 'homePage', '', '2020-05-21 15:50:23'),
(439, '2020-05-21 12:51:23.775256', 'unlikeproduct', '', '2020-05-21 15:51:35'),
(440, '2020-05-21 12:51:26.609983', 'homePage', '', '2020-05-21 15:51:37'),
(441, '2020-05-21 12:51:31.308257', 'likeproduct', '', '2020-05-21 15:51:42'),
(442, '2020-05-21 12:51:38.084339', 'unlikeproduct', '', '2020-05-21 15:51:49'),
(443, '2020-05-21 12:51:44.486198', 'likeproduct', '', '2020-05-21 15:51:55'),
(444, '2020-05-21 12:52:31.177947', 'unlikeproduct', '', '2020-05-21 15:52:42'),
(445, '2020-05-21 12:52:36.881990', 'unlikeproduct', '', '2020-05-21 15:52:48'),
(446, '2020-05-21 12:52:39.987003', 'likeproduct', '', '2020-05-21 15:52:51'),
(447, '2020-05-21 12:52:42.128530', 'unlikeproduct', '', '2020-05-21 15:52:53'),
(448, '2020-05-21 12:54:38.917262', 'homePage', '', '2020-05-21 15:54:50'),
(449, '2020-05-21 12:54:44.011003', 'likeproduct', '', '2020-05-21 15:54:55'),
(450, '2020-05-21 12:54:46.089609', 'unlikeproduct', '', '2020-05-21 15:54:57'),
(451, '2020-05-21 12:54:49.774521', 'likeproduct', '', '2020-05-21 15:55:01'),
(452, '2020-05-21 12:54:53.286589', 'likeproduct', '', '2020-05-21 15:55:04'),
(453, '2020-05-21 12:55:42.116830', 'unlikeproduct', '', '2020-05-21 15:55:53'),
(454, '2020-05-21 12:55:46.381067', 'likeproduct', '', '2020-05-21 15:55:57'),
(455, '2020-05-21 12:59:18.548635', 'homePage', '', '2020-05-21 15:59:31'),
(456, '2020-05-21 12:59:25.418450', 'likeproduct', '', '2020-05-21 15:59:36'),
(457, '6380121376617649333', 'moreflashes', 'ABCDEF', '2020-05-21 16:28:06'),
(458, '2020-05-21 13:37:38.003980', 'moreflashes', '', '2020-05-21 16:37:49'),
(459, '2020-05-21 13:38:00.366666', 'unlikeproduct', '', '2020-05-21 16:38:11'),
(460, '2020-05-21 13:38:22.197084', 'moreflashes', '', '2020-05-21 16:38:33'),
(461, '6380121376617641221', 'homePage', 'ABCDEF', '2020-05-21 16:38:58'),
(462, '2020-05-21 13:38:58.338441', 'likeproduct', '', '2020-05-21 16:39:09'),
(463, '2020-05-21 13:39:00.337101', 'unlikeproduct', '', '2020-05-21 16:39:11'),
(464, '2020-05-21 13:39:04.981948', 'moreflashes', '', '2020-05-21 16:39:16'),
(465, '2020-05-21 13:39:08.401727', 'likeproduct', '', '2020-05-21 16:39:19'),
(466, '2020-05-21 13:39:10.184078', 'moreflashes', '', '2020-05-21 16:39:21'),
(467, '2020-05-21 13:39:11.731715', 'unlikeproduct', '', '2020-05-21 16:39:22'),
(468, '2020-05-21 13:42:40.435863', 'moreflashes', '', '2020-05-21 16:42:52'),
(469, '2020-05-21 13:42:42.966094', 'likeproduct', '', '2020-05-21 16:42:54'),
(470, '2020-05-21 13:42:46.188637', 'moreflashes', '', '2020-05-21 16:42:57'),
(471, '2020-05-21 13:42:47.907795', 'unlikeproduct', '', '2020-05-21 16:42:59'),
(472, '2020-05-21 13:43:00.405443', 'unlikeproduct', '', '2020-05-21 16:43:11'),
(473, '2020-05-21 13:43:03.015166', 'moreflashes', '', '2020-05-21 16:43:14'),
(474, '2020-05-21 13:43:06.185224', 'likeproduct', '', '2020-05-21 16:43:17'),
(475, '2020-05-21 13:43:08.129544', 'moreflashes', '', '2020-05-21 16:43:19'),
(476, '2020-05-21 13:43:11.107545', 'unlikeproduct', '', '2020-05-21 16:43:22'),
(477, '2020-05-21 13:43:35.753417', 'moreflashes', '', '2020-05-21 16:43:46'),
(478, '2020-05-21 13:43:37.653718', 'likeproduct', '', '2020-05-21 16:43:48'),
(479, '2020-05-21 13:43:39.546080', 'unlikeproduct', '', '2020-05-21 16:43:50'),
(480, '2020-05-21 13:43:45.802761', 'moreflashes', '', '2020-05-21 16:43:57'),
(481, '2020-05-21 13:45:02.190679', 'likeproduct', '', '2020-05-21 16:45:13'),
(482, '2020-05-21 13:46:36.620821', 'unlikeproduct', '', '2020-05-21 16:46:48'),
(483, '2020-05-21 13:46:40.934446', 'moreflashes', '', '2020-05-21 16:46:51'),
(484, '2020-05-21 13:46:42.652427', 'likeproduct', '', '2020-05-21 16:46:53'),
(485, '2020-05-21 13:46:48.018402', 'homePage', '', '2020-05-21 16:46:59'),
(486, '2020-05-21 13:46:53.173204', 'moreflashes', '', '2020-05-21 16:47:04'),
(487, '2020-05-21 13:46:54.991449', 'unlikeproduct', '', '2020-05-21 16:47:06'),
(488, '2020-05-21 13:48:04.472940', 'moreflashes', '', '2020-05-21 16:48:15'),
(489, '2020-05-21 13:49:33.915624', 'homePage', '', '2020-05-21 16:49:46'),
(490, '2020-05-21 13:50:51.345304', 'homePage', '', '2020-05-21 16:51:03'),
(491, '2020-05-21 13:51:35.619865', 'moreflashes', '', '2020-05-21 16:51:46'),
(492, '2020-05-21 13:51:42.101506', 'moreproducts', '', '2020-05-21 16:51:53'),
(493, '2020-05-21 13:51:44.926936', 'unlikeproduct', '', '2020-05-21 16:51:56'),
(494, '2020-05-21 13:54:07.548619', 'moreproducts', '', '2020-05-21 16:54:18'),
(495, '2020-05-21 13:54:10.705318', 'unlikeproduct', '', '2020-05-21 16:54:21'),
(496, '2020-05-21 13:54:15.150031', 'likeproduct', '', '2020-05-21 16:54:26'),
(497, '2020-05-21 13:55:16.278554', 'moreflashes', '', '2020-05-21 16:55:27'),
(498, '2020-05-21 13:55:22.114072', 'moreproducts', '', '2020-05-21 16:55:33'),
(499, '2020-05-21 13:55:25.827716', 'unlikeproduct', '', '2020-05-21 16:55:37'),
(500, '2020-05-21 13:55:31.683429', 'moreproducts', '', '2020-05-21 16:55:42'),
(501, '2020-05-21 13:55:40.430087', 'moreproducts', '', '2020-05-21 16:55:51'),
(502, '2020-05-21 13:55:43.369495', 'unlikeproduct', '', '2020-05-21 16:55:54'),
(503, '2020-05-21 13:55:44.766032', 'unlikeproduct', '', '2020-05-21 16:55:55'),
(504, '2020-05-21 13:55:47.666479', 'homePage', '', '2020-05-21 16:55:58'),
(505, '2020-05-21 13:55:52.690407', 'moreproducts', '', '2020-05-21 16:56:03'),
(506, '2020-05-21 13:55:55.347309', 'likeproduct', '', '2020-05-21 16:56:06'),
(507, '2020-05-21 13:57:07.244652', 'moreproducts', '', '2020-05-21 16:57:18'),
(508, '2020-05-21 13:57:09.561741', 'likeproduct', '', '2020-05-21 16:57:20'),
(509, '2020-05-21 13:57:15.518632', 'moreproducts', '', '2020-05-21 16:57:26'),
(510, '2020-05-21 13:57:18.464136', 'likeproduct', '', '2020-05-21 16:57:29'),
(511, '2020-05-21 13:57:23.691345', 'unlikeproduct', '', '2020-05-21 16:57:35'),
(512, '2020-05-21 13:57:26.575659', 'moreproducts', '', '2020-05-21 16:57:37'),
(513, '2020-05-21 13:57:29.421966', 'likeproduct', '', '2020-05-21 16:57:40'),
(514, '2020-05-21 13:57:37.430661', 'moreproducts', '', '2020-05-21 16:57:48'),
(515, '2020-05-21 13:57:39.631810', 'likeproduct', '', '2020-05-21 16:57:50'),
(516, '2020-05-21 13:59:40.818780', 'moreproducts', '', '2020-05-21 16:59:52'),
(517, '2020-05-21 13:59:45.433993', 'homePage', '', '2020-05-21 16:59:56'),
(518, '2020-05-21 13:59:48.309528', 'moreproducts', '', '2020-05-21 16:59:59'),
(519, '2020-05-21 13:59:50.066045', 'unlikeproduct', '', '2020-05-21 17:00:01'),
(520, '2020-05-21 13:59:53.972397', 'moreproducts', '', '2020-05-21 17:00:04'),
(521, '2020-05-21 13:59:55.406913', 'likeproduct', '', '2020-05-21 17:00:06'),
(522, '2020-05-21 13:59:58.201210', 'unlikeproduct', '', '2020-05-21 17:00:09'),
(523, '2020-05-21 13:59:59.750250', 'moreproducts', '', '2020-05-21 17:00:10'),
(524, '2020-05-21 14:00:01.917934', 'likeproduct', '', '2020-05-21 17:00:13'),
(525, '2020-05-21 14:00:02.933903', 'unlikeproduct', '', '2020-05-21 17:00:14'),
(526, '2020-05-21 14:00:03.961195', 'unlikeproduct', '', '2020-05-21 17:00:14'),
(527, '2020-05-21 14:00:05.075984', 'unlikeproduct', '', '2020-05-21 17:00:16'),
(528, '2020-05-21 14:00:08.978009', 'likeproduct', '', '2020-05-21 17:00:20'),
(529, '2020-05-21 14:00:13.034685', 'moreflashes', '', '2020-05-21 17:00:24'),
(530, '2020-05-21 14:01:02.121467', 'moreflashes', '', '2020-05-21 17:01:13'),
(531, '2020-05-21 14:09:47.097278', 'getallproducts', '', '2020-05-21 17:09:58'),
(532, '2020-05-21 14:10:51.479962', 'homePage', '', '2020-05-21 17:11:02'),
(533, '2020-05-21 14:11:07.720207', 'moreflashes', '', '2020-05-21 17:11:19'),
(534, '2020-05-21 14:11:43.091644', 'unlikeproduct', '', '2020-05-21 17:11:54'),
(535, '2020-05-21 14:11:51.979701', 'getallproducts', '', '2020-05-21 17:12:03'),
(536, '2020-05-21 14:13:28.104446', 'getallproducts', '', '2020-05-21 17:13:39'),
(537, '2020-05-21 14:21:07.340015', 'homePage', '', '2020-05-21 17:21:19'),
(538, '2020-05-21 14:21:25.485535', 'homePage', '', '2020-05-21 17:21:37'),
(539, '2020-05-21 14:21:30.707827', 'getallproducts', '', '2020-05-21 17:21:41'),
(540, '2020-05-21 14:34:42.584589', 'getallproducts', '', '2020-05-21 17:34:53'),
(541, '2020-05-21 14:39:47.771465', 'getallproducts', '', '2020-05-21 17:39:59'),
(542, '2020-05-21 14:40:19.677463', 'getallproducts', '', '2020-05-21 17:40:31'),
(543, '2020-05-21 14:41:58.067824', 'getallproducts', '', '2020-05-21 17:42:09'),
(544, '2020-05-21 14:42:32.848223', 'getallproducts', '', '2020-05-21 17:42:44'),
(545, '2020-05-21 14:42:50.150187', 'getallproducts', '', '2020-05-21 17:43:01'),
(546, '2020-05-21 14:46:04.774477', 'getallproducts', '', '2020-05-21 17:46:16'),
(547, '2020-05-21 14:46:10.486988', 'getallproducts', '', '2020-05-21 17:46:21'),
(548, '2020-05-21 14:47:20.168067', 'getallproducts', '', '2020-05-21 17:47:31'),
(549, '2020-05-21 14:47:22.720745', 'getallproducts', '', '2020-05-21 17:47:33'),
(550, '2020-05-21 14:47:37.134900', 'homePage', '', '2020-05-21 17:47:49'),
(551, '2020-05-21 14:50:35.095642', 'homePage', '', '2020-05-21 17:50:47'),
(552, '2020-05-21 14:50:52.129098', 'homePage', '', '2020-05-21 17:51:04'),
(553, '2020-05-21 14:51:48.858230', 'getallproducts', '', '2020-05-21 17:52:00'),
(554, '2020-05-21 14:52:09.456210', 'getallproducts', '', '2020-05-21 17:52:21'),
(555, '2020-05-21 14:52:20.967205', 'getallproducts', '', '2020-05-21 17:52:32'),
(556, '2020-05-21 14:57:11.014362', 'getallproducts', '', '2020-05-21 17:57:22'),
(557, '2020-05-21 14:58:44.577078', 'getallproducts', '', '2020-05-21 17:58:55'),
(558, '2020-05-21 14:12:26.694786', 'homePage', '', '2020-05-21 18:12:27'),
(559, '2020-05-21 15:20:19.522327', 'homePage', '', '2020-05-21 18:20:30'),
(560, '2020-05-21 15:20:22.144648', 'getallproducts', '', '2020-05-21 18:20:33'),
(561, '2020-05-21 15:31:58.399890', 'getallproducts', '', '2020-05-21 18:32:09'),
(562, '2020-05-21 15:32:58.080109', 'getallproducts', '', '2020-05-21 18:33:09'),
(563, '2020-05-21 15:33:31.893917', 'getallproducts', '', '2020-05-21 18:33:43'),
(564, '2020-05-21 15:33:57.937785', 'getallproducts', '', '2020-05-21 18:34:09'),
(565, '2020-05-21 15:38:38.496214', 'getallproducts', '', '2020-05-21 18:38:49'),
(566, '2020-05-21 15:41:55.804049', 'getallproducts', '', '2020-05-21 18:42:07'),
(567, '2020-05-21 15:43:32.276718', 'getallproducts', '', '2020-05-21 18:43:43'),
(568, '2020-05-21 16:03:04.446729', 'getallproducts', '', '2020-05-21 07:03:15'),
(569, '2020-05-21 16:03:35.811946', 'getallproducts', '', '2020-05-21 07:03:47'),
(570, '2020-05-21 16:03:37.886456', 'getallproducts', '', '2020-05-21 07:03:49'),
(571, '2020-05-21 16:04:38.470335', 'getallproducts', '', '2020-05-21 07:04:49'),
(572, '2020-05-21 16:05:04.324199', 'getallproducts', '', '2020-05-21 07:05:15'),
(573, '2020-05-21 16:05:08.328813', 'getallproducts', '', '2020-05-21 07:05:19'),
(574, '2020-05-21 16:05:10.023601', 'getallproducts', '', '2020-05-21 07:05:21'),
(575, '2020-05-21 16:05:13.265876', 'getallproducts', '', '2020-05-21 07:05:24'),
(576, '2020-05-21 16:05:16.514360', 'getallproducts', '', '2020-05-21 07:05:27'),
(577, '2020-05-21 16:05:31.672358', 'getallproducts', '', '2020-05-21 07:05:42'),
(578, '2020-05-21 16:05:36.260960', 'getallproducts', '', '2020-05-21 07:05:47'),
(579, '2020-05-21 16:09:21.309611', 'homePage', '', '2020-05-21 07:09:33'),
(580, '2020-05-21 16:09:26.672051', 'getallproducts', '', '2020-05-21 07:09:37'),
(581, '2020-05-21 16:09:29.792869', 'getallproducts', '', '2020-05-21 07:09:40'),
(582, '2020-05-21 16:10:04.116434', 'getallproducts', '', '2020-05-21 07:10:15'),
(583, '2020-05-21 16:10:09.475457', 'getallproducts', '', '2020-05-21 07:10:20'),
(584, '2020-05-21 16:10:53.184328', 'getallproducts', '', '2020-05-21 07:11:04'),
(585, '2020-05-21 16:11:10.389481', 'getallproducts', '', '2020-05-21 07:11:21'),
(586, '2020-05-21 16:11:57.015210', 'getallproducts', '', '2020-05-21 07:12:08'),
(587, '2020-05-21 16:12:47.313965', 'getallproducts', '', '2020-05-21 07:12:58'),
(588, '2020-05-21 16:12:50.824625', 'getallproducts', '', '2020-05-21 07:13:01'),
(589, '2020-05-21 16:12:53.810162', 'getallproducts', '', '2020-05-21 07:13:04'),
(590, '2020-05-21 16:12:56.553053', 'getallproducts', '', '2020-05-21 07:13:07'),
(591, '2020-05-21 16:12:58.060466', 'getallproducts', '', '2020-05-21 07:13:09'),
(592, '2020-05-21 16:12:58.649062', 'getallproducts', '', '2020-05-21 07:13:09'),
(593, '2020-05-21 16:13:02.193123', 'getallproducts', '', '2020-05-21 07:13:13'),
(594, '2020-05-21 16:13:02.748378', 'getallproducts', '', '2020-05-21 07:13:14'),
(595, '2020-05-21 16:13:05.765703', 'getallproducts', '', '2020-05-21 07:13:16'),
(596, '2020-05-21 16:13:08.740833', 'getallproducts', '', '2020-05-21 07:13:19'),
(597, '2020-05-21 16:13:09.943322', 'getallproducts', '', '2020-05-21 07:13:21'),
(598, '2020-05-21 16:13:13.106651', 'getallproducts', '', '2020-05-21 07:13:24'),
(599, '2020-05-21 16:13:13.672269', 'getallproducts', '', '2020-05-21 07:13:24'),
(600, '2020-05-21 16:13:14.445451', 'getallproducts', '', '2020-05-21 07:13:25'),
(601, '2020-05-21 16:13:14.595528', 'getallproducts', '', '2020-05-21 07:13:25'),
(602, '2020-05-21 16:13:15.176486', 'getallproducts', '', '2020-05-21 07:13:26'),
(603, '2020-05-21 16:13:17.583530', 'getallproducts', '', '2020-05-21 07:13:28'),
(604, '2020-05-21 16:13:20.314512', 'getallproducts', '', '2020-05-21 07:13:31'),
(605, '2020-05-21 16:13:31.625140', 'getallproducts', '', '2020-05-21 07:13:42'),
(606, '2020-05-21 16:13:38.738409', 'getallproducts', '', '2020-05-21 07:13:50'),
(607, '2020-05-21 16:13:43.523764', 'getallproducts', '', '2020-05-21 07:13:54'),
(608, '2020-05-21 16:13:49.681482', 'getallproducts', '', '2020-05-21 07:14:01'),
(609, '2020-05-21 16:13:53.804842', 'getallproducts', '', '2020-05-21 07:14:04'),
(610, '2020-05-21 16:13:57.809898', 'getallproducts', '', '2020-05-21 07:14:09'),
(611, '6380121376617690425', 'getallproducts', 'ABCDEF', '2020-05-21 07:15:54'),
(612, '2020-05-21 16:19:14.928756', 'getallproducts', '', '2020-05-21 07:19:26'),
(613, '2020-05-21 16:19:23.320248', 'getallproducts', '', '2020-05-21 07:19:34'),
(614, '2020-05-21 16:19:40.813559', 'getallproducts', '', '2020-05-21 07:19:52'),
(615, '2020-05-21 16:19:53.756079', 'likeproduct', '', '2020-05-21 07:20:05'),
(616, '2020-05-21 16:20:03.626741', 'getallproducts', '', '2020-05-21 07:20:14'),
(617, '2020-05-21 16:20:20.783899', 'likeproduct', '', '2020-05-21 07:20:31'),
(618, '2020-05-21 16:20:23.113752', 'getallproducts', '', '2020-05-21 07:20:34'),
(619, '2020-05-21 16:20:27.556137', 'getallproducts', '', '2020-05-21 07:20:38'),
(620, '2020-05-21 16:20:30.545936', 'getallproducts', '', '2020-05-21 07:20:41'),
(621, '2020-05-21 16:20:35.958201', 'unlikeproduct', '', '2020-05-21 07:20:47'),
(622, '2020-05-21 16:20:38.117451', 'moreflashes', '', '2020-05-21 07:20:49'),
(623, '2020-05-21 16:20:40.475522', 'getallproducts', '', '2020-05-21 07:20:51'),
(624, '2020-05-21 16:20:44.847686', 'getallproducts', '', '2020-05-21 07:20:56'),
(625, '2020-05-21 16:20:53.752767', 'getallproducts', '', '2020-05-21 07:21:04'),
(626, '2020-05-21 16:20:57.318833', 'getallproducts', '', '2020-05-21 07:21:08'),
(627, '2020-05-21 16:20:59.795523', 'getallproducts', '', '2020-05-21 07:21:10'),
(628, '2020-05-21 16:21:02.130459', 'getallproducts', '', '2020-05-21 07:21:13'),
(629, '2020-05-21 16:21:02.248690', 'getallproducts', '', '2020-05-21 07:21:13'),
(630, '638012137661762533333433', 'productDetail', 'ABCDEF', '2020-05-21 07:24:28'),
(631, '6380121376617625', 'productDetail', 'ABCDEF', '2020-05-21 07:30:35'),
(632, '2020-05-21 15:30:58.098136', 'homePage', '', '2020-05-21 07:30:59'),
(633, '2020-05-21 15:31:04.588584', 'getallproducts', '', '2020-05-21 07:31:05'),
(634, '2020-05-21 15:31:09.233970', 'getallproducts', '', '2020-05-21 07:31:10'),
(635, '2020-05-21 15:31:10.705563', 'getallproducts', '', '2020-05-21 07:31:11'),
(636, '2020-05-21 15:31:15.296848', 'getallproducts', '', '2020-05-21 07:31:16'),
(637, '2020-05-21 15:31:23.517861', 'homePage', '', '2020-05-21 07:31:24'),
(638, '2020-05-21 15:31:55.091654', 'getallproducts', '', '2020-05-21 07:31:55'),
(639, '2020-05-21 15:39:39.048999', 'homePage', '', '2020-05-21 07:39:39'),
(640, '2020-05-21 15:39:53.910219', 'homePage', '', '2020-05-21 07:39:54'),
(641, '2020-05-21 15:39:55.549077', 'getallproducts', '', '2020-05-21 07:39:56');
INSERT INTO `api_calls_list` (`id`, `nonce`, `url`, `device_id`, `created_at`) VALUES
(642, '2020-05-21 15:48:24.706985', 'moreflashes', '', '2020-05-21 07:48:25'),
(643, '2020-05-21 15:48:28.946767', 'getallproducts', '', '2020-05-21 07:48:29'),
(644, '2020-05-21 15:48:33.393347', 'getallproducts', '', '2020-05-21 07:48:34'),
(645, '63801213766176623', 'getfilters', 'ABCDEF', '2020-05-21 07:50:36'),
(646, '2020-05-21 15:53:37.877979', 'getallproducts', '', '2020-05-21 07:53:38'),
(647, '2020-05-21 15:53:40.304690', 'getallproducts', '', '2020-05-21 07:53:40'),
(648, '2020-05-21 15:53:43.915641', 'getallproducts', '', '2020-05-21 07:53:44'),
(649, '2020-05-21 15:54:05.764503', 'unlikeproduct', '', '2020-05-21 07:54:06'),
(650, '2020-05-21 15:54:28.632032', 'likeproduct', '', '2020-05-21 07:54:29'),
(651, '2020-05-21 15:54:31.734248', 'likeproduct', '', '2020-05-21 07:54:32'),
(652, '2020-05-21 15:54:34.932868', 'unlikeproduct', '', '2020-05-21 07:54:35'),
(653, '2020-05-21 15:54:40.342921', 'moreflashes', '', '2020-05-21 07:54:41'),
(654, '2020-05-21 15:54:42.952770', 'unlikeproduct', '', '2020-05-21 07:54:43'),
(655, '2020-05-21 15:54:50.865920', 'getallproducts', '', '2020-05-21 07:54:51'),
(656, '2020-05-21 15:54:52.277960', 'getallproducts', '', '2020-05-21 07:54:52'),
(657, '2020-05-21 15:54:55.060199', 'getallproducts', '', '2020-05-21 07:54:55'),
(658, '2020-05-21 15:54:59.793075', 'getallproducts', '', '2020-05-21 07:55:00'),
(659, '2020-05-21 15:55:00.278718', 'getallproducts', '', '2020-05-21 07:55:01'),
(660, '2020-05-21 15:55:02.597824', 'getallproducts', '', '2020-05-21 07:55:03'),
(661, '2020-05-21 15:55:17.870348', 'getallproducts', '', '2020-05-21 07:55:18'),
(662, '2020-05-21 15:55:21.075792', 'getallproducts', '', '2020-05-21 07:55:21'),
(663, '2020-05-21 15:55:24.909287', 'getallproducts', '', '2020-05-21 07:55:25'),
(664, '2020-05-21 15:55:33.967928', 'getallproducts', '', '2020-05-21 07:55:34'),
(665, '2020-05-21 15:55:41.150092', 'homePage', '', '2020-05-21 07:55:41'),
(666, '2020-05-21 15:55:44.532260', 'homePage', '', '2020-05-21 07:55:45'),
(667, '2020-05-21 15:55:47.084425', 'homePage', '', '2020-05-21 07:55:47'),
(668, '2020-05-21 15:56:28.924453', 'getallproducts', '', '2020-05-21 07:56:29'),
(669, '2020-05-21 16:17:38.698563', 'getallproducts', '', '2020-05-21 08:17:39'),
(670, '2020-05-21 16:17:40.659352', 'getallproducts', '', '2020-05-21 08:17:41'),
(671, '2020-05-21 16:17:41.387950', 'getallproducts', '', '2020-05-21 08:17:42'),
(672, '2020-05-21 16:17:44.595344', 'getallproducts', '', '2020-05-21 08:17:45'),
(673, '2020-05-21 16:17:45.166690', 'getallproducts', '', '2020-05-21 08:17:45'),
(674, '2020-05-21 16:17:47.489993', 'getallproducts', '', '2020-05-21 08:17:48'),
(675, '2020-05-21 16:17:47.779743', 'getallproducts', '', '2020-05-21 08:17:48'),
(676, '2020-05-21 16:32:30.125258', 'getallproducts', '', '2020-05-21 08:32:32'),
(677, '2020-05-21 16:32:35.981138', 'getallproducts', '', '2020-05-21 08:32:36'),
(678, '2020-05-21 16:32:39.563524', 'getallproducts', '', '2020-05-21 08:32:40'),
(679, '2020-05-21 16:32:41.217553', 'getallproducts', '', '2020-05-21 08:32:41'),
(680, '2020-05-21 16:32:45.468534', 'getallproducts', '', '2020-05-21 08:32:46'),
(681, '2020-05-21 16:32:52.011682', 'getallproducts', '', '2020-05-21 08:32:53'),
(682, '2020-05-21 16:32:54.498656', 'getallproducts', '', '2020-05-21 08:32:55'),
(683, '2020-05-21 16:33:01.618540', 'getallproducts', '', '2020-05-21 08:33:02'),
(684, '6380121376617626', 'productDetail', 'ABCDEF', '2020-05-21 08:36:48'),
(685, '2020-05-22 04:54:26.010891', 'homePage', '', '2020-05-22 07:54:45'),
(686, '2020-05-22 04:54:22.401166', 'homePage', '', '2020-05-22 07:54:45'),
(687, '2020-05-22 04:54:42.966271', 'getallproducts', '', '2020-05-22 07:54:59'),
(688, '2020-05-22 04:54:47.852719', 'getallproducts', '', '2020-05-22 07:54:59'),
(689, '2020-05-22 04:54:48.983116', 'getallproducts', '', '2020-05-22 07:55:01'),
(690, '2020-05-22 04:54:52.219326', 'getallproducts', '', '2020-05-22 07:55:03'),
(691, '2020-05-22 04:55:52.951069', 'getallproducts', '', '2020-05-22 07:56:06'),
(692, '2020-05-22 04:55:48.039615', 'getallproducts', '', '2020-05-22 07:56:06'),
(693, '2020-05-22 04:55:53.198850', 'getallproducts', '', '2020-05-22 07:56:06'),
(694, '2020-05-22 04:55:56.067283', 'getallproducts', '', '2020-05-22 07:56:07'),
(695, '2020-05-22 04:55:37.083431', 'getallproducts', '', '2020-05-22 07:56:08'),
(696, '2020-05-22 04:56:00.890114', 'getallproducts', '', '2020-05-22 07:56:12'),
(697, '2020-05-22 04:56:04.376319', 'getallproducts', '', '2020-05-22 07:56:15'),
(698, '2020-05-22 04:56:08.217307', 'getallproducts', '', '2020-05-22 07:56:19'),
(699, '2020-05-22 04:56:08.394541', 'getallproducts', '', '2020-05-22 07:56:20'),
(700, '2020-05-22 04:56:08.524016', 'getallproducts', '', '2020-05-22 07:56:20'),
(701, '2020-05-22 04:56:17.037819', 'getallproducts', '', '2020-05-22 07:56:28'),
(702, '2020-05-22 04:56:17.178148', 'getallproducts', '', '2020-05-22 07:56:28'),
(703, '2020-05-22 04:56:17.363796', 'getallproducts', '', '2020-05-22 07:56:28'),
(704, '2020-05-22 04:56:23.873459', 'getallproducts', '', '2020-05-22 07:56:35'),
(705, '2020-05-22 04:56:33.765196', 'getallproducts', '', '2020-05-22 07:56:45'),
(706, '2020-05-22 04:56:36.635884', 'getallproducts', '', '2020-05-22 07:56:48'),
(707, '2020-05-22 04:56:39.606071', 'getallproducts', '', '2020-05-22 07:56:50'),
(708, '2020-05-22 04:56:56.388435', 'homePage', '', '2020-05-22 07:57:10'),
(709, '2020-05-22 04:57:05.858458', 'getallproducts', '', '2020-05-22 07:57:17'),
(710, '2020-05-22 04:57:12.248572', 'getallproducts', '', '2020-05-22 07:57:24'),
(711, '2020-05-22 04:57:16.087683', 'getallproducts', '', '2020-05-22 07:57:27'),
(712, '2020-05-22 04:58:15.908467', 'getallproducts', '', '2020-05-22 07:58:42'),
(713, '2020-05-22 04:58:20.856923', 'getallproducts', '', '2020-05-22 07:58:42'),
(714, '2020-05-22 04:57:54.457037', 'getallproducts', '', '2020-05-22 07:58:43'),
(715, '2020-05-22 04:57:51.653532', 'getallproducts', '', '2020-05-22 07:58:49'),
(716, '2020-05-22 04:58:30.647245', 'getallproducts', '', '2020-05-22 07:58:53'),
(717, '2020-05-22 04:58:37.587220', 'homePage', '', '2020-05-22 07:59:06'),
(718, '2020-05-22 04:58:42.459613', 'homePage', '', '2020-05-22 07:59:07'),
(719, '2020-05-22 04:58:45.695702', 'homePage', '', '2020-05-22 07:59:10'),
(720, '2020-05-22 04:58:50.585792', 'homePage', '', '2020-05-22 07:59:12'),
(721, '2020-05-22 04:58:54.642849', 'homePage', '', '2020-05-22 07:59:12'),
(722, '2020-05-22 04:58:59.516398', 'homePage', '', '2020-05-22 07:59:15'),
(723, '2020-05-22 05:00:21.808777', 'homePage', '', '2020-05-22 08:00:33'),
(724, '2020-05-22 05:00:25.795231', 'getallproducts', '', '2020-05-22 08:00:37'),
(725, '2020-05-22 05:00:29.078786', 'getallproducts', '', '2020-05-22 08:00:40'),
(726, '2020-05-22 05:00:32.429880', 'getallproducts', '', '2020-05-22 08:00:43'),
(727, '2020-05-22 05:00:35.523667', 'getallproducts', '', '2020-05-22 08:00:46'),
(728, '2020-05-22 05:00:39.221260', 'getallproducts', '', '2020-05-22 08:00:51'),
(729, '2020-05-22 05:00:44.030981', 'getallproducts', '', '2020-05-22 08:00:55'),
(730, '2020-05-22 05:00:46.808081', 'getallproducts', '', '2020-05-22 08:00:58'),
(731, '2020-05-22 05:00:50.201390', 'getallproducts', '', '2020-05-22 08:01:01'),
(732, '2020-05-22 05:00:50.586597', 'getallproducts', '', '2020-05-22 08:01:02'),
(733, '2020-05-22 05:00:52.844320', 'getallproducts', '', '2020-05-22 08:01:04'),
(734, '2020-05-22 05:00:56.143856', 'getallproducts', '', '2020-05-22 08:01:07'),
(735, '2020-05-22 05:00:58.667881', 'getallproducts', '', '2020-05-22 08:01:09'),
(736, '2020-05-22 05:00:58.792283', 'getallproducts', '', '2020-05-22 08:01:10'),
(737, '2020-05-22 05:00:59.003595', 'getallproducts', '', '2020-05-22 08:01:10'),
(738, '2020-05-22 05:00:59.075012', 'getallproducts', '', '2020-05-22 08:01:10'),
(739, '2020-05-22 05:00:59.400163', 'getallproducts', '', '2020-05-22 08:01:10'),
(740, '2020-05-22 05:00:59.157630', 'getallproducts', '', '2020-05-22 08:01:10'),
(741, '2020-05-22 05:01:13.106129', 'getallproducts', '', '2020-05-22 08:01:24'),
(742, '2020-05-22 05:01:13.225050', 'getallproducts', '', '2020-05-22 08:01:24'),
(743, '2020-05-22 05:01:13.455243', 'getallproducts', '', '2020-05-22 08:01:24'),
(744, '2020-05-22 05:01:13.535362', 'getallproducts', '', '2020-05-22 08:01:24'),
(745, '2020-05-22 05:01:13.607923', 'getallproducts', '', '2020-05-22 08:01:25'),
(746, '2020-05-22 05:01:13.858591', 'getallproducts', '', '2020-05-22 08:01:25'),
(747, '2020-05-22 05:01:21.955131', 'getallproducts', '', '2020-05-22 08:01:33'),
(748, '2020-05-22 05:01:22.083676', 'getallproducts', '', '2020-05-22 08:01:33'),
(749, '2020-05-22 05:01:22.299759', 'getallproducts', '', '2020-05-22 08:01:33'),
(750, '2020-05-22 05:01:22.430356', 'getallproducts', '', '2020-05-22 08:01:33'),
(751, '2020-05-22 05:01:22.352765', 'getallproducts', '', '2020-05-22 08:01:33'),
(752, '2020-05-22 05:01:22.670431', 'getallproducts', '', '2020-05-22 08:01:34'),
(753, '2020-05-22 05:01:36.794011', 'getallproducts', '', '2020-05-22 08:01:48'),
(754, '2020-05-22 05:01:36.905458', 'getallproducts', '', '2020-05-22 08:01:48'),
(755, '2020-05-22 05:01:37.114788', 'getallproducts', '', '2020-05-22 08:01:48'),
(756, '2020-05-22 05:10:42.201635', 'getallproducts', '', '2020-05-22 08:10:53'),
(757, '2020-05-22 05:10:46.002565', 'getallproducts', '', '2020-05-22 08:10:57'),
(758, '2020-05-22 05:10:48.687451', 'getallproducts', '', '2020-05-22 08:11:00'),
(759, '2020-05-22 05:10:51.124486', 'getallproducts', '', '2020-05-22 08:11:02'),
(760, '2020-05-22 05:10:57.243028', 'getallproducts', '', '2020-05-22 08:11:08'),
(761, '2020-05-22 05:10:59.705384', 'getallproducts', '', '2020-05-22 08:11:11'),
(762, '2020-05-22 05:11:02.788543', 'getallproducts', '', '2020-05-22 08:11:14'),
(763, '2020-05-22 05:11:02.902308', 'getallproducts', '', '2020-05-22 08:11:14'),
(764, '2020-05-22 05:11:03.109966', 'getallproducts', '', '2020-05-22 08:11:14'),
(765, '2020-05-22 05:11:10.428985', 'getallproducts', '', '2020-05-22 08:11:21'),
(766, '2020-05-22 05:11:30.431969', 'getallproducts', '', '2020-05-22 08:11:41'),
(767, '2020-05-22 05:11:32.284189', 'getallproducts', '', '2020-05-22 08:11:43'),
(768, '2020-05-22 05:11:32.394911', 'getallproducts', '', '2020-05-22 08:11:43'),
(769, '2020-05-22 05:11:32.609457', 'getallproducts', '', '2020-05-22 08:11:44'),
(770, '2020-05-22 05:14:00.154310', 'homePage', '', '2020-05-22 08:14:12'),
(771, '2020-05-22 05:15:18.202999', 'homePage', '', '2020-05-22 08:15:30'),
(772, '2020-05-22 05:16:07.405265', 'getallproducts', '', '2020-05-22 08:16:19'),
(773, '2020-05-22 05:16:10.780794', 'getallproducts', '', '2020-05-22 08:16:22'),
(774, '2020-05-22 05:16:11.070658', 'getallproducts', '', '2020-05-22 08:16:22'),
(775, '2020-05-22 05:16:11.223521', 'getallproducts', '', '2020-05-22 08:16:23'),
(776, '2020-05-22 05:16:21.570950', 'getallproducts', '', '2020-05-22 08:16:33'),
(777, '2020-05-22 05:16:21.772091', 'getallproducts', '', '2020-05-22 08:16:33'),
(778, '2020-05-22 05:16:21.944523', 'getallproducts', '', '2020-05-22 08:16:33'),
(779, '2020-05-22 05:16:26.250730', 'getallproducts', '', '2020-05-22 08:16:37'),
(780, '2020-05-22 05:26:03.421920', 'getallproducts', '', '2020-05-22 08:26:15'),
(781, '2020-05-22 05:26:03.892622', 'getallproducts', '', '2020-05-22 08:26:15'),
(782, '2020-05-22 05:26:03.893822', 'getallproducts', '', '2020-05-22 08:26:15'),
(783, '2020-05-22 05:26:22.700244', 'homePage', '', '2020-05-22 08:26:35'),
(784, '2020-05-22 05:26:43.636926', 'getallproducts', '', '2020-05-22 08:26:55'),
(785, '2020-05-22 05:26:59.336815', 'getallproducts', '', '2020-05-22 08:27:11'),
(786, '2020-05-22 05:26:59.716762', 'getallproducts', '', '2020-05-22 08:27:11'),
(787, '2020-05-22 05:26:59.890766', 'getallproducts', '', '2020-05-22 08:27:11'),
(788, '2020-05-22 05:27:22.047628', 'getallproducts', '', '2020-05-22 08:27:34'),
(789, '2020-05-22 05:27:30.858474', 'getallproducts', '', '2020-05-22 08:27:42'),
(790, '2020-05-22 05:28:29.003192', 'getallproducts', '', '2020-05-22 08:28:40'),
(791, '2020-05-22 05:28:33.996906', 'getallproducts', '', '2020-05-22 08:28:45'),
(792, '2020-05-22 05:28:38.140955', 'getallproducts', '', '2020-05-22 08:28:49'),
(793, '2020-05-22 05:28:40.330099', 'getallproducts', '', '2020-05-22 08:28:51'),
(794, '2020-05-22 05:28:40.659937', 'getallproducts', '', '2020-05-22 08:28:52'),
(795, '2020-05-22 05:28:42.796804', 'getallproducts', '', '2020-05-22 08:28:54'),
(796, '2020-05-22 05:28:43.474520', 'getallproducts', '', '2020-05-22 08:28:54'),
(797, '2020-05-22 05:28:43.686732', 'getallproducts', '', '2020-05-22 08:28:55'),
(798, '2020-05-22 05:28:56.586815', 'getallproducts', '', '2020-05-22 08:29:08'),
(799, '2020-05-22 05:28:56.924393', 'getallproducts', '', '2020-05-22 08:29:08'),
(800, '2020-05-22 05:29:01.395679', 'getallproducts', '', '2020-05-22 08:29:12'),
(801, '2020-05-22 05:29:04.713261', 'getallproducts', '', '2020-05-22 08:29:15'),
(802, '2020-05-22 05:29:26.284165', 'getallproducts', '', '2020-05-22 08:29:38'),
(803, '2020-05-22 05:29:26.765840', 'getallproducts', '', '2020-05-22 08:29:38'),
(804, '2020-05-22 05:29:29.795093', 'getallproducts', '', '2020-05-22 08:29:41'),
(805, '2020-05-22 05:29:30.268495', 'getallproducts', '', '2020-05-22 08:29:41'),
(806, '2020-05-22 05:30:03.203293', 'getallproducts', '', '2020-05-22 08:30:14'),
(807, '2020-05-22 05:30:03.500086', 'getallproducts', '', '2020-05-22 08:30:14'),
(808, '2020-05-22 05:30:03.659126', 'getallproducts', '', '2020-05-22 08:30:15'),
(809, '2020-05-22 05:30:10.471823', 'getallproducts', '', '2020-05-22 08:30:22'),
(810, '2020-05-22 05:30:13.077926', 'getallproducts', '', '2020-05-22 08:30:24'),
(811, '2020-05-22 05:30:15.861404', 'getallproducts', '', '2020-05-22 08:30:27'),
(812, '2020-05-22 05:30:16.114985', 'getallproducts', '', '2020-05-22 08:30:27'),
(813, '2020-05-22 05:30:16.223235', 'getallproducts', '', '2020-05-22 08:30:27'),
(814, '2020-05-22 05:30:18.449686', 'getallproducts', '', '2020-05-22 08:30:29'),
(815, '2020-05-22 05:30:18.636170', 'getallproducts', '', '2020-05-22 08:30:29'),
(816, '2020-05-22 05:30:18.775977', 'getallproducts', '', '2020-05-22 08:30:30'),
(817, '2020-05-22 05:30:42.561702', 'getallproducts', '', '2020-05-22 08:30:54'),
(818, '2020-05-22 05:30:42.947824', 'getallproducts', '', '2020-05-22 08:30:54'),
(819, '2020-05-22 05:30:47.562315', 'getallproducts', '', '2020-05-22 08:30:59'),
(820, '2020-05-22 05:30:51.636754', 'getallproducts', '', '2020-05-22 08:31:02'),
(821, '2020-05-22 05:30:51.978884', 'getallproducts', '', '2020-05-22 08:31:03'),
(822, '2020-05-22 05:30:51.825103', 'getallproducts', '', '2020-05-22 08:31:04'),
(823, '2020-05-22 05:30:56.776687', 'getallproducts', '', '2020-05-22 08:31:08'),
(824, '2020-05-22 05:30:56.975481', 'getallproducts', '', '2020-05-22 08:31:08'),
(825, '2020-05-22 05:30:57.121592', 'getallproducts', '', '2020-05-22 08:31:08'),
(826, '2020-05-22 05:32:08.800665', 'homePage', '', '2020-05-22 08:32:21'),
(827, '2020-05-22 05:32:22.785531', 'getallproducts', '', '2020-05-22 08:32:34'),
(828, '2020-05-22 05:32:28.329948', 'getallproducts', '', '2020-05-22 08:32:40'),
(829, '2020-05-22 05:32:28.288315', 'getallproducts', '', '2020-05-22 08:32:40'),
(830, '2020-05-22 05:32:28.672631', 'getallproducts', '', '2020-05-22 08:32:40'),
(831, '2020-05-22 05:32:33.586790', 'getallproducts', '', '2020-05-22 08:32:45'),
(832, '2020-05-22 05:32:33.558300', 'getallproducts', '', '2020-05-22 08:32:45'),
(833, '2020-05-22 05:32:33.947651', 'getallproducts', '', '2020-05-22 08:32:45'),
(834, '2020-05-22 05:32:38.372370', 'getallproducts', '', '2020-05-22 08:32:49'),
(835, '2020-05-22 05:32:38.402005', 'getallproducts', '', '2020-05-22 08:32:49'),
(836, '2020-05-22 05:32:38.793812', 'getallproducts', '', '2020-05-22 08:32:50'),
(837, '2020-05-22 05:32:40.909206', 'getallproducts', '', '2020-05-22 08:32:52'),
(838, '2020-05-22 05:32:40.950337', 'getallproducts', '', '2020-05-22 08:32:52'),
(839, '2020-05-22 05:32:41.248452', 'getallproducts', '', '2020-05-22 08:32:52'),
(840, '2020-05-22 05:32:45.959453', 'getallproducts', '', '2020-05-22 08:32:57'),
(841, '2020-05-22 05:32:50.011451', 'getallproducts', '', '2020-05-22 08:33:01'),
(842, '2020-05-22 05:32:53.034877', 'getallproducts', '', '2020-05-22 08:33:04'),
(843, '2020-05-22 05:32:53.074438', 'getallproducts', '', '2020-05-22 08:33:04'),
(844, '2020-05-22 05:32:53.406740', 'getallproducts', '', '2020-05-22 08:33:05'),
(845, '2020-05-22 05:32:57.507920', 'getallproducts', '', '2020-05-22 08:33:08'),
(846, '2020-05-22 05:32:57.543729', 'getallproducts', '', '2020-05-22 08:33:09'),
(847, '2020-05-22 05:32:57.847950', 'getallproducts', '', '2020-05-22 08:33:09'),
(848, '2020-05-22 05:33:03.925715', 'getallproducts', '', '2020-05-22 08:33:15'),
(849, '2020-05-22 05:33:07.255345', 'getallproducts', '', '2020-05-22 08:33:18'),
(850, '2020-05-22 05:33:09.468566', 'getallproducts', '', '2020-05-22 08:33:20'),
(851, '2020-05-22 05:33:10.883045', 'getallproducts', '', '2020-05-22 08:33:22'),
(852, '2020-05-22 05:33:12.598285', 'getallproducts', '', '2020-05-22 08:33:23'),
(853, '2020-05-22 05:33:13.894128', 'getallproducts', '', '2020-05-22 08:33:25'),
(854, '2020-05-22 05:33:14.369759', 'getallproducts', '', '2020-05-22 08:33:25'),
(855, '2020-05-22 05:33:18.327776', 'getallproducts', '', '2020-05-22 08:33:29'),
(856, '2020-05-22 05:33:19.475383', 'getallproducts', '', '2020-05-22 08:33:30'),
(857, '2020-05-22 05:33:19.901695', 'getallproducts', '', '2020-05-22 08:33:31'),
(858, '2020-05-22 05:33:21.447902', 'getallproducts', '', '2020-05-22 08:33:32'),
(859, '2020-05-22 05:33:21.650110', 'getallproducts', '', '2020-05-22 08:33:32'),
(860, '2020-05-22 05:33:23.949261', 'getallproducts', '', '2020-05-22 08:33:35'),
(861, '2020-05-22 05:33:23.978101', 'getallproducts', '', '2020-05-22 08:33:35'),
(862, '2020-05-22 05:33:24.299716', 'getallproducts', '', '2020-05-22 08:33:35'),
(863, '2020-05-22 05:33:28.223213', 'getallproducts', '', '2020-05-22 08:33:39'),
(864, '2020-05-22 05:33:28.475305', 'getallproducts', '', '2020-05-22 08:33:39'),
(865, '2020-05-22 05:33:28.911396', 'getallproducts', '', '2020-05-22 08:33:40'),
(866, '2020-05-22 05:33:28.942691', 'getallproducts', '', '2020-05-22 08:33:40'),
(867, '2020-05-22 05:33:29.244552', 'getallproducts', '', '2020-05-22 08:33:40'),
(868, '2020-05-22 05:37:34.550509', 'getallproducts', '', '2020-05-22 08:37:46'),
(869, '2020-05-22 05:37:34.584034', 'getallproducts', '', '2020-05-22 08:37:46'),
(870, '2020-05-22 05:37:34.881818', 'getallproducts', '', '2020-05-22 08:37:46'),
(871, '2020-05-22 05:44:34.225437', 'getallproducts', '', '2020-05-22 08:44:46'),
(872, '2020-05-22 05:44:34.173123', 'getallproducts', '', '2020-05-22 08:44:46'),
(873, '2020-05-22 05:44:34.603066', 'getallproducts', '', '2020-05-22 08:44:46'),
(874, '2020-05-22 05:44:39.794428', 'getallproducts', '', '2020-05-22 08:44:52'),
(875, '2020-05-22 05:44:40.638192', 'getallproducts', '', '2020-05-22 08:44:52'),
(876, '2020-05-22 05:44:44.389835', 'getallproducts', '', '2020-05-22 08:44:55'),
(877, '2020-05-22 05:44:44.358749', 'getallproducts', '', '2020-05-22 08:44:56'),
(878, '2020-05-22 05:44:44.760515', 'getallproducts', '', '2020-05-22 08:44:57'),
(879, '2020-05-22 05:44:46.703717', 'getallproducts', '', '2020-05-22 08:44:58'),
(880, '2020-05-22 05:44:48.986372', 'getallproducts', '', '2020-05-22 08:45:00'),
(881, '2020-05-22 05:44:51.120679', 'getallproducts', '', '2020-05-22 08:45:02'),
(882, '2020-05-22 05:44:53.439248', 'getallproducts', '', '2020-05-22 08:45:05'),
(883, '2020-05-22 05:44:55.316906', 'getallproducts', '', '2020-05-22 08:45:06'),
(884, '2020-05-22 05:45:01.455503', 'getallproducts', '', '2020-05-22 08:45:13'),
(885, '2020-05-22 05:45:04.113791', 'getallproducts', '', '2020-05-22 08:45:15'),
(886, '2020-05-22 05:45:07.976779', 'getallproducts', '', '2020-05-22 08:45:19'),
(887, '2020-05-22 05:45:11.629567', 'getallproducts', '', '2020-05-22 08:45:22'),
(888, '2020-05-22 05:45:13.694039', 'getallproducts', '', '2020-05-22 08:45:25'),
(889, '2020-05-22 05:45:18.505276', 'getallproducts', '', '2020-05-22 08:45:30'),
(890, '2020-05-22 05:45:22.296562', 'getallproducts', '', '2020-05-22 08:45:33'),
(891, '2020-05-22 05:46:11.132119', 'getallproducts', '', '2020-05-22 08:46:22'),
(892, '2020-05-22 05:46:26.173992', 'getallproducts', '', '2020-05-22 08:46:38'),
(893, '2020-05-22 05:46:38.107715', 'getallproducts', '', '2020-05-22 08:46:49'),
(894, '2020-05-22 05:46:41.182948', 'getallproducts', '', '2020-05-22 08:46:52'),
(895, '2020-05-22 05:46:46.260994', 'getallproducts', '', '2020-05-22 08:46:57'),
(896, '2020-05-22 05:49:31.230789', 'getallproducts', '', '2020-05-22 08:49:42'),
(897, '2020-05-22 05:49:33.425408', 'getallproducts', '', '2020-05-22 08:49:44'),
(898, '2020-05-22 05:49:37.191960', 'getallproducts', '', '2020-05-22 08:49:48'),
(899, '2020-05-22 05:49:39.266840', 'getallproducts', '', '2020-05-22 08:49:50'),
(900, '2020-05-22 05:49:44.311971', 'getallproducts', '', '2020-05-22 08:49:55'),
(901, '2020-05-22 05:50:00.515367', 'getallproducts', '', '2020-05-22 08:50:12'),
(902, '2020-05-22 05:50:01.840710', 'getallproducts', '', '2020-05-22 08:50:13'),
(903, '2020-05-22 05:50:06.907980', 'getallproducts', '', '2020-05-22 08:50:18'),
(904, '2020-05-22 05:50:23.165821', 'getallproducts', '', '2020-05-22 08:50:34'),
(905, '2020-05-22 05:50:26.868481', 'getallproducts', '', '2020-05-22 08:50:38'),
(906, '2020-05-22 05:50:31.940233', 'getallproducts', '', '2020-05-22 08:50:43'),
(907, '2020-05-22 05:50:52.730127', 'getallproducts', '', '2020-05-22 08:51:04'),
(908, '2020-05-22 05:50:53.914087', 'getallproducts', '', '2020-05-22 08:51:05'),
(909, '2020-05-22 05:51:33.650496', 'getallproducts', '', '2020-05-22 08:51:45'),
(910, '2020-05-22 05:51:46.644512', 'getallproducts', '', '2020-05-22 08:51:58'),
(911, '2020-05-22 05:51:51.611475', 'getallproducts', '', '2020-05-22 08:52:03'),
(912, '2020-05-22 05:52:21.633890', 'getallproducts', '', '2020-05-22 08:52:33'),
(913, '2020-05-22 05:52:23.236050', 'getallproducts', '', '2020-05-22 08:52:34'),
(914, '2020-05-22 05:52:25.058455', 'getallproducts', '', '2020-05-22 08:52:36'),
(915, '2020-05-22 05:52:26.876561', 'getallproducts', '', '2020-05-22 08:52:38'),
(916, '2020-05-22 05:52:30.666475', 'getallproducts', '', '2020-05-22 08:52:42'),
(917, '2020-05-22 05:53:20.876408', 'getallproducts', '', '2020-05-22 08:53:33'),
(918, '2020-05-22 05:54:10.569051', 'getallproducts', '', '2020-05-22 08:54:22'),
(919, '2020-05-22 05:57:45.892915', 'getallproducts', '', '2020-05-22 08:57:57'),
(920, '2020-05-22 05:59:55.278802', 'getallproducts', '', '2020-05-22 09:00:07'),
(921, '2020-05-22 06:01:40.965468', 'homePage', '', '2020-05-22 09:01:53'),
(922, '2020-05-22 06:01:47.262871', 'getallproducts', '', '2020-05-22 09:01:58'),
(923, '2020-05-22 06:01:50.526666', 'getallproducts', '', '2020-05-22 09:02:01'),
(924, '2020-05-22 06:01:52.877549', 'getallproducts', '', '2020-05-22 09:02:04'),
(925, '2020-05-22 06:01:53.696320', 'getallproducts', '', '2020-05-22 09:02:05'),
(926, '2020-05-22 06:02:49.886694', 'getallproducts', '', '2020-05-22 09:03:01'),
(927, '2020-05-22 06:02:51.277385', 'getallproducts', '', '2020-05-22 09:03:02'),
(928, '2020-05-22 06:02:53.599963', 'getallproducts', '', '2020-05-22 09:03:04'),
(929, '2020-05-22 06:02:54.809832', 'getallproducts', '', '2020-05-22 09:03:06'),
(930, '2020-05-22 06:04:15.860896', 'homePage', '', '2020-05-22 09:04:28'),
(931, '2020-05-22 06:04:21.003681', 'getallproducts', '', '2020-05-22 09:04:32'),
(932, '2020-05-22 06:04:22.960336', 'getallproducts', '', '2020-05-22 09:04:34'),
(933, '2020-05-22 06:04:38.509464', 'getallproducts', '', '2020-05-22 09:04:50'),
(934, '2020-05-22 06:08:36.620885', 'homePage', '', '2020-05-22 09:08:49'),
(935, '2020-05-22 06:08:42.963634', 'getallproducts', '', '2020-05-22 09:08:54'),
(936, '2020-05-22 06:08:45.877773', 'getallproducts', '', '2020-05-22 09:08:57'),
(937, '2020-05-22 06:09:41.097735', 'getallproducts', '', '2020-05-22 09:09:52'),
(938, '2020-05-22 06:09:42.619600', 'getallproducts', '', '2020-05-22 09:09:53'),
(939, '2020-05-22 06:09:43.771930', 'getallproducts', '', '2020-05-22 09:09:55'),
(940, '2020-05-22 06:09:59.554863', 'getallproducts', '', '2020-05-22 09:10:11'),
(941, '2020-05-22 06:11:08.079372', 'getallproducts', '', '2020-05-22 09:11:19'),
(942, '2020-05-22 06:11:10.529178', 'getallproducts', '', '2020-05-22 09:11:21'),
(943, '2020-05-22 06:11:12.285282', 'getallproducts', '', '2020-05-22 09:11:23'),
(944, '2020-05-22 06:11:16.103943', 'getallproducts', '', '2020-05-22 09:11:27'),
(945, '2020-05-22 06:11:18.613239', 'getallproducts', '', '2020-05-22 09:11:29'),
(946, '2020-05-22 06:11:21.567179', 'getallproducts', '', '2020-05-22 09:11:32'),
(947, '2020-05-22 06:11:24.477858', 'getallproducts', '', '2020-05-22 09:11:35'),
(948, '2020-05-22 06:11:27.942387', 'getallproducts', '', '2020-05-22 09:11:39'),
(949, '2020-05-22 06:14:25.633688', 'getallproducts', '', '2020-05-22 09:14:37'),
(950, '2020-05-22 06:14:27.366505', 'getallproducts', '', '2020-05-22 09:14:38'),
(951, '2020-05-22 06:16:44.121338', 'getallproducts', '', '2020-05-22 09:16:56'),
(952, '2020-05-22 06:16:44.659973', 'getallproducts', '', '2020-05-22 09:16:56'),
(953, '2020-05-22 06:16:44.660790', 'getallproducts', '', '2020-05-22 09:16:56'),
(954, '2020-05-22 06:16:59.060470', 'getallproducts', '', '2020-05-22 09:17:10'),
(955, '2020-05-22 06:16:59.116897', 'getallproducts', '', '2020-05-22 09:17:10'),
(956, '2020-05-22 06:16:59.457224', 'getallproducts', '', '2020-05-22 09:17:10'),
(957, '2020-05-22 06:17:11.054667', 'getallproducts', '', '2020-05-22 09:17:22'),
(958, '2020-05-22 06:17:11.106450', 'getallproducts', '', '2020-05-22 09:17:22'),
(959, '2020-05-22 06:17:11.479049', 'getallproducts', '', '2020-05-22 09:17:23'),
(960, '2020-05-22 06:17:23.280295', 'getallproducts', '', '2020-05-22 09:17:34'),
(961, '2020-05-22 06:22:51.402919', 'getallproducts', '', '2020-05-22 09:23:03'),
(962, '2020-05-22 06:24:19.423306', 'getallproducts', '', '2020-05-22 09:24:30'),
(963, '2020-05-22 06:24:36.017490', 'getallproducts', '', '2020-05-22 09:24:47'),
(964, '2020-05-22 06:26:42.460314', 'homePage', '', '2020-05-22 09:26:55'),
(965, '2020-05-22 06:26:55.851186', 'getallproducts', '', '2020-05-22 09:27:07'),
(966, '2020-05-22 06:26:59.669842', 'getallproducts', '', '2020-05-22 09:27:10'),
(967, '2020-05-22 06:27:02.120679', 'getallproducts', '', '2020-05-22 09:27:13'),
(968, '2020-05-22 06:27:06.762147', 'getallproducts', '', '2020-05-22 09:27:18'),
(969, '2020-05-22 06:27:09.667543', 'getallproducts', '', '2020-05-22 09:27:20'),
(970, '2020-05-22 06:27:12.161101', 'getallproducts', '', '2020-05-22 09:27:23'),
(971, '2020-05-22 06:27:14.988343', 'getallproducts', '', '2020-05-22 09:27:26'),
(972, '2020-05-22 06:27:17.462746', 'getallproducts', '', '2020-05-22 09:27:28'),
(973, '2020-05-22 06:27:17.618902', 'getallproducts', '', '2020-05-22 09:27:29'),
(974, '2020-05-22 06:27:17.785700', 'getallproducts', '', '2020-05-22 09:27:29'),
(975, '2020-05-22 06:27:20.684631', 'getallproducts', '', '2020-05-22 09:27:31'),
(976, '2020-05-22 06:27:20.832370', 'getallproducts', '', '2020-05-22 09:27:32'),
(977, '2020-05-22 06:27:21.021295', 'getallproducts', '', '2020-05-22 09:27:32'),
(978, '2020-05-22 06:27:23.580425', 'getallproducts', '', '2020-05-22 09:27:34'),
(979, '2020-05-22 06:27:50.617236', 'getallproducts', '', '2020-05-22 09:28:02'),
(980, '2020-05-22 06:27:56.346309', 'getallproducts', '', '2020-05-22 09:28:07'),
(981, '2020-05-22 06:28:12.270142', 'homePage', '', '2020-05-22 09:28:25'),
(982, '2020-05-22 06:28:17.739283', 'getallproducts', '', '2020-05-22 09:28:29'),
(983, '2020-05-22 06:28:23.327360', 'getallproducts', '', '2020-05-22 09:28:34'),
(984, '2020-05-22 06:28:25.476073', 'getallproducts', '', '2020-05-22 09:28:36'),
(985, '2020-05-22 06:31:25.766324', 'getallproducts', '', '2020-05-22 09:31:37'),
(986, '2020-05-22 06:31:32.552884', 'getallproducts', '', '2020-05-22 09:31:44'),
(987, '2020-05-22 06:33:45.184030', 'getallproducts', '', '2020-05-22 09:33:56'),
(988, '2020-05-22 06:34:28.131969', 'getallproducts', '', '2020-05-22 09:34:39'),
(989, '2020-05-22 06:34:32.567222', 'getallproducts', '', '2020-05-22 09:34:44'),
(990, '2020-05-22 06:34:34.504332', 'getallproducts', '', '2020-05-22 09:34:45'),
(991, '2020-05-22 06:34:36.531639', 'getallproducts', '', '2020-05-22 09:34:47'),
(992, '2020-05-22 06:37:49.928555', 'homePage', '', '2020-05-22 09:38:02'),
(993, '2020-05-22 06:38:16.283573', 'homePage', '', '2020-05-22 09:38:29'),
(994, '2020-05-22 06:39:04.318992', 'homePage', '', '2020-05-22 09:39:17'),
(995, '2020-05-22 06:39:09.771994', 'getallproducts', '', '2020-05-22 09:39:21'),
(996, '2020-05-22 06:39:13.567826', 'getallproducts', '', '2020-05-22 09:39:24'),
(997, '2020-05-22 06:39:17.148945', 'getallproducts', '', '2020-05-22 09:39:28'),
(998, '2020-05-22 06:39:20.904052', 'getallproducts', '', '2020-05-22 09:39:32'),
(999, '2020-05-22 06:39:43.701776', 'getallproducts', '', '2020-05-22 09:39:55'),
(1000, '2020-05-22 06:39:46.104839', 'getallproducts', '', '2020-05-22 09:39:57'),
(1001, '2020-05-22 06:39:47.723653', 'getallproducts', '', '2020-05-22 09:39:59'),
(1002, '2020-05-22 06:39:49.584497', 'getallproducts', '', '2020-05-22 09:40:01'),
(1003, '2020-05-22 06:43:06.313393', 'getallproducts', '', '2020-05-22 09:43:18'),
(1004, '2020-05-22 06:48:20.708820', 'homePage', '', '2020-05-22 09:48:34'),
(1005, '2020-05-22 06:48:24.396621', 'homePage', '', '2020-05-22 09:48:35'),
(1006, '2020-05-22 06:48:44.728658', 'homePage', '', '2020-05-22 09:48:57'),
(1007, '2020-05-22 06:48:48.420744', 'homePage', '', '2020-05-22 09:48:59'),
(1008, '2020-05-22 06:49:07.170898', 'homePage', '', '2020-05-22 09:49:19'),
(1009, '2020-05-22 06:49:12.945174', 'getallproducts', '', '2020-05-22 09:49:24'),
(1010, '2020-05-22 06:52:46.849007', 'getallproducts', '', '2020-05-22 09:52:58'),
(1011, '2020-05-22 06:52:50.802948', 'getallproducts', '', '2020-05-22 09:53:02'),
(1012, '2020-05-22 06:54:04.034109', 'getallproducts', '', '2020-05-22 09:54:15'),
(1013, '2020-05-22 06:54:06.935154', 'getallproducts', '', '2020-05-22 09:54:18'),
(1014, '2020-05-22 06:55:32.511768', 'homePage', '', '2020-05-22 09:55:45'),
(1015, '2020-05-22 06:55:40.201997', 'getallproducts', '', '2020-05-22 09:55:52'),
(1016, '2020-05-22 06:59:13.472722', 'getallproducts', '', '2020-05-22 09:59:25'),
(1017, '2020-05-22 07:01:00.875447', 'homePage', '', '2020-05-22 10:01:13'),
(1018, '2020-05-22 07:02:13.796143', 'getallproducts', '', '2020-05-22 10:02:25'),
(1019, '2020-05-22 07:04:24.113123', 'getallproducts', '', '2020-05-22 10:04:36'),
(1020, '2020-05-22 07:08:08.728925', 'getallproducts', '', '2020-05-22 10:08:20'),
(1021, '2020-05-22 07:15:07.818926', 'homePage', '', '2020-05-22 10:15:20'),
(1022, '2020-05-22 07:15:11.530807', 'homePage', '', '2020-05-22 10:15:22'),
(1023, '2020-05-22 07:17:45.536350', 'getallproducts', '', '2020-05-22 10:17:57'),
(1024, '2020-05-22 07:21:24.250452', 'getallproducts', '', '2020-05-22 10:21:36'),
(1025, '2020-05-22 07:24:13.971215', 'getallproducts', '', '2020-05-22 10:24:25'),
(1026, '2020-05-22 07:24:17.571183', 'getallproducts', '', '2020-05-22 10:24:28'),
(1027, '2020-05-22 07:24:22.404041', 'getallproducts', '', '2020-05-22 10:24:34'),
(1028, '2020-05-22 07:25:36.808486', 'getallproducts', '', '2020-05-22 10:25:48'),
(1029, '2020-05-22 07:26:13.569916', 'getallproducts', '', '2020-05-22 10:26:25'),
(1030, '2020-05-22 07:27:13.873499', 'getallproducts', '', '2020-05-22 10:27:25'),
(1031, '2020-05-22 07:30:18.411704', 'likeproduct', '', '2020-05-22 10:30:30'),
(1032, '2020-05-22 07:30:20.695306', 'unlikeproduct', '', '2020-05-22 10:30:32'),
(1033, '2020-05-22 07:30:24.034643', 'likeproduct', '', '2020-05-22 10:30:35'),
(1034, '2020-05-22 07:30:29.334516', 'getallproducts', '', '2020-05-22 10:30:40'),
(1035, '2020-05-22 07:33:00.064647', 'homePage', '', '2020-05-22 10:33:13'),
(1036, '2020-05-22 07:33:04.936658', 'getallproducts', '', '2020-05-22 10:33:16'),
(1037, '2020-05-22 07:33:22.463426', 'homePage', '', '2020-05-22 10:33:35'),
(1038, '2020-05-22 07:33:27.293563', 'getallproducts', '', '2020-05-22 10:33:38'),
(1039, '2020-05-22 07:33:34.181048', 'getallproducts', '', '2020-05-22 10:33:46'),
(1040, '2020-05-22 07:33:58.615203', 'homePage', '', '2020-05-22 10:34:12'),
(1041, '2020-05-22 07:34:04.706976', 'getallproducts', '', '2020-05-22 10:34:16'),
(1042, '2020-05-22 07:34:09.987753', 'getallproducts', '', '2020-05-22 10:34:21'),
(1043, '2020-05-22 07:35:12.841876', 'homePage', '', '2020-05-22 10:35:26'),
(1044, '2020-05-22 07:35:18.839887', 'getallproducts', '', '2020-05-22 10:35:30'),
(1045, '2020-05-22 07:35:23.444615', 'getallproducts', '', '2020-05-22 10:35:35'),
(1046, '2020-05-22 07:35:27.695315', 'getallproducts', '', '2020-05-22 10:35:38'),
(1047, '2020-05-22 07:35:29.584850', 'getallproducts', '', '2020-05-22 10:35:40'),
(1048, '2020-05-22 07:35:29.767242', 'getallproducts', '', '2020-05-22 10:35:41'),
(1049, '2020-05-22 07:35:29.934775', 'getallproducts', '', '2020-05-22 10:35:41'),
(1050, '2020-05-22 07:35:34.796821', 'getallproducts', '', '2020-05-22 10:35:46'),
(1051, '2020-05-22 07:35:39.749183', 'getallproducts', '', '2020-05-22 10:35:51'),
(1052, '2020-05-22 07:36:05.876516', 'getallproducts', '', '2020-05-22 10:36:17'),
(1053, '2020-05-22 07:36:36.783182', 'getallproducts', '', '2020-05-22 10:36:48'),
(1054, '2020-05-22 07:36:56.498097', 'homePage', '', '2020-05-22 10:37:09'),
(1055, '2020-05-22 07:37:02.627322', 'getallproducts', '', '2020-05-22 10:37:14'),
(1056, '2020-05-22 07:38:05.413488', 'getallproducts', '', '2020-05-22 10:38:17'),
(1057, '2020-05-22 07:39:00.320552', 'getallproducts', '', '2020-05-22 10:39:12'),
(1058, '2020-05-22 07:40:10.518633', 'getallproducts', '', '2020-05-22 10:40:22'),
(1059, '2020-05-22 07:40:15.229814', 'getallproducts', '', '2020-05-22 10:40:26'),
(1060, '2020-05-22 07:47:57.494857', 'getallproducts', '', '2020-05-22 10:48:09'),
(1061, '2020-05-22 07:49:40.382917', 'homePage', '', '2020-05-22 10:49:53'),
(1062, '2020-05-22 07:52:20.766356', 'homePage', '', '2020-05-22 10:52:33'),
(1063, '2020-05-22 07:52:46.615491', 'getallproducts', '', '2020-05-22 10:52:58'),
(1064, '2020-05-22 07:52:52.190334', 'getallproducts', '', '2020-05-22 10:53:03'),
(1065, '2020-05-22 07:53:09.689475', 'getallproducts', '', '2020-05-22 10:53:21'),
(1066, '2020-05-22 07:54:07.299633', 'getallproducts', '', '2020-05-22 10:54:19'),
(1067, '2020-05-22 07:55:18.466122', 'homePage', '', '2020-05-22 10:55:31'),
(1068, '2020-05-22 07:58:48.036109', 'homePage', '', '2020-05-22 10:59:00'),
(1069, '2020-05-22 07:58:53.905265', 'getallproducts', '', '2020-05-22 10:59:05'),
(1070, '2020-05-22 07:58:59.181629', 'getallproducts', '', '2020-05-22 10:59:10'),
(1071, '2020-05-22 07:59:29.472327', 'homePage', '', '2020-05-22 10:59:42'),
(1072, '2020-05-22 07:59:34.504689', 'getallproducts', '', '2020-05-22 10:59:45'),
(1073, '2020-05-22 07:59:38.279374', 'getallproducts', '', '2020-05-22 10:59:49'),
(1074, '2020-05-22 07:59:43.098501', 'getallproducts', '', '2020-05-22 10:59:54'),
(1075, '2020-05-22 08:00:17.958329', 'homePage', '', '2020-05-22 11:00:30'),
(1076, '2020-05-22 08:00:23.307093', 'getallproducts', '', '2020-05-22 11:00:34'),
(1077, '2020-05-22 08:00:26.889631', 'getallproducts', '', '2020-05-22 11:00:38'),
(1078, '2020-05-22 08:00:31.757072', 'getallproducts', '', '2020-05-22 11:00:43'),
(1079, '2020-05-22 08:01:01.342376', 'homePage', '', '2020-05-22 11:01:14'),
(1080, '2020-05-22 08:01:05.040041', 'homePage', '', '2020-05-22 11:01:16'),
(1081, '2020-05-22 08:04:43.654767', 'getallproducts', '', '2020-05-22 11:04:55'),
(1082, '2020-05-22 08:04:48.108951', 'getallproducts', '', '2020-05-22 11:04:59'),
(1083, '2020-05-22 08:04:54.241952', 'getallproducts', '', '2020-05-22 11:05:05'),
(1084, '2020-05-22 08:05:45.465854', 'getallproducts', '', '2020-05-22 11:05:57'),
(1085, '2020-05-22 08:05:49.923347', 'getallproducts', '', '2020-05-22 11:06:01'),
(1086, '2020-05-22 08:05:57.233116', 'getallproducts', '', '2020-05-22 11:06:08'),
(1087, '2020-05-22 08:06:44.179413', 'getallproducts', '', '2020-05-22 11:06:56'),
(1088, '2020-05-22 08:08:30.195934', 'homePage', '', '2020-05-22 11:08:43'),
(1089, '2020-05-22 08:08:35.926876', 'getallproducts', '', '2020-05-22 11:08:47'),
(1090, '2020-05-22 08:08:39.801064', 'getallproducts', '', '2020-05-22 11:08:51'),
(1091, '2020-05-22 08:13:20.093333', 'homePage', '', '2020-05-22 11:13:33'),
(1092, '2020-05-22 08:14:28.113333', 'getallproducts', '', '2020-05-22 11:14:40'),
(1093, '2020-05-22 08:17:36.716307', 'getallproducts', '', '2020-05-22 11:17:49'),
(1094, '2020-05-22 08:17:37.833266', 'getallproducts', '', '2020-05-22 11:17:49'),
(1095, '2020-05-22 08:24:37.987946', 'homePage', '', '2020-05-22 11:24:50'),
(1096, '2020-05-22 08:24:58.480202', 'getallproducts', '', '2020-05-22 11:25:10'),
(1097, '2020-05-22 08:25:11.195769', 'getallproducts', '', '2020-05-22 11:25:22'),
(1098, '2020-05-22 08:26:12.361373', 'getallproducts', '', '2020-05-22 11:26:24'),
(1099, '2020-05-22 08:31:04.344743', 'homePage', '', '2020-05-22 11:31:17'),
(1100, '2020-05-22 08:31:09.147452', 'getallproducts', '', '2020-05-22 11:31:20'),
(1101, '2020-05-22 08:32:03.841117', 'homePage', '', '2020-05-22 11:32:16'),
(1102, '2020-05-22 08:32:08.737804', 'getallproducts', '', '2020-05-22 11:32:20'),
(1103, '2020-05-22 08:32:32.164816', 'getallproducts', '', '2020-05-22 11:32:43'),
(1104, '2020-05-22 08:33:04.879950', 'getallproducts', '', '2020-05-22 11:33:16'),
(1105, '2020-05-22 08:33:44.586235', 'homePage', '', '2020-05-22 11:33:57'),
(1106, '2020-05-22 08:33:50.652688', 'getallproducts', '', '2020-05-22 11:34:02'),
(1107, '2020-05-22 08:35:45.234211', 'getallproducts', '', '2020-05-22 11:35:56'),
(1108, '2020-05-22 08:36:09.167637', 'getallproducts', '', '2020-05-22 11:36:20'),
(1109, '2020-05-22 08:37:07.684263', 'homePage', '', '2020-05-22 11:37:20'),
(1110, '2020-05-22 08:37:12.862124', 'getallproducts', '', '2020-05-22 11:37:24'),
(1111, '2020-05-22 08:37:17.495501', 'getallproducts', '', '2020-05-22 11:37:29'),
(1112, '2020-05-22 08:37:24.397924', 'getallproducts', '', '2020-05-22 11:37:36'),
(1113, '2020-05-22 08:37:28.389873', 'getallproducts', '', '2020-05-22 11:37:39'),
(1114, '2020-05-22 08:37:31.614670', 'likeproduct', '', '2020-05-22 11:37:42'),
(1115, '2020-05-22 08:37:36.873575', 'homePage', '', '2020-05-22 11:37:48'),
(1116, '2020-05-22 08:37:42.861521', 'getallproducts', '', '2020-05-22 11:37:54'),
(1117, '2020-05-22 08:37:47.745254', 'getallproducts', '', '2020-05-22 11:37:59'),
(1118, '2020-05-22 08:37:50.037497', 'getallproducts', '', '2020-05-22 11:38:01'),
(1119, '2020-05-22 08:37:57.543567', 'getallproducts', '', '2020-05-22 11:38:09'),
(1120, '2020-05-22 08:38:13.792181', 'getallproducts', '', '2020-05-22 11:38:25'),
(1121, '2020-05-22 08:38:14.272302', 'getallproducts', '', '2020-05-22 11:38:25'),
(1122, '2020-05-22 08:38:16.781361', 'getallproducts', '', '2020-05-22 11:38:28'),
(1123, '2020-05-22 08:38:18.769438', 'getallproducts', '', '2020-05-22 11:38:30'),
(1124, '2020-05-22 08:38:18.925480', 'getallproducts', '', '2020-05-22 11:38:30'),
(1125, '2020-05-22 08:38:19.115978', 'getallproducts', '', '2020-05-22 11:38:30'),
(1126, '2020-05-22 08:38:21.380474', 'getallproducts', '', '2020-05-22 11:38:32'),
(1127, '2020-05-22 08:38:21.525554', 'getallproducts', '', '2020-05-22 11:38:32'),
(1128, '2020-05-22 08:38:21.695836', 'getallproducts', '', '2020-05-22 11:38:32'),
(1129, '2020-05-22 08:38:23.792395', 'getallproducts', '', '2020-05-22 11:38:35'),
(1130, '2020-05-22 08:38:23.936565', 'getallproducts', '', '2020-05-22 11:38:35'),
(1131, '2020-05-22 08:38:24.115369', 'getallproducts', '', '2020-05-22 11:38:35'),
(1132, '2020-05-22 08:38:24.347872', 'getallproducts', '', '2020-05-22 11:38:35'),
(1133, '2020-05-22 08:38:24.273535', 'getallproducts', '', '2020-05-22 11:38:35'),
(1134, '2020-05-22 08:38:24.596580', 'getallproducts', '', '2020-05-22 11:38:35'),
(1135, '2020-05-22 08:38:26.426510', 'getallproducts', '', '2020-05-22 11:38:37'),
(1136, '2020-05-22 08:38:26.557424', 'getallproducts', '', '2020-05-22 11:38:37'),
(1137, '2020-05-22 08:38:26.746204', 'getallproducts', '', '2020-05-22 11:38:38'),
(1138, '2020-05-22 08:39:46.094418', 'homePage', '', '2020-05-22 11:39:58'),
(1139, '2020-05-22 08:39:51.704532', 'getallproducts', '', '2020-05-22 11:40:03'),
(1140, '2020-05-22 08:39:55.079837', 'getallproducts', '', '2020-05-22 11:40:06'),
(1141, '2020-05-22 08:39:55.395249', 'getallproducts', '', '2020-05-22 11:40:07'),
(1142, '2020-05-22 08:39:55.578501', 'getallproducts', '', '2020-05-22 11:40:07'),
(1143, '2020-05-22 08:39:57.994913', 'getallproducts', '', '2020-05-22 11:40:09'),
(1144, '2020-05-22 08:39:58.254553', 'getallproducts', '', '2020-05-22 11:40:09'),
(1145, '2020-05-22 08:39:58.404630', 'getallproducts', '', '2020-05-22 11:40:09'),
(1146, '2020-05-22 08:40:02.572594', 'getallproducts', '', '2020-05-22 11:40:14'),
(1147, '2020-05-22 08:40:02.771953', 'getallproducts', '', '2020-05-22 11:40:14'),
(1148, '2020-05-22 08:40:02.942284', 'getallproducts', '', '2020-05-22 11:40:14'),
(1149, '2020-05-22 08:41:01.817805', 'getallproducts', '', '2020-05-22 11:41:13'),
(1150, '2020-05-22 08:41:02.151313', 'getallproducts', '', '2020-05-22 11:41:13'),
(1151, '2020-05-22 08:41:02.316137', 'getallproducts', '', '2020-05-22 11:41:13'),
(1152, '2020-05-22 08:41:48.647256', 'homePage', '', '2020-05-22 11:42:01'),
(1153, '2020-05-22 08:41:57.255406', 'getallproducts', '', '2020-05-22 11:42:09'),
(1154, '2020-05-22 08:42:05.035806', 'getallproducts', '', '2020-05-22 11:42:17'),
(1155, '2020-05-22 08:42:11.186289', 'getallproducts', '', '2020-05-22 11:42:22'),
(1156, '2020-05-22 08:42:47.388981', 'homePage', '', '2020-05-22 11:43:00'),
(1157, '2020-05-22 08:42:52.055771', 'getallproducts', '', '2020-05-22 11:43:03'),
(1158, '2020-05-22 08:42:55.834999', 'getallproducts', '', '2020-05-22 11:43:07'),
(1159, '2020-05-22 08:46:24.609117', 'homePage', '', '2020-05-22 11:46:37'),
(1160, '2020-05-22 08:47:14.158038', 'homePage', '', '2020-05-22 11:47:26'),
(1161, '2020-05-22 08:47:32.815046', 'getallproducts', '', '2020-05-22 11:47:44'),
(1162, '2020-05-22 08:47:44.243113', 'getallproducts', '', '2020-05-22 11:47:56'),
(1163, '2020-05-22 08:48:17.821485', 'homePage', '', '2020-05-22 11:48:30'),
(1164, '2020-05-22 08:48:21.534789', 'homePage', '', '2020-05-22 11:48:32'),
(1165, '2020-05-22 08:48:37.319496', 'homePage', '', '2020-05-22 11:48:50'),
(1166, '2020-05-22 08:48:42.634743', 'getallproducts', '', '2020-05-22 11:48:53'),
(1167, '2020-05-22 08:48:46.022029', 'getallproducts', '', '2020-05-22 11:48:57'),
(1168, '2020-05-22 08:49:32.462061', 'homePage', '', '2020-05-22 11:49:45'),
(1169, '2020-05-22 08:50:09.138106', 'homePage', '', '2020-05-22 11:50:22'),
(1170, '2020-05-22 08:50:36.381380', 'getallproducts', '', '2020-05-22 11:50:48'),
(1171, '2020-05-22 08:50:39.884792', 'getallproducts', '', '2020-05-22 11:50:51'),
(1172, '2020-05-22 08:50:43.850171', 'getallproducts', '', '2020-05-22 11:50:55'),
(1173, '2020-05-22 08:50:46.145006', 'getallproducts', '', '2020-05-22 11:50:57'),
(1174, '2020-05-22 08:51:12.564111', 'homePage', '', '2020-05-22 11:51:25'),
(1175, '2020-05-22 08:52:57.324486', 'homePage', '', '2020-05-22 11:53:10'),
(1176, '2020-05-22 08:53:21.525483', 'homePage', '', '2020-05-22 11:53:34'),
(1177, '2020-05-22 08:56:08.461253', 'homePage', '', '2020-05-22 11:56:21'),
(1178, '2020-05-22 08:56:14.706760', 'getallproducts', '', '2020-05-22 11:56:26'),
(1179, '2020-05-22 08:56:18.807893', 'getallproducts', '', '2020-05-22 11:56:30'),
(1180, '2020-05-22 08:56:48.682796', 'getallproducts', '', '2020-05-22 11:57:00'),
(1181, '2020-05-22 08:56:52.192150', 'getallproducts', '', '2020-05-22 11:57:03'),
(1182, '2020-05-22 08:56:55.546907', 'getallproducts', '', '2020-05-22 11:57:06'),
(1183, '2020-05-22 08:59:23.540820', 'homePage', '', '2020-05-22 11:59:37'),
(1184, '2020-05-22 08:59:27.255544', 'homePage', '', '2020-05-22 11:59:38'),
(1185, '2020-05-22 08:59:44.736603', 'homePage', '', '2020-05-22 11:59:57'),
(1186, '2020-05-22 08:59:48.444663', 'homePage', '', '2020-05-22 11:59:59'),
(1187, '2020-05-22 09:00:02.504329', 'homePage', '', '2020-05-22 12:00:15'),
(1188, '2020-05-22 09:00:06.216527', 'homePage', '', '2020-05-22 12:00:17'),
(1189, '2020-05-22 09:00:20.019720', 'homePage', '', '2020-05-22 12:00:33'),
(1190, '2020-05-22 09:00:23.711953', 'homePage', '', '2020-05-22 12:00:34'),
(1191, '2020-05-22 09:00:39.839165', 'homePage', '', '2020-05-22 12:00:52'),
(1192, '2020-05-22 09:00:45.034098', 'getallproducts', '', '2020-05-22 12:00:56'),
(1193, '2020-05-22 09:00:49.815311', 'getallproducts', '', '2020-05-22 12:01:01'),
(1194, '2020-05-22 09:01:05.190229', 'getallproducts', '', '2020-05-22 12:01:16'),
(1195, '2020-05-22 09:01:07.374195', 'getallproducts', '', '2020-05-22 12:01:18'),
(1196, '2020-05-22 09:01:07.843386', 'getallproducts', '', '2020-05-22 12:01:19'),
(1197, '2020-05-22 09:01:07.949718', 'getallproducts', '', '2020-05-22 12:01:19'),
(1198, '2020-05-22 09:01:08.196685', 'getallproducts', '', '2020-05-22 12:01:20'),
(1199, '2020-05-22 09:02:56.445548', 'getallproducts', '', '2020-05-22 12:03:08'),
(1200, '2020-05-22 09:03:00.741023', 'getallproducts', '', '2020-05-22 12:03:12'),
(1201, '2020-05-22 09:03:41.210116', 'getallproducts', '', '2020-05-22 12:03:52'),
(1202, '2020-05-22 09:03:44.633115', 'getallproducts', '', '2020-05-22 12:03:56'),
(1203, '2020-05-22 09:03:55.886515', 'homePage', '', '2020-05-22 12:04:08'),
(1204, '2020-05-22 09:05:42.047857', 'homePage', '', '2020-05-22 12:05:54'),
(1205, '2020-05-22 09:05:45.765421', 'homePage', '', '2020-05-22 12:05:57'),
(1206, '2020-05-22 09:06:04.522028', 'homePage', '', '2020-05-22 12:06:17'),
(1207, '2020-05-22 09:06:09.985572', 'getallproducts', '', '2020-05-22 12:06:21'),
(1208, '2020-05-22 09:06:13.145432', 'getallproducts', '', '2020-05-22 12:06:24'),
(1209, '2020-05-22 09:06:35.141922', 'homePage', '', '2020-05-22 12:06:47'),
(1210, '2020-05-22 09:06:42.141861', 'getallproducts', '', '2020-05-22 12:06:54'),
(1211, '2020-05-22 09:06:47.016958', 'getallproducts', '', '2020-05-22 12:06:59'),
(1212, '2020-05-22 09:06:53.848968', 'getallproducts', '', '2020-05-22 12:07:05'),
(1213, '2020-05-22 09:06:56.700408', 'getallproducts', '', '2020-05-22 12:07:08'),
(1214, '2020-05-22 09:07:00.032915', 'getallproducts', '', '2020-05-22 12:07:11'),
(1215, '2020-05-22 09:07:03.235275', 'getallproducts', '', '2020-05-22 12:07:14'),
(1216, '2020-05-22 09:07:06.044633', 'getallproducts', '', '2020-05-22 12:07:17'),
(1217, '2020-05-22 09:07:10.858973', 'getallproducts', '', '2020-05-22 12:07:22'),
(1218, '2020-05-22 09:07:11.019734', 'getallproducts', '', '2020-05-22 12:07:22'),
(1219, '2020-05-22 09:07:11.174984', 'getallproducts', '', '2020-05-22 12:07:22'),
(1220, '2020-05-22 09:07:14.149258', 'getallproducts', '', '2020-05-22 12:07:25'),
(1221, '2020-05-22 09:09:43.747883', 'homePage', '', '2020-05-22 12:09:56'),
(1222, '2020-05-22 09:09:50.191695', 'getallproducts', '', '2020-05-22 12:10:02'),
(1223, '2020-05-22 09:09:53.630604', 'getallproducts', '', '2020-05-22 12:10:04'),
(1224, '2020-05-22 09:09:56.493659', 'getallproducts', '', '2020-05-22 12:10:07'),
(1225, '2020-05-22 09:09:59.960410', 'getallproducts', '', '2020-05-22 12:10:11'),
(1226, '2020-05-22 09:10:02.133635', 'getallproducts', '', '2020-05-22 12:10:13'),
(1227, '2020-05-22 09:10:02.170751', 'getallproducts', '', '2020-05-22 12:10:13'),
(1228, '2020-05-22 09:10:02.520076', 'getallproducts', '', '2020-05-22 12:10:14'),
(1229, '2020-05-22 09:10:04.807327', 'getallproducts', '', '2020-05-22 12:10:16'),
(1230, '2020-05-22 09:10:04.853213', 'getallproducts', '', '2020-05-22 12:10:16'),
(1231, '2020-05-22 09:10:05.164690', 'getallproducts', '', '2020-05-22 12:10:16'),
(1232, '2020-05-22 09:11:09.293292', 'homePage', '', '2020-05-22 12:11:22'),
(1233, '2020-05-22 09:11:14.694980', 'getallproducts', '', '2020-05-22 12:11:26'),
(1234, '2020-05-22 09:11:19.940756', 'getallproducts', '', '2020-05-22 12:11:32'),
(1235, '2020-05-22 09:11:24.132787', 'getallproducts', '', '2020-05-22 12:11:35'),
(1236, '2020-05-22 09:11:34.802360', 'getallproducts', '', '2020-05-22 12:11:46'),
(1237, '2020-05-22 09:11:37.866932', 'getallproducts', '', '2020-05-22 12:11:49'),
(1238, '2020-05-22 09:12:13.498605', 'getallproducts', '', '2020-05-22 12:12:25'),
(1239, '2020-05-22 09:12:16.259620', 'getallproducts', '', '2020-05-22 12:12:27'),
(1240, '2020-05-22 09:12:20.782103', 'getallproducts', '', '2020-05-22 12:12:32'),
(1241, '2020-05-22 09:13:42.225405', 'homePage', '', '2020-05-22 12:13:55'),
(1242, '2020-05-22 09:13:46.832149', 'getallproducts', '', '2020-05-22 12:13:58'),
(1243, '2020-05-22 09:14:25.156180', 'homePage', '', '2020-05-22 12:14:38'),
(1244, '2020-05-22 09:14:33.799977', 'getallproducts', '', '2020-05-22 12:14:45'),
(1245, '2020-05-22 09:14:36.598754', 'getallproducts', '', '2020-05-22 12:14:47'),
(1246, '2020-05-22 16:06:42.008435', 'homePage', '', '2020-05-22 07:06:54'),
(1247, '2020-05-22 16:06:51.994797', 'getallproducts', '', '2020-05-22 07:07:03'),
(1248, '2020-05-22 16:07:06.113873', 'getallproducts', '', '2020-05-22 07:07:17'),
(1249, '2020-05-22 16:07:19.536808', 'getallproducts', '', '2020-05-22 07:07:30'),
(1250, '2020-05-22 16:07:50.606618', 'getallproducts', '', '2020-05-22 07:08:01'),
(1251, '2020-05-22 16:10:04.725984', 'getallproducts', '', '2020-05-22 07:10:15'),
(1252, '2020-05-22 16:10:06.432012', 'getallproducts', '', '2020-05-22 07:10:17'),
(1253, '2020-05-22 16:10:25.596248', 'getallproducts', '', '2020-05-22 07:10:36'),
(1254, '2020-05-22 16:10:46.633631', 'homePage', '', '2020-05-22 07:10:59'),
(1255, '2020-05-22 16:10:51.389184', 'getallproducts', '', '2020-05-22 07:11:02'),
(1256, '2020-05-22 16:10:55.122861', 'getallproducts', '', '2020-05-22 07:11:05'),
(1257, '2020-05-22 16:11:02.759606', 'getallproducts', '', '2020-05-22 07:11:13'),
(1258, '2020-05-22 16:11:04.616546', 'getallproducts', '', '2020-05-22 07:11:15'),
(1259, '2020-05-22 16:11:09.362163', 'getallproducts', '', '2020-05-22 07:11:20'),
(1260, '2020-05-22 16:12:19.444620', 'homePage', '', '2020-05-22 07:12:32'),
(1261, '2020-05-22 16:12:25.703643', 'getallproducts', '', '2020-05-22 07:12:37'),
(1262, '2020-05-22 16:12:34.951957', 'getallproducts', '', '2020-05-22 07:12:46'),
(1263, '2020-05-22 16:12:38.674136', 'getallproducts', '', '2020-05-22 07:12:49'),
(1264, '2020-05-22 16:12:44.889393', 'getallproducts', '', '2020-05-22 07:12:55'),
(1265, '2020-05-22 16:12:49.100398', 'getallproducts', '', '2020-05-22 07:13:00'),
(1266, '2020-05-22 16:15:20.883121', 'getallproducts', '', '2020-05-22 07:15:32'),
(1267, '2020-05-22 16:15:31.433037', 'getallproducts', '', '2020-05-22 07:15:42'),
(1268, '2020-05-22 16:15:34.300996', 'getallproducts', '', '2020-05-22 07:15:45');
INSERT INTO `api_calls_list` (`id`, `nonce`, `url`, `device_id`, `created_at`) VALUES
(1269, '2020-05-22 16:15:38.989401', 'getallproducts', '', '2020-05-22 07:15:50'),
(1270, '2020-05-22 16:27:39.836286', 'getallproducts', '', '2020-05-22 07:27:50'),
(1271, '2020-05-22 16:29:48.246216', 'homePage', '', '2020-05-22 07:30:00'),
(1272, '2020-05-22 16:29:53.957882', 'getallproducts', '', '2020-05-22 07:30:05'),
(1273, '2020-05-22 16:29:59.188409', 'getallproducts', '', '2020-05-22 07:30:10'),
(1274, '2020-05-22 16:30:03.132954', 'getallproducts', '', '2020-05-22 07:30:13'),
(1275, '2020-05-22 16:30:07.562224', 'getallproducts', '', '2020-05-22 07:30:18'),
(1276, '2020-05-22 16:30:11.445160', 'getallproducts', '', '2020-05-22 07:30:22'),
(1277, '2020-05-22 16:34:04.381400', 'getallproducts', '', '2020-05-22 07:34:15'),
(1278, '2020-05-22 16:34:10.714367', 'getallproducts', '', '2020-05-22 07:34:21'),
(1279, '2020-05-22 16:34:17.102426', 'getallproducts', '', '2020-05-22 07:34:28'),
(1280, '2020-05-22 16:34:20.430136', 'getallproducts', '', '2020-05-22 07:34:31'),
(1281, '2020-05-22 16:34:21.605284', 'getallproducts', '', '2020-05-22 07:34:32'),
(1282, '2020-05-22 16:34:37.520611', 'getallproducts', '', '2020-05-22 07:34:49'),
(1283, '2020-05-22 16:34:41.356345', 'getallproducts', '', '2020-05-22 07:34:52'),
(1284, '2020-05-22 16:34:44.122783', 'getallproducts', '', '2020-05-22 07:34:54'),
(1285, '2020-05-22 16:34:44.297718', 'getallproducts', '', '2020-05-22 07:34:55'),
(1286, '2020-05-22 16:34:44.446736', 'getallproducts', '', '2020-05-22 07:34:55'),
(1287, '2020-05-22 16:34:47.734671', 'getallproducts', '', '2020-05-22 07:34:58'),
(1288, '2020-05-22 16:34:47.892159', 'getallproducts', '', '2020-05-22 07:34:58'),
(1289, '2020-05-22 16:34:48.043523', 'getallproducts', '', '2020-05-22 07:34:59'),
(1290, '2020-05-22 16:37:26.299251', 'homePage', '', '2020-05-22 07:37:38'),
(1291, '2020-05-22 16:37:30.022402', 'homePage', '', '2020-05-22 07:37:40'),
(1292, '2020-05-22 16:37:44.949969', 'homePage', '', '2020-05-22 07:37:57'),
(1293, '2020-05-22 16:37:48.667250', 'homePage', '', '2020-05-22 07:37:59'),
(1294, '2020-05-22 16:38:11.159976', 'homePage', '', '2020-05-22 07:38:24'),
(1295, '2020-05-22 16:38:19.172366', 'homePage', '', '2020-05-22 07:38:30'),
(1296, '2020-05-22 16:38:22.031746', 'getallproducts', '', '2020-05-22 07:38:32'),
(1297, '2020-05-22 16:38:26.760055', 'getallproducts', '', '2020-05-22 07:38:37'),
(1298, '2020-05-22 16:38:27.016032', 'getallproducts', '', '2020-05-22 07:38:38'),
(1299, '2020-05-22 16:38:27.167342', 'getallproducts', '', '2020-05-22 07:38:38'),
(1300, '2020-05-22 16:38:29.689788', 'getallproducts', '', '2020-05-22 07:38:40'),
(1301, '2020-05-22 16:38:40.901741', 'getallproducts', '', '2020-05-22 07:38:52'),
(1302, '2020-05-22 16:38:44.428216', 'getallproducts', '', '2020-05-22 07:38:55'),
(1303, '2020-05-22 16:38:44.894790', 'getallproducts', '', '2020-05-22 07:38:55'),
(1304, '2020-05-22 16:38:44.722688', 'getallproducts', '', '2020-05-22 07:38:55'),
(1305, '2020-05-22 16:39:14.049656', 'getallproducts', '', '2020-05-22 07:39:25'),
(1306, '2020-05-22 16:41:06.018621', 'getallproducts', '', '2020-05-22 07:41:17'),
(1307, '2020-05-22 16:41:15.232664', 'getallproducts', '', '2020-05-22 07:41:26'),
(1308, '2020-05-22 16:41:16.701711', 'getallproducts', '', '2020-05-22 07:41:27'),
(1309, '2020-05-22 16:41:43.567948', 'getallproducts', '', '2020-05-22 07:41:54'),
(1310, '2020-05-22 16:41:47.125601', 'getallproducts', '', '2020-05-22 07:41:57'),
(1311, '2020-05-22 16:41:50.432789', 'getallproducts', '', '2020-05-22 07:42:01'),
(1312, '2020-05-22 16:41:52.609001', 'getallproducts', '', '2020-05-22 07:42:03'),
(1313, '2020-05-22 16:41:54.946367', 'getallproducts', '', '2020-05-22 07:42:05'),
(1314, '2020-05-22 16:42:00.960550', 'getallproducts', '', '2020-05-22 07:42:12'),
(1315, '2020-05-22 16:42:01.303593', 'getallproducts', '', '2020-05-22 07:42:12'),
(1316, '2020-05-22 16:42:07.410418', 'getallproducts', '', '2020-05-22 07:42:18'),
(1317, '2020-05-22 16:44:14.407992', 'getallproducts', '', '2020-05-22 07:44:26'),
(1318, '2020-05-22 16:44:18.623885', 'getallproducts', '', '2020-05-22 07:44:29'),
(1319, '2020-05-22 16:51:43.726184', 'getallproducts', '', '2020-05-22 07:51:54'),
(1320, '2020-05-22 16:51:46.558789', 'getallproducts', '', '2020-05-22 07:51:57'),
(1321, '2020-05-22 16:51:50.543012', 'getallproducts', '', '2020-05-22 07:52:01'),
(1322, '2020-05-22 16:51:54.407313', 'getallproducts', '', '2020-05-22 07:52:05'),
(1323, '2020-05-22 16:51:56.721001', 'getallproducts', '', '2020-05-22 07:52:07'),
(1324, '2020-05-22 16:51:59.277242', 'getallproducts', '', '2020-05-22 07:52:10'),
(1325, '2020-05-22 16:51:59.508140', 'getallproducts', '', '2020-05-22 07:52:10'),
(1326, '2020-05-22 16:51:59.891724', 'getallproducts', '', '2020-05-22 07:52:10'),
(1327, '2020-05-22 16:52:36.430689', 'getallproducts', '', '2020-05-22 07:52:47'),
(1328, '2020-05-22 16:52:39.767166', 'getallproducts', '', '2020-05-22 07:52:50'),
(1329, '2020-05-22 16:52:53.144952', 'getallproducts', '', '2020-05-22 07:53:04'),
(1330, '2020-05-22 16:53:12.388596', 'getallproducts', '', '2020-05-22 07:53:23'),
(1331, '2020-05-22 16:53:18.352117', 'getallproducts', '', '2020-05-22 07:53:29'),
(1332, '2020-05-22 16:53:20.855867', 'getallproducts', '', '2020-05-22 07:53:31'),
(1333, '2020-05-22 16:53:46.500416', 'getallproducts', '', '2020-05-22 07:53:57'),
(1334, '2020-05-22 16:53:49.041363', 'getallproducts', '', '2020-05-22 07:53:59'),
(1335, '2020-05-22 16:53:58.655914', 'getallproducts', '', '2020-05-22 07:54:09'),
(1336, '2020-05-22 16:54:07.940244', 'getallproducts', '', '2020-05-22 07:54:18'),
(1337, '2020-05-22 16:54:11.591944', 'getallproducts', '', '2020-05-22 07:54:22'),
(1338, '2020-05-22 17:00:17.416585', 'getallproducts', '', '2020-05-22 08:00:28'),
(1339, '2020-05-22 17:01:03.580249', 'homePage', '', '2020-05-22 08:01:15'),
(1340, '2020-05-22 17:01:33.667235', 'getallproducts', '', '2020-05-22 08:01:44'),
(1341, '2020-05-22 17:01:39.701008', 'getallproducts', '', '2020-05-22 08:01:50'),
(1342, '2020-05-22 17:04:48.211912', 'getallproducts', '', '2020-05-22 08:04:59'),
(1343, '2020-05-22 17:04:52.277315', 'getallproducts', '', '2020-05-22 08:05:03'),
(1344, '2020-05-22 17:04:59.860522', 'getallproducts', '', '2020-05-22 08:05:10'),
(1345, '2020-05-22 17:05:48.074480', 'getallproducts', '', '2020-05-22 08:05:59'),
(1346, '2020-05-22 17:05:51.628413', 'getallproducts', '', '2020-05-22 08:06:02'),
(1347, '2020-05-22 17:05:55.688132', 'getallproducts', '', '2020-05-22 08:06:06'),
(1348, '2020-05-22 17:09:10.326561', 'getallproducts', '', '2020-05-22 08:09:21'),
(1349, '2020-05-22 17:09:15.181183', 'getallproducts', '', '2020-05-22 08:09:26'),
(1350, '2020-05-22 17:09:33.658356', 'getallproducts', '', '2020-05-22 08:09:44'),
(1351, '2020-05-22 17:09:33.656984', 'getallproducts', '', '2020-05-22 08:09:45'),
(1352, '2020-05-22 17:09:33.657761', 'getallproducts', '', '2020-05-22 08:09:45'),
(1353, '2020-05-22 17:09:48.290213', 'homePage', '', '2020-05-22 08:10:00'),
(1354, '2020-05-22 17:11:01.645067', 'homePage', '', '2020-05-22 08:11:14'),
(1355, '2020-05-22 17:11:27.914297', 'getallproducts', '', '2020-05-22 08:11:39'),
(1356, '2020-05-22 17:11:30.831554', 'getallproducts', '', '2020-05-22 08:11:41'),
(1357, '2020-05-22 17:11:35.403669', 'getallproducts', '', '2020-05-22 08:11:48'),
(1358, '2020-05-22 17:11:53.562928', 'getallproducts', '', '2020-05-22 08:12:21'),
(1359, '2020-05-22 17:12:05.224753', 'getallproducts', '', '2020-05-22 08:12:22'),
(1360, '2020-05-22 17:12:30.195762', 'getallproducts', '', '2020-05-22 08:12:41'),
(1361, '2020-05-22 17:12:38.918289', 'getallproducts', '', '2020-05-22 08:12:49'),
(1362, '2020-05-22 17:15:03.834702', 'getallproducts', '', '2020-05-22 08:15:15'),
(1363, '2020-05-22 17:15:20.740613', 'getallproducts', '', '2020-05-22 08:15:31'),
(1364, '2020-05-22 17:15:29.350505', 'getallproducts', '', '2020-05-22 08:15:40'),
(1365, '2020-05-22 17:15:33.714180', 'getallproducts', '', '2020-05-22 08:15:44'),
(1366, '2020-05-22 17:15:51.108365', 'getallproducts', '', '2020-05-22 08:16:02'),
(1367, '2020-05-22 17:15:55.121135', 'getallproducts', '', '2020-05-22 08:16:05'),
(1368, '2020-05-22 17:15:58.367787', 'getallproducts', '', '2020-05-22 08:16:09'),
(1369, '2020-05-22 17:16:00.010498', 'getallproducts', '', '2020-05-22 08:16:10'),
(1370, '2020-05-22 17:16:03.129546', 'getallproducts', '', '2020-05-22 08:16:13'),
(1371, '2020-05-22 17:16:03.794262', 'getallproducts', '', '2020-05-22 08:16:14'),
(1372, '2020-05-22 17:16:04.665614', 'getallproducts', '', '2020-05-22 08:16:15'),
(1373, '2020-05-22 17:16:07.504418', 'getallproducts', '', '2020-05-22 08:16:18'),
(1374, '2020-05-22 17:17:02.200676', 'getallproducts', '', '2020-05-22 08:17:13'),
(1375, '2020-05-22 17:17:05.864485', 'getallproducts', '', '2020-05-22 08:17:16'),
(1376, '2020-05-22 17:17:08.630761', 'getallproducts', '', '2020-05-22 08:17:19'),
(1377, '2020-05-22 17:17:09.376353', 'getallproducts', '', '2020-05-22 08:17:20'),
(1378, '2020-05-22 17:17:10.362620', 'getallproducts', '', '2020-05-22 08:17:21'),
(1379, '2020-05-22 17:19:00.906476', 'getallproducts', '', '2020-05-22 08:19:12'),
(1380, '2020-05-22 17:19:04.410868', 'getallproducts', '', '2020-05-22 08:19:15'),
(1381, '2020-05-22 17:19:07.127159', 'getallproducts', '', '2020-05-22 08:19:17'),
(1382, '2020-05-22 17:19:10.563407', 'getallproducts', '', '2020-05-22 08:19:21'),
(1383, '2020-05-22 17:19:12.253845', 'getallproducts', '', '2020-05-22 08:19:22'),
(1384, '2020-05-22 17:19:53.117827', 'getallproducts', '', '2020-05-22 08:20:04'),
(1385, '2020-05-22 17:22:57.642363', 'likeproduct', '', '2020-05-22 08:23:08'),
(1386, '2020-05-22 17:23:02.091648', 'unlikeproduct', '', '2020-05-22 08:23:12'),
(1387, '2020-05-22 17:23:08.568798', 'getallproducts', '', '2020-05-22 08:23:19'),
(1388, '2020-05-22 17:23:14.027944', 'getallproducts', '', '2020-05-22 08:23:24'),
(1389, '2020-05-22 17:23:17.499325', 'getallproducts', '', '2020-05-22 08:23:28'),
(1390, '2020-05-22 17:23:20.613753', 'getallproducts', '', '2020-05-22 08:23:31'),
(1391, '2020-05-22 17:23:28.370560', 'getallproducts', '', '2020-05-22 08:23:39'),
(1392, '2020-05-22 17:23:33.986507', 'getallproducts', '', '2020-05-22 08:23:45'),
(1393, '2020-05-22 17:23:37.973832', 'getallproducts', '', '2020-05-22 08:23:48'),
(1394, '2020-05-22 17:31:55.817772', 'homePage', '', '2020-05-22 08:32:13'),
(1395, '2020-05-22 17:31:59.313662', 'homePage', '', '2020-05-22 08:32:13'),
(1396, '2020-05-22 17:39:30.252102', 'homePage', '', '2020-05-22 08:39:42'),
(1397, '2020-05-22 17:39:40.979802', 'getallproducts', '', '2020-05-22 08:39:53'),
(1398, '2020-05-22 17:39:49.905783', 'getallproducts', '', '2020-05-22 08:40:01'),
(1399, '2020-05-22 17:39:52.796457', 'getallproducts', '', '2020-05-22 08:40:03'),
(1400, '2020-05-22 17:39:56.418717', 'getallproducts', '', '2020-05-22 08:40:07'),
(1401, '2020-05-22 17:40:04.970270', 'getallproducts', '', '2020-05-22 08:40:16'),
(1402, '2020-05-22 17:40:12.387945', 'getallproducts', '', '2020-05-22 08:40:23'),
(1403, '2020-05-22 17:40:37.450168', 'getallproducts', '', '2020-05-22 08:40:48'),
(1404, '2020-05-22 17:41:13.281160', 'getallproducts', '', '2020-05-22 08:41:24'),
(1405, '2020-05-22 17:41:45.700349', 'getallproducts', '', '2020-05-22 08:41:56'),
(1406, '2020-05-22 17:43:08.874158', 'getallproducts', '', '2020-05-22 08:43:20'),
(1407, '2020-05-22 17:43:12.014645', 'getallproducts', '', '2020-05-22 08:43:22'),
(1408, '2020-05-22 17:43:18.627737', 'getallproducts', '', '2020-05-22 08:43:29'),
(1409, '2020-05-22 17:46:39.918651', 'getallproducts', '', '2020-05-22 08:46:50'),
(1410, '2020-05-22 17:46:47.054490', 'getallproducts', '', '2020-05-22 08:46:57'),
(1411, '2020-05-22 17:46:50.197438', 'getallproducts', '', '2020-05-22 08:47:00'),
(1412, '2020-05-22 17:46:56.307310', 'getallproducts', '', '2020-05-22 08:47:15'),
(1413, '2020-05-22 17:47:00.104067', 'getallproducts', '', '2020-05-22 08:47:15'),
(1414, '2020-05-22 17:47:01.368702', 'getallproducts', '', '2020-05-22 08:47:15'),
(1415, '2020-05-22 17:47:33.190475', 'getallproducts', '', '2020-05-22 08:47:44'),
(1416, '2020-05-22 17:47:40.907253', 'getallproducts', '', '2020-05-22 08:47:51'),
(1417, '2020-05-22 17:48:03.662905', 'getallproducts', '', '2020-05-22 08:48:14'),
(1418, '2020-05-22 17:48:26.274430', 'getallproducts', '', '2020-05-22 08:48:37'),
(1419, '2020-05-22 17:48:30.946', 'getallproducts', '', '2020-05-22 08:48:41'),
(1420, '2020-05-22 17:48:35.347121', 'getallproducts', '', '2020-05-22 08:48:46'),
(1421, '2020-05-22 17:48:51.208891', 'getallproducts', '', '2020-05-22 08:49:02'),
(1422, '2020-05-22 17:48:57.876779', 'getallproducts', '', '2020-05-22 08:49:09'),
(1423, '2020-05-22 17:50:52.522186', 'getallproducts', '', '2020-05-22 08:51:03'),
(1424, '2020-05-22 17:51:02.314608', 'getallproducts', '', '2020-05-22 08:51:13'),
(1425, '2020-05-22 17:51:04.811974', 'getallproducts', '', '2020-05-22 08:51:15'),
(1426, '2020-05-22 17:51:12.847879', 'getallproducts', '', '2020-05-22 08:51:24'),
(1427, '2020-05-22 17:53:43.836667', 'homePage', '', '2020-05-22 08:53:54'),
(1428, '2020-05-22 17:53:46.970348', 'getallproducts', '', '2020-05-22 08:53:57'),
(1429, '2020-05-22 17:54:27.275212', 'getallproducts', '', '2020-05-22 08:54:38'),
(1430, '2020-05-22 17:54:33.642592', 'getallproducts', '', '2020-05-22 08:54:44'),
(1431, '2020-05-22 18:07:15.964781', 'homePage', '', '2020-05-22 09:07:28'),
(1432, '2020-05-22 18:07:19.685394', 'homePage', '', '2020-05-22 09:07:30'),
(1433, '2020-05-22 18:08:00.647402', 'homePage', '', '2020-05-22 09:08:13'),
(1434, '2020-05-22 18:08:19.778932', 'getallproducts', '', '2020-05-22 09:08:31'),
(1435, '2020-05-22 18:10:07.397238', 'getfilters', '', '2020-05-22 09:10:18'),
(1436, '2020-05-22 18:10:50.793620', 'getfilters', '', '2020-05-22 09:11:02'),
(1437, '2020-05-22 18:11:13.963801', 'getfilters', '', '2020-05-22 09:11:31'),
(1438, '2020-05-22 18:11:39.708096', 'homePage', '', '2020-05-22 09:11:52'),
(1439, '2020-05-22 18:12:04.665444', 'getallproducts', '', '2020-05-22 09:12:17'),
(1440, '2020-05-22 18:12:11.337497', 'getfilters', '', '2020-05-22 09:12:22'),
(1441, '2020-05-22 18:12:16.191925', 'getfilters', '', '2020-05-22 09:12:27'),
(1442, '2020-05-22 18:13:35.111097', 'getfilters', '', '2020-05-22 09:13:46'),
(1443, '2020-05-22 18:13:39.965757', 'getfilters', '', '2020-05-22 09:13:50'),
(1444, '2020-05-22 18:18:18.062317', 'homePage', '', '2020-05-22 09:18:30'),
(1445, '2020-05-22 18:18:26.307528', 'getallproducts', '', '2020-05-22 09:18:37'),
(1446, '2020-05-22 18:18:30.357386', 'getfilters', '', '2020-05-22 09:18:41'),
(1447, '2020-05-22 18:18:35.184388', 'getfilters', '', '2020-05-22 09:18:46'),
(1448, '2020-05-22 18:19:43.066248', 'getfilters', '', '2020-05-22 09:19:54'),
(1449, '2020-05-22 18:19:47.898313', 'getfilters', '', '2020-05-22 09:19:58'),
(1450, '2020-05-22 18:20:02.265984', 'getfilters', '', '2020-05-22 09:20:13'),
(1451, '2020-05-22 18:21:50.822262', 'getfilters', '', '2020-05-22 09:22:02'),
(1452, '2020-05-22 18:22:32.370207', 'getfilters', '', '2020-05-22 09:22:43'),
(1453, '2020-05-22 18:47:44.256051', 'homePage', '', '2020-05-22 09:47:56'),
(1454, '2020-05-22 18:49:49.957089', 'homePage', '', '2020-05-22 09:50:02'),
(1455, '2020-05-22 18:50:14.328893', 'getallproducts', '', '2020-05-22 09:50:25'),
(1456, '2020-05-22 18:50:18.694110', 'getfilters', '', '2020-05-22 09:50:29'),
(1457, '2020-05-22 18:51:14.092418', 'homePage', '', '2020-05-22 09:51:26'),
(1458, '2020-05-22 18:51:47.037401', 'getallproducts', '', '2020-05-22 09:51:58'),
(1459, '2020-05-22 18:51:50.125021', 'getfilters', '', '2020-05-22 09:52:00'),
(1460, '2020-05-22 18:52:26.362618', 'getfilters', '', '2020-05-22 09:52:37'),
(1461, '2020-05-22 18:53:12.090715', 'getfilters', '', '2020-05-22 09:53:23'),
(1462, '2020-05-22 18:53:48.909141', 'getfilters', '', '2020-05-22 09:53:59'),
(1463, '2020-05-22 18:56:37.751341', 'getfilters', '', '2020-05-22 09:56:49'),
(1464, '2020-05-22 18:57:01.083123', 'getfilters', '', '2020-05-22 09:57:12'),
(1465, '2020-05-22 18:58:04.903818', 'getfilters', '', '2020-05-22 09:58:15'),
(1466, '2020-05-22 18:58:30.903031', 'getfilters', '', '2020-05-22 09:58:42'),
(1467, '2020-05-22 19:00:06.457728', 'getfilters', '', '2020-05-22 10:00:17'),
(1468, '2020-05-22 19:16:01.232533', 'getallproducts', '', '2020-05-22 10:16:12'),
(1469, '2020-05-22 19:16:03.071623', 'getfilters', '', '2020-05-22 10:16:13'),
(1470, '2020-05-22 19:16:29.319003', 'getfilters', '', '2020-05-22 10:16:40'),
(1471, '2020-05-22 19:17:26.806157', 'getfilters', '', '2020-05-22 10:17:38'),
(1472, '2020-05-22 19:19:12.177804', 'getfilters', '', '2020-05-22 10:19:23'),
(1473, '2020-05-22 19:20:07.293898', 'getfilters', '', '2020-05-22 10:20:18'),
(1474, '2020-05-22 19:20:12.105859', 'getfilters', '', '2020-05-22 10:20:23'),
(1475, '2020-05-22 19:20:18.070560', 'getfilters', '', '2020-05-22 10:20:29'),
(1476, '2020-05-22 19:20:22.962362', 'getfilters', '', '2020-05-22 10:20:33'),
(1477, '2020-05-22 19:20:47.160466', 'getfilters', '', '2020-05-22 10:20:58'),
(1478, '2020-05-22 19:20:52.001215', 'getfilters', '', '2020-05-22 10:21:02'),
(1479, '2020-05-22 19:21:16.252975', 'getfilters', '', '2020-05-22 10:21:27'),
(1480, '2020-05-22 19:21:21.099017', 'getfilters', '', '2020-05-22 10:21:32'),
(1481, '2020-05-22 19:21:46.780683', 'getfilters', '', '2020-05-22 10:21:57'),
(1482, '2020-05-22 19:21:51.610340', 'getfilters', '', '2020-05-22 10:22:02'),
(1483, '2020-05-22 19:22:05.353864', 'getfilters', '', '2020-05-22 10:22:16'),
(1484, '2020-05-22 19:23:52.819739', 'getfilters', '', '2020-05-22 10:24:03'),
(1485, '2020-05-22 19:35:00.220157', 'getfilters', '', '2020-05-22 10:35:11'),
(1486, '6380121376617627', 'productDetail', 'ABCDEF', '2020-05-23 13:44:43'),
(1487, '2020-05-23 10:48:07.369326', 'getfilters', '', '2020-05-23 13:48:19'),
(1488, '2020-05-23 10:52:30.450272', 'homePage', '', '2020-05-23 13:52:43'),
(1489, '2020-05-23 10:54:15.040514', 'getallproducts', '', '2020-05-23 13:54:26'),
(1490, '2020-05-23 10:54:17.869203', 'getfilters', '', '2020-05-23 13:54:29'),
(1491, '63801213766177323322', 'getfilterproducts', 'ABCDEF', '2020-05-23 13:58:10'),
(1492, '2020-05-23 10:12:25.749359', 'homePage', '', '2020-05-23 14:12:27'),
(1493, '2020-05-23 11:17:38.188306', 'homePage', '', '2020-05-23 14:17:50'),
(1494, '2020-05-23 11:21:49.165634', 'homePage', '', '2020-05-23 14:22:02'),
(1495, '6380121376617664', 'getfilters', 'ABCDEF', '2020-05-23 14:22:23'),
(1496, '2020-05-23 11:23:15.154688', 'getallproducts', '', '2020-05-23 14:23:27'),
(1497, '2020-05-23 11:23:18.313590', 'getfilters', '', '2020-05-23 14:23:29'),
(1498, '6380121376617665', 'getfilters', 'ABCDEF', '2020-05-23 14:26:29'),
(1499, '6380121376617666', 'getfilters', 'ABCDEF', '2020-05-23 14:27:22'),
(1500, '2020-05-23 11:28:15.289560', 'getfilters', '', '2020-05-23 14:28:26'),
(1501, '6380121376617667', 'getfilters', 'ABCDEF', '2020-05-23 14:30:14'),
(1502, '6380121376617668', 'getfilters', 'ABCDEF', '2020-05-23 14:31:11'),
(1503, '6380121376617669', 'getfilters', 'ABCDEF', '2020-05-23 14:32:01'),
(1504, '6380121376617670', 'getfilters', 'ABCDEF', '2020-05-23 14:32:30'),
(1505, '2020-05-23 11:32:19.930621', 'getfilters', '', '2020-05-23 14:32:31'),
(1506, '2020-05-23 11:32:24.753991', 'getfilters', '', '2020-05-23 14:32:36'),
(1507, '2020-05-23 11:32:36.901699', 'getfilters', '', '2020-05-23 14:32:48'),
(1508, '2020-05-23 11:32:41.693817', 'getfilters', '', '2020-05-23 14:32:53'),
(1509, '6380121376617671', 'getfilters', 'ABCDEF', '2020-05-23 14:32:58'),
(1510, '2020-05-23 11:32:59.423799', 'getfilters', '', '2020-05-23 14:33:11'),
(1511, '6380121376617672', 'getfilters', 'ABCDEF', '2020-05-23 14:33:14'),
(1512, '2020-05-23 11:33:03.636805', 'getfilters', '', '2020-05-23 14:33:14'),
(1513, '2020-05-23 11:33:18.459952', 'getfilters', '', '2020-05-23 14:33:30'),
(1514, '6380121376617673', 'getfilters', 'ABCDEF', '2020-05-23 14:34:10'),
(1515, '6380121376617674', 'getfilters', 'ABCDEF', '2020-05-23 14:34:51'),
(1516, '6380121376617675', 'getfilters', 'ABCDEF', '2020-05-23 14:36:21'),
(1517, '6380121376617676', 'getfilters', 'ABCDEF', '2020-05-23 14:39:35'),
(1518, '6380121376617677', 'getfilters', 'ABCDEF', '2020-05-23 14:41:55'),
(1519, '6380121376617655', 'getProductAttribute', 'ABCDEF', '2020-05-23 14:43:08'),
(1520, '6380121376617678', 'getfilters', 'ABCDEF', '2020-05-23 14:45:41'),
(1521, '6380121376617679', 'getfilters', 'ABCDEF', '2020-05-23 14:46:28'),
(1522, '6380121376617680', 'getfilters', 'ABCDEF', '2020-05-23 14:47:10'),
(1523, '6380121376617681', 'getfilters', 'ABCDEF', '2020-05-23 14:47:38'),
(1524, '6380121376617682', 'getfilters', 'ABCDEF', '2020-05-23 14:48:30'),
(1525, '6380121376617683', 'getfilters', 'ABCDEF', '2020-05-23 14:49:25'),
(1526, '6380121376617684', 'getfilters', 'ABCDEF', '2020-05-23 14:49:47'),
(1527, '6380121376617685', 'getfilters', 'ABCDEF', '2020-05-23 14:50:10'),
(1528, '6380121376617686', 'getfilters', 'ABCDEF', '2020-05-23 14:50:36'),
(1529, '6380121376617687', 'getfilters', 'ABCDEF', '2020-05-23 14:51:17'),
(1530, '6380121376617688', 'getfilters', 'ABCDEF', '2020-05-23 14:51:39'),
(1531, '6380121376617663323', 'getfilters', 'ABCDEF', '2020-05-23 14:54:34'),
(1532, '2020-05-23 11:57:35.911042', 'getfilters', '', '2020-05-23 14:57:53'),
(1533, '2020-05-23 11:57:40.751508', 'getfilters', '', '2020-05-23 14:57:53'),
(1534, '2020-05-23 12:06:15.067644', 'getfilters', '', '2020-05-23 15:06:26'),
(1535, '2020-05-23 12:06:35.870869', 'getfilters', '', '2020-05-23 15:06:48'),
(1536, '2020-05-23 12:06:45.769033', 'getfilters', '', '2020-05-23 15:06:57'),
(1537, '2020-05-23 12:07:54.999670', 'getfilters', '', '2020-05-23 15:08:06'),
(1538, '2020-05-23 12:10:24.609085', 'getfilters', '', '2020-05-23 15:10:36'),
(1539, '2020-05-23 12:12:09.889626', 'getfilters', '', '2020-05-23 15:12:21'),
(1540, '2020-05-23 12:13:50.332138', 'getallproducts', '', '2020-05-23 15:14:02'),
(1541, '2020-05-23 12:13:52.098076', 'getfilters', '', '2020-05-23 15:14:03'),
(1542, '2020-05-23 12:15:18.949681', 'getfilters', '', '2020-05-23 15:15:30'),
(1543, '2020-05-23 11:30:39.074994', 'homePage', '', '2020-05-23 15:30:40'),
(1544, '2020-05-23 11:30:49.259241', 'getallproducts', '', '2020-05-23 15:30:49'),
(1545, '2020-05-23 11:30:55.112123', 'getallproducts', '', '2020-05-23 15:30:55'),
(1546, '2020-05-23 11:30:57.634500', 'getallproducts', '', '2020-05-23 15:30:58'),
(1547, '2020-05-23 11:34:43.780011', 'homePage', '', '2020-05-23 15:34:45'),
(1548, '2020-05-23 11:34:51.508344', 'getallproducts', '', '2020-05-23 15:34:52'),
(1549, '2020-05-23 11:34:53.726673', 'getfilters', '', '2020-05-23 15:34:54'),
(1550, '2020-05-23 11:35:44.141365', 'getfilters', '', '2020-05-23 15:35:44'),
(1551, '2020-05-23 11:36:56.308061', 'getfilters', '', '2020-05-23 15:36:57'),
(1552, '2020-05-23 11:39:01.264462', 'getfilters', '', '2020-05-23 15:39:02'),
(1553, '2020-05-23 12:35:55.668282', 'homePage', '', '2020-05-23 16:35:57'),
(1554, '2020-05-23 12:39:03.800290', 'getallproducts', '', '2020-05-23 16:39:04'),
(1555, '2020-05-23 12:39:05.155183', 'getfilters', '', '2020-05-23 16:39:05'),
(1556, '2020-05-23 12:48:54.895932', 'getfilters', '', '2020-05-23 16:48:57'),
(1557, '2020-05-23 12:55:23.565573', 'getfilters', '', '2020-05-23 16:55:24'),
(1558, '2020-05-23 12:55:36.367743', 'homePage', '', '2020-05-23 16:55:37'),
(1559, '2020-05-23 12:55:50.357178', 'getallproducts', '', '2020-05-23 16:55:52'),
(1560, '2020-05-23 12:55:52.965038', 'getfilters', '', '2020-05-23 16:55:53'),
(1561, '2020-05-23 13:42:33.957747', 'getfilters', '', '2020-05-23 17:42:34'),
(1562, '2020-05-23 13:42:38.910554', 'getfilters', '', '2020-05-23 17:42:39'),
(1563, '2020-05-23 13:51:20.220124', 'getfilters', '', '2020-05-23 17:51:20'),
(1564, '2020-05-23 13:52:32.412330', 'getfilters', '', '2020-05-23 17:52:33'),
(1565, '2020-05-23 13:53:15.675553', 'getfilters', '', '2020-05-23 17:53:16'),
(1566, '2020-05-23 13:53:35.822796', 'getallproducts', '', '2020-05-23 17:53:36'),
(1567, '2020-05-23 13:53:36.876284', 'getfilters', '', '2020-05-23 17:53:37'),
(1568, '2020-05-23 14:03:29.460884', 'getfilters', '', '2020-05-23 18:03:30'),
(1569, '2020-05-23 14:05:22.457148', 'getfilters', '', '2020-05-23 18:05:23'),
(1570, '2020-05-23 14:12:12.504113', 'getfilters', '', '2020-05-23 18:12:13'),
(1571, '2020-05-23 14:12:19.550097', 'getfilters', '', '2020-05-23 18:12:22'),
(1572, '2020-05-23 14:13:10.823640', 'getfilters', '', '2020-05-23 18:13:11'),
(1573, '2020-05-23 14:13:16.237697', 'getfilters', '', '2020-05-23 18:13:17'),
(1574, '2020-05-23 14:17:08.285991', 'getfilters', '', '2020-05-23 18:17:09'),
(1575, '2020-05-23 14:19:58.141430', 'homePage', '', '2020-05-23 18:19:59'),
(1576, '2020-05-23 14:20:02.879139', 'getallproducts', '', '2020-05-23 18:20:03'),
(1577, '2020-05-23 14:20:07.357370', 'getfilters', '', '2020-05-23 18:20:07'),
(1578, '2020-05-23 14:20:22.931743', 'getfilters', '', '2020-05-23 18:20:23'),
(1579, '2020-05-23 14:23:39.783260', 'getfilters', '', '2020-05-23 18:23:40'),
(1580, '2020-05-23 14:23:46.068272', 'getfilters', '', '2020-05-23 18:23:46'),
(1581, '2020-05-23 14:23:56.210980', 'homePage', '', '2020-05-23 18:23:57'),
(1582, '2020-05-23 14:24:00.667848', 'homePage', '', '2020-05-23 18:24:01'),
(1583, '2020-05-23 14:24:14.695776', 'homePage', '', '2020-05-23 18:24:17'),
(1584, '2020-05-23 14:24:20.446199', 'getallproducts', '', '2020-05-23 18:24:21'),
(1585, '2020-05-23 14:24:22.218199', 'getfilters', '', '2020-05-23 18:24:22'),
(1586, '2020-05-23 14:52:29.858358', 'getfilters', '', '2020-05-23 18:52:30'),
(1587, '2020-05-23 14:52:42.706663', 'getfilters', '', '2020-05-23 18:52:43'),
(1588, '2020-05-23 14:53:23.533317', 'getfilters', '', '2020-05-23 18:53:24'),
(1589, '2020-05-23 14:53:33.300728', 'getfilters', '', '2020-05-23 18:53:34'),
(1590, '2020-05-23 15:23:41.258192', 'getfilters', '', '2020-05-23 07:23:44'),
(1591, '2020-05-23 15:31:03.933347', 'getfilters', '', '2020-05-23 07:31:04'),
(1592, '2020-05-23 15:31:37.912117', 'getfilters', '', '2020-05-23 07:31:38'),
(1593, '2020-05-23 15:32:13.919870', 'getfilters', '', '2020-05-23 07:32:15'),
(1594, '2020-05-23 15:41:47.252485', 'getfilters', '', '2020-05-23 07:41:48'),
(1595, '2020-05-23 15:41:52.206195', 'getfilters', '', '2020-05-23 07:41:53'),
(1596, '2020-05-23 15:41:57.457292', 'getfilters', '', '2020-05-23 07:41:58'),
(1597, '2020-05-23 15:42:02.423061', 'getfilters', '', '2020-05-23 07:42:04'),
(1598, '2020-05-23 15:50:04.672260', 'getfilters', '', '2020-05-23 07:50:05'),
(1599, '2020-05-23 15:50:09.646833', 'getfilters', '', '2020-05-23 07:50:10'),
(1600, '2020-05-23 15:52:29.926928', 'getfilters', '', '2020-05-23 07:52:30'),
(1601, '2020-05-23 15:52:34.897841', 'getfilters', '', '2020-05-23 07:52:35'),
(1602, '2020-05-23 15:56:54.248960', 'getallproducts', '', '2020-05-23 07:56:55'),
(1603, '2020-05-23 16:07:13.874492', 'getfilters', '', '2020-05-23 08:07:14'),
(1604, '2020-05-23 16:07:18.782753', 'getfilters', '', '2020-05-23 08:07:19'),
(1605, '2020-05-23 16:08:27.570372', 'getfilters', '', '2020-05-23 08:08:28'),
(1606, '2020-05-23 16:08:32.446774', 'getfilters', '', '2020-05-23 08:08:33'),
(1607, '2020-05-23 16:10:43.936896', 'getfilters', '', '2020-05-23 08:10:44'),
(1608, '2020-05-23 16:10:48.898639', 'getfilters', '', '2020-05-23 08:10:49'),
(1609, '2020-05-23 16:11:57.099354', 'getfilters', '', '2020-05-23 08:11:57'),
(1610, '2020-05-23 16:12:02.049132', 'getfilters', '', '2020-05-23 08:12:02'),
(1611, '2020-05-23 16:13:02.384369', 'getfilters', '', '2020-05-23 08:13:03'),
(1612, '2020-05-23 16:13:07.349681', 'getfilters', '', '2020-05-23 08:13:08'),
(1613, '2020-05-23 16:13:24.126417', 'getfilters', '', '2020-05-23 08:13:24'),
(1614, '2020-05-23 16:13:29.067179', 'getfilters', '', '2020-05-23 08:13:29'),
(1615, '2020-05-23 16:14:10.532752', 'getfilters', '', '2020-05-23 08:14:11'),
(1616, '2020-05-23 16:14:24.620352', 'getfilters', '', '2020-05-23 08:14:25'),
(1617, '2020-05-23 16:14:29.568671', 'getfilters', '', '2020-05-23 08:14:30'),
(1618, '2020-05-23 16:14:52.870548', 'getfilters', '', '2020-05-23 08:14:53'),
(1619, '2020-05-23 16:15:32.073471', 'homePage', '', '2020-05-23 08:15:47'),
(1620, '6380121376617663323333', 'getfilters', 'ABCDEF', '2020-05-23 08:15:51'),
(1621, '2020-05-23 16:17:24.103637', 'getallproducts', '', '2020-05-23 08:17:24'),
(1622, '2020-05-23 16:17:31.854722', 'getfilters', '', '2020-05-23 08:17:32'),
(1623, '2020-05-23 16:18:13.096763', 'getfilters', '', '2020-05-23 08:18:13'),
(1624, '2020-05-23 16:19:30.797920', 'getfilters', '', '2020-05-23 08:19:31'),
(1625, '2020-05-23 16:20:19.666010', 'getfilters', '', '2020-05-23 08:20:21'),
(1626, '2020-05-23 16:20:24.630324', 'getfilters', '', '2020-05-23 08:20:25'),
(1627, '2020-05-23 16:20:50.771682', 'getfilters', '', '2020-05-23 08:20:51'),
(1628, '2020-05-23 16:21:10.397315', 'getfilters', '', '2020-05-23 08:21:11'),
(1629, '2020-05-23 16:22:23.235166', 'getfilters', '', '2020-05-23 08:22:24'),
(1630, '2020-05-23 16:22:33.490307', 'getallproducts', '', '2020-05-23 08:22:34'),
(1631, '2020-05-23 16:22:52.797225', 'getfilters', '', '2020-05-23 08:22:53'),
(1632, '638012137661773233223', 'getfilterproducts', 'ABCDEF', '2020-05-23 08:25:34'),
(1633, '2020-05-23 16:31:31.343843', 'getfilters', '', '2020-05-23 08:31:32'),
(1634, '2020-05-23 16:31:43.243830', 'getfilters', '', '2020-05-23 08:31:43'),
(1635, '6380121376617732', 'getfilterproducts', 'ABCDEF', '2020-05-23 08:36:16'),
(1636, '2020-05-23 16:53:50.869663', 'getfilters', '', '2020-05-23 08:53:51'),
(1637, '2020-05-23 16:53:55.794738', 'getfilters', '', '2020-05-23 08:53:56'),
(1638, '2020-05-23 17:04:27.176261', 'homePage', '', '2020-05-23 09:04:27'),
(1639, '2020-05-23 17:09:50.877208', 'homePage', '', '2020-05-23 09:09:52'),
(1640, '2020-05-23 17:09:55.384233', 'homePage', '', '2020-05-23 09:09:56'),
(1641, '2020-05-23 17:09:57.459483', 'homePage', '', '2020-05-23 09:09:58'),
(1642, '2020-05-23 17:10:00.119539', 'homePage', '', '2020-05-23 09:10:00'),
(1643, '2020-05-23 17:10:11.913470', 'homePage', '', '2020-05-23 09:10:14'),
(1644, '2020-05-23 17:10:16.488318', 'homePage', '', '2020-05-23 09:10:17'),
(1645, '2020-05-23 17:29:51.654734', 'homePage', '', '2020-05-23 09:29:52'),
(1646, '2020-05-23 17:29:52.430011', 'homePage', '', '2020-05-23 09:29:53'),
(1647, '2020-05-23 17:29:58.320397', 'homePage', '', '2020-05-23 09:29:59'),
(1648, '2020-05-23 17:30:16.058094', 'getallproducts', '', '2020-05-23 09:30:17'),
(1649, '2020-05-23 17:32:12.748189', 'likeproduct', '', '2020-05-23 09:32:13'),
(1650, '2020-05-23 17:32:17.623114', 'getallproducts', '', '2020-05-23 09:32:18'),
(1651, '2020-05-23 17:32:20.915637', 'likeproduct', '', '2020-05-23 09:32:21'),
(1652, '2020-05-23 17:32:24.834196', 'getallproducts', '', '2020-05-23 09:32:25'),
(1653, '2020-05-23 17:32:37.870555', 'unlikeproduct', '', '2020-05-23 09:32:38'),
(1654, '2020-05-23 17:32:46.564447', 'getallproducts', '', '2020-05-23 09:32:47'),
(1655, '6380121376617665', 'alertMe', 'ABCDEF', '2020-05-23 09:33:45'),
(1656, '2020-05-23 17:33:59.078949', 'homePage', '', '2020-05-23 09:33:59'),
(1657, '2020-05-23 17:34:02.309621', 'getallproducts', '', '2020-05-23 09:34:02'),
(1658, '638012137661763553334', 'myAlert', 'ABCDEF', '2020-05-23 09:34:14'),
(1659, '6380121376617666', 'myAlert', 'ABCDEF', '2020-05-23 09:34:39'),
(1660, '63801213766176553', 'deleteAlert', 'ABCDEF', '2020-05-23 09:35:15'),
(1661, '6380121376617635533342', 'myAlert', 'ABCDEF', '2020-05-23 09:35:21'),
(1662, '638012137661765534421', 'alertMe', 'ABCDEF', '2020-05-23 09:35:32'),
(1663, '6380121376617689', 'getfilters', 'ABCDEF', '2020-05-23 09:42:44'),
(1664, '6380121376617690', 'getfilters', 'ABCDEF', '2020-05-23 09:43:06'),
(1665, '6380121376617691', 'getfilters', 'ABCDEF', '2020-05-23 09:43:30'),
(1666, '2020-05-23 17:49:35.785762', 'getfilters', '', '2020-05-23 09:49:37'),
(1667, '6380121376617692', 'getfilters', 'ABCDEF', '2020-05-23 09:49:52'),
(1668, '2020-05-23 17:58:11.681287', 'getfilters', '', '2020-05-23 09:58:12'),
(1669, '2020-05-23 17:58:12.746671', 'getfilters', '', '2020-05-23 09:58:13'),
(1670, '2020-05-23 17:58:13.399126', 'getfilters', '', '2020-05-23 09:58:13'),
(1671, '2020-05-23 17:58:14.113861', 'getfilters', '', '2020-05-23 09:58:14'),
(1672, '2020-05-23 17:58:14.740614', 'getfilters', '', '2020-05-23 09:58:15'),
(1673, '2020-05-23 17:58:15.556048', 'getfilters', '', '2020-05-23 09:58:16'),
(1674, '2020-05-23 17:58:17.340575', 'getfilters', '', '2020-05-23 09:58:17'),
(1675, '2020-05-23 17:58:18.019865', 'getfilters', '', '2020-05-23 09:58:18'),
(1676, '2020-05-23 17:58:18.750821', 'getfilters', '', '2020-05-23 09:58:19'),
(1677, '2020-05-23 17:58:19.429537', 'getfilters', '', '2020-05-23 09:58:19'),
(1678, '2020-05-23 17:58:20.100869', 'getfilters', '', '2020-05-23 09:58:20'),
(1679, '2020-05-23 17:58:20.865836', 'getfilters', '', '2020-05-23 09:58:21'),
(1680, '2020-05-23 17:58:21.538773', 'getfilters', '', '2020-05-23 09:58:22'),
(1681, '2020-05-23 17:58:22.427952', 'getfilters', '', '2020-05-23 09:58:23'),
(1682, '2020-05-23 17:58:23.146800', 'getfilters', '', '2020-05-23 09:58:23'),
(1683, '2020-05-23 17:58:23.825315', 'getfilters', '', '2020-05-23 09:58:24'),
(1684, '2020-05-23 17:58:24.576483', 'getfilters', '', '2020-05-23 09:58:25'),
(1685, '2020-05-23 17:58:25.349197', 'getfilters', '', '2020-05-23 09:58:25'),
(1686, '2020-05-23 17:58:30.380624', 'getfilters', '', '2020-05-23 09:58:31'),
(1687, '2020-05-23 17:58:36.811385', 'getfilters', '', '2020-05-23 09:58:37'),
(1688, '2020-05-23 17:59:24.553533', 'homePage', '', '2020-05-23 09:59:25'),
(1689, '2020-05-23 17:59:29.196028', 'homePage', '', '2020-05-23 09:59:29'),
(1690, '2020-05-23 17:59:41.669449', 'homePage', '', '2020-05-23 09:59:42'),
(1691, '2020-05-23 17:59:46.195618', 'homePage', '', '2020-05-23 09:59:46'),
(1692, '2020-05-23 17:59:53.749276', 'homePage', '', '2020-05-23 09:59:54'),
(1693, '2020-05-23 18:00:49.761505', 'homePage', '', '2020-05-23 10:00:51'),
(1694, '6380121376617699', 'getallproducts', 'ABCDEF', '2020-05-23 10:03:59'),
(1695, '6380121376617611', 'getallproducts', 'ABCDEF', '2020-05-23 10:05:03'),
(1696, '2020-05-23 18:05:32.330493', 'homePage', '', '2020-05-23 10:05:33'),
(1697, '2020-05-23 18:05:35.904069', 'getallproducts', '', '2020-05-23 10:05:36'),
(1698, '6380121376617612', 'getallproducts', 'ABCDEF', '2020-05-23 10:06:15'),
(1699, '2020-05-23 18:08:43.494402', 'alertMe', '', '2020-05-23 10:08:44'),
(1700, '6380121376617655', 'myAlert', 'ABCDEF', '2020-05-23 10:09:06'),
(1701, '6380121376617656', 'myAlert', 'ABCDEF', '2020-05-23 10:09:58'),
(1702, '6380121376617613', 'getallproducts', 'ABCDEF', '2020-05-23 10:11:17'),
(1703, '2020-05-23 18:11:21.422712', 'homePage', '', '2020-05-23 10:11:22'),
(1704, '2020-05-23 18:11:26.225613', 'getallproducts', '', '2020-05-23 10:11:26'),
(1705, '2020-05-23 18:13:39.376784', 'getallproducts', '', '2020-05-23 10:13:47'),
(1706, '6380121376617614', 'getallproducts', 'ABCDEF', '2020-05-23 10:20:30'),
(1707, '6380121376617615', 'getallproducts', 'ABCDEF', '2020-05-23 10:20:55'),
(1708, '6380121376617616', 'getallproducts', 'ABCDEF', '2020-05-23 10:22:28'),
(1709, '6380121376617617', 'getallproducts', 'ABCDEF', '2020-05-23 10:23:14'),
(1710, '6380121376617618', 'getallproducts', 'ABCDEF', '2020-05-23 10:26:29'),
(1711, '6380121376617619', 'getallproducts', 'ABCDEF', '2020-05-23 10:27:46'),
(1712, '6380121376617620', 'getallproducts', 'ABCDEF', '2020-05-23 10:30:04'),
(1713, '6380121376617621', 'getallproducts', 'ABCDEF', '2020-05-23 10:30:48'),
(1714, '6380121376617622', 'getallproducts', 'ABCDEF', '2020-05-23 10:31:33'),
(1715, '6380121376617623', 'getallproducts', 'ABCDEF', '2020-05-23 10:33:23'),
(1716, '6380121376617624', 'getallproducts', 'ABCDEF', '2020-05-23 10:33:37'),
(1717, '6380121376617625', 'getallproducts', 'ABCDEF', '2020-05-24 12:44:29'),
(1718, '6380121376617626', 'getallproducts', 'ABCDEF', '2020-05-24 12:44:56'),
(1719, '6380121376617733', 'getfilterproducts', 'ABCDEF', '2020-05-24 12:45:28'),
(1720, '6380121376617627', 'getallproducts', 'ABCDEF', '2020-05-24 12:45:54'),
(1721, '6380121376617734', 'getfilterproducts', 'ABCDEF', '2020-05-24 12:46:30'),
(1722, '6380121376617735', 'getfilterproducts', 'ABCDEF', '2020-05-24 12:46:41'),
(1723, '6380121376617736', 'getfilterproducts', 'ABCDEF', '2020-05-24 12:47:03'),
(1724, '6380121376617737', 'getfilterproducts', 'ABCDEF', '2020-05-24 12:48:05'),
(1725, '6380121376617628', 'getallproducts', 'ABCDEF', '2020-05-24 12:48:19'),
(1726, '6380121376617629', 'getallproducts', 'ABCDEF', '2020-05-24 12:48:30'),
(1727, '6380121376617630', 'getallproducts', 'ABCDEF', '2020-05-24 12:49:20'),
(1728, '6380121376617631', 'getallproducts', 'ABCDEF', '2020-05-24 12:49:58'),
(1729, '6380121376617632', 'getallproducts', 'ABCDEF', '2020-05-24 12:50:32'),
(1730, '6380121376617633', 'getallproducts', 'ABCDEF', '2020-05-24 12:51:16'),
(1731, '6380121376617634', 'getallproducts', 'ABCDEF', '2020-05-24 13:00:49'),
(1732, '6380121376617635', 'getallproducts', 'ABCDEF', '2020-05-24 13:01:03'),
(1733, '6380121376617636', 'getallproducts', 'ABCDEF', '2020-05-24 13:06:58'),
(1734, '6380121376617637', 'getallproducts', 'ABCDEF', '2020-05-24 13:11:10'),
(1735, '6380121376617638', 'getallproducts', 'ABCDEF', '2020-05-24 13:11:44'),
(1736, '6380121376617639', 'getallproducts', 'ABCDEF', '2020-05-24 13:15:28'),
(1737, '6380121376617640', 'getallproducts', 'ABCDEF', '2020-05-24 13:15:52'),
(1738, '6380121376617641', 'getallproducts', 'ABCDEF', '2020-05-24 13:16:15'),
(1739, '6380121376617642', 'getallproducts', 'ABCDEF', '2020-05-24 13:16:47'),
(1740, '6380121376617643', 'getallproducts', 'ABCDEF', '2020-05-24 13:16:57'),
(1741, '6380121376617644', 'getallproducts', 'ABCDEF', '2020-05-24 13:18:15'),
(1742, '6380121376617645', 'getallproducts', 'ABCDEF', '2020-05-24 13:18:37'),
(1743, '638012137661762433', 'getallproducts', 'ABCDEF', '2020-05-24 16:39:15'),
(1744, '6380121376617624333', 'getallproducts', 'ABCDEF', '2020-05-24 16:39:39'),
(1745, '63801213766176243333', 'getallproducts', 'ABCDEF', '2020-05-24 16:39:58'),
(1746, '6380121376617624333312', 'getallproducts', 'ABCDEF', '2020-05-24 16:40:23'),
(1747, '6380121376617700', 'productDetail', 'ABCDEF', '2020-05-24 17:20:38'),
(1748, '6380121376617701', 'productDetail', 'ABCDEF', '2020-05-24 17:21:04'),
(1749, '6380121376617702', 'productDetail', 'ABCDEF', '2020-05-24 17:23:07'),
(1750, '6380121376617703', 'productDetail', 'ABCDEF', '2020-05-24 17:24:17'),
(1751, '6380121376617704', 'productDetail', 'ABCDEF', '2020-05-24 17:24:48'),
(1752, '6380121376617705', 'productDetail', 'ABCDEF', '2020-05-24 17:25:40'),
(1753, '2020-05-25 02:09:43.973344', 'homePage', '', '2020-05-25 18:09:45'),
(1754, '6380121376617706', 'productDetail', 'ABCDEF', '2020-05-26 15:40:53'),
(1755, '6380121376617707', 'productDetail', 'ABCDEF', '2020-05-26 15:43:25'),
(1756, '6380121376617708', 'productDetail', 'ABCDEF', '2020-05-26 15:46:54'),
(1757, '6380121376617709', 'productDetail', 'ABCDEF', '2020-05-26 15:47:16'),
(1758, '6380121376617710', 'productDetail', 'ABCDEF', '2020-05-26 15:54:57'),
(1759, '6380121376617711', 'productDetail', 'ABCDEF', '2020-05-26 15:56:10'),
(1760, '6380121376617712', 'productDetail', 'ABCDEF', '2020-05-26 15:56:43'),
(1761, '6380121376617651', 'updatecustomerinfo', 'ABCDEF', '2020-05-26 18:33:38'),
(1762, '2020-05-28 13:21:55.375615', 'homePage', '', '2020-05-28 17:21:57'),
(1763, '2020-05-28 13:22:06.565484', 'getallproducts', '', '2020-05-28 17:22:08'),
(1764, '2020-05-28 13:22:11.002567', 'getfilters', '', '2020-05-28 17:22:11'),
(1765, '2020-05-28 13:23:01.775064', 'getallproducts', '', '2020-05-28 17:23:02'),
(1766, '2020-05-28 13:23:04.548307', 'alertMe', '', '2020-05-28 17:23:05'),
(1767, '2020-05-28 13:23:08.961333', 'getallproducts', '', '2020-05-28 17:23:09'),
(1768, '2020-05-28 13:24:12.279268', 'getallproducts', '', '2020-05-28 17:24:12'),
(1769, '2020-05-28 13:24:14.305505', 'getallproducts', '', '2020-05-28 17:24:14'),
(1770, '2020-05-28 13:24:23.354006', 'getfilters', '', '2020-05-28 17:24:24'),
(1771, '638012137661769222', 'getfilters', 'ABCDEF', '2020-05-28 17:25:50'),
(1772, '2020-05-28 13:27:58.012534', 'getfilters', '', '2020-05-28 17:27:58'),
(1773, '2020-05-28 13:34:12.215357', 'getfilters', '', '2020-05-28 17:34:12'),
(1774, '2020-05-28 14:13:37.226449', 'getfilters', '', '2020-05-28 18:13:38'),
(1775, '2020-05-28 14:24:17.849873', 'getfilters', '', '2020-05-28 18:24:18'),
(1776, '2020-05-28 14:27:03.505130', 'getfilters', '', '2020-05-28 18:27:04'),
(1777, '2020-05-28 14:28:24.543297', 'getfilters', '', '2020-05-28 18:28:25'),
(1778, '2020-05-28 15:04:11.591217', 'getfilters', '', '2020-05-28 07:04:13'),
(1779, '2020-05-28 15:04:11.432623', 'getfilters', '', '2020-05-28 07:04:15'),
(1780, '2020-05-28 15:04:40.364325', 'getfilters', '', '2020-05-28 07:04:41'),
(1781, '2020-05-28 15:04:44.103561', 'getfilters', '', '2020-05-28 07:04:44'),
(1782, '2020-05-28 15:10:36.956589', 'getfilters', '', '2020-05-28 07:10:37'),
(1783, '2020-05-28 15:10:44.819280', 'homePage', '', '2020-05-28 07:10:46'),
(1784, '2020-05-28 15:10:53.442619', 'getallproducts', '', '2020-05-28 07:10:54'),
(1785, '2020-05-28 15:10:56.027545', 'getfilters', '', '2020-05-28 07:10:56'),
(1786, '2020-05-28 15:15:56.337807', 'getfilters', '', '2020-05-28 07:15:57'),
(1787, '2020-05-28 15:30:58.447484', 'getfilters', '', '2020-05-28 07:30:59'),
(1788, '2020-05-28 15:31:27.120217', 'getallproducts', '', '2020-05-28 07:31:27'),
(1789, '2020-05-28 15:31:30.090302', 'getfilters', '', '2020-05-28 07:31:30'),
(1790, '2020-05-28 15:31:49.993387', 'getallproducts', '', '2020-05-28 07:31:50'),
(1791, '2020-05-28 15:32:39.242256', 'getfilters', '', '2020-05-28 07:32:40'),
(1792, '2020-05-28 15:32:53.866704', 'getallproducts', '', '2020-05-28 07:32:54'),
(1793, '2020-05-28 15:33:07.042654', 'getfilters', '', '2020-05-28 07:33:07'),
(1794, '2020-05-28 15:33:15.582528', 'getallproducts', '', '2020-05-28 07:33:16'),
(1795, '2020-05-28 15:40:23.839347', 'homePage', '', '2020-05-28 07:40:25'),
(1796, '2020-05-28 15:44:12.677062', 'homePage', '', '2020-05-28 07:44:14'),
(1797, '2020-05-28 19:08:22.011001', 'homePage', '', '2020-05-28 11:08:24'),
(1798, '2020-05-28 19:08:26.734073', 'getallproducts', '', '2020-05-28 11:08:27'),
(1799, '2020-05-28 19:08:30.676647', 'getfilters', '', '2020-05-28 11:08:31'),
(1800, '2020-05-28 19:09:09.188841', 'getallproducts', '', '2020-05-28 11:09:09'),
(1801, '2020-05-28 19:09:14.227011', 'getallproducts', '', '2020-05-28 11:09:14'),
(1802, '2020-05-28 19:09:20.355455', 'getfilters', '', '2020-05-28 11:09:21'),
(1803, '2020-05-28 19:14:13.539345', 'getfilters', '', '2020-05-28 11:14:14'),
(1804, '2020-05-28 19:14:18.610866', 'getallproducts', '', '2020-05-28 11:14:19'),
(1805, '63801213766176243', 'getallproducts', 'ABCDEF', '2020-05-28 11:16:53'),
(1806, '2020-05-28 19:28:47.516207', 'homePage', '', '2020-05-28 11:28:50'),
(1807, '2020-05-28 19:29:01.357995', 'getallproducts', '', '2020-05-28 11:29:02'),
(1808, '2020-05-28 19:29:03.193664', 'getfilters', '', '2020-05-28 11:29:03'),
(1809, '2020-05-28 19:29:13.047652', 'getallproducts', '', '2020-05-28 11:29:15'),
(1810, '2020-05-28 19:29:56.145209', 'getallproducts', '', '2020-05-28 11:29:57'),
(1811, '6380121376617646', 'getallproducts', 'ABCDEF', '2020-05-28 11:34:35'),
(1812, '6380121376617647', 'getallproducts', 'ABCDEF', '2020-05-28 11:34:55'),
(1813, '2020-05-28 19:35:33.509891', 'unlikeproduct', '', '2020-05-28 11:35:34'),
(1814, '2020-05-28 19:35:37.043995', 'getallproducts', '', '2020-05-28 11:35:37'),
(1815, '2020-05-28 19:35:40.350158', 'unlikeproduct', '', '2020-05-28 11:35:40'),
(1816, '6380121376617648', 'getallproducts', 'ABCDEF', '2020-05-28 11:36:08'),
(1817, '2020-05-28 19:36:56.623034', 'getfilters', '', '2020-05-28 11:36:57'),
(1818, '2020-05-28 19:37:35.082835', 'getallproducts', '', '2020-05-28 11:37:36'),
(1819, '2020-05-28 19:37:46.963100', 'getallproducts', '', '2020-05-28 11:37:48'),
(1820, '2020-05-28 19:37:50.691381', 'getallproducts', '', '2020-05-28 11:37:51'),
(1821, '2020-05-28 19:37:54.026253', 'getfilters', '', '2020-05-28 11:37:54'),
(1822, '2020-05-28 19:38:03.842385', 'getallproducts', '', '2020-05-28 11:38:05'),
(1823, '2020-05-28 19:38:07.205894', 'getfilters', '', '2020-05-28 11:38:08'),
(1824, '2020-05-28 19:38:26.268996', 'getallproducts', '', '2020-05-28 11:38:27'),
(1825, '2020-05-28 19:39:20.962233', 'getallproducts', '', '2020-05-28 11:39:22'),
(1826, '2020-05-28 19:39:29.373031', 'getfilters', '', '2020-05-28 11:39:30'),
(1827, '2020-05-28 19:39:44.431854', 'getallproducts', '', '2020-05-28 11:39:45'),
(1828, '2020-05-28 19:40:04.668375', 'getallproducts', '', '2020-05-28 11:40:05'),
(1829, '2020-05-28 19:40:54.216015', 'likeproduct', '', '2020-05-28 11:40:55'),
(1830, '2020-05-28 19:40:58.235684', 'getallproducts', '', '2020-05-28 11:40:58'),
(1831, '2020-05-28 19:42:44.872984', 'getallproducts', '', '2020-05-28 11:42:45'),
(1832, '2020-05-28 19:42:51.864666', 'likeproduct', '', '2020-05-28 11:42:52'),
(1833, '2020-05-28 19:42:55.835992', 'getallproducts', '', '2020-05-28 11:42:56'),
(1834, '2020-05-28 19:43:07.119483', 'unlikeproduct', '', '2020-05-28 11:43:08'),
(1835, '2020-05-28 19:43:11.842833', 'getallproducts', '', '2020-05-28 11:43:12'),
(1836, '2020-05-28 19:43:15.603275', 'unlikeproduct', '', '2020-05-28 11:43:16'),
(1837, '2020-05-28 19:43:19.558012', 'getallproducts', '', '2020-05-28 11:43:20'),
(1838, '2020-05-28 19:43:22.655132', 'unlikeproduct', '', '2020-05-28 11:43:23'),
(1839, '2020-05-28 19:43:25.297393', 'likeproduct', '', '2020-05-28 11:43:25'),
(1840, '2020-05-28 19:43:29.051195', 'getallproducts', '', '2020-05-28 11:43:29'),
(1841, '2020-05-28 19:44:38.428560', 'getallproducts', '', '2020-05-28 11:44:39'),
(1842, '2020-05-28 19:44:45.231995', 'getallproducts', '', '2020-05-28 11:44:46'),
(1843, '2020-05-28 19:44:51.443889', 'unlikeproduct', '', '2020-05-28 11:44:52'),
(1844, '2020-05-28 19:44:54.560972', 'getallproducts', '', '2020-05-28 11:44:55'),
(1845, '2020-05-28 19:44:58.411476', 'unlikeproduct', '', '2020-05-28 11:44:59'),
(1846, '2020-05-28 19:45:04.154095', 'getallproducts', '', '2020-05-28 11:45:05'),
(1847, '6380121376617649', 'getallproducts', 'ABCDEF', '2020-05-28 11:46:00'),
(1848, '6380121376617650', 'getallproducts', 'ABCDEF', '2020-05-28 11:46:16'),
(1849, '6380121376617651', 'getallproducts', 'ABCDEF', '2020-05-28 11:46:33'),
(1850, '6380121376617652', 'getallproducts', 'ABCDEF', '2020-05-28 11:47:36'),
(1851, '6380121376617653', 'getallproducts', 'ABCDEF', '2020-05-28 11:48:18'),
(1852, '6380121376617654', 'getallproducts', 'ABCDEF', '2020-05-28 11:48:44'),
(1853, '6380121376617655', 'getallproducts', 'ABCDEF', '2020-05-28 11:51:26'),
(1854, '6380121376617656', 'getallproducts', 'ABCDEF', '2020-05-28 11:53:21'),
(1855, '2020-05-28 19:53:39.808768', 'getallproducts', '', '2020-05-28 11:53:41'),
(1856, '2020-05-28 19:53:44.828287', 'getallproducts', '', '2020-05-28 11:53:46'),
(1857, '2020-05-28 19:54:00.502132', 'homePage', '', '2020-05-28 11:54:02'),
(1858, '2020-05-28 19:54:04.974962', 'getallproducts', '', '2020-05-28 11:54:05'),
(1859, '6380121376617657', 'getallproducts', 'ABCDEF', '2020-05-28 11:54:06'),
(1860, '2020-05-28 19:54:10.121957', 'getallproducts', '', '2020-05-28 11:54:11'),
(1861, '6380121376617658', 'getallproducts', 'ABCDEF', '2020-05-28 11:54:23'),
(1862, '2020-05-28 19:54:37.851057', 'homePage', '', '2020-05-28 11:54:39'),
(1863, '2020-05-28 19:54:41.693097', 'getallproducts', '', '2020-05-28 11:54:42'),
(1864, '2020-05-28 19:54:46.477322', 'likeproduct', '', '2020-05-28 11:54:47'),
(1865, '2020-05-28 19:54:50.571124', 'getallproducts', '', '2020-05-28 11:54:51'),
(1866, '2020-05-28 19:54:54.948961', 'unlikeproduct', '', '2020-05-28 11:54:55'),
(1867, '2020-05-28 19:54:57.985155', 'getallproducts', '', '2020-05-28 11:54:58'),
(1868, '2020-05-28 19:56:33.221698', 'getallproducts', '', '2020-05-28 11:56:34'),
(1869, '2020-05-28 19:56:38.968170', 'getallproducts', '', '2020-05-28 11:56:39'),
(1870, '2020-05-28 19:58:07.826707', 'getfilters', '', '2020-05-28 11:58:08'),
(1871, '2020-05-28 19:58:27.289745', 'getallproducts', '', '2020-05-28 11:58:28'),
(1872, '2020-05-28 19:58:56.615504', 'getallproducts', '', '2020-05-28 11:58:57'),
(1873, '2020-05-28 19:59:42.605890', 'getallproducts', '', '2020-05-28 11:59:43'),
(1874, '2020-05-28 19:59:47.509226', 'getallproducts', '', '2020-05-28 11:59:48'),
(1875, '2020-05-28 20:00:00.160075', 'getallproducts', '', '2020-05-28 12:00:00'),
(1876, '2020-05-28 20:00:17.396014', 'getallproducts', '', '2020-05-28 12:00:18'),
(1877, '2020-05-28 20:00:21.761319', 'getallproducts', '', '2020-05-28 12:00:23'),
(1878, '2020-05-28 20:00:29.185619', 'getallproducts', '', '2020-05-28 12:00:29'),
(1879, '2020-05-28 20:00:48.408907', 'getallproducts', '', '2020-05-28 12:00:49'),
(1880, '6380121376617624332', 'getallproducts', 'ABCDEF', '2020-05-28 12:01:38'),
(1881, '2020-05-28 20:11:08.326172', 'homePage', '', '2020-05-28 12:11:09'),
(1882, '2020-05-28 20:11:11.217865', 'getallproducts', '', '2020-05-28 12:11:11'),
(1883, '2020-05-28 20:11:19.636611', 'getfilters', '', '2020-05-28 12:11:20'),
(1884, '6380121376617659', 'getallproducts', 'ABCDEF', '2020-05-28 12:11:43'),
(1885, '2020-05-28 20:11:45.688620', 'getallproducts', '', '2020-05-28 12:11:46'),
(1886, '2020-05-28 20:11:55.339411', 'homePage', '', '2020-05-28 12:11:56'),
(1887, '2020-05-28 20:11:59.260405', 'getallproducts', '', '2020-05-28 12:12:00'),
(1888, '2020-05-28 20:12:02.016465', 'getfilters', '', '2020-05-28 12:12:02'),
(1889, '2020-05-28 20:12:19.356828', 'getallproducts', '', '2020-05-28 12:12:20'),
(1890, '6380121376617660', 'getallproducts', 'ABCDEF', '2020-05-28 12:12:20'),
(1891, '63801213766176243324', 'getallproducts', 'ABCDEF', '2020-05-28 12:12:52'),
(1892, '2020-05-28 20:13:29.583966', 'getallproducts', '', '2020-05-28 12:13:30'),
(1893, '2020-05-28 20:14:00.306920', 'getallproducts', '', '2020-05-28 12:14:01'),
(1894, '2020-05-28 20:14:13.323814', 'getfilters', '', '2020-05-28 12:14:14'),
(1895, '2020-05-28 20:14:33.165771', 'homePage', '', '2020-05-28 12:14:34'),
(1896, '2020-05-28 20:14:43.444879', 'getallproducts', '', '2020-05-28 12:14:44'),
(1897, '2020-05-28 20:14:46.148491', 'getfilters', '', '2020-05-28 12:14:46'),
(1898, '2020-05-28 20:14:54.507012', 'getallproducts', '', '2020-05-28 12:14:55'),
(1899, '2020-05-28 20:16:01.473181', 'getfilters', '', '2020-05-28 12:16:02'),
(1900, '2020-05-28 20:16:10.476713', 'getallproducts', '', '2020-05-28 12:16:11'),
(1901, '2020-05-28 20:16:20.420342', 'getfilters', '', '2020-05-28 12:16:21'),
(1902, '2020-05-28 20:16:28.902528', 'getallproducts', '', '2020-05-28 12:16:29'),
(1903, '2020-05-28 20:16:41.722358', 'getfilters', '', '2020-05-28 12:16:42'),
(1904, '2020-05-28 20:16:50.208807', 'getallproducts', '', '2020-05-28 12:16:50'),
(1905, '2020-05-28 20:17:17.289822', 'getfilters', '', '2020-05-28 12:17:18'),
(1906, '2020-05-28 20:17:20.405858', 'getallproducts', '', '2020-05-28 12:17:21');
INSERT INTO `api_calls_list` (`id`, `nonce`, `url`, `device_id`, `created_at`) VALUES
(1907, '2020-05-28 20:17:35.059624', 'getfilters', '', '2020-05-28 12:17:35'),
(1908, '2020-05-28 20:17:39.369792', 'getallproducts', '', '2020-05-28 12:17:40'),
(1909, '2020-05-28 20:17:49.205920', 'getfilters', '', '2020-05-28 12:17:50'),
(1910, '2020-05-28 20:19:15.216038', 'homePage', '', '2020-05-28 12:19:16'),
(1911, '2020-05-28 20:21:34.566098', 'homePage', '', '2020-05-28 12:21:36'),
(1912, '2020-05-28 20:23:14.437763', 'homePage', '', '2020-05-28 12:23:16'),
(1913, '2020-05-28 20:23:19.033014', 'homePage', '', '2020-05-28 12:23:19'),
(1914, '2020-05-28 20:25:14.647735', 'homePage', '', '2020-05-28 12:25:17'),
(1915, '2020-05-28 20:25:42.273793', 'getallproducts', '', '2020-05-28 12:25:43'),
(1916, '2020-05-28 20:25:47.895684', 'getfilters', '', '2020-05-28 12:25:48'),
(1917, '2020-05-28 20:25:51.733392', 'getallproducts', '', '2020-05-28 12:25:52'),
(1918, '2020-05-28 20:25:58.647547', 'getallproducts', '', '2020-05-28 12:25:59'),
(1919, '2020-05-28 20:26:01.515437', 'getallproducts', '', '2020-05-28 12:26:02'),
(1920, '2020-05-28 20:26:04.832407', 'getallproducts', '', '2020-05-28 12:26:05'),
(1921, '2020-05-28 20:26:08.448033', 'getfilters', '', '2020-05-28 12:26:08'),
(1922, '2020-05-28 20:26:12.943433', 'getallproducts', '', '2020-05-28 12:26:13'),
(1923, '2020-05-28 20:26:21.755010', 'getfilters', '', '2020-05-28 12:26:22'),
(1924, '2020-05-28 20:26:24.962475', 'getfilters', '', '2020-05-28 12:26:25'),
(1925, '2020-05-28 20:26:31.727576', 'getallproducts', '', '2020-05-28 12:26:32'),
(1926, '2020-05-28 20:26:35.300280', 'getfilters', '', '2020-05-28 12:26:35'),
(1927, '2020-05-28 20:26:45.100360', 'getallproducts', '', '2020-05-28 12:26:46'),
(1928, '2020-05-28 20:26:50.555172', 'getfilters', '', '2020-05-28 12:26:51'),
(1929, '2020-05-28 20:26:56.620832', 'getallproducts', '', '2020-05-28 12:26:57'),
(1930, '2020-05-28 20:26:59.519396', 'getfilters', '', '2020-05-28 12:27:00'),
(1931, '2020-05-28 20:27:02.915385', 'getallproducts', '', '2020-05-28 12:27:03'),
(1932, '2020-05-28 20:27:05.315467', 'getfilters', '', '2020-05-28 12:27:05'),
(1933, '2020-05-28 20:27:33.115710', 'getallproducts', '', '2020-05-28 12:27:33'),
(1934, '2020-05-28 20:27:35.098133', 'getallproducts', '', '2020-05-28 12:27:35'),
(1935, '2020-05-28 20:27:37.510198', 'getfilters', '', '2020-05-28 12:27:38'),
(1936, '2020-05-28 20:27:50.310423', 'getallproducts', '', '2020-05-28 12:27:51'),
(1937, '2020-05-28 20:27:53.565505', 'getfilters', '', '2020-05-28 12:27:54'),
(1938, '2020-05-28 20:31:14.775020', 'getfilters', '', '2020-05-28 12:31:15'),
(1939, '2020-05-28 20:31:34.294850', 'getfilters', '', '2020-05-28 12:31:34'),
(1940, '2020-05-28 20:31:37.776762', 'getallproducts', '', '2020-05-28 12:31:38'),
(1941, '2020-05-28 20:31:44.790733', 'getfilters', '', '2020-05-28 12:31:45'),
(1942, '2020-05-28 20:32:52.800164', 'getallproducts', '', '2020-05-28 12:32:53'),
(1943, '2020-05-28 20:32:58.404791', 'getfilters', '', '2020-05-28 12:32:59'),
(1944, '2020-05-28 20:33:08.830299', 'getallproducts', '', '2020-05-28 12:33:09'),
(1945, '2020-05-28 20:34:00.631167', 'getfilters', '', '2020-05-28 12:34:01'),
(1946, '2020-05-28 20:34:20.540915', 'getfilters', '', '2020-05-28 12:34:21'),
(1947, '2020-05-28 20:34:21.292146', 'getallproducts', '', '2020-05-28 12:34:22'),
(1948, '2020-05-28 20:34:26.907676', 'getallproducts', '', '2020-05-28 12:34:27'),
(1949, '2020-05-28 20:34:32.484290', 'getfilters', '', '2020-05-28 12:34:33'),
(1950, '2020-05-28 20:36:11.771932', 'getallproducts', '', '2020-05-28 12:36:12'),
(1951, '2020-05-28 20:36:15.401255', 'getfilters', '', '2020-05-28 12:36:16'),
(1952, '2020-05-28 20:41:21.719733', 'homePage', '', '2020-05-28 12:41:23'),
(1953, '2020-05-28 20:41:25.142827', 'getallproducts', '', '2020-05-28 12:41:25'),
(1954, '2020-05-28 20:41:26.233294', 'getfilters', '', '2020-05-28 12:41:26'),
(1955, '2020-05-28 20:42:48.826398', 'getallproducts', '', '2020-05-28 12:42:49'),
(1956, '2020-05-28 20:42:56.217020', 'getfilters', '', '2020-05-28 12:42:57'),
(1957, '2020-05-28 20:43:05.089675', 'getallproducts', '', '2020-05-28 12:43:06'),
(1958, '2020-05-28 20:43:07.393533', 'getfilters', '', '2020-05-28 12:43:07'),
(1959, '2020-05-28 20:43:10.237539', 'getallproducts', '', '2020-05-28 12:43:10'),
(1960, '2020-05-28 20:43:12.542541', 'getfilters', '', '2020-05-28 12:43:13'),
(1961, '2020-05-29 03:36:01.907255', 'homePage', '', '2020-05-29 07:36:03'),
(1962, '2020-05-29 03:36:19.095977', 'getallproducts', '', '2020-05-29 07:36:19'),
(1963, '2020-05-29 04:08:36.646250', 'homePage', '', '2020-05-29 08:08:41'),
(1964, '2020-05-29 04:08:41.473428', 'homePage', '', '2020-05-29 08:08:42'),
(1965, '2020-05-29 04:08:48.974961', 'getallproducts', '', '2020-05-29 08:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_html_text` text COLLATE utf8mb4_unicode_ci,
  `expires_impressions` int(11) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(11) NOT NULL DEFAULT '0',
  `banners_clicked` int(11) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_description`
--

CREATE TABLE `banner_description` (
  `banner_description_id` int(11) NOT NULL,
  `banners_title` varchar(191) NOT NULL,
  `banners_body` varchar(255) NOT NULL,
  `constant_banners_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_description`
--

INSERT INTO `banner_description` (`banner_description_id`, `banners_title`, `banners_body`, `constant_banners_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'تجريبى', 'محتوى', 1, 1, '2020-02-28 15:06:47', NULL),
(2, 'test', 'content', 1, 2, '2020-02-28 15:06:47', NULL),
(3, 'test 2', 'content', 2, 1, '2020-02-28 15:22:23', NULL),
(4, 'تجريبى 2', 'محتوى', 2, 2, '2020-02-28 15:22:23', NULL),
(5, 'Diva Fashion & Summer', 'Diva\'s  fashion experts have rounded up the top must-have fashion trends for', 3, 1, '2020-03-04 08:59:08', NULL),
(6, 'المغنية الأزياء والصيف', 'قام خبراء الأزياء في ديفا بتجميع أفضل اتجاهات الموضة التي يجب أن يكون لها', 3, 2, '2020-03-04 08:59:08', NULL),
(7, 'bvhv', 'bbyhbyhb', 4, 1, '2020-03-23 13:00:40', NULL),
(8, 'لاتالات', 'اناها', 4, 2, '2020-03-23 13:00:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `block_ips`
--

CREATE TABLE `block_ips` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `blog_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_image`, `status`, `blog_date`, `created_at`, `updated_at`) VALUES
(1, 'blogs/dlj4j7WuDZAabEFkoWeT2Yi1KnvVta8LEpvRNQEI.png', 1, '2020-03-11', '2020-03-01 02:11:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_description`
--

CREATE TABLE `blog_description` (
  `blog_description_id` int(11) NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_description_part` varchar(255) NOT NULL,
  `blog_description_full` text NOT NULL,
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_description`
--

INSERT INTO `blog_description` (`blog_description_id`, `blog_title`, `blog_description_part`, `blog_description_full`, `blog_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 1, '2020-03-01 02:11:31', NULL),
(2, 'ما هو \"لوريم إيبسوم\" ؟', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>', 1, 2, '2020-03-01 02:11:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `status`, `created_at`, `updated_at`) VALUES
(7, 1, '2020-03-01 10:34:27', '2020-03-03 07:12:37'),
(11, 1, '2020-03-23 08:32:14', '2020-05-17 18:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `brand_description`
--

CREATE TABLE `brand_description` (
  `brand_description_id` int(11) NOT NULL,
  `brand_name` varchar(80) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_description`
--

INSERT INTO `brand_description` (`brand_description_id`, `brand_name`, `brand_id`, `language_id`, `created_at`, `updated_at`) VALUES
(11, 'Cartier', 7, 1, '2020-03-01 15:34:27', NULL),
(12, 'كارتييه', 7, 2, '2020-03-01 15:34:27', NULL),
(19, 'dior', 11, 1, '2020-03-23 14:32:14', NULL),
(20, 'ديور', 11, 2, '2020-03-23 14:32:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_icon` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `categories_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(10, 'categories/main/bRKKMLmycsjTumBmKMQv82xJqkFaU4PS7A2IkrId.jpeg', NULL, 0, NULL, NULL, NULL, 'watches', 1, '2020-03-01 10:23:16', '2020-03-05 08:21:25'),
(11, 'categories/sub/HVipmCeKUmCJFck4SmL9S5ZVspHYqwWmnsoG2qrh.jpeg', NULL, 10, NULL, NULL, NULL, 'silver', 1, '2020-03-01 10:31:54', '2020-05-18 13:54:56'),
(13, 'images/categories/main/ljkq1q0HeykBWprCj4fTQTvWkdUYmieLRGTINIrC.jpeg', NULL, 0, NULL, NULL, NULL, 'perfumes', 1, '2020-03-23 16:31:23', '2020-03-23 16:34:52'),
(14, '', NULL, 13, NULL, NULL, NULL, 'women', 1, '2020-03-23 16:36:24', '2020-03-23 17:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(19, 10, 1, 'WATCHES'),
(20, 10, 2, 'الساعات'),
(21, 11, 1, 'Man'),
(22, 11, 2, 'رجالي'),
(25, 13, 1, 'perfume'),
(26, 13, 2, 'عطر'),
(27, 14, 1, 'women'),
(28, 14, 2, 'حريمي');

-- --------------------------------------------------------

--
-- Table structure for table `categories_role`
--

CREATE TABLE `categories_role` (
  `categories_role_id` int(11) NOT NULL,
  `categories_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `chat_body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `user_from`, `user_to`, `chat_body`, `created_at`, `updated_at`) VALUES
(1, 15, 21, 'hello', '2020-03-15 14:50:54', NULL),
(2, 15, 21, 'can i help you ?', '2020-03-15 14:51:30', NULL),
(3, 21, 15, 'yes please', '2020-03-15 14:59:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

CREATE TABLE `compare` (
  `id` int(11) NOT NULL,
  `product_ids` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compare`
--

INSERT INTO `compare` (`id`, `product_ids`, `customer_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `condition_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`condition_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, '2020-02-11 05:39:15', '2020-05-19 18:52:25'),
(4, 1, '2020-02-18 07:55:41', '2020-05-19 18:52:00'),
(7, 1, '2020-05-19 18:53:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `condition_description`
--

CREATE TABLE `condition_description` (
  `condition_description_id` int(11) NOT NULL,
  `condition_name` varchar(80) NOT NULL,
  `condition_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `condition_description`
--

INSERT INTO `condition_description` (`condition_description_id`, `condition_name`, `condition_id`, `language_id`, `created_at`, `updated_at`) VALUES
(3, 'Newest', 3, 1, '2020-02-11 07:39:15', NULL),
(4, 'الاحدث', 3, 2, '2020-02-11 07:39:15', NULL),
(5, 'Used', 4, 1, '2020-02-18 09:55:41', NULL),
(6, 'مستعمله', 4, 2, '2020-02-18 09:55:41', NULL),
(11, 'Like New', 7, 1, '2020-05-19 12:53:09', NULL),
(12, 'مثل الجديد', 7, 2, '2020-05-19 12:53:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `constant_banners`
--

CREATE TABLE `constant_banners` (
  `banners_id` int(11) NOT NULL,
  `banners_url` text COLLATE utf8mb4_unicode_ci,
  `banners_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `constant_banners`
--

INSERT INTO `constant_banners` (`banners_id`, `banners_url`, `banners_image`, `date_added`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, 'banners/1M9LX3H7j4pY4HLAvOyjfbxsUCPgWVCF07jBgIb5.png', '2020-03-03 09:44:23', 1, '', '2020-02-28 15:06:47', NULL),
(2, NULL, 'banners/Q8kIemkBuFkeAQgMSBC4CSeb2NIBTxQieuHYOHBp.png', '2020-03-01 09:34:09', 1, '', '2020-02-28 15:22:23', NULL),
(3, NULL, 'images/banners/a13j7yeH25p9NTLs3aA0r8PGI5mtUrp1Nljj2pOy.png', '2020-03-23 14:26:56', 0, '', '2020-03-04 08:59:08', NULL),
(4, NULL, 'images/banners/pmleaeIHPdNpmUOdMkz3NwKuKMIZmTXbIxscR82J.jpeg', '2020-03-24 17:12:20', 1, '', '2020-03-23 13:00:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `contact_email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `contact_phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `contact_subject` varchar(100) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_type` int(11) NOT NULL,
  `contact_read` tinyint(1) NOT NULL DEFAULT '0',
  `contact_notify` tinyint(1) NOT NULL DEFAULT '0',
  `contact_from` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `contact_subject`, `contact_message`, `contact_type`, `contact_read`, `contact_notify`, `contact_from`, `created_at`, `updated_at`) VALUES
(2, 'hassan', 'm@j.c', '0123456789', 'test', 'test', 1, 1, 0, 0, '2020-03-01 11:58:52', NULL),
(3, 'hassan', 'hassan.alex26@yahoo.com', '03017232211', 'test', 'test', 2, 1, 0, 0, '2020-03-11 08:51:20', NULL),
(4, 'Hassan', 'has.ha@gmai.c', '01255225522', 'hello', 'sdvjhjskdb fhasjkbvdjskl', 1, 1, 0, 1, '2020-03-18 12:03:04', NULL),
(5, 'Hassan', 'hassan.alex26@gmail.com', '01255225522', 'hello', 'sdvjhjskdb fhasjkbvdjskl', 2, 1, 0, 1, '2020-03-18 12:06:17', NULL),
(6, 'يسيبيب', 'dsfd@dsds.fef', '33333', '43243', '432423', 1, 1, 0, 0, '2020-03-22 14:45:00', NULL),
(7, 'fdgf', 'gfdgfdg@vfgvf.fd', 'fgfgfdggf', 'gfgf', 'gfdg', 2, 1, 0, 0, '2020-03-22 14:52:57', NULL),
(10, 'Hassan Gamal', 'ahmed.omar@yahoo.com', '01225892523', 'test', 'test', 1, 1, 0, 0, '2020-05-12 23:15:52', NULL),
(11, 'Hassan', 'hassan.alex26@gmail.com', '01255225522', 'hello', 'sdvjhjskdb fhasjkbvdjskl', 1, 1, 0, 1, '2020-05-12 23:23:04', NULL),
(12, 'Hassan', 'hassan.alex26@gmail.com', '01255225522', 'hello', 'sdvjhjskdb fhasjkbvdjskl', 1, 0, 0, 1, '2020-05-14 04:14:43', NULL),
(13, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'ggg', 'vvv', 1, 0, 0, 1, '2020-05-14 06:13:17', NULL),
(14, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'hello', 'MessageSent', 1, 0, 0, 1, '2020-05-14 06:13:56', NULL),
(15, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'hello', 'MessageSent', 1, 0, 0, 1, '2020-05-14 06:15:08', NULL),
(16, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'hello', 'MessageSent', 1, 0, 0, 1, '2020-05-14 06:15:41', NULL),
(17, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'hello', 'MessageSent', 1, 0, 0, 1, '2020-05-14 06:17:25', NULL),
(18, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'hello', 'MessageSent', 1, 0, 0, 1, '2020-05-14 06:18:26', NULL),
(19, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'nsn', 'nennd', 1, 0, 0, 1, '2020-05-14 06:19:15', NULL),
(20, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'fff', 'tytg', 1, 0, 0, 1, '2020-05-14 06:27:04', NULL),
(21, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'bb', 'gyres', 1, 0, 0, 1, '2020-05-14 06:27:23', NULL),
(22, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'ccc', 'trr', 1, 0, 0, 1, '2020-05-14 06:28:49', NULL),
(23, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'ccc', 'trr', 1, 0, 0, 1, '2020-05-14 06:28:59', NULL),
(24, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'fff', 'fff', 1, 0, 0, 1, '2020-05-14 06:29:46', NULL),
(25, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'xx', 'cf', 1, 0, 0, 1, '2020-05-14 06:30:51', NULL),
(26, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'ddd', 'yyt', 1, 0, 0, 1, '2020-05-14 06:31:04', NULL),
(27, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'ghlu', 'qsfv', 1, 0, 0, 1, '2020-05-14 06:31:58', NULL),
(28, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'tr', 'yhh', 1, 0, 0, 1, '2020-05-14 06:33:04', NULL),
(29, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'hgg', 'ggg', 1, 0, 0, 1, '2020-05-14 06:33:50', NULL),
(30, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'ffff', 'hko', 1, 0, 0, 1, '2020-05-14 06:34:42', NULL),
(31, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'bbb', 'jki', 1, 0, 0, 1, '2020-05-14 06:35:34', NULL),
(32, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'bv', 'oo', 1, 0, 0, 1, '2020-05-14 06:35:47', NULL),
(33, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'bv', 'oo', 1, 0, 0, 1, '2020-05-14 06:35:58', NULL),
(34, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'tr', 'hoo', 1, 0, 0, 1, '2020-05-14 06:36:21', NULL),
(35, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'msjdjj', 'djdjdj', 2, 0, 0, 1, '2020-05-14 06:40:57', NULL),
(36, 'muhmmedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'hello', 'world', 2, 0, 0, 1, '2020-05-14 07:23:31', NULL),
(37, 'MuhammedAbd-Elkhalik', 'midorock2020@gmail.com', '0500576772', 'vhhj', 'ccff', 2, 0, 0, 1, '2020-05-15 05:31:05', NULL),
(38, 'يتبتببتبنب', 'amal@test.com', '0111111112', 'cbbn', 'Bbh', 1, 0, 0, 1, '2020-05-17 09:44:21', NULL),
(39, 'يتبتببتبنب', 'amal@test.com', '0111111112', 'fyu ghn gh2', 'Fghg bhjhg 555', 2, 0, 0, 1, '2020-05-17 09:44:38', NULL),
(40, 'يتبتببتبنب', 'amal@test.com', '0111111112', 'cghcvhj wjdhd shsjd dhjdd dhdhd dhdjd dndnnd d dbdbd d d d d d d. d ebebwbwbbwbsbdbd e e d. d. dbdbe', 'Bdhjxjdjdjxud. X d d d d. S d r. D d f f f Bdhjxjdjdjxud. X d d d d. S d r. D d f f f Bdhjxjdjdjxud. X d d d d. S d r. D d f f f Bdhjxjdjdjxud. X d d d d. S d r. D d f f f . X dBdhjxjdjdjxud. X d d d d. S d r. D d f f f Bdhjxjdjdjxud. X d d d d. S d r. D d f Bdhjxjdjdjxud. X d d d d. S d r. D d f Bdhjxjdjdjxud. X d d d d. S d r. D d f f f  f . X d d d d. S d r. D d f f f f . X d d d d. S d r. D d f f f d d. S d r. D d f f f', 2, 0, 0, 1, '2020-05-17 09:46:20', NULL),
(41, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'xhdhdh', 'Dbshd d d d d d s s', 2, 0, 0, 1, '2020-05-17 10:06:55', NULL),
(42, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'dhdh', 'Dhdhxh dbdbdbd', 1, 0, 0, 1, '2020-05-17 10:07:05', NULL),
(43, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'ربرذرذ ذتيتي', 'بتبتبت ذرب ب بتتيتي. ذ', 1, 0, 0, 1, '2020-05-17 10:10:03', NULL),
(44, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'بريري ذذربب', 'بتبتذ ذ ب ب ب', 1, 0, 0, 1, '2020-05-17 10:10:48', NULL),
(45, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'تتتت تتت', 'تتتت تتت', 2, 0, 0, 1, '2020-05-17 10:10:59', NULL),
(46, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'تذتتت', 'تتت تتت تت. نن', 1, 0, 0, 1, '2020-05-17 10:11:14', NULL),
(47, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'تتذتت', 'ذات', 2, 0, 0, 1, '2020-05-17 10:11:23', NULL),
(48, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'رذربرذ', 'تتتت تتتت', 1, 0, 0, 1, '2020-05-17 10:11:53', NULL),
(49, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'اااا ااا', 'ااااا. تتت', 2, 0, 0, 1, '2020-05-17 10:12:05', NULL),
(50, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'تات تتت', 'اااغ', 1, 0, 0, 1, '2020-05-17 10:12:14', NULL),
(51, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'بريرب', 'بتبت', 1, 0, 0, 1, '2020-05-17 10:13:26', NULL),
(52, 'بتبتبيبتاذتبنذعع', 'dbdh@hh.ddh', '0111111113', 'تتذت', 'ذتيت', 2, 0, 0, 1, '2020-05-17 10:13:35', NULL),
(53, 'Hassan', 'hassan.alex26@gmail.com', '01255225522', 'hello', 'sdvjhjskdb fhasjkbvdjskl', 1, 0, 0, 1, '2020-05-17 13:16:59', NULL),
(54, 'Hassan', 'hassan.alex26@gmail.com', '01255225522', 'hello', 'sdvjhjskdb fhasjkbvdjskl', 1, 0, 0, 1, '2020-05-20 12:44:16', NULL),
(55, 'Hassan', 'hassan.alex26@gmail.com', '01255225522', 'hello', 'sdvjhjskdb fhasjkbvdjskl', 1, 0, 0, 1, '2020-05-20 12:45:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_format_id` int(11) NOT NULL,
  `country_code` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name2`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`, `country_code`, `status`, `created_at`, `updated_at`) VALUES
(184, 'Saudi Arabia', 'SA', 'SAU', 1, 0, 1, '2020-05-23 12:39:13', NULL),
(247, '', NULL, NULL, 1, NULL, 1, '2020-05-23 08:07:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country_description`
--

CREATE TABLE `country_description` (
  `country_description_id` int(11) NOT NULL,
  `countries_name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `countries_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country_description`
--

INSERT INTO `country_description` (`country_description_id`, `countries_name`, `countries_id`, `language_id`, `created_at`, `updated_at`) VALUES
(3, 'Saudi Arabia', 184, 1, '2020-05-23 13:04:44', NULL),
(4, 'السعوديه العربية', 184, 2, '2020-05-23 13:04:44', NULL),
(11, 'Egypt', 247, 1, '2020-05-23 14:07:11', NULL),
(12, 'مصر', 247, 2, '2020-05-23 14:07:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupans_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `discount_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(11) NOT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `usage_limit_per_user` int(11) DEFAULT NULL,
  `limit_usage_to_x_items` int(11) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount` decimal(10,2) NOT NULL,
  `maximum_amount` decimal(10,2) NOT NULL,
  `email_restrictions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` double(13,8) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_current` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `created_at`, `updated_at`, `value`, `is_default`, `status`, `is_current`) VALUES
(1, 'U.S. Dollar', 'USD', '$', '$', '', '', '2', '2019-10-30 16:03:12', '2019-10-30 16:03:12', 1.00000000, 1, 1, 1),
(2, 'SAR', 'SAR', 'SAR', 'ريال', '', '', '1', '2019-10-29 13:14:33', '2019-10-29 13:14:33', 1.00000000, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_record`
--

CREATE TABLE `currency_record` (
  `id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_record`
--

INSERT INTO `currency_record` (`id`, `code`, `currency_name`) VALUES
(1, 'AED', 'United Arab Emirates Dirham'),
(2, 'AFN', 'Afghan Afghani'),
(3, 'ALL', 'Albanian Lek'),
(4, 'AMD', 'Armenian Dram'),
(5, 'ANG', 'Netherlands Antillean Guilder'),
(6, 'AOA', 'Angolan Kwanza'),
(7, 'ARS', 'Argentine Peso'),
(8, 'AUD', 'Australian Dollar'),
(9, 'AWG', 'Aruban Florin'),
(10, 'AZN', 'Azerbaijani Manat'),
(11, 'BAM', 'Bosnia-Herzegovina Convertible Mark'),
(12, 'BBD', 'Barbadian Dollar'),
(13, 'BDT', 'Bangladeshi Taka'),
(14, 'BGN', 'Bulgarian Lev'),
(15, 'BHD', 'Bahraini Dinar'),
(16, 'BIF', 'Burundian Franc'),
(17, 'BMD', 'Bermudan Dollar'),
(18, 'BND', 'Brunei Dollar'),
(19, 'BOB', 'Bolivian Boliviano'),
(20, 'BRL', 'Brazilian Real'),
(21, 'BSD', 'Bahamian Dollar'),
(22, 'BTC', 'Bitcoin'),
(23, 'BTN', 'Bhutanese Ngultrum'),
(24, 'BWP', 'Botswanan Pula'),
(25, 'BYN', 'Belarusian Ruble'),
(26, 'BZD', 'Belize Dollar'),
(27, 'CAD', 'Canadian Dollar'),
(28, 'CDF', 'Congolese Franc'),
(29, 'CHF', 'Swiss Franc'),
(30, 'CLF', 'Chilean Unit of Account (UF)'),
(31, 'CLP', 'Chilean Peso'),
(32, 'CNH', 'Chinese Yuan (Offshore)'),
(33, 'CNY', 'Chinese Yuan'),
(34, 'COP', 'Colombian Peso'),
(35, 'CRC', 'Costa Rican Colón'),
(36, 'CUC', 'Cuban Convertible Peso'),
(37, 'CUP', 'Cuban Peso'),
(38, 'CVE', 'Cape Verdean Escudo'),
(39, 'CZK', 'Czech Republic Koruna'),
(40, 'DJF', 'Djiboutian Franc'),
(41, 'DKK', 'Danish Krone'),
(42, 'DOP', 'Dominican Peso'),
(43, 'DZD', 'Algerian Dinar'),
(44, 'EGP', 'Egyptian Pound'),
(45, 'ERN', 'Eritrean Nakfa'),
(46, 'ETB', 'Ethiopian Birr'),
(47, 'EUR', 'Euro'),
(48, 'FJD', 'Fijian Dollar'),
(49, 'FKP', 'Falkland Islands Pound'),
(50, 'GBP', 'British Pound Sterling'),
(51, 'GEL', 'Georgian Lari'),
(52, 'GGP', 'Guernsey Pound'),
(53, 'GHS', 'Ghanaian Cedi'),
(54, 'GIP', 'Gibraltar Pound'),
(55, 'GMD', 'Gambian Dalasi'),
(56, 'GNF', 'Guinean Franc'),
(57, 'GTQ', 'Guatemalan Quetzal'),
(58, 'GYD', 'Guyanaese Dollar'),
(59, 'HKD', 'Hong Kong Dollar'),
(60, 'HNL', 'Honduran Lempira'),
(61, 'HRK', 'Croatian Kuna'),
(62, 'HTG', 'Haitian Gourde'),
(63, 'HUF', 'Hungarian Forint'),
(64, 'IDR', 'Indonesian Rupiah'),
(65, 'ILS', 'Israeli New Sheqel'),
(66, 'IMP', 'Manx pound'),
(67, 'INR', 'Indian Rupee'),
(68, 'IQD', 'Iraqi Dinar'),
(69, 'IRR', 'Iranian Rial'),
(70, 'ISK', 'Icelandic Króna'),
(71, 'JEP', 'Jersey Pound'),
(72, 'JMD', 'Jamaican Dollar'),
(73, 'JOD', 'Jordanian Dinar'),
(74, 'JPY', 'Japanese Yen'),
(75, 'KES', 'Kenyan Shilling'),
(76, 'KGS', 'Kyrgystani Som'),
(77, 'KHR', 'Cambodian Riel'),
(78, 'KMF', 'Comorian Franc'),
(79, 'KPW', 'North Korean Won'),
(80, 'KRW', 'South Korean Won'),
(81, 'KWD', 'Kuwaiti Dinar'),
(82, 'KYD', 'Cayman Islands Dollar'),
(83, 'KZT', 'Kazakhstani Tenge'),
(84, 'LAK', 'Laotian Kip'),
(85, 'LBP', 'Lebanese Pound'),
(86, 'LKR', 'Sri Lankan Rupee'),
(87, 'LRD', 'Liberian Dollar'),
(88, 'LSL', 'Lesotho Loti'),
(89, 'LYD', 'Libyan Dinar'),
(90, 'MAD', 'Moroccan Dirham'),
(91, 'MDL', 'Moldovan Leu'),
(92, 'MGA', 'Malagasy Ariary'),
(93, 'MKD', 'Macedonian Denar'),
(94, 'MMK', 'Myanma Kyat'),
(95, 'MNT', 'Mongolian Tugrik'),
(96, 'MOP', 'Macanese Pataca'),
(97, 'MRO', 'Mauritanian Ouguiya (pre-2018)'),
(98, 'MRU', 'Mauritanian Ouguiya'),
(99, 'MUR', 'Mauritian Rupee'),
(100, 'MVR', 'Maldivian Rufiyaa'),
(101, 'MWK', 'Malawian Kwacha'),
(102, 'MXN', 'Mexican Peso'),
(103, 'MYR', 'Malaysian Ringgit'),
(104, 'MZN', 'Mozambican Metical'),
(105, 'NAD', 'Namibian Dollar'),
(106, 'NGN', 'Nigerian Naira'),
(107, 'NIO', 'Nicaraguan Córdoba'),
(108, 'NOK', 'Norwegian Krone'),
(109, 'NPR', 'Nepalese Rupee'),
(110, 'NZD', 'New Zealand Dollar'),
(111, 'OMR', 'Omani Rial'),
(112, 'PAB', 'Panamanian Balboa'),
(113, 'PEN', 'Peruvian Nuevo Sol'),
(114, 'PGK', 'Papua New Guinean Kina'),
(115, 'PHP', 'Philippine Peso'),
(116, 'PKR', 'Pakistani Rupee'),
(117, 'PLN', 'Polish Zloty'),
(118, 'PYG', 'Paraguayan Guarani'),
(119, 'QAR', 'Qatari Rial'),
(120, 'RON', 'Romanian Leu'),
(121, 'RSD', 'Serbian Dinar'),
(122, 'RUB', 'Russian Ruble'),
(123, 'RWF', 'Rwandan Franc'),
(124, 'SAR', 'Saudi Riyal'),
(125, 'SBD', 'Solomon Islands Dollar'),
(126, 'SCR', 'Seychellois Rupee'),
(127, 'SDG', 'Sudanese Pound'),
(128, 'SEK', 'Swedish Krona'),
(129, 'SGD', 'Singapore Dollar'),
(130, 'SHP', 'Saint Helena Pound'),
(131, 'SLL', 'Sierra Leonean Leone'),
(132, 'SOS', 'Somali Shilling'),
(133, 'SRD', 'Surinamese Dollar'),
(134, 'SSP', 'South Sudanese Pound'),
(135, 'STD', 'São Tomé and Príncipe Dobra (pre-2018)'),
(136, 'STN', 'São Tomé and Príncipe Dobra'),
(137, 'SVC', 'Salvadoran Colón'),
(138, 'SYP', 'Syrian Pound'),
(139, 'SZL', 'Swazi Lilangeni'),
(140, 'THB', 'Thai Baht'),
(141, 'TJS', 'Tajikistani Somoni'),
(142, 'TMT', 'Turkmenistani Manat'),
(143, 'TND', 'Tunisian Dinar'),
(144, 'TOP', 'Tongan Pa\'anga'),
(145, 'TRY', 'Turkish Lira'),
(146, 'TTD', 'Trinidad and Tobago Dollar'),
(147, 'TWD', 'New Taiwan Dollar'),
(148, 'TZS', 'Tanzanian Shilling'),
(149, 'UAH', 'Ukrainian Hryvnia'),
(150, 'UGX', 'Ugandan Shilling'),
(151, 'USD', 'United States Dollar'),
(152, 'UYU', 'Uruguayan Peso'),
(153, 'UZS', 'Uzbekistan Som'),
(154, 'VEF', 'Venezuelan Bolívar Fuerte'),
(155, 'VND', 'Vietnamese Dong'),
(156, 'VUV', 'Vanuatu Vatu'),
(157, 'WST', 'Samoan Tala'),
(158, 'XAF', 'CFA Franc BEAC'),
(159, 'XAG', 'Silver Ounce'),
(160, 'XAU', 'Gold Ounce'),
(161, 'XCD', 'East Caribbean Dollar'),
(162, 'XDR', 'Special Drawing Rights'),
(163, 'XOF', 'CFA Franc BCEAO'),
(164, 'XPD', 'Palladium Ounce'),
(165, 'XPF', 'CFP Franc'),
(166, 'XPT', 'Platinum Ounce'),
(167, 'YER', 'Yemeni Rial'),
(168, 'ZAR', 'South African Rand'),
(169, 'ZMW', 'Zambian Kwacha'),
(170, 'ZWL', 'Zimbabwean Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `current_theme`
--

CREATE TABLE `current_theme` (
  `id` int(11) NOT NULL,
  `header` int(11) NOT NULL,
  `carousel` int(11) NOT NULL,
  `banner` int(11) NOT NULL,
  `footer` int(11) NOT NULL,
  `product_section_order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  `detail` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_theme`
--

INSERT INTO `current_theme` (`id`, `header`, `carousel`, `banner`, `footer`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`) VALUES
(1, 1, 1, 1, 1, '[{\"id\":10,\"name\":\"Second Ad Section\",\"order\":1,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":5,\"name\":\"Categories\",\"order\":2,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":1,\"name\":\"Banner Section\",\"order\":3,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":4,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":5,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":6,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":7,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":8,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":9,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":10,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":11,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customers_fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_newsletter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `user_id`, `customers_fax`, `customers_newsletter`, `fb_id`, `google_id`, `auth_id_tiwilo`, `created_at`, `updated_at`) VALUES
(3, 7, '', '', '1397019480462476', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 8, '', '0', '', '100729965818911895811', 0, '0000-00-00 00:00:00', '2020-02-17 10:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_basket_quantity` int(11) NOT NULL DEFAULT '1',
  `final_price` decimal(15,2) DEFAULT NULL,
  `customers_basket_date_added` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers_basket`
--

INSERT INTO `customers_basket` (`customers_basket_id`, `customers_id`, `products_id`, `customers_basket_quantity`, `final_price`, `customers_basket_date_added`, `is_order`, `session_id`, `created_at`, `updated_at`) VALUES
(61, 2, '4', 4, '11123.00', '2019-11-25', 1, 'pENOFf2PViOMzVXGSveJRgEhrUH14unuYH7jR3Av', '2020-03-10 14:04:14', NULL),
(63, 3, '2', 1, '213.00', '2019-11-25', 0, '6Lr7ZcEPvzfE1r8fMHj27ee1DiLn6z6RcsjIhSBr', '2020-03-10 14:04:14', NULL),
(64, 2, '4', 4, '11123.00', '2019-11-25', 1, 'pENOFf2PViOMzVXGSveJRgEhrUH14unuYH7jR3Av', '2020-03-10 14:04:14', NULL),
(66, 2, '4', 4, '11123.00', '2019-11-25', 1, 'pENOFf2PViOMzVXGSveJRgEhrUH14unuYH7jR3Av', '2020-03-10 14:04:14', NULL),
(67, 3, '4', 4, '11123.00', '2019-11-25', 0, '6Lr7ZcEPvzfE1r8fMHj27ee1DiLn6z6RcsjIhSBr', '2020-03-10 14:04:14', NULL),
(68, 13, '4', 4, '11123.00', '2019-11-26', 1, 'cewK7u1B51OLar656lUO3g3qPASVhVPi55A97wCY', '2020-03-10 14:04:14', NULL),
(69, 3, '4', 4, '11123.00', '2019-11-26', 1, 'pHyrpIU5GP4Dcwxrcw1O6ZfcBlZgxSdYvJI4DASw', '2020-03-10 14:04:14', NULL),
(71, 13, '4', 4, '11123.00', '2019-11-26', 1, 'cewK7u1B51OLar656lUO3g3qPASVhVPi55A97wCY', '2020-03-10 14:04:14', NULL),
(72, 0, '4', 4, '11123.00', '2019-11-26', 0, 'kqyAwN874farfAlLsfvRiukroPEcrC7GC4ZTwVAt', '2020-03-10 14:04:14', NULL),
(73, 13, '4', 4, '11123.00', '2019-11-26', 1, 'cewK7u1B51OLar656lUO3g3qPASVhVPi55A97wCY', '2020-03-10 14:04:14', NULL),
(74, 0, '4', 4, '11123.00', '2019-11-26', 0, 'W6t4UeLk54i6c5sre4SM08fl1LeqFnDK0pdfNvAG', '2020-03-10 14:04:14', NULL),
(78, 15, '4', 1, NULL, '2020-03-10', 0, '', '2020-03-10 14:40:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(11) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers_info`
--

INSERT INTO `customers_info` (`customers_info_id`, `customers_info_date_of_last_logon`, `customers_info_number_of_logons`, `customers_info_date_account_created`, `customers_info_date_account_last_modified`, `global_product_notifications`) VALUES
(1, '2019-11-01 05:52:19', 1, '2019-11-01 05:52:19', '0000-00-00 00:00:00', 1),
(2, '2019-11-01 05:58:52', 1, '2019-11-01 05:58:52', '0000-00-00 00:00:00', 1),
(3, '2019-11-01 06:01:33', 1, '2019-11-01 06:01:33', '0000-00-00 00:00:00', 1),
(4, '2019-11-01 06:14:08', 1, '2019-11-01 06:14:08', '0000-00-00 00:00:00', 1),
(5, '2019-11-01 05:55:18', 1, '2019-11-01 05:55:18', '0000-00-00 00:00:00', 1),
(7, '2019-11-01 06:49:11', 6, '2019-11-01 06:03:59', '0000-00-00 00:00:00', 1),
(8, '2019-11-01 06:55:22', 1, '2019-11-01 06:55:22', '0000-00-00 00:00:00', 1),
(15, '2020-05-12 10:59:52', 12, '2020-01-30 11:59:28', '2020-05-26 12:33:37', 1),
(18, '2020-03-08 14:54:26', 2, '2020-03-08 14:54:04', NULL, 1),
(35, '2020-05-09 09:30:17', 3, '2020-05-09 09:29:26', NULL, 1),
(37, '2020-05-09 09:30:28', 35, '2020-05-09 04:13:31', NULL, 1),
(38, '2020-05-20 13:32:38', 250, '2020-05-09 22:24:37', '2020-05-17 12:12:50', 1),
(40, '2020-05-12 13:06:30', 1, '2020-05-12 13:06:30', NULL, 1),
(53, '2020-05-16 12:12:35', 2, '2020-05-15 16:20:14', NULL, 1),
(55, '2020-05-16 13:59:37', 2, '2020-05-16 13:54:48', '2020-05-16 01:57:43', 1),
(57, '2020-05-17 09:51:03', 2, '2020-05-17 09:34:09', '2020-05-17 09:49:21', 1),
(58, '2020-05-17 10:06:27', 2, '2020-05-17 10:02:05', '2020-05-17 10:05:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_seller`
--

CREATE TABLE `customer_seller` (
  `customer_seller_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_request` tinyint(1) NOT NULL DEFAULT '0',
  `nationality_image` varchar(255) NOT NULL,
  `identity_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_seller`
--

INSERT INTO `customer_seller` (`customer_seller_id`, `user_id`, `is_request`, `nationality_image`, `identity_image`, `created_at`, `updated_at`) VALUES
(3, 15, 1, 'images/users/nationalty/userNationality_BVoQxFOGQ2uBBMofHI8Chlnkm904y0XGEUIaotMXcUzCslZy5G6qByaUq99P.jpg', 'images/users/identity/userIdentity_6pDX9uwSTTj1ah1uWxS2TjaV5oSKzeqAeTFrO5cHQeHnIN9Twm6rJbITTaLh.jpg', '2020-03-18 13:47:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designers`
--

CREATE TABLE `designers` (
  `designer_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `designers`
--

INSERT INTO `designers` (`designer_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-12 14:08:52', '2020-05-12 14:13:25'),
(2, 1, '2020-05-12 14:17:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designer_description`
--

CREATE TABLE `designer_description` (
  `designer_description_id` int(11) NOT NULL,
  `designer_name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `designer_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `designer_description`
--

INSERT INTO `designer_description` (`designer_description_id`, `designer_name`, `designer_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Tom Ford', 1, 1, '2020-05-12 08:08:52', NULL),
(2, 'توم فورد', 1, 2, '2020-05-12 08:08:52', NULL),
(3, 'Carolina Herrera', 2, 1, '2020-05-12 08:17:14', NULL),
(4, 'كارولينا هيريرا', 2, 2, '2020-05-12 08:17:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `device_type` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ram` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latittude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_info` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `faq_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`faq_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-02-29 02:59:40', NULL),
(2, 1, '2020-02-29 02:59:50', NULL),
(3, 1, '2020-02-29 02:59:40', NULL),
(4, 1, '2020-02-29 02:59:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_description`
--

CREATE TABLE `faq_description` (
  `faq_description_id` int(11) NOT NULL,
  `faq_question` varchar(180) NOT NULL,
  `faq_answer` text NOT NULL,
  `faq_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq_description`
--

INSERT INTO `faq_description` (`faq_description_id`, `faq_question`, `faq_answer`, `faq_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'test ?', 'yes', 1, 1, '2020-02-29 03:00:23', NULL),
(2, 'تجريبى', 'نعم', 1, 2, '2020-02-29 03:01:18', NULL),
(3, 'test ?', 'yes', 2, 1, '2020-02-29 03:00:23', NULL),
(4, 'تجريبى', 'نعم', 2, 2, '2020-02-29 03:01:18', NULL),
(5, 'test ?', 'yes', 3, 1, '2020-02-29 03:00:23', NULL),
(6, 'تجريبى', 'نعم', 3, 2, '2020-02-29 03:01:18', NULL),
(7, 'test ?', 'yes', 4, 1, '2020-02-29 03:00:23', NULL),
(8, 'تجريبى', 'نعم', 4, 2, '2020-02-29 03:01:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fedex_shipping`
--

CREATE TABLE `fedex_shipping` (
  `fedex_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_height` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_width` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_package` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

CREATE TABLE `flash_sale` (
  `flash_sale_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `flash_sale_products_price` decimal(15,2) NOT NULL,
  `flash_sale_date_added` int(11) NOT NULL,
  `flash_sale_last_modified` int(11) NOT NULL,
  `flash_start_date` int(11) NOT NULL,
  `flash_expires_date` int(11) NOT NULL,
  `flash_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale`
--

INSERT INTO `flash_sale` (`flash_sale_id`, `products_id`, `flash_sale_products_price`, `flash_sale_date_added`, `flash_sale_last_modified`, `flash_start_date`, `flash_expires_date`, `flash_status`, `created_at`, `updated_at`) VALUES
(1, 4, '50.00', 0, 0, 1583063100, 1585655100, 0, '2020-03-09 07:55:37', '2020-05-18 17:36:33'),
(2, 13, '20.00', 0, 0, 1584535500, 1585745100, 0, '2020-03-23 17:01:54', '2020-05-18 17:36:11'),
(3, 13, '20.00', 0, 0, 1584492300, 1585701900, 0, '2020-03-23 17:45:03', '2020-05-18 17:36:11'),
(4, 13, '20.00', 0, 0, 1584492300, 1585701900, 0, '2020-03-23 17:45:39', '2020-05-18 17:36:11'),
(5, 13, '20.00', 0, 0, 1584492300, 1585701900, 0, '2020-03-23 10:47:54', '2020-05-18 17:36:11'),
(6, 13, '20.00', 0, 0, 1584492300, 1585701900, 0, '2020-05-12 16:02:20', '2020-05-18 17:36:11'),
(7, 4, '50.00', 0, 0, 1583063100, 1585655100, 0, '2020-05-12 16:02:50', '2020-05-18 17:36:33'),
(8, 4, '50.00', 0, 0, 1583063100, 1585655100, 0, '2020-05-12 18:36:31', '2020-05-18 17:36:33'),
(9, 4, '50.00', 0, 0, 1583063100, 1585655100, 0, '2020-05-12 18:38:21', '2020-05-18 17:36:33'),
(10, 4, '50.00', 0, 0, 1585741500, 1590882300, 0, '2020-05-16 16:56:02', '2020-05-18 17:36:33'),
(11, 4, '50.00', 0, 0, 1585741500, 1590839100, 0, '2020-05-17 18:30:45', '2020-05-18 17:36:33'),
(12, 13, '20.00', 0, 0, 1584492300, 1585701900, 0, '2020-05-17 18:51:14', '2020-05-18 17:36:11'),
(13, 24, '100.00', 0, 0, 1588366800, 1590872400, 0, '2020-05-17 13:23:29', '2020-05-19 10:00:45'),
(14, 13, '20.00', 0, 0, 1584492300, 1585701900, 0, '2020-05-18 13:51:48', '2020-05-18 17:36:11'),
(15, 13, '20.00', 0, 0, 1584492300, 1585701900, 0, '2020-05-18 13:53:46', '2020-05-18 17:36:11'),
(16, 24, '100.00', 0, 0, 1588323600, 1590829200, 0, '2020-05-18 17:33:51', '2020-05-19 10:00:45'),
(17, 13, '20.00', 0, 0, 1584492300, 1585701900, 1, '2020-05-18 17:36:11', NULL),
(18, 4, '50.00', 0, 0, 1585741500, 1590839100, 1, '2020-05-18 17:36:33', NULL),
(19, 24, '100.00', 0, 0, 1588323600, 1590829200, 0, '2020-05-18 08:15:04', '2020-05-19 10:00:45'),
(20, 24, '100.00', 0, 0, 1588323600, 1590829200, 1, '2020-05-19 10:00:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

CREATE TABLE `flate_rate` (
  `id` int(11) NOT NULL,
  `flate_rate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '11', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `front_end_theme_content`
--

CREATE TABLE `front_end_theme_content` (
  `id` int(11) NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `carousels` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_section_order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_end_theme_content`
--

INSERT INTO `front_end_theme_content` (`id`, `headers`, `carousels`, `banners`, `footers`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`) VALUES
(1, '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Header One\",\r\n\"image\": \"images/prototypes/header1.jpg\",\r\n\"alt\" : \"header One\" \r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Header Two\",\r\n\"image\": \"images/prototypes/header2.jpg\",\r\n\"alt\" : \"header Two\" \r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Header Three\",\r\n\"image\": \"images/prototypes/header3.jpg\",\r\n\"alt\" : \"header Three\" \r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Header Four\",\r\n\"image\": \"images/prototypes/header4.jpg\",\r\n\"alt\" : \"header Four\" \r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Header Five\",\r\n\"image\": \"images/prototypes/header5.jpg\",\r\n\"alt\" : \"header Five\" \r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Header Six\",\r\n\"image\": \"images/prototypes/header6.jpg\",\r\n\"alt\" : \"header Six\" \r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Header Seven\",\r\n\"image\": \"images/prototypes/header7.jpg\",\r\n\"alt\" : \"header Seven\" \r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Header Eight\",\r\n\"image\": \"images/prototypes/header8.jpg\",\r\n\"alt\" : \"header Eight\" \r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Header Nine\",\r\n\"image\": \"images/prototypes/header9.jpg\",\r\n\"alt\" : \"header Nine\" \r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Header Ten\",\r\n\"image\": \"images/prototypes/header10.jpg\",\r\n\"alt\" : \"header Ten\" \r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Bootstrap Carousel Content Full Screen\",\r\n\"image\": \"images/prototypes/carousal1.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content Full Screen\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Bootstrap Carousel Content Full Width\",\r\n\"image\": \"images/prototypes/carousal2.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content Full Width\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Bootstrap Carousel Content with Left Banner\",\r\n\"image\": \"images/prototypes/carousal3.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Left Banner\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Bootstrap Carousel Content with Navigation\",\r\n\"image\": \"images/prototypes/carousal4.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Navigation\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Bootstrap Carousel Content with Right Banner\",\r\n\"image\": \"images/prototypes/carousal5.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Right Banner\"\r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Banner One\",\r\n\"image\": \"images/prototypes/banner1.jpg\",\r\n\"alt\": \"Banner One\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Banner Two\",\r\n\"image\": \"images/prototypes/banner2.jpg\",\r\n\"alt\": \"Banner Two\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Banner Three\",\r\n\"image\": \"images/prototypes/banner3.jpg\",\r\n\"alt\": \"Banner Three\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Banner Four\",\r\n\"image\": \"images/prototypes/banner4.jpg\",\r\n\"alt\": \"Banner Four\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Banner Five\",\r\n\"image\": \"images/prototypes/banner5.jpg\",\r\n\"alt\": \"Banner Five\"\r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Banner Six\",\r\n\"image\": \"images/prototypes/banner6.jpg\",\r\n\"alt\": \"Banner Six\"\r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Banner Seven\",\r\n\"image\": \"images/prototypes/banner7.jpg\",\r\n\"alt\": \"Banner Seven\"\r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Banner Eight\",\r\n\"image\": \"images/prototypes/banner8.jpg\",\r\n\"alt\": \"Banner Eight\"\r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Banner Nine\",\r\n\"image\": \"images/prototypes/banner9.jpg\",\r\n\"alt\": \"Banner Nine\"\r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Banner Ten\",\r\n\"image\": \"images/prototypes/banner10.jpg\",\r\n\"alt\": \"Banner Ten\"\r\n},\r\n{\r\n\"id\": 11,\r\n\"name\": \"Banner Eleven\",\r\n\"image\": \"images/prototypes/banner11.jpg\",\r\n\"alt\": \"Banner Eleven\"\r\n},\r\n{\r\n\"id\": 12,\r\n\"name\": \"Banner Twelve\",\r\n\"image\": \"images/prototypes/banner12.jpg\",\r\n\"alt\": \"Banner Twelve\"\r\n},\r\n{\r\n\"id\": 13,\r\n\"name\": \"Banner Thirteen\",\r\n\"image\": \"images/prototypes/banner13.jpg\",\r\n\"alt\": \"Banner Thirteen\"\r\n},\r\n{\r\n\"id\": 14,\r\n\"name\": \"Banner Fourteen\",\r\n\"image\": \"images/prototypes/banner14.jpg\",\r\n\"alt\": \"Banner Fourteen\"\r\n},\r\n{\r\n\"id\": 15,\r\n\"name\": \"Banner Fifteen\",\r\n\"image\": \"images/prototypes/banner15.jpg\",\r\n\"alt\": \"Banner Fifteen\"\r\n},\r\n{\r\n\"id\": 16,\r\n\"name\": \"Banner Sixteen\",\r\n\"image\": \"images/prototypes/banner16.jpg\",\r\n\"alt\": \"Banner Sixteen\"\r\n},\r\n{\r\n\"id\": 17,\r\n\"name\": \"Banner Seventeen\",\r\n\"image\": \"images/prototypes/banner17.jpg\",\r\n\"alt\": \"Banner Seventeen\"\r\n},\r\n{\r\n\"id\": 18,\r\n\"name\": \"Banner Eighteen\",\r\n\"image\": \"images/prototypes/banner18.jpg\",\r\n\"alt\": \"Banner Eighteen\"\r\n},\r\n{\r\n\"id\": 19,\r\n\"name\": \"Banner Nineteen\",\r\n\"image\": \"images/prototypes/banner19.jpg\",\r\n\"alt\": \"Banner Nineteen\"\r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Footer One\",\r\n\"image\": \"images/prototypes/footer1.png\",\r\n\"alt\" : \"Footer One\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Footer Two\",\r\n\"image\": \"images/prototypes/footer2.png\",\r\n\"alt\" : \"Footer Two\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Footer Three\",\r\n\"image\": \"images/prototypes/footer3.png\",\r\n\"alt\" : \"Footer Three\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Footer Four\",\r\n\"image\": \"images/prototypes/footer4.png\",\r\n\"alt\" : \"Footer Four\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Footer Five\",\r\n\"image\": \"images/prototypes/footer5.png\",\r\n\"alt\" : \"Footer Five\"\r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Footer Six\",\r\n\"image\": \"images/prototypes/footer6.png\",\r\n\"alt\" : \"Footer Six\"\r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Footer Seven\",\r\n\"image\": \"images/prototypes/footer7.png\",\r\n\"alt\" : \"Footer Seven\"\r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Footer Eight\",\r\n\"image\": \"images/prototypes/footer8.png\",\r\n\"alt\" : \"Footer Eight\"\r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Footer Nine\",\r\n\"image\": \"images/prototypes/footer9.png\",\r\n\"alt\" : \"Footer Nine\"\r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Footer Ten\",\r\n\"image\": \"images/prototypes/footer10.png\",\r\n\"alt\" : \"Footer Ten\"\r\n}\r\n]', '[{\"id\":10,\"name\":\"Second Ad Section\",\"order\":1,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":5,\"name\":\"Categories\",\"order\":2,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":1,\"name\":\"Banner Section\",\"order\":3,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":4,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":5,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":6,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":7,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":8,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":9,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":10,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":11,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', '[      {         \"id\":1,       \"name\":\"Cart One\"    },    {         \"id\":2,       \"name\":\"Cart Two\"    }     ]', '[      {         \"id\":1,       \"name\":\"Blog One\"    },    {         \"id\":2,       \"name\":\"Blog Two\"    }     ]', '[  \r\n{  \r\n\"id\":1,\r\n\"name\":\"Product Detail Page One\"\r\n},\r\n{  \r\n\"id\":2,\r\n\"name\":\"Product Detail Page Two\"\r\n},\r\n{  \r\n\"id\":3,\r\n\"name\":\"Product Detail Page Three\"\r\n},\r\n{  \r\n\"id\":4,\r\n\"name\":\"Product Detail Page Four\"\r\n},\r\n{  \r\n\"id\":5,\r\n\"name\":\"Product Detail Page Five\"\r\n},\r\n{  \r\n\"id\":6,\r\n\"name\":\"Product Detail Page Six\"\r\n}\r\n\r\n]', '[      {         \"id\":1,       \"name\":\"Shop Page One\"    },    {         \"id\":2,       \"name\":\"Shop Page Two\"    },    {         \"id\":3,       \"name\":\"Shop Page Two\"    },    {         \"id\":4,       \"name\":\"Shop Page Two\"    },    {         \"id\":5,       \"name\":\"Shop Page Two\"    }     ]', '[      {         \"id\":1,       \"name\":\"Contact Page One\"    },    {         \"id\":2,       \"name\":\"Contact Page Two\"    } ]');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geo_zone_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `http_call_record`
--

CREATE TABLE `http_call_record` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ping_time` datetime DEFAULT NULL,
  `difference_from_previous` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `http_call_record`
--

INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(1, 'aasdasds,', '192.168.1.11', 'getallproducts', '2019-11-12 11:41:46', '0000-00-00 00:00:00'),
(2, 'aasdasds,', '192.168.1.11', 'getallproducts', '2019-11-12 11:42:10', '0000-00-00 00:00:00'),
(3, 'aasdasds,', '192.168.1.11', 'getallproducts', '2019-11-12 11:43:07', '0000-00-00 00:00:00'),
(4, 'aasdasds,', '192.168.1.11', 'getallproducts', '2019-11-12 11:44:18', '0000-00-00 00:00:00'),
(5, 'aasdasds,', '192.168.1.11', 'getallproducts', '2019-11-12 11:45:06', '0000-00-00 00:00:00'),
(6, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:10:33', '0000-00-00 00:00:00'),
(7, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:13:34', '0000-00-00 00:00:00'),
(8, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:14:18', '0000-00-00 00:00:00'),
(9, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:14:40', '0000-00-00 00:00:00'),
(10, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:14:49', '0000-00-00 00:00:00'),
(11, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-18 12:16:23', '0000-00-00 00:00:00'),
(12, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 05:49:00', '0000-00-00 00:00:00'),
(13, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 05:49:37', '0000-00-00 00:00:00'),
(14, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:02:21', '0000-00-00 00:00:00'),
(15, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:12:54', '0000-00-00 00:00:00'),
(16, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:13:40', '0000-00-00 00:00:00'),
(17, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:14:20', '0000-00-00 00:00:00'),
(18, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:15:26', '0000-00-00 00:00:00'),
(19, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:15:43', '0000-00-00 00:00:00'),
(20, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:16:00', '0000-00-00 00:00:00'),
(21, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:16:20', '0000-00-00 00:00:00'),
(22, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:16:39', '0000-00-00 00:00:00'),
(23, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:16:54', '0000-00-00 00:00:00'),
(24, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:17:25', '0000-00-00 00:00:00'),
(25, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:17:39', '0000-00-00 00:00:00'),
(26, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:18:49', '0000-00-00 00:00:00'),
(27, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:19:25', '0000-00-00 00:00:00'),
(28, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:21:32', '2000-01-27 00:00:00'),
(29, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:25:26', '0000-00-00 00:00:00'),
(30, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:40:18', '0000-00-00 00:00:00'),
(31, 'aasdaslgds,', '192.168.1.18', 'addtoorder', '2019-11-26 06:40:33', '0000-00-00 00:00:00'),
(32, NULL, NULL, 'getlanguages', '2020-01-27 09:05:17', '0000-00-00 00:00:00'),
(33, 'device id of the app', '192.168.1.11', 'sitesetting', '2020-01-27 10:36:19', '0000-00-00 00:00:00'),
(34, 'device id of the app', '192.168.1.11', 'getbanners', '2020-01-27 10:36:20', '0000-00-00 00:00:00'),
(35, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 10:36:20', '0000-00-00 00:00:00'),
(36, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 10:36:21', '0000-00-00 00:00:00'),
(37, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 10:36:21', '0000-00-00 00:00:00'),
(38, 'device id of the app', '192.168.1.11', 'allcategories', '2020-01-27 10:36:21', '0000-00-00 00:00:00'),
(39, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 10:36:21', '0000-00-00 00:00:00'),
(40, 'device id of the app', '192.168.1.11', 'getallpages', '2020-01-27 10:36:21', '0000-00-00 00:00:00'),
(41, 'device id of the app', '192.168.1.11', 'sitesetting', '2020-01-27 10:36:21', '0000-00-00 00:00:00'),
(42, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 10:36:21', '0000-00-00 00:00:00'),
(43, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 10:36:40', '0000-00-00 00:00:00'),
(44, 'device id of the app', '192.168.1.11', 'processlogin', '2020-01-27 10:37:10', '0000-00-00 00:00:00'),
(45, 'device id of the app', '192.168.1.11', 'processlogin', '2020-01-27 10:37:29', '0000-00-00 00:00:00'),
(46, 'device id of the app', '192.168.1.11', 'processregistration', '2020-01-27 10:38:07', '0000-00-00 00:00:00'),
(47, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-27 10:38:14', '0000-00-00 00:00:00'),
(48, 'device id of the app', '192.168.1.11', 'countries', '2020-01-27 10:38:21', '0000-00-00 00:00:00'),
(49, 'device id of the app', '192.168.1.11', 'zones', '2020-01-27 10:38:25', '0000-00-00 00:00:00'),
(50, 'device id of the app', '192.168.1.11', 'getrate', '2020-01-27 10:38:33', '0000-00-00 00:00:00'),
(51, 'device id of the app', '192.168.1.11', 'getpaymentmethods', '2020-01-27 10:38:39', '0000-00-00 00:00:00'),
(52, 'device id of the app', '192.168.1.11', 'addtoorder', '2020-01-27 10:38:47', '0000-00-00 00:00:00'),
(53, 'device id of the app', '192.168.1.11', 'getorders', '2020-01-27 10:38:59', '0000-00-00 00:00:00'),
(54, 'device id of the app', '192.168.1.11', 'sitesetting', '2020-01-27 13:41:33', '0000-00-00 00:00:00'),
(55, 'device id of the app', '192.168.1.11', 'getbanners', '2020-01-27 13:41:34', '0000-00-00 00:00:00'),
(56, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 13:41:34', '0000-00-00 00:00:00'),
(57, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 13:41:34', '0000-00-00 00:00:00'),
(58, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 13:41:34', '0000-00-00 00:00:00'),
(59, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 13:41:34', '0000-00-00 00:00:00'),
(60, 'device id of the app', '192.168.1.11', 'allcategories', '2020-01-27 13:41:34', '0000-00-00 00:00:00'),
(61, 'device id of the app', '192.168.1.11', 'getallpages', '2020-01-27 13:41:34', '0000-00-00 00:00:00'),
(62, 'device id of the app', '192.168.1.11', 'sitesetting', '2020-01-27 13:41:34', '0000-00-00 00:00:00'),
(63, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 13:41:34', '0000-00-00 00:00:00'),
(64, 'device id of the app', '192.168.1.11', 'registerdevices', '2020-01-27 13:41:41', '0000-00-00 00:00:00'),
(65, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-27 13:44:32', '0000-00-00 00:00:00'),
(66, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-27 13:44:32', '0000-00-00 00:00:00'),
(67, 'device id of the app', '192.168.1.11', 'getallpages', '2020-01-28 11:34:42', '0000-00-00 00:00:00'),
(68, 'device id of the app', '192.168.1.11', 'getbanners', '2020-01-28 11:34:42', '0000-00-00 00:00:00'),
(69, 'device id of the app', '192.168.1.11', 'sitesetting', '2020-01-28 11:34:42', '0000-00-00 00:00:00'),
(70, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 11:34:42', '0000-00-00 00:00:00'),
(71, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 11:34:42', '0000-00-00 00:00:00'),
(72, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 11:34:42', '0000-00-00 00:00:00'),
(73, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 11:34:42', '0000-00-00 00:00:00'),
(74, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 11:34:42', '0000-00-00 00:00:00'),
(75, 'device id of the app', '192.168.1.11', 'allcategories', '2020-01-28 11:34:42', '0000-00-00 00:00:00'),
(76, 'device id of the app', '192.168.1.11', 'getcurrencies', '2020-01-28 11:35:02', '0000-00-00 00:00:00'),
(77, 'device id of the app', '192.168.1.11', 'getlanguages', '2020-01-28 11:35:17', '0000-00-00 00:00:00'),
(78, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-28 11:35:41', '0000-00-00 00:00:00'),
(79, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-28 11:36:24', '0000-00-00 00:00:00'),
(80, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-28 12:18:02', '0000-00-00 00:00:00'),
(81, 'device id of the app', '192.168.1.11', 'notify_me', '2020-01-28 12:21:32', '2000-02-10 00:00:00'),
(82, 'device id of the app', '192.168.1.11', 'getcurrencies', '2020-01-28 12:22:54', '0000-00-00 00:00:00'),
(83, 'device id of the app', '192.168.1.11', 'getlanguages', '2020-01-28 12:22:57', '0000-00-00 00:00:00'),
(84, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-28 14:57:55', '0000-00-00 00:00:00'),
(85, 'device id of the app', '192.168.1.11', 'countries', '2020-01-28 14:58:17', '0000-00-00 00:00:00'),
(86, 'device id of the app', '192.168.1.11', 'zones', '2020-01-28 14:58:25', '0000-00-00 00:00:00'),
(87, 'device id of the app', '192.168.1.11', 'getrate', '2020-01-28 14:58:49', '0000-00-00 00:00:00'),
(88, 'device id of the app', '192.168.1.11', 'getpaymentmethods', '2020-01-28 14:59:03', '0000-00-00 00:00:00'),
(89, 'device id of the app', '192.168.1.11', 'addtoorder', '2020-01-28 14:59:16', '0000-00-00 00:00:00'),
(90, 'device id of the app', '192.168.1.11', 'getorders', '2020-01-28 14:59:23', '0000-00-00 00:00:00'),
(91, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 18:47:23', '0000-00-00 00:00:00'),
(92, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-28 18:47:24', '0000-00-00 00:00:00'),
(93, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 18:48:12', '0000-00-00 00:00:00'),
(94, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-28 18:49:16', '0000-00-00 00:00:00'),
(95, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 18:49:19', '0000-00-00 00:00:00'),
(96, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 18:49:27', '0000-00-00 00:00:00'),
(97, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-28 18:49:36', '0000-00-00 00:00:00'),
(98, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 20:18:38', '0000-00-00 00:00:00'),
(99, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 20:18:46', '0000-00-00 00:00:00'),
(100, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-28 20:18:46', '0000-00-00 00:00:00'),
(101, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 20:18:58', '0000-00-00 00:00:00'),
(102, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-28 20:18:58', '0000-00-00 00:00:00'),
(103, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 20:19:03', '0000-00-00 00:00:00'),
(104, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-28 20:19:06', '0000-00-00 00:00:00'),
(105, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 20:19:06', '0000-00-00 00:00:00'),
(106, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 20:19:22', '0000-00-00 00:00:00'),
(107, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-28 20:19:26', '0000-00-00 00:00:00'),
(108, 'device id of the app', '192.168.1.11', 'sitesetting', '2020-01-29 18:32:26', '0000-00-00 00:00:00'),
(109, 'device id of the app', '192.168.1.11', 'getallpages', '2020-01-29 18:32:26', '0000-00-00 00:00:00'),
(110, 'device id of the app', '192.168.1.11', 'getbanners', '2020-01-29 18:32:26', '0000-00-00 00:00:00'),
(111, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-29 18:32:26', '0000-00-00 00:00:00'),
(112, 'device id of the app', '192.168.1.11', 'allcategories', '2020-01-29 18:32:26', '0000-00-00 00:00:00'),
(113, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-29 18:32:26', '0000-00-00 00:00:00'),
(114, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-29 18:32:26', '0000-00-00 00:00:00'),
(115, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-29 18:32:26', '0000-00-00 00:00:00'),
(116, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-29 18:32:26', '0000-00-00 00:00:00'),
(117, 'device id of the app', '192.168.1.11', 'likeproduct', '2020-01-29 18:40:20', '0000-00-00 00:00:00'),
(118, 'device id of the app', '192.168.1.11', 'unlikeproduct', '2020-01-29 18:40:31', '0000-00-00 00:00:00'),
(119, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-29 18:40:51', '0000-00-00 00:00:00'),
(120, 'device id of the app', '192.168.1.11', 'getbanners', '2020-01-30 10:18:40', '0000-00-00 00:00:00'),
(121, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 10:18:40', '0000-00-00 00:00:00'),
(122, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 10:18:40', '0000-00-00 00:00:00'),
(123, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 10:18:40', '0000-00-00 00:00:00'),
(124, 'device id of the app', '192.168.1.11', 'getallpages', '2020-01-30 10:18:40', '0000-00-00 00:00:00'),
(125, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 10:18:40', '0000-00-00 00:00:00'),
(126, 'device id of the app', '192.168.1.11', 'sitesetting', '2020-01-30 10:18:40', '0000-00-00 00:00:00'),
(127, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 10:18:40', '0000-00-00 00:00:00'),
(128, 'device id of the app', '192.168.1.11', 'allcategories', '2020-01-30 10:18:41', '0000-00-00 00:00:00'),
(129, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 10:19:03', '0000-00-00 00:00:00'),
(130, 'device id of the app', '192.168.1.11', 'getcurrencies', '2020-01-30 10:21:57', '0000-00-00 00:00:00'),
(131, 'device id of the app', '192.168.1.11', 'getcurrencies', '2020-01-30 10:22:41', '0000-00-00 00:00:00'),
(132, 'device id of the app', '192.168.1.11', 'getbanners', '2020-01-30 10:23:14', '0000-00-00 00:00:00'),
(133, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 10:23:14', '0000-00-00 00:00:00'),
(134, 'device id of the app', '192.168.1.11', 'allcategories', '2020-01-30 10:23:14', '0000-00-00 00:00:00'),
(135, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 10:23:14', '0000-00-00 00:00:00'),
(136, 'device id of the app', '192.168.1.11', 'getallpages', '2020-01-30 10:23:14', '0000-00-00 00:00:00'),
(137, 'device id of the app', '192.168.1.11', 'sitesetting', '2020-01-30 10:23:14', '0000-00-00 00:00:00'),
(138, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 10:23:14', '0000-00-00 00:00:00'),
(139, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 10:23:14', '0000-00-00 00:00:00'),
(140, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 10:23:14', '0000-00-00 00:00:00'),
(141, 'device id of the app', '192.168.1.11', 'notify_me', '2020-01-30 11:01:53', '0000-00-00 00:00:00'),
(142, 'device id of the app', '192.168.1.11', 'notify_me', '2020-01-30 11:01:54', '0000-00-00 00:00:00'),
(143, 'device id of the app', '192.168.1.11', 'processregistration', '2020-01-30 11:41:15', '0000-00-00 00:00:00'),
(144, 'device id of the app', '192.168.1.11', 'updatecustomerinfo', '2020-01-30 11:54:19', '0000-00-00 00:00:00'),
(145, 'device id of the app', '192.168.1.11', 'processlogin', '2020-01-30 11:59:28', '2000-03-09 00:00:00'),
(146, 'device id of the app', '192.168.1.11', 'processlogin', '2020-01-30 12:14:18', '0000-00-00 00:00:00'),
(147, 'device id of the app', '192.168.1.11', 'processlogin', '2020-01-30 12:57:44', '0000-00-00 00:00:00'),
(148, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 12:58:14', '0000-00-00 00:00:00'),
(149, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 12:58:30', '0000-00-00 00:00:00'),
(150, 'device id of the app', '192.168.1.11', 'countries', '2020-01-30 12:59:56', '0000-00-00 00:00:00'),
(151, 'device id of the app', '192.168.1.11', 'zones', '2020-01-30 13:00:13', '0000-00-00 00:00:00'),
(152, 'device id of the app', '192.168.1.11', 'addshippingaddress', '2020-01-30 13:00:34', '0000-00-00 00:00:00'),
(153, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 13:00:35', '0000-00-00 00:00:00'),
(154, 'device id of the app', '192.168.1.11', 'updatedefaultaddress', '2020-01-30 13:00:39', '0000-00-00 00:00:00'),
(155, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 13:00:40', '0000-00-00 00:00:00'),
(156, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 13:03:46', '0000-00-00 00:00:00'),
(157, 'device id of the app', '192.168.1.11', 'zones', '2020-01-30 13:12:09', '2000-05-03 00:00:00'),
(158, 'device id of the app', '192.168.1.11', 'updateshippingaddress', '2020-01-30 13:12:12', '0000-00-00 00:00:00'),
(159, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 13:12:14', '0000-00-00 00:00:00'),
(160, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:12:21', '0000-00-00 00:00:00'),
(161, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 13:12:22', '0000-00-00 00:00:00'),
(162, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:19:29', '2000-04-27 00:00:00'),
(163, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 13:19:29', '0000-00-00 00:00:00'),
(164, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 13:19:32', '0000-00-00 00:00:00'),
(165, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:19:34', '0000-00-00 00:00:00'),
(166, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:19:39', '0000-00-00 00:00:00'),
(167, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 13:19:43', '0000-00-00 00:00:00'),
(168, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:19:43', '0000-00-00 00:00:00'),
(169, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:23:21', '2000-02-18 00:00:00'),
(170, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:23:38', '0000-00-00 00:00:00'),
(171, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:23:42', '0000-00-00 00:00:00'),
(172, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:28:18', '0000-00-00 00:00:00'),
(173, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:28:20', '0000-00-00 00:00:00'),
(174, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 13:28:21', '0000-00-00 00:00:00'),
(175, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:28:23', '0000-00-00 00:00:00'),
(176, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:28:30', '0000-00-00 00:00:00'),
(177, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 13:28:31', '0000-00-00 00:00:00'),
(178, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 13:29:11', '0000-00-00 00:00:00'),
(179, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:50:15', '0000-00-00 00:00:00'),
(180, 'device id of the app', '192.168.1.11', 'getcurrencies', '2020-01-30 14:50:18', '0000-00-00 00:00:00'),
(181, 'device id of the app', '192.168.1.11', 'allnewscategories', '2020-01-30 14:50:35', '0000-00-00 00:00:00'),
(182, 'device id of the app', '192.168.1.11', 'getallnews', '2020-01-30 14:50:35', '0000-00-00 00:00:00'),
(183, 'device id of the app', '192.168.1.11', 'getallnews', '2020-01-30 14:50:35', '0000-00-00 00:00:00'),
(184, 'device id of the app', '192.168.1.11', 'sitesetting', '2020-01-30 14:50:44', '0000-00-00 00:00:00'),
(185, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:51:35', '0000-00-00 00:00:00'),
(186, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 14:51:35', '0000-00-00 00:00:00'),
(187, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:51:39', '0000-00-00 00:00:00'),
(188, 'device id of the app', '192.168.1.11', 'likeproduct', '2020-01-30 14:51:52', '0000-00-00 00:00:00'),
(189, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:52:29', '0000-00-00 00:00:00'),
(190, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:52:31', '0000-00-00 00:00:00'),
(191, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 14:52:45', '0000-00-00 00:00:00'),
(192, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 14:54:54', '2000-01-29 00:00:00'),
(193, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:54:54', '2000-01-29 00:00:00'),
(194, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:55:08', '0000-00-00 00:00:00'),
(195, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 14:55:08', '0000-00-00 00:00:00'),
(196, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:55:15', '0000-00-00 00:00:00'),
(197, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 14:55:15', '0000-00-00 00:00:00'),
(198, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 14:55:18', '0000-00-00 00:00:00'),
(199, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:55:18', '0000-00-00 00:00:00'),
(200, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:55:20', '0000-00-00 00:00:00'),
(201, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 14:55:20', '0000-00-00 00:00:00'),
(202, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:55:54', '0000-00-00 00:00:00'),
(203, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:55:59', '0000-00-00 00:00:00'),
(204, 'device id of the app', '192.168.1.11', 'likeproduct', '2020-01-30 14:57:10', '0000-00-00 00:00:00'),
(205, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:57:16', '0000-00-00 00:00:00'),
(206, 'device id of the app', '192.168.1.11', 'notify_me', '2020-01-30 14:58:24', '0000-00-00 00:00:00'),
(207, 'device id of the app', '192.168.1.11', 'updatecustomerinfo', '2020-01-30 14:58:38', '0000-00-00 00:00:00'),
(208, 'device id of the app', '192.168.1.11', 'updatecustomerinfo', '2020-01-30 14:58:59', '0000-00-00 00:00:00'),
(209, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 14:59:07', '0000-00-00 00:00:00'),
(210, 'device id of the app', '192.168.1.11', 'getallpages', '2020-01-30 14:59:26', '0000-00-00 00:00:00'),
(211, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:59:26', '0000-00-00 00:00:00'),
(212, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:59:26', '0000-00-00 00:00:00'),
(213, 'device id of the app', '192.168.1.11', 'getbanners', '2020-01-30 14:59:26', '0000-00-00 00:00:00'),
(214, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:59:26', '0000-00-00 00:00:00'),
(215, 'device id of the app', '192.168.1.11', 'sitesetting', '2020-01-30 14:59:26', '0000-00-00 00:00:00'),
(216, 'device id of the app', '192.168.1.11', 'allcategories', '2020-01-30 14:59:26', '0000-00-00 00:00:00'),
(217, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:59:26', '0000-00-00 00:00:00'),
(218, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 14:59:26', '0000-00-00 00:00:00'),
(219, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 14:59:30', '0000-00-00 00:00:00'),
(220, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 14:59:41', '0000-00-00 00:00:00'),
(221, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 14:59:46', '0000-00-00 00:00:00'),
(222, 'device id of the app', '192.168.1.11', 'countries', '2020-01-30 15:00:02', '0000-00-00 00:00:00'),
(223, 'device id of the app', '192.168.1.11', 'countries', '2020-01-30 15:00:13', '0000-00-00 00:00:00'),
(224, 'device id of the app', '192.168.1.11', 'zones', '2020-01-30 15:00:21', '0000-00-00 00:00:00'),
(225, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 15:01:21', '0000-00-00 00:00:00'),
(226, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 15:03:26', '2000-01-25 00:00:00'),
(227, 'device id of the app', '192.168.1.11', 'getfilters', '2020-01-30 15:03:26', '0000-00-00 00:00:00'),
(228, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-01-30 15:03:28', '0000-00-00 00:00:00'),
(229, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 15:04:28', '0000-00-00 00:00:00'),
(230, 'device id of the app', '192.168.1.11', 'getrate', '2020-01-30 15:04:41', '0000-00-00 00:00:00'),
(231, 'device id of the app', '192.168.1.11', 'getpaymentmethods', '2020-01-30 15:04:54', '0000-00-00 00:00:00'),
(232, 'device id of the app', '192.168.1.11', 'getalladdress', '2020-01-30 15:05:14', '0000-00-00 00:00:00'),
(233, 'device id of the app', '192.168.1.11', 'updatecustomerinfo', '2020-01-30 15:05:24', '0000-00-00 00:00:00'),
(234, 'device id of the app', '192.168.1.11', 'processlogin', '2020-01-30 15:07:08', '2000-01-04 00:00:00'),
(235, 'device id of the app', '192.168.1.11', 'getallpages', '2020-02-03 09:14:14', '0000-00-00 00:00:00'),
(236, 'device id of the app', '192.168.1.11', 'getbanners', '2020-02-03 09:14:14', '0000-00-00 00:00:00'),
(237, 'device id of the app', '192.168.1.11', 'sitesetting', '2020-02-03 09:14:14', '0000-00-00 00:00:00'),
(238, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-02-03 09:14:14', '0000-00-00 00:00:00'),
(239, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-02-03 09:14:14', '0000-00-00 00:00:00'),
(240, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-02-03 09:14:14', '0000-00-00 00:00:00'),
(241, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-02-03 09:14:14', '0000-00-00 00:00:00'),
(242, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-02-03 09:14:14', '0000-00-00 00:00:00'),
(243, 'device id of the app', '192.168.1.11', 'allcategories', '2020-02-03 09:14:14', '0000-00-00 00:00:00'),
(244, 'device id of the app', '192.168.1.11', 'getallproducts', '2020-02-03 09:14:25', '0000-00-00 00:00:00'),
(245, 'device id of the app', '192.168.1.11', 'getfilters', '2020-02-03 09:14:27', '0000-00-00 00:00:00'),
(246, NULL, NULL, 'processregistration', '2020-02-19 13:14:03', '0000-00-00 00:00:00'),
(247, NULL, NULL, 'processregistration', '2020-02-19 13:25:54', '2000-07-11 00:00:00'),
(248, NULL, NULL, 'processregistration', '2020-03-08 12:02:23', '0000-00-00 00:00:00'),
(249, NULL, NULL, 'processregistration', '2020-03-08 12:08:01', '0000-00-00 00:00:00'),
(250, NULL, NULL, 'processregistration', '2020-03-08 12:09:04', '0000-00-00 00:00:00'),
(251, NULL, NULL, 'processregistration', '2020-03-08 12:09:53', '0000-00-00 00:00:00'),
(252, NULL, NULL, 'processregistration', '2020-03-08 12:14:45', '0000-00-00 00:00:00'),
(253, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-08 13:02:34', '0000-00-00 00:00:00'),
(254, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-08 13:02:47', '0000-00-00 00:00:00'),
(255, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-08 13:06:44', '0000-00-00 00:00:00'),
(256, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-08 13:06:52', '0000-00-00 00:00:00'),
(257, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-08 13:07:02', '0000-00-00 00:00:00'),
(258, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-08 13:11:41', '0000-00-00 00:00:00'),
(259, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-08 13:12:44', '0000-00-00 00:00:00'),
(260, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-08 13:19:37', '2000-04-13 00:00:00'),
(261, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-08 14:25:42', '0000-00-00 00:00:00'),
(262, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-08 14:29:08', '2000-02-06 00:00:00'),
(263, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-08 14:30:21', '0000-00-00 00:00:00'),
(264, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-03-08 14:54:04', '0000-00-00 00:00:00'),
(265, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-03-08 14:54:12', '0000-00-00 00:00:00'),
(266, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-03-08 14:54:26', '0000-00-00 00:00:00'),
(267, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-03-08 14:54:57', '0000-00-00 00:00:00'),
(268, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-09 08:22:32', '0000-00-00 00:00:00'),
(269, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-09 08:28:43', '0000-00-00 00:00:00'),
(270, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-09 08:28:50', '0000-00-00 00:00:00'),
(271, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-09 08:35:15', '0000-00-00 00:00:00'),
(272, 'ABCDEF', '192.168.1.11', 'verificationCode', '2020-03-09 08:37:05', '2000-01-10 00:00:00'),
(273, 'ABCDEF', '192.168.1.11', 'verificationCode', '2020-03-09 08:38:14', '0000-00-00 00:00:00'),
(274, 'ABCDEF', '192.168.1.11', 'verificationCode', '2020-03-09 08:38:25', '0000-00-00 00:00:00'),
(275, 'ABCDEF', '192.168.1.11', 'verificationCode', '2020-03-09 08:38:35', '0000-00-00 00:00:00'),
(276, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-03-09 09:00:22', '0000-00-00 00:00:00'),
(277, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-03-09 09:17:24', '2000-10-22 00:00:00'),
(278, 'ABCDEF', '192.168.1.11', 'updatepassword', '2020-03-09 09:19:03', '0000-00-00 00:00:00'),
(279, 'ABCDEF', '192.168.1.11', 'resendVerify', '2020-03-09 09:28:04', '0000-00-00 00:00:00'),
(280, 'ABCDEF', '192.168.1.11', 'homePage', '2020-03-09 10:15:52', '0000-00-00 00:00:00'),
(281, 'ABCDEF', '192.168.1.11', 'homePage', '2020-03-09 10:17:09', '0000-00-00 00:00:00'),
(282, 'ABCDEF', '192.168.1.11', 'homePage', '2020-03-09 10:17:17', '0000-00-00 00:00:00'),
(283, 'ABCDEF', '192.168.1.11', 'homePage', '2020-03-09 10:17:49', '0000-00-00 00:00:00'),
(284, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:06:20', '0000-00-00 00:00:00'),
(285, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:08:36', '0000-00-00 00:00:00'),
(286, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:08:52', '0000-00-00 00:00:00'),
(287, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:09:39', '0000-00-00 00:00:00'),
(288, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:10:15', '0000-00-00 00:00:00'),
(289, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:10:49', '0000-00-00 00:00:00'),
(290, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:10:54', '0000-00-00 00:00:00'),
(291, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:11:07', '0000-00-00 00:00:00'),
(292, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:11:59', '0000-00-00 00:00:00'),
(293, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:14:24', '0000-00-00 00:00:00'),
(294, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:14:43', '0000-00-00 00:00:00'),
(295, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:15:32', '0000-00-00 00:00:00'),
(296, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:15:38', '0000-00-00 00:00:00'),
(297, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:15:43', '0000-00-00 00:00:00'),
(298, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:16:10', '0000-00-00 00:00:00'),
(299, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:16:38', '0000-00-00 00:00:00'),
(300, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-03-09 11:17:27', '0000-00-00 00:00:00'),
(301, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-09 13:05:40', '0000-00-00 00:00:00'),
(302, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-09 13:06:51', '0000-00-00 00:00:00'),
(303, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-09 13:19:14', '0000-00-00 00:00:00'),
(304, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-09 13:20:08', '0000-00-00 00:00:00'),
(305, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-09 13:20:31', '0000-00-00 00:00:00'),
(306, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-09 13:20:54', '0000-00-00 00:00:00'),
(307, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-09 14:00:12', '0000-00-00 00:00:00'),
(308, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:01:40', '0000-00-00 00:00:00'),
(309, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:03:35', '2000-01-15 00:00:00'),
(310, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:04:24', '0000-00-00 00:00:00'),
(311, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:04:28', '0000-00-00 00:00:00'),
(312, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-09 14:05:15', '0000-00-00 00:00:00'),
(313, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:05:38', '0000-00-00 00:00:00'),
(314, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:08:39', '0000-00-00 00:00:00'),
(315, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:13:33', '0000-00-00 00:00:00'),
(316, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:15:30', '2000-01-17 00:00:00'),
(317, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:15:50', '0000-00-00 00:00:00'),
(318, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:22:17', '0000-00-00 00:00:00'),
(319, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:26:43', '0000-00-00 00:00:00'),
(320, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:26:59', '0000-00-00 00:00:00'),
(321, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:46:18', '0000-00-00 00:00:00'),
(322, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:48:22', '2000-01-24 00:00:00'),
(323, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:49:09', '0000-00-00 00:00:00'),
(324, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:52:10', '0000-00-00 00:00:00'),
(325, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:54:07', '2000-01-17 00:00:00'),
(326, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-09 14:54:27', '0000-00-00 00:00:00'),
(327, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-10 08:15:30', '0000-00-00 00:00:00'),
(328, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-10 08:16:03', '0000-00-00 00:00:00'),
(329, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-10 08:24:19', '0000-00-00 00:00:00'),
(330, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-10 08:24:28', '0000-00-00 00:00:00'),
(331, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-10 08:25:04', '0000-00-00 00:00:00'),
(332, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-10 08:25:43', '0000-00-00 00:00:00'),
(333, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-10 08:26:38', '0000-00-00 00:00:00'),
(334, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-03-10 08:51:15', '0000-00-00 00:00:00'),
(335, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 09:43:19', '0000-00-00 00:00:00'),
(336, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 09:45:36', '0000-00-00 00:00:00'),
(337, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 09:48:36', '0000-00-00 00:00:00'),
(338, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 09:49:08', '0000-00-00 00:00:00'),
(339, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 09:50:50', '2000-01-02 00:00:00'),
(340, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 09:51:13', '0000-00-00 00:00:00'),
(341, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 09:51:21', '0000-00-00 00:00:00'),
(342, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 09:53:33', '0000-00-00 00:00:00'),
(343, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 09:55:28', '2000-01-15 00:00:00'),
(344, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 09:57:22', '2000-01-14 00:00:00'),
(345, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 10:10:05', '0000-00-00 00:00:00'),
(346, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 10:10:27', '0000-00-00 00:00:00'),
(347, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 10:12:25', '2000-01-18 00:00:00'),
(348, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 10:14:22', '2000-01-17 00:00:00'),
(349, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 10:15:56', '0000-00-00 00:00:00'),
(350, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 10:17:03', '0000-00-00 00:00:00'),
(351, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 10:17:13', '0000-00-00 00:00:00'),
(352, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 10:22:36', '2000-03-23 00:00:00'),
(353, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-10 10:22:57', '0000-00-00 00:00:00'),
(354, 'ABCDEF', '192.168.1.11', 'likeproduct', '2020-03-10 12:23:30', '0000-00-00 00:00:00'),
(355, 'ABCDEF', '192.168.1.11', 'unlikeproduct', '2020-03-10 12:24:47', '0000-00-00 00:00:00'),
(356, 'ABCDEF', '192.168.1.11', 'getreviews', '2020-03-10 12:41:08', '0000-00-00 00:00:00'),
(357, 'ABCDEF', '192.168.1.11', 'getreviews', '2020-03-10 12:41:24', '0000-00-00 00:00:00'),
(358, 'ABCDEF', '192.168.1.11', 'givereview', '2020-03-10 13:04:20', '0000-00-00 00:00:00'),
(359, 'ABCDEF', '192.168.1.11', 'getreviews', '2020-03-10 13:05:43', '0000-00-00 00:00:00'),
(360, 'ABCDEF', '192.168.1.11', 'updatereview', '2020-03-10 13:07:55', '0000-00-00 00:00:00'),
(361, 'ABCDEF', '192.168.1.11', 'updatereview', '2020-03-10 13:08:57', '0000-00-00 00:00:00'),
(362, 'ABCDEF', '192.168.1.11', 'addToCart', '2020-03-10 14:06:50', '0000-00-00 00:00:00'),
(363, 'ABCDEF', '192.168.1.11', 'addToCart', '2020-03-10 14:07:12', '0000-00-00 00:00:00'),
(364, 'ABCDEF', '192.168.1.11', 'addToCart', '2020-03-10 14:08:04', '0000-00-00 00:00:00'),
(365, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:24:34', '0000-00-00 00:00:00'),
(366, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:25:14', '0000-00-00 00:00:00'),
(367, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:25:54', '0000-00-00 00:00:00'),
(368, 'ABCDEF', '192.168.1.11', 'deleteCart', '2020-03-10 14:30:28', '0000-00-00 00:00:00'),
(369, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:35:57', '2000-03-29 00:00:00'),
(370, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:36:11', '0000-00-00 00:00:00'),
(371, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:36:32', '0000-00-00 00:00:00'),
(372, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:37:10', '0000-00-00 00:00:00'),
(373, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:37:33', '0000-00-00 00:00:00'),
(374, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:37:44', '0000-00-00 00:00:00'),
(375, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:38:15', '0000-00-00 00:00:00'),
(376, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:38:37', '0000-00-00 00:00:00'),
(377, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:39:17', '0000-00-00 00:00:00'),
(378, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:40:22', '0000-00-00 00:00:00'),
(379, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:40:30', '0000-00-00 00:00:00'),
(380, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:40:33', '0000-00-00 00:00:00'),
(381, 'ABCDEF', '192.168.1.11', 'addToCart', '2020-03-10 14:40:44', '0000-00-00 00:00:00'),
(382, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:40:46', '0000-00-00 00:00:00'),
(383, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-10 14:40:59', '0000-00-00 00:00:00'),
(384, 'ABCDEF', '192.168.1.11', 'givereview', '2020-03-10 14:55:38', '0000-00-00 00:00:00'),
(385, 'ABCDEF', '192.168.1.11', 'givereview', '2020-03-10 14:55:53', '0000-00-00 00:00:00'),
(386, 'ABCDEF', '192.168.1.11', 'givereview', '2020-03-10 14:56:26', '0000-00-00 00:00:00'),
(387, 'ABCDEF', '192.168.1.11', 'givereview', '2020-03-10 14:56:36', '0000-00-00 00:00:00'),
(388, 'ABCDEF', '192.168.1.11', 'givereview', '2020-03-10 14:57:15', '0000-00-00 00:00:00'),
(389, 'ABCDEF', '192.168.1.11', 'getreviews', '2020-03-10 14:58:51', '0000-00-00 00:00:00'),
(390, 'ABCDEF', '192.168.1.11', 'getreviews', '2020-03-10 15:00:48', '2000-01-17 00:00:00'),
(391, 'ABCDEF', '192.168.1.11', 'getreviews', '2020-03-10 15:01:42', '0000-00-00 00:00:00'),
(392, 'ABCDEF', '192.168.1.11', 'getreviews', '2020-03-10 15:02:14', '0000-00-00 00:00:00'),
(393, 'ABCDEF', '192.168.1.11', 'getreviews', '2020-03-10 15:02:23', '0000-00-00 00:00:00'),
(394, 'ABCDEF', '192.168.1.11', 'addshippingaddress', '2020-03-15 08:44:59', '0000-00-00 00:00:00'),
(395, 'ABCDEF', '192.168.1.11', 'addshippingaddress', '2020-03-15 08:45:16', '0000-00-00 00:00:00'),
(396, 'ABCDEF', '192.168.1.11', 'getalladdress', '2020-03-15 08:58:12', '0000-00-00 00:00:00'),
(397, 'ABCDEF', '192.168.1.11', 'addshippingaddress', '2020-03-15 09:34:31', '0000-00-00 00:00:00'),
(398, 'ABCDEF', '192.168.1.11', 'addshippingaddress', '2020-03-15 09:39:54', '2000-03-23 00:00:00'),
(399, 'ABCDEF', '192.168.1.11', 'updateshippingaddress', '2020-03-15 09:40:56', '0000-00-00 00:00:00'),
(400, 'ABCDEF', '192.168.1.11', 'updateshippingaddress', '2020-03-15 09:41:11', '0000-00-00 00:00:00'),
(401, 'ABCDEF', '192.168.1.11', 'updateshippingaddress', '2020-03-15 09:47:55', '2000-04-04 00:00:00'),
(402, 'ABCDEF', '192.168.1.11', 'getalladdress', '2020-03-15 09:50:28', '0000-00-00 00:00:00'),
(403, 'ABCDEF', '192.168.1.11', 'deleteshippingaddress', '2020-03-15 09:50:46', '0000-00-00 00:00:00'),
(404, 'ABCDEF', '192.168.1.11', 'countries', '2020-03-15 09:52:29', '2000-01-03 00:00:00'),
(405, 'ABCDEF', '192.168.1.11', 'countries', '2020-03-15 09:52:54', '0000-00-00 00:00:00'),
(406, 'ABCDEF', '192.168.1.11', 'zones', '2020-03-15 09:53:39', '0000-00-00 00:00:00'),
(407, 'ABCDEF', '192.168.1.11', 'zones', '2020-03-15 09:54:24', '0000-00-00 00:00:00'),
(408, 'ABCDEF', '192.168.1.11', 'zones', '2020-03-15 09:55:08', '0000-00-00 00:00:00'),
(409, 'ABCDEF', '192.168.1.11', 'shippingMethods', '2020-03-15 10:19:41', '0000-00-00 00:00:00'),
(410, 'ABCDEF', '192.168.1.11', 'shippingMethods', '2020-03-15 10:20:13', '0000-00-00 00:00:00'),
(411, 'ABCDEF', '192.168.1.11', 'shippingMethods', '2020-03-15 10:20:23', '0000-00-00 00:00:00'),
(412, 'ABCDEF', '192.168.1.11', 'shippingMethods', '2020-03-15 10:20:29', '0000-00-00 00:00:00'),
(413, 'ABCDEF', '192.168.1.11', 'getpaymentmethods', '2020-03-15 10:27:55', '0000-00-00 00:00:00'),
(414, 'ABCDEF', '192.168.1.11', 'sendChat', '2020-03-15 13:49:03', '0000-00-00 00:00:00'),
(415, 'ABCDEF', '192.168.1.11', 'sendChat', '2020-03-15 13:49:28', '0000-00-00 00:00:00'),
(416, 'ABCDEF', '192.168.1.11', 'sendChat', '2020-03-15 13:50:54', '0000-00-00 00:00:00'),
(417, 'ABCDEF', '192.168.1.11', 'sendChat', '2020-03-15 13:51:30', '0000-00-00 00:00:00'),
(418, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 13:57:08', '0000-00-00 00:00:00'),
(419, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 13:58:28', '0000-00-00 00:00:00'),
(420, 'ABCDEF', '192.168.1.11', 'sendChat', '2020-03-15 13:59:20', '0000-00-00 00:00:00'),
(421, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 13:59:48', '0000-00-00 00:00:00'),
(422, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:08:38', '2000-05-30 00:00:00'),
(423, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:09:39', '0000-00-00 00:00:00'),
(424, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:10:15', '0000-00-00 00:00:00'),
(425, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:11:17', '0000-00-00 00:00:00'),
(426, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:11:41', '0000-00-00 00:00:00'),
(427, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:12:57', '0000-00-00 00:00:00'),
(428, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:13:22', '0000-00-00 00:00:00'),
(429, 'ABCDEF', '192.168.1.11', 'allChatByUser', '2020-03-15 14:19:37', '0000-00-00 00:00:00'),
(430, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:25:44', '0000-00-00 00:00:00'),
(431, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:26:41', '0000-00-00 00:00:00'),
(432, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:27:37', '0000-00-00 00:00:00'),
(433, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:30:44', '0000-00-00 00:00:00'),
(434, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:31:38', '0000-00-00 00:00:00'),
(435, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:31:58', '0000-00-00 00:00:00'),
(436, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-15 14:38:10', '0000-00-00 00:00:00'),
(437, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-16 07:37:39', '0000-00-00 00:00:00'),
(438, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-16 07:39:18', '0000-00-00 00:00:00'),
(439, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-16 07:39:57', '0000-00-00 00:00:00'),
(440, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-16 07:40:09', '0000-00-00 00:00:00'),
(441, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-16 07:40:53', '0000-00-00 00:00:00'),
(442, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-16 07:41:31', '0000-00-00 00:00:00'),
(443, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-16 07:41:46', '0000-00-00 00:00:00'),
(444, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-16 07:42:23', '0000-00-00 00:00:00'),
(445, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-16 07:42:40', '0000-00-00 00:00:00'),
(446, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-16 07:44:51', '2000-01-31 00:00:00'),
(447, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-03-18 09:51:26', '0000-00-00 00:00:00'),
(448, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-03-18 09:53:15', '2000-01-09 00:00:00'),
(449, 'ABCDEF', '192.168.1.11', 'getProfile', '2020-03-18 10:58:45', '0000-00-00 00:00:00'),
(450, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-03-18 11:25:47', '0000-00-00 00:00:00'),
(451, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-03-18 11:26:26', '0000-00-00 00:00:00'),
(452, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-03-18 11:32:53', '0000-00-00 00:00:00'),
(453, 'ABCDEF', '192.168.1.11', 'getAbout', '2020-03-18 11:41:17', '2000-05-04 00:00:00'),
(454, 'ABCDEF', '192.168.1.11', 'getAbout', '2020-03-18 11:41:41', '0000-00-00 00:00:00'),
(455, 'ABCDEF', '192.168.1.11', 'getFaq', '2020-03-18 11:44:39', '0000-00-00 00:00:00'),
(456, 'ABCDEF', '192.168.1.11', 'getBlog', '2020-03-18 11:47:52', '0000-00-00 00:00:00'),
(457, 'ABCDEF', '192.168.1.11', 'getBlog', '2020-03-18 11:51:04', '0000-00-00 00:00:00'),
(458, 'ABCDEF', '192.168.1.11', 'getFaq', '2020-03-18 11:51:20', '0000-00-00 00:00:00'),
(459, 'ABCDEF', '192.168.1.11', 'getAbout', '2020-03-18 11:52:06', '0000-00-00 00:00:00'),
(460, 'ABCDEF', '192.168.1.11', 'getAbout', '2020-03-18 11:52:51', '0000-00-00 00:00:00'),
(461, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-03-18 11:52:57', '0000-00-00 00:00:00'),
(462, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-03-18 11:53:51', '0000-00-00 00:00:00'),
(463, 'ABCDEF', '192.168.1.11', 'contactus', '2020-03-18 12:02:30', '2000-05-19 00:00:00'),
(464, 'ABCDEF', '192.168.1.11', 'contactus', '2020-03-18 12:03:04', '0000-00-00 00:00:00'),
(465, 'ABCDEF', '192.168.1.11', 'contactus', '2020-03-18 12:06:01', '0000-00-00 00:00:00'),
(466, 'ABCDEF', '192.168.1.11', 'contactus', '2020-03-18 12:06:17', '0000-00-00 00:00:00'),
(467, 'ABCDEF', '192.168.1.11', 'getlanguages', '2020-03-18 12:07:39', '0000-00-00 00:00:00'),
(468, NULL, NULL, 'getnotifications', '2020-03-18 12:48:58', '0000-00-00 00:00:00'),
(469, NULL, NULL, 'getnotifications', '2020-03-18 12:49:25', '0000-00-00 00:00:00'),
(470, NULL, NULL, 'getnotifications', '2020-03-18 12:50:34', '0000-00-00 00:00:00'),
(471, NULL, NULL, 'getnotifications', '2020-03-18 12:50:44', '0000-00-00 00:00:00'),
(472, NULL, NULL, 'setlanguage', '2020-03-18 12:58:53', '0000-00-00 00:00:00'),
(473, NULL, NULL, 'setlanguage', '2020-03-18 12:59:49', '0000-00-00 00:00:00'),
(474, NULL, NULL, 'setlanguage', '2020-03-18 12:59:56', '0000-00-00 00:00:00'),
(475, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-03-18 13:13:03', '0000-00-00 00:00:00'),
(476, NULL, NULL, 'requestseller', '2020-03-18 13:36:27', '0000-00-00 00:00:00'),
(477, NULL, NULL, 'requestseller', '2020-03-18 13:47:55', '0000-00-00 00:00:00'),
(478, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-03-19 03:18:24', '2005-07-21 00:00:00'),
(479, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-03-19 03:19:58', '0000-00-00 00:00:00'),
(480, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-03-19 03:21:12', '0000-00-00 00:00:00'),
(481, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-03-19 03:26:43', '2000-03-31 00:00:00'),
(482, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 03:45:46', '0000-00-00 00:00:00'),
(483, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 03:48:28', '0000-00-00 00:00:00'),
(484, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 03:51:12', '0000-00-00 00:00:00'),
(485, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 03:51:31', '0000-00-00 00:00:00'),
(486, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 03:52:57', '0000-00-00 00:00:00'),
(487, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 04:01:21', '2000-05-04 00:00:00'),
(488, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 04:01:59', '0000-00-00 00:00:00'),
(489, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 04:04:07', '2000-01-28 00:00:00'),
(490, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 04:04:24', '0000-00-00 00:00:00'),
(491, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 04:07:03', '0000-00-00 00:00:00'),
(492, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 04:07:35', '0000-00-00 00:00:00'),
(493, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 04:08:09', '0000-00-00 00:00:00'),
(494, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 04:08:44', '0000-00-00 00:00:00'),
(495, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-03-19 04:09:13', '0000-00-00 00:00:00'),
(496, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-03-19 04:30:12', '0000-00-00 00:00:00'),
(497, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-03-19 04:30:52', '0000-00-00 00:00:00'),
(498, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-03-19 04:31:28', '0000-00-00 00:00:00'),
(499, NULL, NULL, 'getallproductsforseller', '2020-03-19 04:53:27', '0000-00-00 00:00:00'),
(500, NULL, NULL, 'getallproductsforseller', '2020-03-19 04:54:07', '0000-00-00 00:00:00'),
(501, NULL, NULL, 'getallproductsforseller', '2020-03-19 04:54:35', '0000-00-00 00:00:00'),
(502, NULL, NULL, 'getallproductsforseller', '2020-03-19 04:55:33', '0000-00-00 00:00:00'),
(503, NULL, NULL, 'getallproductsforseller', '2020-03-19 04:55:43', '0000-00-00 00:00:00'),
(504, NULL, NULL, 'getallproductsforseller', '2020-03-19 04:55:51', '0000-00-00 00:00:00'),
(505, NULL, NULL, 'getallproductsforseller', '2020-03-19 04:56:34', '0000-00-00 00:00:00');
INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(506, NULL, NULL, 'getallproductsforseller', '2020-03-19 04:58:39', '2000-01-25 00:00:00'),
(507, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-19 05:01:04', '0000-00-00 00:00:00'),
(508, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-19 05:01:16', '0000-00-00 00:00:00'),
(509, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-19 05:01:29', '0000-00-00 00:00:00'),
(510, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-03-19 05:04:42', '0000-00-00 00:00:00'),
(511, 'ABCDEF', '192.168.1.11', 'updateproduct', '2020-03-19 06:12:30', '0000-00-00 00:00:00'),
(512, 'ABCDEF', '192.168.1.11', 'updateproduct', '2020-03-19 06:13:07', '0000-00-00 00:00:00'),
(513, 'ABCDEF', '192.168.1.11', 'updateproduct', '2020-03-19 06:13:30', '0000-00-00 00:00:00'),
(514, 'ABCDEF', '192.168.1.11', 'updateproduct', '2020-03-19 06:13:38', '0000-00-00 00:00:00'),
(515, 'ABCDEF', '192.168.1.11', 'updateproduct', '2020-03-19 06:13:47', '0000-00-00 00:00:00'),
(516, 'ABCDEF', '192.168.1.11', 'updateproduct', '2020-03-19 06:14:01', '0000-00-00 00:00:00'),
(517, NULL, NULL, 'deleteproduct', '2020-03-19 06:25:37', '0000-00-00 00:00:00'),
(518, 'ABCDEF', '192.168.1.11', 'myCart', '2020-03-19 06:28:29', '0000-00-00 00:00:00'),
(519, 'ABCDEF', '192.168.1.11', 'myWishList', '2020-03-19 06:42:50', '0000-00-00 00:00:00'),
(520, 'ABCDEF', '192.168.1.11', 'myWishList', '2020-03-19 06:43:25', '0000-00-00 00:00:00'),
(521, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-03-19 06:53:39', '2000-06-14 00:00:00'),
(522, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-03-19 07:01:04', '0000-00-00 00:00:00'),
(523, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-03-19 07:01:20', '0000-00-00 00:00:00'),
(524, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-03-19 07:01:55', '0000-00-00 00:00:00'),
(525, 'ABCDEF', '192.168.1.11', 'deleteAlert', '2020-03-19 07:05:29', '2000-02-14 00:00:00'),
(526, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-03-19 07:05:48', '0000-00-00 00:00:00'),
(527, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-03-19 07:07:04', '0000-00-00 00:00:00'),
(528, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-03-19 07:07:13', '0000-00-00 00:00:00'),
(529, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-03-19 07:07:16', '0000-00-00 00:00:00'),
(530, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-03-19 07:08:08', '0000-00-00 00:00:00'),
(531, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-03-19 07:08:17', '0000-00-00 00:00:00'),
(532, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-03-19 07:08:37', '0000-00-00 00:00:00'),
(533, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-03-19 07:08:55', '0000-00-00 00:00:00'),
(534, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-19 07:10:14', '0000-00-00 00:00:00'),
(535, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-19 07:10:38', '0000-00-00 00:00:00'),
(536, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-19 07:14:44', '0000-00-00 00:00:00'),
(537, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-19 07:15:48', '0000-00-00 00:00:00'),
(538, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-19 07:16:16', '0000-00-00 00:00:00'),
(539, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-19 07:16:36', '0000-00-00 00:00:00'),
(540, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-19 07:16:49', '0000-00-00 00:00:00'),
(541, 'ABCDEF', '192.168.1.11', 'allChat', '2020-03-19 07:18:35', '2000-01-06 00:00:00'),
(542, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-03-26 09:45:40', '0000-00-00 00:00:00'),
(543, 'ABCDEF', '192.168.1.11', 'countries', '2020-03-26 09:54:34', '0000-00-00 00:00:00'),
(544, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-03-30 10:29:24', '0000-00-00 00:00:00'),
(545, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-03-30 10:30:15', '0000-00-00 00:00:00'),
(546, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-03-30 10:30:25', '0000-00-00 00:00:00'),
(547, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-03-30 10:30:46', '0000-00-00 00:00:00'),
(548, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-08 07:43:34', '0000-00-00 00:00:00'),
(549, 'ABCDEF', '192.168.1.11', 'getProfile', '2020-05-08 07:44:57', '0000-00-00 00:00:00'),
(550, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-08 07:45:29', '0000-00-00 00:00:00'),
(551, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 03:27:18', '2007-09-09 00:00:00'),
(552, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-09 03:58:26', '0000-00-00 00:00:00'),
(553, 'ABCDEF', '192.168.1.11', 'verificationCode', '2020-05-09 04:00:56', '0000-00-00 00:00:00'),
(554, 'ABCDEF', '192.168.1.11', 'verificationCode', '2020-05-09 04:01:03', '0000-00-00 00:00:00'),
(555, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 04:02:37', '0000-00-00 00:00:00'),
(556, 'ABCDEF', '192.168.1.11', 'getProfile', '2020-05-09 04:03:45', '0000-00-00 00:00:00'),
(557, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 04:04:47', '0000-00-00 00:00:00'),
(558, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 04:04:53', '0000-00-00 00:00:00'),
(559, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 04:05:00', '0000-00-00 00:00:00'),
(560, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 04:05:07', '0000-00-00 00:00:00'),
(561, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 04:05:12', '0000-00-00 00:00:00'),
(562, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 04:05:15', '0000-00-00 00:00:00'),
(563, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-09 04:07:13', '2000-01-18 00:00:00'),
(564, 'ABCDEF', '192.168.1.11', 'verificationCode', '2020-05-09 04:07:48', '0000-00-00 00:00:00'),
(565, 'ABCDEF', '192.168.1.11', 'verificationCode', '2020-05-09 04:13:08', '2000-03-20 00:00:00'),
(566, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 04:13:31', '0000-00-00 00:00:00'),
(567, '', '', 'processlogin', '2020-05-09 06:00:44', '0000-00-00 00:00:00'),
(568, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 06:09:21', '0000-00-00 00:00:00'),
(569, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 06:11:07', '2000-01-06 00:00:00'),
(570, '', '', 'processlogin', '2020-05-09 06:11:10', '2000-06-26 00:00:00'),
(571, '', '', 'processlogin', '2020-05-09 06:11:25', '0000-00-00 00:00:00'),
(572, '', '', 'processlogin', '2020-05-09 06:12:11', '0000-00-00 00:00:00'),
(573, '', '', 'processlogin', '2020-05-09 06:12:50', '0000-00-00 00:00:00'),
(574, '', '', 'processlogin', '2020-05-09 06:13:37', '0000-00-00 00:00:00'),
(575, '', '', 'processlogin', '2020-05-09 06:13:54', '0000-00-00 00:00:00'),
(576, '', '', 'processlogin', '2020-05-09 06:14:16', '0000-00-00 00:00:00'),
(577, '', '', 'processlogin', '2020-05-09 06:14:30', '0000-00-00 00:00:00'),
(578, '', '', 'processlogin', '2020-05-09 06:15:01', '0000-00-00 00:00:00'),
(579, '', '', 'processlogin', '2020-05-09 06:15:52', '0000-00-00 00:00:00'),
(580, '', '', 'processlogin', '2020-05-09 06:16:31', '0000-00-00 00:00:00'),
(581, '', '', 'processlogin', '2020-05-09 06:17:08', '0000-00-00 00:00:00'),
(582, '', '', 'processlogin', '2020-05-09 06:17:35', '0000-00-00 00:00:00'),
(583, '', '', 'processlogin', '2020-05-09 06:20:17', '0000-00-00 00:00:00'),
(584, '', '', 'processlogin', '2020-05-09 06:20:24', '0000-00-00 00:00:00'),
(585, '', '', 'processlogin', '2020-05-09 06:21:02', '0000-00-00 00:00:00'),
(586, '', '', 'processlogin', '2020-05-09 06:21:49', '0000-00-00 00:00:00'),
(587, '', '', 'processlogin', '2020-05-09 06:22:28', '0000-00-00 00:00:00'),
(588, '', '', 'processlogin', '2020-05-09 06:22:47', '0000-00-00 00:00:00'),
(589, '', '', 'processlogin', '2020-05-09 06:23:31', '0000-00-00 00:00:00'),
(590, '', '', 'processlogin', '2020-05-09 06:23:40', '0000-00-00 00:00:00'),
(591, '', '', 'processlogin', '2020-05-09 06:26:14', '0000-00-00 00:00:00'),
(592, '', '', 'processlogin', '2020-05-09 06:38:02', '2000-07-08 00:00:00'),
(593, '', '', 'processlogin', '2020-05-09 06:59:48', '0000-00-00 00:00:00'),
(594, '', '', 'processlogin', '2020-05-09 07:14:03', '0000-00-00 00:00:00'),
(595, '', '', 'processlogin', '2020-05-09 07:15:05', '0000-00-00 00:00:00'),
(596, '', '', 'processlogin', '2020-05-09 07:15:22', '0000-00-00 00:00:00'),
(597, '', '', 'processlogin', '2020-05-09 07:15:45', '0000-00-00 00:00:00'),
(598, '', '', 'processlogin', '2020-05-09 07:16:04', '0000-00-00 00:00:00'),
(599, '', '', 'processlogin', '2020-05-09 07:17:42', '0000-00-00 00:00:00'),
(600, '', '', 'processlogin', '2020-05-09 07:18:42', '0000-00-00 00:00:00'),
(601, '', '', 'processlogin', '2020-05-09 07:19:24', '0000-00-00 00:00:00'),
(602, '', '', 'processlogin', '2020-05-09 07:28:07', '2000-05-23 00:00:00'),
(603, '', '', 'processlogin', '2020-05-09 07:28:50', '0000-00-00 00:00:00'),
(604, '', '', 'processlogin', '2020-05-09 07:29:30', '0000-00-00 00:00:00'),
(605, '', '', 'processlogin', '2020-05-09 07:29:43', '0000-00-00 00:00:00'),
(606, '', '', 'processlogin', '2020-05-09 07:30:01', '0000-00-00 00:00:00'),
(607, '', '', 'processlogin', '2020-05-09 07:30:20', '0000-00-00 00:00:00'),
(608, '', '', 'processlogin', '2020-05-09 07:30:38', '0000-00-00 00:00:00'),
(609, '', '', 'processlogin', '2020-05-09 07:30:52', '0000-00-00 00:00:00'),
(610, '', '', 'processlogin', '2020-05-09 07:31:07', '0000-00-00 00:00:00'),
(611, '', '', 'processlogin', '2020-05-09 07:31:18', '0000-00-00 00:00:00'),
(612, '', '', 'processlogin', '2020-05-09 07:34:31', '0000-00-00 00:00:00'),
(613, '', '', 'processlogin', '2020-05-09 07:36:21', '2000-01-10 00:00:00'),
(614, '', '', 'processlogin', '2020-05-09 07:36:49', '0000-00-00 00:00:00'),
(615, '', '', 'processlogin', '2020-05-09 07:37:50', '0000-00-00 00:00:00'),
(616, '', '', 'processlogin', '2020-05-09 07:47:47', '0000-00-00 00:00:00'),
(617, '', '', 'processlogin', '2020-05-09 07:48:02', '0000-00-00 00:00:00'),
(618, '', '', 'processlogin', '2020-05-09 07:48:13', '0000-00-00 00:00:00'),
(619, '', '', 'processlogin', '2020-05-09 07:48:30', '0000-00-00 00:00:00'),
(620, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 07:48:46', '0000-00-00 00:00:00'),
(621, '', '', 'processlogin', '2020-05-09 07:49:07', '0000-00-00 00:00:00'),
(622, '', '', 'processlogin', '2020-05-09 07:56:03', '2000-04-16 00:00:00'),
(623, '', '', 'processlogin', '2020-05-09 07:58:33', '0000-00-00 00:00:00'),
(624, '', '', 'processlogin', '2020-05-09 07:58:41', '0000-00-00 00:00:00'),
(625, '', '', 'processlogin', '2020-05-09 07:59:17', '0000-00-00 00:00:00'),
(626, '', '', 'processlogin', '2020-05-09 09:26:12', '0000-00-00 00:00:00'),
(627, '', '', 'processlogin', '2020-05-09 09:27:27', '0000-00-00 00:00:00'),
(628, '', '', 'processlogin', '2020-05-09 09:29:25', '2000-01-18 00:00:00'),
(629, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 09:30:07', '0000-00-00 00:00:00'),
(630, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 09:30:17', '0000-00-00 00:00:00'),
(631, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 09:30:22', '0000-00-00 00:00:00'),
(632, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 09:30:28', '0000-00-00 00:00:00'),
(633, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 09:30:41', '0000-00-00 00:00:00'),
(634, '', '', 'processlogin', '2020-05-09 09:30:48', '0000-00-00 00:00:00'),
(635, '', '', 'processlogin', '2020-05-09 09:35:40', '0000-00-00 00:00:00'),
(636, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 09:42:07', '0000-00-00 00:00:00'),
(637, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 09:42:13', '0000-00-00 00:00:00'),
(638, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 09:48:08', '0000-00-00 00:00:00'),
(639, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-09 09:54:12', '0000-00-00 00:00:00'),
(640, '', '', 'processlogin', '2020-05-09 10:31:04', '0000-00-00 00:00:00'),
(641, '', '', 'processlogin', '2020-05-09 12:11:17', '0000-00-00 00:00:00'),
(642, '', '', 'processlogin', '2020-05-09 12:11:17', '0000-00-00 00:00:00'),
(643, '', '', 'processlogin', '2020-05-09 12:11:20', '0000-00-00 00:00:00'),
(644, '', '', 'processlogin', '2020-05-09 12:11:23', '0000-00-00 00:00:00'),
(645, '', '', 'processlogin', '2020-05-09 12:11:25', '0000-00-00 00:00:00'),
(646, '', '', 'processlogin', '2020-05-09 12:11:36', '0000-00-00 00:00:00'),
(647, '', '', 'processlogin', '2020-05-09 12:11:38', '0000-00-00 00:00:00'),
(648, '', '', 'processlogin', '2020-05-09 12:12:41', '0000-00-00 00:00:00'),
(649, '', '', 'processlogin', '2020-05-09 12:12:56', '0000-00-00 00:00:00'),
(650, '', '', 'processlogin', '2020-05-09 12:14:55', '2000-01-19 00:00:00'),
(651, '', '', 'processlogin', '2020-05-09 12:16:01', '0000-00-00 00:00:00'),
(652, '', '', 'processlogin', '2020-05-09 12:16:03', '0000-00-00 00:00:00'),
(653, '', '', 'processlogin', '2020-05-09 12:18:57', '0000-00-00 00:00:00'),
(654, '', '', 'processlogin', '2020-05-09 12:19:34', '0000-00-00 00:00:00'),
(655, '', '', 'processlogin', '2020-05-09 20:32:38', '0000-00-00 00:00:00'),
(656, '', '', 'processlogin', '2020-05-09 20:32:44', '0000-00-00 00:00:00'),
(657, '', '', 'processlogin', '2020-05-09 20:36:17', '2000-02-13 00:00:00'),
(658, '', '', 'processlogin', '2020-05-09 20:37:27', '0000-00-00 00:00:00'),
(659, '', '', 'processlogin', '2020-05-09 20:37:37', '0000-00-00 00:00:00'),
(660, '', '', 'processlogin', '2020-05-09 20:38:36', '0000-00-00 00:00:00'),
(661, '', '', 'processlogin', '2020-05-09 20:39:38', '0000-00-00 00:00:00'),
(662, '', '', 'processlogin', '2020-05-09 20:41:12', '0000-00-00 00:00:00'),
(663, '', '', 'processlogin', '2020-05-09 20:41:18', '0000-00-00 00:00:00'),
(664, '', '', 'processlogin', '2020-05-09 20:41:32', '0000-00-00 00:00:00'),
(665, '', '', 'processlogin', '2020-05-09 20:41:43', '0000-00-00 00:00:00'),
(666, '', '', 'processlogin', '2020-05-09 20:41:59', '0000-00-00 00:00:00'),
(667, '', '', 'processlogin', '2020-05-09 20:43:37', '0000-00-00 00:00:00'),
(668, '', '', 'processlogin', '2020-05-09 20:44:07', '0000-00-00 00:00:00'),
(669, '', '', 'processlogin', '2020-05-09 20:44:13', '0000-00-00 00:00:00'),
(670, '', '', 'processlogin', '2020-05-09 20:44:39', '0000-00-00 00:00:00'),
(671, '', '', 'processlogin', '2020-05-09 20:45:39', '0000-00-00 00:00:00'),
(672, '', '', 'processlogin', '2020-05-09 20:46:14', '0000-00-00 00:00:00'),
(673, '', '', 'processlogin', '2020-05-09 20:49:43', '2000-02-09 00:00:00'),
(674, '', '', 'processlogin', '2020-05-09 20:58:12', '2000-05-09 00:00:00'),
(675, '', '', 'processlogin', '2020-05-09 20:58:14', '0000-00-00 00:00:00'),
(676, '', '', 'processlogin', '2020-05-09 20:58:16', '0000-00-00 00:00:00'),
(677, '', '', 'processlogin', '2020-05-09 20:58:18', '0000-00-00 00:00:00'),
(678, '', '', 'processlogin', '2020-05-09 20:58:21', '0000-00-00 00:00:00'),
(679, '', '', 'processlogin', '2020-05-09 20:58:41', '0000-00-00 00:00:00'),
(680, '', '', 'processlogin', '2020-05-09 20:58:44', '0000-00-00 00:00:00'),
(681, '', '', 'processlogin', '2020-05-09 20:58:46', '0000-00-00 00:00:00'),
(682, '', '', 'processlogin', '2020-05-09 20:58:58', '0000-00-00 00:00:00'),
(683, '', '', 'processlogin', '2020-05-09 20:58:59', '0000-00-00 00:00:00'),
(684, '', '', 'processlogin', '2020-05-09 20:59:01', '0000-00-00 00:00:00'),
(685, '', '', 'processlogin', '2020-05-09 20:59:02', '0000-00-00 00:00:00'),
(686, '', '', 'processlogin', '2020-05-09 21:03:49', '0000-00-00 00:00:00'),
(687, '', '', 'processlogin', '2020-05-09 21:04:44', '0000-00-00 00:00:00'),
(688, '', '', 'processlogin', '2020-05-09 21:04:52', '0000-00-00 00:00:00'),
(689, '', '', 'processlogin', '2020-05-09 21:05:27', '0000-00-00 00:00:00'),
(690, '', '', 'processlogin', '2020-05-09 21:05:30', '0000-00-00 00:00:00'),
(691, '', '', 'processlogin', '2020-05-09 21:05:32', '0000-00-00 00:00:00'),
(692, '', '', 'processlogin', '2020-05-09 21:05:51', '0000-00-00 00:00:00'),
(693, '', '', 'processlogin', '2020-05-09 21:06:07', '0000-00-00 00:00:00'),
(694, '', '', 'processlogin', '2020-05-09 22:13:48', '0000-00-00 00:00:00'),
(695, '', '', 'processlogin', '2020-05-09 22:14:47', '0000-00-00 00:00:00'),
(696, '', '', 'processlogin', '2020-05-09 22:20:31', '0000-00-00 00:00:00'),
(697, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-09 22:21:01', '0000-00-00 00:00:00'),
(698, 'ABCDEF', '192.168.1.11', 'verificationCode', '2020-05-09 22:24:19', '0000-00-00 00:00:00'),
(699, '', '', 'processlogin', '2020-05-09 22:24:37', '0000-00-00 00:00:00'),
(700, '', '', 'processlogin', '2020-05-09 22:34:35', '0000-00-00 00:00:00'),
(701, '', '', 'processlogin', '2020-05-09 22:42:06', '0000-00-00 00:00:00'),
(702, '', '', 'processlogin', '2020-05-09 22:42:39', '0000-00-00 00:00:00'),
(703, '', '', 'processlogin', '2020-05-09 22:42:54', '0000-00-00 00:00:00'),
(704, '', '', 'processlogin', '2020-05-09 22:43:04', '0000-00-00 00:00:00'),
(705, '', '', 'processlogin', '2020-05-09 23:05:46', '0000-00-00 00:00:00'),
(706, '', '', 'processlogin', '2020-05-09 23:06:48', '0000-00-00 00:00:00'),
(707, '', '', 'processlogin', '2020-05-09 23:07:08', '0000-00-00 00:00:00'),
(708, '', '', 'processlogin', '2020-05-09 23:07:30', '0000-00-00 00:00:00'),
(709, '', '', 'processlogin', '2020-05-09 23:07:57', '0000-00-00 00:00:00'),
(710, '', '', 'processlogin', '2020-05-09 23:08:21', '0000-00-00 00:00:00'),
(711, '', '', 'processlogin', '2020-05-09 23:08:45', '0000-00-00 00:00:00'),
(712, '', '', 'processlogin', '2020-05-10 01:03:47', '0000-00-00 00:00:00'),
(713, '', '', 'processlogin', '2020-05-10 01:04:30', '0000-00-00 00:00:00'),
(714, '', '', 'processlogin', '2020-05-10 01:04:50', '0000-00-00 00:00:00'),
(715, '', '', 'processlogin', '2020-05-10 01:05:05', '0000-00-00 00:00:00'),
(716, '', '', 'processlogin', '2020-05-10 01:05:25', '0000-00-00 00:00:00'),
(717, '', '', 'processlogin', '2020-05-10 01:05:40', '0000-00-00 00:00:00'),
(718, '', '', 'processlogin', '2020-05-10 01:06:19', '0000-00-00 00:00:00'),
(719, '', '', 'processlogin', '2020-05-10 01:06:30', '0000-00-00 00:00:00'),
(720, '', '', 'processlogin', '2020-05-10 01:06:42', '0000-00-00 00:00:00'),
(721, '', '', 'processlogin', '2020-05-10 01:06:55', '0000-00-00 00:00:00'),
(722, '', '', 'processlogin', '2020-05-10 01:07:05', '0000-00-00 00:00:00'),
(723, '', '', 'processlogin', '2020-05-10 01:07:16', '0000-00-00 00:00:00'),
(724, '', '', 'processlogin', '2020-05-10 01:07:26', '0000-00-00 00:00:00'),
(725, '', '', 'processlogin', '2020-05-10 01:08:03', '0000-00-00 00:00:00'),
(726, '', '', 'processlogin', '2020-05-10 01:18:04', '2000-06-01 00:00:00'),
(727, '', '', 'processlogin', '2020-05-10 01:18:19', '0000-00-00 00:00:00'),
(728, '', '', 'processlogin', '2020-05-10 01:18:31', '0000-00-00 00:00:00'),
(729, '', '', 'processlogin', '2020-05-10 01:19:03', '0000-00-00 00:00:00'),
(730, '', '', 'processlogin', '2020-05-10 01:19:16', '0000-00-00 00:00:00'),
(731, '', '', 'processlogin', '2020-05-10 01:23:38', '0000-00-00 00:00:00'),
(732, '', '', 'processlogin', '2020-05-10 01:25:06', '0000-00-00 00:00:00'),
(733, '', '', 'processlogin', '2020-05-10 01:26:36', '0000-00-00 00:00:00'),
(734, '', '', 'processlogin', '2020-05-10 01:28:27', '2000-01-11 00:00:00'),
(735, '', '', 'processlogin', '2020-05-10 01:28:54', '0000-00-00 00:00:00'),
(736, '', '', 'processlogin', '2020-05-10 01:29:12', '0000-00-00 00:00:00'),
(737, '', '', 'processlogin', '2020-05-10 01:29:24', '0000-00-00 00:00:00'),
(738, '', '', 'processlogin', '2020-05-10 01:31:04', '0000-00-00 00:00:00'),
(739, '', '', 'processlogin', '2020-05-10 01:31:24', '0000-00-00 00:00:00'),
(740, '', '', 'processlogin', '2020-05-10 01:31:38', '0000-00-00 00:00:00'),
(741, '', '', 'processlogin', '2020-05-10 01:31:58', '0000-00-00 00:00:00'),
(742, '', '', 'processlogin', '2020-05-10 01:32:05', '0000-00-00 00:00:00'),
(743, '', '', 'processlogin', '2020-05-10 01:32:16', '0000-00-00 00:00:00'),
(744, '', '', 'processlogin', '2020-05-10 01:32:27', '0000-00-00 00:00:00'),
(745, '', '', 'processlogin', '2020-05-10 01:33:28', '0000-00-00 00:00:00'),
(746, '', '', 'processlogin', '2020-05-10 01:33:45', '0000-00-00 00:00:00'),
(747, '', '', 'processlogin', '2020-05-10 01:34:05', '0000-00-00 00:00:00'),
(748, '', '', 'processlogin', '2020-05-10 01:34:22', '0000-00-00 00:00:00'),
(749, '', '', 'processlogin', '2020-05-10 01:35:20', '0000-00-00 00:00:00'),
(750, '', '', 'processlogin', '2020-05-10 01:35:41', '0000-00-00 00:00:00'),
(751, '', '', 'processlogin', '2020-05-10 01:36:03', '0000-00-00 00:00:00'),
(752, '', '', 'processlogin', '2020-05-10 01:36:23', '0000-00-00 00:00:00'),
(753, '', '', 'processlogin', '2020-05-10 01:37:33', '0000-00-00 00:00:00'),
(754, '', '', 'processlogin', '2020-05-10 01:38:02', '0000-00-00 00:00:00'),
(755, '', '', 'processlogin', '2020-05-10 01:49:23', '0000-00-00 00:00:00'),
(756, '', '', 'processlogin', '2020-05-10 01:50:45', '0000-00-00 00:00:00'),
(757, '', '', 'processlogin', '2020-05-10 01:57:12', '0000-00-00 00:00:00'),
(758, '', '', 'processlogin', '2020-05-10 01:59:00', '2000-01-08 00:00:00'),
(759, '', '', 'processlogin', '2020-05-10 02:00:17', '0000-00-00 00:00:00'),
(760, '', '', 'processlogin', '2020-05-10 02:02:30', '0000-00-00 00:00:00'),
(761, '', '', 'processlogin', '2020-05-10 02:02:58', '0000-00-00 00:00:00'),
(762, '', '', 'processlogin', '2020-05-10 02:05:06', '2000-01-28 00:00:00'),
(763, '', '', 'processlogin', '2020-05-10 04:39:59', '0000-00-00 00:00:00'),
(764, '', '', 'processlogin', '2020-05-10 04:40:10', '0000-00-00 00:00:00'),
(765, '', '', 'processlogin', '2020-05-10 04:44:47', '0000-00-00 00:00:00'),
(766, '', '', 'processlogin', '2020-05-10 04:44:53', '0000-00-00 00:00:00'),
(767, '', '', 'processlogin', '2020-05-10 04:47:34', '0000-00-00 00:00:00'),
(768, '', '', 'processlogin', '2020-05-10 04:52:34', '2000-03-00 00:00:00'),
(769, '', '', 'processlogin', '2020-05-10 04:52:55', '0000-00-00 00:00:00'),
(770, '', '', 'processlogin', '2020-05-10 04:53:57', '0000-00-00 00:00:00'),
(771, '', '', 'processlogin', '2020-05-10 04:55:15', '0000-00-00 00:00:00'),
(772, '', '', 'processlogin', '2020-05-10 04:55:44', '0000-00-00 00:00:00'),
(773, '', '', 'processlogin', '2020-05-10 05:00:31', '0000-00-00 00:00:00'),
(774, '', '', 'processlogin', '2020-05-10 05:00:51', '0000-00-00 00:00:00'),
(775, '', '', 'processlogin', '2020-05-10 07:57:45', '2001-06-14 00:00:00'),
(776, '', '', 'processlogin', '2020-05-10 10:01:09', '0000-00-00 00:00:00'),
(777, '', '', 'processlogin', '2020-05-10 10:01:23', '0000-00-00 00:00:00'),
(778, '', '', 'processlogin', '2020-05-10 10:03:25', '2000-01-22 00:00:00'),
(779, '', '', 'processlogin', '2020-05-10 10:03:33', '0000-00-00 00:00:00'),
(780, '', '', 'processlogin', '2020-05-10 10:05:08', '0000-00-00 00:00:00'),
(781, '', '', 'processlogin', '2020-05-10 10:06:51', '2000-01-03 00:00:00'),
(782, '', '', 'processlogin', '2020-05-10 10:23:15', '0000-00-00 00:00:00'),
(783, '', '', 'processlogin', '2020-05-10 10:23:49', '0000-00-00 00:00:00'),
(784, 'ABCDEF', '192.168.1.11', 'getpaymentmethods', '2020-05-11 08:06:36', '0000-00-00 00:00:00'),
(785, '', '', 'processlogin', '2020-05-11 08:11:01', '0000-00-00 00:00:00'),
(786, '', '', 'processlogin', '2020-05-11 08:11:11', '0000-00-00 00:00:00'),
(787, '', '', 'processlogin', '2020-05-11 08:14:01', '0000-00-00 00:00:00'),
(788, '', '', 'processlogin', '2020-05-11 08:14:45', '0000-00-00 00:00:00'),
(789, '', '', 'processlogin', '2020-05-11 08:20:32', '0000-00-00 00:00:00'),
(790, '', '', 'processlogin', '2020-05-11 08:23:34', '0000-00-00 00:00:00'),
(791, '', '', 'processlogin', '2020-05-11 08:25:53', '0000-00-00 00:00:00'),
(792, '', '', 'processlogin', '2020-05-11 08:33:55', '0000-00-00 00:00:00'),
(793, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-11 08:43:14', '0000-00-00 00:00:00'),
(794, '', '', 'processlogin', '2020-05-11 09:04:14', '0000-00-00 00:00:00'),
(795, '', '', 'processlogin', '2020-05-11 09:10:11', '0000-00-00 00:00:00'),
(796, '', '', 'processlogin', '2020-05-11 09:12:03', '2000-01-12 00:00:00'),
(797, '', '', 'processlogin', '2020-05-11 09:16:50', '0000-00-00 00:00:00'),
(798, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-05-11 09:17:21', '0000-00-00 00:00:00'),
(799, '', '', 'processlogin', '2020-05-11 09:21:14', '0000-00-00 00:00:00'),
(800, '', '', 'processlogin', '2020-05-11 09:23:49', '0000-00-00 00:00:00'),
(801, '', '', 'processlogin', '2020-05-11 09:26:39', '0000-00-00 00:00:00'),
(802, '', '', 'processlogin', '2020-05-11 09:29:16', '0000-00-00 00:00:00'),
(803, '', '', 'processlogin', '2020-05-11 09:30:16', '0000-00-00 00:00:00'),
(804, '', '', 'processlogin', '2020-05-11 09:31:13', '0000-00-00 00:00:00'),
(805, '', '', 'processlogin', '2020-05-11 09:36:51', '0000-00-00 00:00:00'),
(806, '', '', 'processlogin', '2020-05-11 09:39:17', '0000-00-00 00:00:00'),
(807, '', '', 'processlogin', '2020-05-11 09:40:16', '0000-00-00 00:00:00'),
(808, '', '', 'processlogin', '2020-05-11 09:41:10', '0000-00-00 00:00:00'),
(809, '', '', 'processlogin', '2020-05-11 09:43:22', '0000-00-00 00:00:00'),
(810, '', '', 'processlogin', '2020-05-11 09:45:49', '0000-00-00 00:00:00'),
(811, '', '', 'processlogin', '2020-05-11 09:51:33', '0000-00-00 00:00:00'),
(812, '', '', 'processlogin', '2020-05-11 09:53:12', '0000-00-00 00:00:00'),
(813, '', '', 'processlogin', '2020-05-11 09:54:27', '0000-00-00 00:00:00'),
(814, '', '', 'processlogin', '2020-05-11 09:56:06', '0000-00-00 00:00:00'),
(815, '', '', 'processlogin', '2020-05-11 09:59:53', '2000-02-27 00:00:00'),
(816, '', '', 'processlogin', '2020-05-11 10:03:58', '0000-00-00 00:00:00'),
(817, '', '', 'processlogin', '2020-05-11 10:04:36', '0000-00-00 00:00:00'),
(818, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-11 10:08:24', '0000-00-00 00:00:00'),
(819, '', '', 'processlogin', '2020-05-11 10:22:58', '2000-11-02 00:00:00'),
(820, '', '', 'processlogin', '2020-05-11 10:25:03', '2000-01-25 00:00:00'),
(821, '', '', 'processlogin', '2020-05-11 10:27:53', '0000-00-00 00:00:00'),
(822, '', '', 'processlogin', '2020-05-11 10:28:42', '0000-00-00 00:00:00'),
(823, '', '', 'processlogin', '2020-05-11 10:29:14', '0000-00-00 00:00:00'),
(824, '', '', 'processlogin', '2020-05-11 10:30:03', '0000-00-00 00:00:00'),
(825, '', '', 'processlogin', '2020-05-11 10:56:54', '0000-00-00 00:00:00'),
(826, '', '', 'processlogin', '2020-05-11 10:59:48', '0000-00-00 00:00:00'),
(827, '', '', 'processlogin', '2020-05-11 11:00:41', '0000-00-00 00:00:00'),
(828, '', '', 'processlogin', '2020-05-11 11:01:17', '0000-00-00 00:00:00'),
(829, '', '', 'processlogin', '2020-05-11 11:02:39', '0000-00-00 00:00:00'),
(830, '', '', 'processlogin', '2020-05-11 11:03:27', '0000-00-00 00:00:00'),
(831, '', '', 'processlogin', '2020-05-11 11:05:23', '2000-01-16 00:00:00'),
(832, '', '', 'processlogin', '2020-05-11 11:06:18', '0000-00-00 00:00:00'),
(833, '', '', 'processlogin', '2020-05-11 11:07:11', '0000-00-00 00:00:00'),
(834, '', '', 'processlogin', '2020-05-11 11:07:40', '0000-00-00 00:00:00'),
(835, '', '', 'processlogin', '2020-05-11 11:08:08', '0000-00-00 00:00:00'),
(836, '', '', 'processlogin', '2020-05-11 11:08:29', '0000-00-00 00:00:00'),
(837, '', '', 'processlogin', '2020-05-11 11:10:29', '2000-01-20 00:00:00'),
(838, '', '', 'processlogin', '2020-05-11 11:11:31', '0000-00-00 00:00:00'),
(839, '', '', 'processlogin', '2020-05-11 11:13:23', '2000-01-12 00:00:00'),
(840, '', '', 'processlogin', '2020-05-11 12:41:57', '0000-00-00 00:00:00'),
(841, '', '', 'processlogin', '2020-05-11 12:44:13', '0000-00-00 00:00:00'),
(842, '', '', 'processlogin', '2020-05-11 13:10:27', '0000-00-00 00:00:00'),
(843, '', '', 'processlogin', '2020-05-11 13:12:20', '2000-01-13 00:00:00'),
(844, '', '', 'processlogin', '2020-05-11 13:12:45', '0000-00-00 00:00:00'),
(845, '', '', 'processlogin', '2020-05-11 13:14:55', '2000-01-30 00:00:00'),
(846, '', '', 'processlogin', '2020-05-11 13:41:16', '0000-00-00 00:00:00'),
(847, '', '', 'processlogin', '2020-05-11 13:42:14', '0000-00-00 00:00:00'),
(848, '', '', 'processlogin', '2020-05-11 13:43:29', '0000-00-00 00:00:00'),
(849, '', '', 'processlogin', '2020-05-11 13:44:12', '0000-00-00 00:00:00'),
(850, '', '', 'processlogin', '2020-05-11 13:45:52', '0000-00-00 00:00:00'),
(851, '', '', 'processlogin', '2020-05-11 13:58:35', '0000-00-00 00:00:00'),
(852, '', '', 'processlogin', '2020-05-11 14:22:11', '0000-00-00 00:00:00'),
(853, '', '', 'processlogin', '2020-05-11 14:45:30', '0000-00-00 00:00:00'),
(854, '', '', 'processlogin', '2020-05-11 14:46:09', '0000-00-00 00:00:00'),
(855, '', '', 'processlogin', '2020-05-11 14:52:49', '2000-04-00 00:00:00'),
(856, '', '', 'processlogin', '2020-05-11 15:07:48', '0000-00-00 00:00:00'),
(857, '', '', 'processlogin', '2020-05-11 15:08:36', '0000-00-00 00:00:00'),
(858, '', '', 'processlogin', '2020-05-11 15:09:09', '0000-00-00 00:00:00'),
(859, '', '', 'processlogin', '2020-05-11 15:10:48', '0000-00-00 00:00:00'),
(860, '', '', 'processlogin', '2020-05-11 15:11:17', '0000-00-00 00:00:00'),
(861, '', '', 'processlogin', '2020-05-11 15:25:49', '0000-00-00 00:00:00'),
(862, '', '', 'processlogin', '2020-05-11 15:34:18', '2000-05-09 00:00:00'),
(863, '', '', 'processlogin', '2020-05-11 21:23:21', '0000-00-00 00:00:00'),
(864, '', '', 'processlogin', '2020-05-11 21:27:41', '0000-00-00 00:00:00'),
(865, '', '', 'processlogin', '2020-05-11 21:38:25', '0000-00-00 00:00:00'),
(866, '', '', 'processlogin', '2020-05-11 21:41:47', '2000-02-02 00:00:00'),
(867, '', '', 'processlogin', '2020-05-11 21:44:07', '0000-00-00 00:00:00'),
(868, '', '', 'processlogin', '2020-05-11 21:44:20', '0000-00-00 00:00:00'),
(869, '', '', 'processlogin', '2020-05-11 21:44:28', '0000-00-00 00:00:00'),
(870, '', '', 'processlogin', '2020-05-11 21:44:39', '0000-00-00 00:00:00'),
(871, '', '', 'processlogin', '2020-05-11 22:30:04', '0000-00-00 00:00:00'),
(872, '', '', 'processlogin', '2020-05-11 22:32:25', '0000-00-00 00:00:00'),
(873, '', '', 'processlogin', '2020-05-11 22:38:00', '0000-00-00 00:00:00'),
(874, '', '', 'processlogin', '2020-05-11 22:38:18', '0000-00-00 00:00:00'),
(875, '', '', 'processlogin', '2020-05-11 23:06:08', '0000-00-00 00:00:00'),
(876, '', '', 'processlogin', '2020-05-11 23:07:08', '0000-00-00 00:00:00'),
(877, '', '', 'processlogin', '2020-05-11 23:07:39', '0000-00-00 00:00:00'),
(878, '', '', 'processlogin', '2020-05-11 23:10:28', '0000-00-00 00:00:00'),
(879, '', '', 'processlogin', '2020-05-11 23:12:33', '2000-01-25 00:00:00'),
(880, '', '', 'processlogin', '2020-05-11 23:50:12', '0000-00-00 00:00:00'),
(881, '', '', 'processlogin', '2020-05-12 00:18:58', '0000-00-00 00:00:00'),
(882, '', '', 'processlogin', '2020-05-12 00:20:34', '0000-00-00 00:00:00'),
(883, '', '', 'processlogin', '2020-05-12 08:15:36', '0000-00-00 00:00:00'),
(884, '', '', 'processlogin', '2020-05-12 08:17:46', '2000-01-30 00:00:00'),
(885, '', '', 'processlogin', '2020-05-12 08:19:21', '0000-00-00 00:00:00'),
(886, '', '', 'processlogin', '2020-05-12 08:20:56', '0000-00-00 00:00:00'),
(887, '', '', 'processlogin', '2020-05-12 08:22:16', '0000-00-00 00:00:00'),
(888, '', '', 'processlogin', '2020-05-12 08:23:11', '0000-00-00 00:00:00'),
(889, '', '', 'processlogin', '2020-05-12 08:25:22', '2000-01-31 00:00:00'),
(890, '', '', 'processlogin', '2020-05-12 08:25:59', '0000-00-00 00:00:00'),
(891, '', '', 'processlogin', '2020-05-12 08:26:11', '0000-00-00 00:00:00'),
(892, '', '', 'processlogin', '2020-05-12 08:28:40', '0000-00-00 00:00:00'),
(893, '', '', 'processlogin', '2020-05-12 08:31:32', '0000-00-00 00:00:00'),
(894, '', '', 'processlogin', '2020-05-12 08:31:55', '0000-00-00 00:00:00'),
(895, '', '', 'processlogin', '2020-05-12 08:32:20', '0000-00-00 00:00:00'),
(896, '', '', 'processlogin', '2020-05-12 08:35:35', '0000-00-00 00:00:00'),
(897, '', '', 'processlogin', '2020-05-12 08:36:15', '0000-00-00 00:00:00'),
(898, '', '', 'processlogin', '2020-05-12 08:37:40', '0000-00-00 00:00:00'),
(899, '', '', 'processlogin', '2020-05-12 08:38:50', '0000-00-00 00:00:00'),
(900, '', '', 'processlogin', '2020-05-12 08:39:31', '0000-00-00 00:00:00'),
(901, '', '', 'processlogin', '2020-05-12 08:39:45', '0000-00-00 00:00:00'),
(902, '', '', 'processlogin', '2020-05-12 08:40:11', '0000-00-00 00:00:00'),
(903, '', '', 'processlogin', '2020-05-12 08:41:10', '0000-00-00 00:00:00'),
(904, '', '', 'processlogin', '2020-05-12 08:41:32', '0000-00-00 00:00:00'),
(905, '', '', 'processlogin', '2020-05-12 08:54:11', '0000-00-00 00:00:00'),
(906, '', '', 'processlogin', '2020-05-12 08:59:50', '0000-00-00 00:00:00'),
(907, '', '', 'processlogin', '2020-05-12 09:00:01', '0000-00-00 00:00:00'),
(908, '', '', 'processlogin', '2020-05-12 09:06:56', '2000-04-15 00:00:00'),
(909, '', '', 'processlogin', '2020-05-12 09:12:37', '0000-00-00 00:00:00'),
(910, '', '', 'processlogin', '2020-05-12 09:13:22', '0000-00-00 00:00:00'),
(911, '', '', 'processlogin', '2020-05-12 09:14:18', '0000-00-00 00:00:00'),
(912, '', '', 'processlogin', '2020-05-12 09:17:00', '0000-00-00 00:00:00'),
(913, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-12 10:59:38', '0000-00-00 00:00:00'),
(914, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-12 10:59:52', '0000-00-00 00:00:00'),
(915, '', '', 'processregistration', '2020-05-12 11:54:30', '0000-00-00 00:00:00'),
(916, '', '', 'processregistration', '2020-05-12 11:55:19', '0000-00-00 00:00:00'),
(917, '', '', 'processregistration', '2020-05-12 12:02:44', '0000-00-00 00:00:00'),
(918, '', '', 'processregistration', '2020-05-12 12:03:47', '0000-00-00 00:00:00'),
(919, '', '', 'processregistration', '2020-05-12 12:04:55', '0000-00-00 00:00:00'),
(920, '', '', 'processregistration', '2020-05-12 12:05:25', '0000-00-00 00:00:00'),
(921, 'ABCDEF', '192.168.1.11', 'resendVerify', '2020-05-12 12:44:47', '0000-00-00 00:00:00'),
(922, 'ABCDEF', '192.168.1.11', 'resendVerify', '2020-05-12 12:44:58', '0000-00-00 00:00:00'),
(923, '', '', 'processregistration', '2020-05-12 12:58:44', '0000-00-00 00:00:00'),
(924, '', '', 'verificationCode', '2020-05-12 13:01:46', '0000-00-00 00:00:00'),
(925, '', '', 'processregistration', '2020-05-12 13:03:20', '0000-00-00 00:00:00'),
(926, '', '', 'verificationCode', '2020-05-12 13:04:46', '0000-00-00 00:00:00'),
(927, '', '', 'processlogin', '2020-05-12 13:06:30', '2000-01-04 00:00:00'),
(928, 'ABCDEF', '192.168.1.11', 'resendVerify', '2020-05-12 13:08:16', '0000-00-00 00:00:00'),
(929, 'ABCDEF', '192.168.1.11', 'resendVerify', '2020-05-12 13:08:20', '0000-00-00 00:00:00'),
(930, 'ABCDEF', '192.168.1.11', 'resendVerify', '2020-05-12 13:08:52', '0000-00-00 00:00:00'),
(931, '', '', 'processregistration', '2020-05-12 13:16:52', '2000-06-22 00:00:00'),
(932, '', '', 'resendVerify', '2020-05-12 13:17:18', '0000-00-00 00:00:00'),
(933, '', '', 'resendVerify', '2020-05-12 13:17:40', '0000-00-00 00:00:00'),
(934, '', '', 'resendVerify', '2020-05-12 13:17:49', '0000-00-00 00:00:00'),
(935, '', '', 'resendVerify', '2020-05-12 13:18:00', '0000-00-00 00:00:00'),
(936, '', '', 'resendVerify', '2020-05-12 13:18:12', '0000-00-00 00:00:00'),
(937, '', '', 'processregistration', '2020-05-12 13:22:51', '0000-00-00 00:00:00'),
(938, '', '', 'resendVerify', '2020-05-12 13:23:07', '0000-00-00 00:00:00'),
(939, '', '', 'verificationCode', '2020-05-12 13:23:36', '0000-00-00 00:00:00'),
(940, '', '', 'verificationCode', '2020-05-12 13:23:51', '0000-00-00 00:00:00'),
(941, '', '', 'processlogin', '2020-05-12 13:35:50', '2000-07-19 00:00:00'),
(942, '', '', 'processlogin', '2020-05-12 13:48:06', '0000-00-00 00:00:00'),
(943, '', '', 'processlogin', '2020-05-12 13:50:21', '0000-00-00 00:00:00'),
(944, '', '', 'processregistration', '2020-05-12 13:53:19', '0000-00-00 00:00:00'),
(945, '', '', 'resendVerify', '2020-05-12 13:53:23', '0000-00-00 00:00:00'),
(946, '', '', 'resendVerify', '2020-05-12 13:53:51', '0000-00-00 00:00:00'),
(947, '', '', 'verificationCode', '2020-05-12 13:54:29', '0000-00-00 00:00:00'),
(948, '', '', 'verificationCode', '2020-05-12 13:54:57', '0000-00-00 00:00:00'),
(949, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 13:56:56', '0000-00-00 00:00:00'),
(950, '', '', 'processforgotpassword', '2020-05-12 14:03:55', '0000-00-00 00:00:00'),
(951, '', '', 'processlogin', '2020-05-12 20:01:06', '0000-00-00 00:00:00'),
(952, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-12 20:10:25', '0000-00-00 00:00:00'),
(953, '', '', 'processlogin', '2020-05-12 20:24:33', '0000-00-00 00:00:00'),
(954, '', '', 'processregistration', '2020-05-12 20:25:34', '0000-00-00 00:00:00'),
(955, '', '', 'verificationCode', '2020-05-12 20:26:03', '0000-00-00 00:00:00'),
(956, '', '', 'processforgotpassword', '2020-05-12 20:26:15', '0000-00-00 00:00:00'),
(957, '', '', 'processforgotpassword', '2020-05-12 20:36:23', '2000-06-08 00:00:00'),
(958, '', '', 'processforgotpassword', '2020-05-12 21:16:29', '0000-00-00 00:00:00'),
(959, '', '', 'processforgotpassword', '2020-05-12 21:17:02', '0000-00-00 00:00:00'),
(960, '', '', 'processforgotpassword', '2020-05-12 21:18:44', '2000-01-02 00:00:00'),
(961, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:19:55', '0000-00-00 00:00:00'),
(962, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:20:06', '0000-00-00 00:00:00'),
(963, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:20:10', '0000-00-00 00:00:00'),
(964, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:25:20', '2000-03-10 00:00:00'),
(965, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:25:25', '0000-00-00 00:00:00'),
(966, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:43:50', '2000-11-05 00:00:00'),
(967, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:43:57', '0000-00-00 00:00:00'),
(968, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 21:46:32', '0000-00-00 00:00:00'),
(969, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 21:47:21', '0000-00-00 00:00:00'),
(970, '', '', 'processforgotpassword', '2020-05-12 21:47:39', '0000-00-00 00:00:00'),
(971, '', '', 'processforgotpassword', '2020-05-12 21:48:04', '0000-00-00 00:00:00'),
(972, '', '', 'processforgotpassword', '2020-05-12 21:48:29', '0000-00-00 00:00:00'),
(973, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 21:50:05', '0000-00-00 00:00:00'),
(974, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 21:50:17', '0000-00-00 00:00:00'),
(975, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:50:46', '0000-00-00 00:00:00'),
(976, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:50:54', '0000-00-00 00:00:00'),
(977, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 21:51:11', '0000-00-00 00:00:00'),
(978, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 21:51:17', '0000-00-00 00:00:00'),
(979, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 21:54:30', '0000-00-00 00:00:00'),
(980, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 21:54:37', '0000-00-00 00:00:00'),
(981, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:54:45', '0000-00-00 00:00:00'),
(982, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:55:11', '0000-00-00 00:00:00'),
(983, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 21:55:24', '0000-00-00 00:00:00'),
(984, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:57:04', '0000-00-00 00:00:00'),
(985, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:57:21', '0000-00-00 00:00:00'),
(986, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 21:57:25', '0000-00-00 00:00:00'),
(987, 'ABCDEF', '192.168.1.11', 'updatepassword', '2020-05-12 21:58:08', '0000-00-00 00:00:00'),
(988, 'ABCDEF', '192.168.1.11', 'updatepassword', '2020-05-12 22:00:02', '2000-01-14 00:00:00'),
(989, 'ABCDEF', '192.168.1.11', 'updatepassword', '2020-05-12 22:00:10', '0000-00-00 00:00:00'),
(990, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 22:01:15', '0000-00-00 00:00:00'),
(991, 'ABCDEF', '192.168.1.11', 'updatepassword', '2020-05-12 22:02:11', '0000-00-00 00:00:00'),
(992, 'ABCDEF', '192.168.1.11', 'updatepassword', '2020-05-12 22:02:33', '0000-00-00 00:00:00'),
(993, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 22:05:24', '0000-00-00 00:00:00'),
(994, 'ABCDEF', '192.168.1.11', 'updatepassword', '2020-05-12 22:05:30', '0000-00-00 00:00:00'),
(995, 'ABCDEF', '192.168.1.11', 'updatepassword', '2020-05-12 22:05:36', '0000-00-00 00:00:00'),
(996, 'ABCDEF', '192.168.1.11', 'updatepassword', '2020-05-12 22:05:55', '0000-00-00 00:00:00'),
(997, '', '', 'processforgotpassword', '2020-05-12 22:06:03', '0000-00-00 00:00:00'),
(998, '', '', 'processforgotpassword', '2020-05-12 22:06:31', '0000-00-00 00:00:00'),
(999, 'ABCDEF', '192.168.1.11', 'updatepassword', '2020-05-12 22:06:46', '0000-00-00 00:00:00'),
(1000, '', '', 'processforgotpassword', '2020-05-12 22:10:41', '0000-00-00 00:00:00'),
(1001, '', '', 'processforgotpassword', '2020-05-12 22:13:51', '0000-00-00 00:00:00'),
(1002, '', '', 'verificationCodeForPassword', '2020-05-12 22:15:35', '2000-01-04 00:00:00'),
(1003, '', '', 'processforgotpassword', '2020-05-12 22:15:49', '0000-00-00 00:00:00'),
(1004, '', '', 'verificationCodeForPassword', '2020-05-12 22:16:07', '0000-00-00 00:00:00'),
(1005, 'ABCDEF', '192.168.1.11', 'getProfile', '2020-05-12 22:17:06', '2000-06-20 00:00:00'),
(1006, 'ABCDEF', '192.168.1.11', 'getProfile', '2020-05-12 22:17:11', '0000-00-00 00:00:00'),
(1007, '', '', 'verificationCodeForPassword', '2020-05-12 22:17:37', '0000-00-00 00:00:00'),
(1008, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 22:17:47', '0000-00-00 00:00:00'),
(1009, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-12 22:17:56', '0000-00-00 00:00:00'),
(1010, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 22:18:16', '0000-00-00 00:00:00'),
(1011, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 22:18:22', '0000-00-00 00:00:00'),
(1012, '', '', 'processforgotpassword', '2020-05-12 22:18:26', '0000-00-00 00:00:00'),
(1013, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 22:18:49', '0000-00-00 00:00:00'),
(1014, '', '', 'processforgotpassword', '2020-05-12 22:18:58', '0000-00-00 00:00:00'),
(1015, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 22:19:27', '0000-00-00 00:00:00'),
(1016, '', '', 'processforgotpassword', '2020-05-12 22:21:30', '0000-00-00 00:00:00'),
(1017, '', '', 'verificationCodeForPassword', '2020-05-12 22:21:42', '0000-00-00 00:00:00'),
(1018, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 22:21:46', '0000-00-00 00:00:00'),
(1019, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 22:21:50', '0000-00-00 00:00:00'),
(1020, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-12 22:21:58', '0000-00-00 00:00:00'),
(1021, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 22:22:19', '0000-00-00 00:00:00'),
(1022, 'ABCDEF', '192.168.1.11', 'verificationCodeForPassword', '2020-05-12 22:22:24', '0000-00-00 00:00:00'),
(1023, '', '', 'processforgotpassword', '2020-05-12 22:23:03', '0000-00-00 00:00:00'),
(1024, '', '', 'verificationCodeForPassword', '2020-05-12 22:23:32', '0000-00-00 00:00:00'),
(1025, '', '', 'updatepassword', '2020-05-12 22:27:59', '0000-00-00 00:00:00'),
(1026, '', '', 'processforgotpassword', '2020-05-12 22:31:01', '0000-00-00 00:00:00'),
(1027, '', '', 'processforgotpassword', '2020-05-12 22:37:51', '2000-04-10 00:00:00'),
(1028, '', '', 'processforgotpassword', '2020-05-12 22:38:44', '0000-00-00 00:00:00'),
(1029, '', '', 'processforgotpassword', '2020-05-12 22:40:54', '2000-01-30 00:00:00'),
(1030, '', '', 'verificationCodeForPassword', '2020-05-12 22:41:19', '0000-00-00 00:00:00'),
(1031, '', '', 'updatepassword', '2020-05-12 22:41:46', '0000-00-00 00:00:00'),
(1032, '', '', 'processforgotpassword', '2020-05-12 22:42:17', '0000-00-00 00:00:00'),
(1033, '', '', 'verificationCodeForPassword', '2020-05-12 22:42:40', '0000-00-00 00:00:00'),
(1034, '', '', 'updatepassword', '2020-05-12 22:43:00', '0000-00-00 00:00:00'),
(1035, '', '', 'processforgotpassword', '2020-05-12 22:43:36', '0000-00-00 00:00:00'),
(1036, '', '', 'verificationCodeForPassword', '2020-05-12 22:43:54', '0000-00-00 00:00:00'),
(1037, '', '', 'updatepassword', '2020-05-12 22:44:11', '0000-00-00 00:00:00'),
(1038, '', '', 'processlogin', '2020-05-12 22:44:24', '0000-00-00 00:00:00'),
(1039, '', '', 'processlogin', '2020-05-12 22:44:28', '0000-00-00 00:00:00'),
(1040, '', '', 'processregistration', '2020-05-12 22:45:04', '0000-00-00 00:00:00'),
(1041, '', '', 'verificationCode', '2020-05-12 22:45:53', '0000-00-00 00:00:00'),
(1042, '', '', 'verificationCode', '2020-05-12 22:46:04', '0000-00-00 00:00:00'),
(1043, '', '', 'resendVerify', '2020-05-12 22:48:13', '2000-01-29 00:00:00'),
(1044, '', '', 'processregistration', '2020-05-12 22:48:51', '0000-00-00 00:00:00'),
(1045, '', '', 'verificationCode', '2020-05-12 22:49:06', '0000-00-00 00:00:00'),
(1046, '', '', 'processlogin', '2020-05-12 22:51:06', '2000-01-20 00:00:00'),
(1047, '', '', 'processlogin', '2020-05-12 22:51:13', '0000-00-00 00:00:00'),
(1048, '', '', 'processlogin', '2020-05-12 23:15:31', '0000-00-00 00:00:00'),
(1049, 'ABCDEF', '192.168.1.11', 'contactus', '2020-05-12 23:22:43', '0000-00-00 00:00:00'),
(1050, 'ABCDEF', '192.168.1.11', 'contactus', '2020-05-12 23:22:51', '0000-00-00 00:00:00'),
(1051, 'ABCDEF', '192.168.1.11', 'contactus', '2020-05-12 23:23:04', '0000-00-00 00:00:00'),
(1052, '', '', 'processlogin', '2020-05-12 23:26:41', '0000-00-00 00:00:00'),
(1053, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-05-13 08:13:12', '0000-00-00 00:00:00'),
(1054, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-05-13 08:13:21', '0000-00-00 00:00:00'),
(1055, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-05-13 08:15:12', '2000-01-11 00:00:00'),
(1056, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-05-13 08:16:33', '0000-00-00 00:00:00'),
(1057, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-05-13 08:16:38', '0000-00-00 00:00:00'),
(1058, '', '', 'processlogin', '2020-05-13 08:18:10', '0000-00-00 00:00:00'),
(1059, '', '', 'processlogin', '2020-05-13 08:18:15', '0000-00-00 00:00:00'),
(1060, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 08:18:31', '2000-01-13 00:00:00'),
(1061, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 08:18:38', '0000-00-00 00:00:00'),
(1062, '', '', 'processlogin', '2020-05-13 08:19:10', '0000-00-00 00:00:00'),
(1063, '', '', 'processlogin', '2020-05-13 08:19:40', '0000-00-00 00:00:00'),
(1064, '', '', 'processlogin', '2020-05-13 08:21:34', '2000-01-14 00:00:00'),
(1065, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-05-13 08:25:13', '0000-00-00 00:00:00'),
(1066, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-05-13 08:25:19', '0000-00-00 00:00:00'),
(1067, 'ABCDEF', '192.168.1.11', 'updateproduct', '2020-05-13 08:44:27', '0000-00-00 00:00:00'),
(1068, 'ABCDEF', '192.168.1.11', 'updateproduct', '2020-05-13 08:44:38', '0000-00-00 00:00:00'),
(1069, '', '', 'processlogin', '2020-05-13 09:13:18', '0000-00-00 00:00:00'),
(1070, '', '', 'processlogin', '2020-05-13 09:19:01', '0000-00-00 00:00:00'),
(1071, '', '', 'processlogin', '2020-05-13 09:19:05', '0000-00-00 00:00:00'),
(1072, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-13 09:28:20', '0000-00-00 00:00:00'),
(1073, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-13 09:28:25', '0000-00-00 00:00:00'),
(1074, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-13 09:28:30', '0000-00-00 00:00:00'),
(1075, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-13 09:28:35', '0000-00-00 00:00:00'),
(1076, 'ABCDEF', '192.168.1.11', 'verificationCode', '2020-05-13 09:29:41', '0000-00-00 00:00:00'),
(1077, 'ABCDEF', '192.168.1.11', 'verificationCode', '2020-05-13 09:29:47', '0000-00-00 00:00:00'),
(1078, '', '', 'processlogin', '2020-05-13 09:30:39', '0000-00-00 00:00:00'),
(1079, '', '', 'processregistration', '2020-05-13 09:33:04', '0000-00-00 00:00:00'),
(1080, '', '', 'verificationCode', '2020-05-13 09:34:46', '2000-01-02 00:00:00'),
(1081, '', '', 'processlogin', '2020-05-13 09:41:48', '2000-04-22 00:00:00'),
(1082, '', '', 'processforgotpassword', '2020-05-13 09:43:37', '2000-01-09 00:00:00'),
(1083, '', '', 'resendVerify', '2020-05-13 09:43:56', '0000-00-00 00:00:00'),
(1084, '', '', 'verificationCodeForPassword', '2020-05-13 09:44:08', '0000-00-00 00:00:00'),
(1085, '', '', 'updatepassword', '2020-05-13 09:44:25', '0000-00-00 00:00:00'),
(1086, '', '', 'processregistration', '2020-05-13 09:47:22', '0000-00-00 00:00:00'),
(1087, '', '', 'verificationCode', '2020-05-13 09:47:38', '0000-00-00 00:00:00'),
(1088, '', '', 'processregistration', '2020-05-13 10:01:04', '2000-08-06 00:00:00'),
(1089, '', '', 'verificationCode', '2020-05-13 10:01:15', '0000-00-00 00:00:00'),
(1090, '', '', 'processlogin', '2020-05-13 10:14:33', '0000-00-00 00:00:00'),
(1091, '', '', 'processlogin', '2020-05-13 10:34:12', '0000-00-00 00:00:00'),
(1092, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-13 10:34:59', '0000-00-00 00:00:00'),
(1093, 'ABCDEF', '192.168.1.11', 'getProfile', '2020-05-13 10:35:06', '0000-00-00 00:00:00'),
(1094, 'ABCDEF', '192.168.1.11', 'getProfile', '2020-05-13 10:35:13', '0000-00-00 00:00:00'),
(1095, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-13 10:39:17', '0000-00-00 00:00:00'),
(1096, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-13 10:39:24', '0000-00-00 00:00:00'),
(1097, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 10:56:00', '0000-00-00 00:00:00'),
(1098, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 11:57:22', '0000-00-00 00:00:00'),
(1099, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 11:57:31', '0000-00-00 00:00:00'),
(1100, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 11:59:23', '2000-01-12 00:00:00'),
(1101, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 11:59:30', '0000-00-00 00:00:00'),
(1102, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 12:00:00', '0000-00-00 00:00:00'),
(1103, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 12:01:11', '0000-00-00 00:00:00'),
(1104, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 12:01:50', '0000-00-00 00:00:00'),
(1105, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 12:02:15', '0000-00-00 00:00:00'),
(1106, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 12:02:20', '0000-00-00 00:00:00'),
(1107, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 12:03:40', '0000-00-00 00:00:00'),
(1108, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 12:12:23', '2000-05-23 00:00:00'),
(1109, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 12:14:08', '2000-01-05 00:00:00'),
(1110, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-13 12:15:04', '0000-00-00 00:00:00'),
(1111, NULL, NULL, 'deleteproduct', '2020-05-13 12:15:34', '0000-00-00 00:00:00'),
(1112, 'ABCDEF', '192.168.1.11', 'deleteproduct', '2020-05-13 12:15:59', '0000-00-00 00:00:00'),
(1113, 'ABCDEF', '192.168.1.11', 'deleteproduct', '2020-05-13 12:16:52', '0000-00-00 00:00:00');
INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(1114, 'ABCDEF', '192.168.1.11', 'mainCategories', '2020-05-13 12:29:16', '0000-00-00 00:00:00'),
(1115, 'ABCDEF', '192.168.1.11', 'mainCategories', '2020-05-13 12:30:30', '0000-00-00 00:00:00'),
(1116, 'ABCDEF', '192.168.1.11', 'subCategories', '2020-05-13 12:30:54', '0000-00-00 00:00:00'),
(1117, 'ABCDEF', '192.168.1.11', 'subCategories', '2020-05-13 12:31:15', '0000-00-00 00:00:00'),
(1118, 'ABCDEF', '192.168.1.11', 'subCategories', '2020-05-13 12:31:19', '0000-00-00 00:00:00'),
(1119, 'ABCDEF', '192.168.1.11', 'subCategories', '2020-05-13 12:33:29', '2000-01-30 00:00:00'),
(1120, 'ABCDEF', '192.168.1.11', 'subCategories', '2020-05-13 12:34:37', '0000-00-00 00:00:00'),
(1121, 'ABCDEF', '192.168.1.11', 'subCategories', '2020-05-13 12:34:48', '0000-00-00 00:00:00'),
(1122, 'ABCDEF', '192.168.1.11', 'postproduct', '2020-05-13 12:35:44', '0000-00-00 00:00:00'),
(1123, 'ABCDEF', '192.168.1.11', 'mainCategories', '2020-05-13 12:36:11', '0000-00-00 00:00:00'),
(1124, 'ABCDEF', '192.168.1.11', 'listOfBrands', '2020-05-13 12:39:40', '2000-02-09 00:00:00'),
(1125, 'ABCDEF', '192.168.1.11', 'listOfDesigners', '2020-05-13 12:42:23', '0000-00-00 00:00:00'),
(1126, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-13 12:48:44', '0000-00-00 00:00:00'),
(1127, '', '', 'processlogin', '2020-05-13 12:52:06', '0000-00-00 00:00:00'),
(1128, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-13 13:07:15', '2000-11-11 00:00:00'),
(1129, 'ABCDEF', '192.168.1.11', 'updatepassword', '2020-05-13 13:14:23', '2000-04-28 00:00:00'),
(1130, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-13 13:14:35', '0000-00-00 00:00:00'),
(1131, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-13 13:14:42', '0000-00-00 00:00:00'),
(1132, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-13 13:14:47', '0000-00-00 00:00:00'),
(1133, '', '', 'updatecustomerinfo', '2020-05-13 13:14:59', '0000-00-00 00:00:00'),
(1134, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-13 13:15:20', '0000-00-00 00:00:00'),
(1135, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-13 13:15:27', '0000-00-00 00:00:00'),
(1136, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-13 13:16:30', '0000-00-00 00:00:00'),
(1137, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-13 13:16:33', '0000-00-00 00:00:00'),
(1138, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-13 13:16:38', '0000-00-00 00:00:00'),
(1139, '', '', 'updatecustomerinfo', '2020-05-13 13:18:02', '0000-00-00 00:00:00'),
(1140, '', '', 'processlogin', '2020-05-13 15:20:41', '0000-00-00 00:00:00'),
(1141, '', '', 'updatecustomerinfo', '2020-05-13 16:28:42', '0000-00-00 00:00:00'),
(1142, '', '', 'updatecustomerinfo', '2020-05-13 16:28:53', '0000-00-00 00:00:00'),
(1143, '', '', 'updatecustomerinfo', '2020-05-13 16:29:59', '0000-00-00 00:00:00'),
(1144, '', '', 'updatecustomerinfo', '2020-05-13 16:30:21', '0000-00-00 00:00:00'),
(1145, '', '', 'updatecustomerinfo', '2020-05-13 16:36:38', '0000-00-00 00:00:00'),
(1146, '', '', 'updatecustomerinfo', '2020-05-13 16:37:12', '0000-00-00 00:00:00'),
(1147, '', '', 'updatecustomerinfo', '2020-05-13 16:37:34', '0000-00-00 00:00:00'),
(1148, 'ABCDEF', '192.168.1.11', 'getProfile', '2020-05-13 17:09:07', '0000-00-00 00:00:00'),
(1149, '', '', 'updatecustomerinfo', '2020-05-13 17:09:15', '0000-00-00 00:00:00'),
(1150, '', '', 'updatecustomerinfo', '2020-05-13 17:09:23', '0000-00-00 00:00:00'),
(1151, 'ABCDEF', '192.168.1.11', 'getProfile', '2020-05-13 17:09:36', '0000-00-00 00:00:00'),
(1152, '', '', 'updatecustomerinfo', '2020-05-13 17:18:16', '0000-00-00 00:00:00'),
(1153, '', '', 'updatecustomerinfo', '2020-05-13 17:18:41', '0000-00-00 00:00:00'),
(1154, '', '', 'updatecustomerinfo', '2020-05-13 17:18:59', '0000-00-00 00:00:00'),
(1155, '', '', 'updatecustomerinfo', '2020-05-13 17:19:28', '0000-00-00 00:00:00'),
(1156, '', '', 'updatecustomerinfo', '2020-05-13 17:19:52', '0000-00-00 00:00:00'),
(1157, '', '', 'updatecustomerinfo', '2020-05-13 17:20:26', '0000-00-00 00:00:00'),
(1158, '', '', 'updatecustomerinfo', '2020-05-13 17:22:30', '2000-01-24 00:00:00'),
(1159, '', '', 'updatecustomerinfo', '2020-05-13 17:22:53', '0000-00-00 00:00:00'),
(1160, '', '', 'updatecustomerinfo', '2020-05-13 17:23:15', '0000-00-00 00:00:00'),
(1161, '', '', 'updatecustomerinfo', '2020-05-13 17:23:48', '0000-00-00 00:00:00'),
(1162, '', '', 'updatecustomerinfo', '2020-05-13 17:25:30', '2000-01-02 00:00:00'),
(1163, '', '', 'updatecustomerinfo', '2020-05-13 17:26:27', '0000-00-00 00:00:00'),
(1164, '', '', 'updatecustomerinfo', '2020-05-13 17:26:56', '0000-00-00 00:00:00'),
(1165, '', '', 'updatecustomerinfo', '2020-05-13 17:27:16', '0000-00-00 00:00:00'),
(1166, '', '', 'updatecustomerinfo', '2020-05-13 17:28:13', '0000-00-00 00:00:00'),
(1167, '', '', 'updatecustomerinfo', '2020-05-13 17:28:45', '0000-00-00 00:00:00'),
(1168, '', '', 'updatecustomerinfo', '2020-05-13 17:29:12', '0000-00-00 00:00:00'),
(1169, '', '', 'updatecustomerinfo', '2020-05-13 17:29:50', '0000-00-00 00:00:00'),
(1170, '', '', 'updatecustomerinfo', '2020-05-13 17:30:12', '0000-00-00 00:00:00'),
(1171, '', '', 'updatecustomerinfo', '2020-05-13 17:31:21', '0000-00-00 00:00:00'),
(1172, '', '', 'updatecustomerinfo', '2020-05-13 17:32:03', '0000-00-00 00:00:00'),
(1173, 'ABCDEF', '192.168.1.11', 'getProfile', '2020-05-13 17:32:47', '0000-00-00 00:00:00'),
(1174, '', '', 'updatecustomerinfo', '2020-05-13 17:35:02', '0000-00-00 00:00:00'),
(1175, '', '', 'updatecustomerinfo', '2020-05-13 17:35:39', '0000-00-00 00:00:00'),
(1176, '', '', 'updatecustomerinfo', '2020-05-13 17:37:15', '0000-00-00 00:00:00'),
(1177, '', '', 'updatecustomerinfo', '2020-05-13 17:43:34', '0000-00-00 00:00:00'),
(1178, '', '', 'updatecustomerinfo', '2020-05-13 17:43:59', '0000-00-00 00:00:00'),
(1179, '', '', 'updatecustomerinfo', '2020-05-13 17:45:24', '0000-00-00 00:00:00'),
(1180, '', '', 'updatecustomerinfo', '2020-05-13 22:11:53', '0000-00-00 00:00:00'),
(1181, '', '', 'updatecustomerinfo', '2020-05-13 22:52:59', '0000-00-00 00:00:00'),
(1182, '', '', 'updatecustomerinfo', '2020-05-13 22:54:21', '0000-00-00 00:00:00'),
(1183, '', '', 'updatecustomerinfo', '2020-05-13 22:54:46', '0000-00-00 00:00:00'),
(1184, '', '', 'updatecustomerinfo', '2020-05-13 22:54:56', '0000-00-00 00:00:00'),
(1185, '', '', 'updatecustomerinfo', '2020-05-13 22:55:17', '0000-00-00 00:00:00'),
(1186, '', '', 'updatecustomerinfo', '2020-05-13 22:56:10', '0000-00-00 00:00:00'),
(1187, '', '', 'updatecustomerinfo', '2020-05-13 22:56:27', '0000-00-00 00:00:00'),
(1188, '', '', 'updatecustomerinfo', '2020-05-13 22:59:03', '0000-00-00 00:00:00'),
(1189, '', '', 'updatecustomerinfo', '2020-05-13 23:00:04', '0000-00-00 00:00:00'),
(1190, '', '', 'updatecustomerinfo', '2020-05-13 23:00:37', '0000-00-00 00:00:00'),
(1191, '', '', 'updatecustomerinfo', '2020-05-13 23:04:17', '2000-02-20 00:00:00'),
(1192, '', '', 'updatecustomerinfo', '2020-05-13 23:07:14', '0000-00-00 00:00:00'),
(1193, '', '', 'updatecustomerinfo', '2020-05-13 23:09:11', '2000-01-17 00:00:00'),
(1194, '', '', 'updatecustomerinfo', '2020-05-13 23:09:42', '0000-00-00 00:00:00'),
(1195, '', '', 'updatecustomerinfo', '2020-05-13 23:10:28', '0000-00-00 00:00:00'),
(1196, '', '', 'updatecustomerinfo', '2020-05-13 23:11:26', '0000-00-00 00:00:00'),
(1197, '', '', 'updatecustomerinfo', '2020-05-13 23:12:58', '0000-00-00 00:00:00'),
(1198, '', '', 'updatecustomerinfo', '2020-05-13 23:13:30', '0000-00-00 00:00:00'),
(1199, '', '', 'updatecustomerinfo', '2020-05-13 23:18:58', '2000-03-28 00:00:00'),
(1200, '', '', 'updatecustomerinfo', '2020-05-13 23:19:28', '0000-00-00 00:00:00'),
(1201, '', '', 'updatecustomerinfo', '2020-05-13 23:22:51', '2000-02-03 00:00:00'),
(1202, '', '', 'updatecustomerinfo', '2020-05-13 23:25:53', '0000-00-00 00:00:00'),
(1203, '', '', 'updatecustomerinfo', '2020-05-13 23:26:54', '0000-00-00 00:00:00'),
(1204, '', '', 'updatecustomerinfo', '2020-05-13 23:30:00', '0000-00-00 00:00:00'),
(1205, '', '', 'updatecustomerinfo', '2020-05-13 23:30:55', '0000-00-00 00:00:00'),
(1206, '', '', 'updatecustomerinfo', '2020-05-13 23:35:10', '0000-00-00 00:00:00'),
(1207, '', '', 'updatecustomerinfo', '2020-05-13 23:43:58', '2000-05-28 00:00:00'),
(1208, '', '', 'updatecustomerinfo', '2020-05-13 23:48:52', '0000-00-00 00:00:00'),
(1209, '', '', 'updatecustomerinfo', '2020-05-13 23:49:17', '0000-00-00 00:00:00'),
(1210, '', '', 'updatecustomerinfo', '2020-05-13 23:49:57', '0000-00-00 00:00:00'),
(1211, '', '', 'updatecustomerinfo', '2020-05-13 23:51:02', '0000-00-00 00:00:00'),
(1212, '', '', 'updatecustomerinfo', '2020-05-13 23:58:08', '2000-04-26 00:00:00'),
(1213, '', '', 'updatecustomerinfo', '2020-05-13 23:59:14', '0000-00-00 00:00:00'),
(1214, '', '', 'updatecustomerinfo', '2020-05-14 00:00:14', '0000-00-00 00:00:00'),
(1215, '', '', 'updatecustomerinfo', '2020-05-14 00:01:03', '0000-00-00 00:00:00'),
(1216, '', '', 'updatecustomerinfo', '2020-05-14 00:03:51', '0000-00-00 00:00:00'),
(1217, '', '', 'processlogin', '2020-05-14 00:04:27', '0000-00-00 00:00:00'),
(1218, '', '', 'processlogin', '2020-05-14 00:09:33', '2000-03-06 00:00:00'),
(1219, '', '', 'processlogin', '2020-05-14 00:14:36', '2000-03-03 00:00:00'),
(1220, '', '', 'processlogin', '2020-05-14 00:14:45', '0000-00-00 00:00:00'),
(1221, '', '', 'processlogin', '2020-05-14 00:16:10', '0000-00-00 00:00:00'),
(1222, '', '', 'processlogin', '2020-05-14 00:16:40', '0000-00-00 00:00:00'),
(1223, '', '', 'processlogin', '2020-05-14 00:17:06', '0000-00-00 00:00:00'),
(1224, '', '', 'processlogin', '2020-05-14 00:42:08', '0000-00-00 00:00:00'),
(1225, '', '', 'processlogin', '2020-05-14 00:42:48', '0000-00-00 00:00:00'),
(1226, '', '', 'updatecustomerinfo', '2020-05-14 00:43:21', '0000-00-00 00:00:00'),
(1227, '', '', 'updatecustomerinfo', '2020-05-14 00:49:11', '0000-00-00 00:00:00'),
(1228, '', '', 'processlogin', '2020-05-14 00:51:50', '0000-00-00 00:00:00'),
(1229, '', '', 'updatecustomerinfo', '2020-05-14 00:51:57', '0000-00-00 00:00:00'),
(1230, '', '', 'updatecustomerinfo', '2020-05-14 00:53:14', '0000-00-00 00:00:00'),
(1231, '', '', 'updatecustomerinfo', '2020-05-14 00:53:44', '0000-00-00 00:00:00'),
(1232, '', '', 'updatecustomerinfo', '2020-05-14 00:54:21', '0000-00-00 00:00:00'),
(1233, '', '', 'updatecustomerinfo', '2020-05-14 00:54:39', '0000-00-00 00:00:00'),
(1234, '', '', 'processlogin', '2020-05-14 00:56:22', '2000-01-03 00:00:00'),
(1235, '', '', 'processlogin', '2020-05-14 00:57:33', '0000-00-00 00:00:00'),
(1236, '', '', 'updatecustomerinfo', '2020-05-14 01:06:34', '0000-00-00 00:00:00'),
(1237, '', '', 'updatecustomerinfo', '2020-05-14 01:11:24', '0000-00-00 00:00:00'),
(1238, '', '', 'updatecustomerinfo', '2020-05-14 01:21:02', '0000-00-00 00:00:00'),
(1239, '', '', 'updatecustomerinfo', '2020-05-14 01:24:39', '2000-02-17 00:00:00'),
(1240, '', '', 'updatecustomerinfo', '2020-05-14 01:28:53', '0000-00-00 00:00:00'),
(1241, '', '', 'updatecustomerinfo', '2020-05-14 01:32:17', '2000-02-04 00:00:00'),
(1242, '', '', 'updatecustomerinfo', '2020-05-14 01:33:40', '0000-00-00 00:00:00'),
(1243, '', '', 'updatecustomerinfo', '2020-05-14 01:34:10', '0000-00-00 00:00:00'),
(1244, '', '', 'updatecustomerinfo', '2020-05-14 01:34:20', '0000-00-00 00:00:00'),
(1245, '', '', 'updatecustomerinfo', '2020-05-14 01:36:48', '0000-00-00 00:00:00'),
(1246, '', '', 'updatecustomerinfo', '2020-05-14 01:38:07', '0000-00-00 00:00:00'),
(1247, '', '', 'updatecustomerinfo', '2020-05-14 01:38:14', '0000-00-00 00:00:00'),
(1248, '', '', 'updatecustomerinfo', '2020-05-14 01:40:50', '0000-00-00 00:00:00'),
(1249, '', '', 'updatecustomerinfo', '2020-05-14 02:11:27', '0000-00-00 00:00:00'),
(1250, '', '', 'updatecustomerinfo', '2020-05-14 02:13:11', '2000-01-04 00:00:00'),
(1251, '', '', 'processlogin', '2020-05-14 02:13:28', '0000-00-00 00:00:00'),
(1252, '', '', 'processlogin', '2020-05-14 02:13:41', '0000-00-00 00:00:00'),
(1253, '', '', 'updatecustomerinfo', '2020-05-14 02:14:14', '0000-00-00 00:00:00'),
(1254, '', '', 'updatecustomerinfo', '2020-05-14 02:16:47', '0000-00-00 00:00:00'),
(1255, '', '', 'updatecustomerinfo', '2020-05-14 02:29:11', '0000-00-00 00:00:00'),
(1256, '', '', 'updatecustomerinfo', '2020-05-14 03:04:12', '0000-00-00 00:00:00'),
(1257, '', '', 'updatecustomerinfo', '2020-05-14 03:10:22', '0000-00-00 00:00:00'),
(1258, '', '', 'updatecustomerinfo', '2020-05-14 03:10:47', '0000-00-00 00:00:00'),
(1259, '', '', 'updatecustomerinfo', '2020-05-14 03:10:55', '0000-00-00 00:00:00'),
(1260, '', '', 'updatecustomerinfo', '2020-05-14 03:11:26', '0000-00-00 00:00:00'),
(1261, '', '', 'updatecustomerinfo', '2020-05-14 03:12:53', '0000-00-00 00:00:00'),
(1262, '', '', 'processlogin', '2020-05-14 03:13:44', '0000-00-00 00:00:00'),
(1263, '', '', 'updatecustomerinfo', '2020-05-14 03:13:51', '0000-00-00 00:00:00'),
(1264, '', '', 'processlogin', '2020-05-14 03:14:38', '0000-00-00 00:00:00'),
(1265, '', '', 'updatecustomerinfo', '2020-05-14 03:15:03', '0000-00-00 00:00:00'),
(1266, '', '', 'updatecustomerinfo', '2020-05-14 03:16:18', '0000-00-00 00:00:00'),
(1267, '', '', 'updatecustomerinfo', '2020-05-14 03:17:31', '0000-00-00 00:00:00'),
(1268, '', '', 'updatecustomerinfo', '2020-05-14 03:17:55', '0000-00-00 00:00:00'),
(1269, '', '', 'updatecustomerinfo', '2020-05-14 03:23:19', '2000-03-24 00:00:00'),
(1270, '', '', 'updatecustomerinfo', '2020-05-14 03:24:02', '0000-00-00 00:00:00'),
(1271, '', '', 'updatecustomerinfo', '2020-05-14 03:24:24', '0000-00-00 00:00:00'),
(1272, '', '', 'updatecustomerinfo', '2020-05-14 03:28:50', '0000-00-00 00:00:00'),
(1273, '', '', 'updatecustomerinfo', '2020-05-14 03:29:18', '0000-00-00 00:00:00'),
(1274, 'ABCDEF', '192.168.1.11', 'contactus', '2020-05-14 04:12:21', '0000-00-00 00:00:00'),
(1275, 'ABCDEF', '192.168.1.11', 'contactus', '2020-05-14 04:14:43', '0000-00-00 00:00:00'),
(1276, '', '', 'processlogin', '2020-05-14 04:44:34', '0000-00-00 00:00:00'),
(1277, '', '', 'processlogin', '2020-05-14 04:45:31', '0000-00-00 00:00:00'),
(1278, '', '', 'contactus', '2020-05-14 06:13:17', '0000-00-00 00:00:00'),
(1279, '', '', 'contactus', '2020-05-14 06:13:56', '0000-00-00 00:00:00'),
(1280, '', '', 'contactus', '2020-05-14 06:15:08', '0000-00-00 00:00:00'),
(1281, '', '', 'contactus', '2020-05-14 06:15:41', '0000-00-00 00:00:00'),
(1282, '', '', 'contactus', '2020-05-14 06:17:25', '2000-01-04 00:00:00'),
(1283, '', '', 'contactus', '2020-05-14 06:18:26', '0000-00-00 00:00:00'),
(1284, '', '', 'contactus', '2020-05-14 06:19:15', '0000-00-00 00:00:00'),
(1285, '', '', 'contactus', '2020-05-14 06:27:04', '0000-00-00 00:00:00'),
(1286, '', '', 'contactus', '2020-05-14 06:27:23', '0000-00-00 00:00:00'),
(1287, '', '', 'contactus', '2020-05-14 06:28:49', '0000-00-00 00:00:00'),
(1288, '', '', 'contactus', '2020-05-14 06:28:59', '0000-00-00 00:00:00'),
(1289, '', '', 'contactus', '2020-05-14 06:29:46', '0000-00-00 00:00:00'),
(1290, '', '', 'contactus', '2020-05-14 06:30:51', '0000-00-00 00:00:00'),
(1291, '', '', 'contactus', '2020-05-14 06:31:04', '0000-00-00 00:00:00'),
(1292, '', '', 'contactus', '2020-05-14 06:31:58', '0000-00-00 00:00:00'),
(1293, '', '', 'contactus', '2020-05-14 06:33:04', '0000-00-00 00:00:00'),
(1294, '', '', 'contactus', '2020-05-14 06:33:50', '0000-00-00 00:00:00'),
(1295, '', '', 'contactus', '2020-05-14 06:34:42', '0000-00-00 00:00:00'),
(1296, '', '', 'contactus', '2020-05-14 06:35:34', '0000-00-00 00:00:00'),
(1297, '', '', 'contactus', '2020-05-14 06:35:47', '0000-00-00 00:00:00'),
(1298, '', '', 'contactus', '2020-05-14 06:35:58', '0000-00-00 00:00:00'),
(1299, '', '', 'contactus', '2020-05-14 06:36:21', '0000-00-00 00:00:00'),
(1300, '', '', 'contactus', '2020-05-14 06:40:57', '0000-00-00 00:00:00'),
(1301, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 06:42:21', '0000-00-00 00:00:00'),
(1302, '', '', 'processlogin', '2020-05-14 07:12:37', '0000-00-00 00:00:00'),
(1303, '', '', 'processlogin', '2020-05-14 07:13:18', '0000-00-00 00:00:00'),
(1304, '', '', 'processlogin', '2020-05-14 07:14:24', '0000-00-00 00:00:00'),
(1305, '', '', 'processregistration', '2020-05-14 07:15:07', '0000-00-00 00:00:00'),
(1306, '', '', 'verificationCode', '2020-05-14 07:17:41', '0000-00-00 00:00:00'),
(1307, '', '', 'processregistration', '2020-05-14 07:18:45', '0000-00-00 00:00:00'),
(1308, '', '', 'verificationCode', '2020-05-14 07:18:56', '0000-00-00 00:00:00'),
(1309, '', '', 'processlogin', '2020-05-14 07:23:17', '0000-00-00 00:00:00'),
(1310, '', '', 'contactus', '2020-05-14 07:23:31', '0000-00-00 00:00:00'),
(1311, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 13:34:21', '0000-00-00 00:00:00'),
(1312, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 13:34:28', '0000-00-00 00:00:00'),
(1313, '', '', 'processlogin', '2020-05-14 13:35:33', '0000-00-00 00:00:00'),
(1314, 'ABCDEF', '192.168.1.11', 'getAbout', '2020-05-14 13:42:02', '0000-00-00 00:00:00'),
(1315, 'ABCDEF', '192.168.1.11', 'getAbout', '2020-05-14 13:42:08', '0000-00-00 00:00:00'),
(1316, 'ABCDEF', '192.168.1.11', 'getBlog', '2020-05-14 13:43:53', '2000-01-05 00:00:00'),
(1317, 'ABCDEF', '192.168.1.11', 'getFaq', '2020-05-14 13:46:03', '2000-01-30 00:00:00'),
(1318, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-14 13:57:32', '0000-00-00 00:00:00'),
(1319, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-14 13:57:39', '0000-00-00 00:00:00'),
(1320, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-14 13:59:58', '0000-00-00 00:00:00'),
(1321, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-14 14:00:00', '0000-00-00 00:00:00'),
(1322, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-14 14:00:05', '0000-00-00 00:00:00'),
(1323, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-14 14:00:08', '0000-00-00 00:00:00'),
(1324, 'ABCDEF', '192.168.1.11', 'processforgotpassword', '2020-05-14 14:00:12', '0000-00-00 00:00:00'),
(1325, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-14 14:00:30', '0000-00-00 00:00:00'),
(1326, 'ABCDEF', '192.168.1.11', 'processregistration', '2020-05-14 14:00:49', '0000-00-00 00:00:00'),
(1327, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:06:06', '2000-03-17 00:00:00'),
(1328, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:06:08', '0000-00-00 00:00:00'),
(1329, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:10:49', '0000-00-00 00:00:00'),
(1330, '', '', 'updatecustomerinfo', '2020-05-14 14:16:36', '0000-00-00 00:00:00'),
(1331, '', '', 'updatecustomerinfo', '2020-05-14 14:17:16', '0000-00-00 00:00:00'),
(1332, '', '', 'updatecustomerinfo', '2020-05-14 14:17:23', '0000-00-00 00:00:00'),
(1333, '', '', 'updatecustomerinfo', '2020-05-14 14:17:53', '0000-00-00 00:00:00'),
(1334, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:23:08', '0000-00-00 00:00:00'),
(1335, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:23:14', '0000-00-00 00:00:00'),
(1336, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:24:01', '0000-00-00 00:00:00'),
(1337, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:25:23', '0000-00-00 00:00:00'),
(1338, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:27:14', '2000-01-11 00:00:00'),
(1339, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:28:34', '0000-00-00 00:00:00'),
(1340, '', '', 'processforgotpassword', '2020-05-14 14:31:59', '0000-00-00 00:00:00'),
(1341, '', '', 'processforgotpassword', '2020-05-14 14:33:02', '0000-00-00 00:00:00'),
(1342, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:33:25', '0000-00-00 00:00:00'),
(1343, '', '', 'processforgotpassword', '2020-05-14 14:34:17', '0000-00-00 00:00:00'),
(1344, '', '', 'processforgotpassword', '2020-05-14 14:34:43', '0000-00-00 00:00:00'),
(1345, '', '', 'processforgotpassword', '2020-05-14 14:35:05', '0000-00-00 00:00:00'),
(1346, '', '', 'processforgotpassword', '2020-05-14 14:35:30', '0000-00-00 00:00:00'),
(1347, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:35:37', '0000-00-00 00:00:00'),
(1348, '', '', 'processforgotpassword', '2020-05-14 14:35:42', '0000-00-00 00:00:00'),
(1349, '', '', 'processforgotpassword', '2020-05-14 14:35:51', '0000-00-00 00:00:00'),
(1350, '', '', 'processforgotpassword', '2020-05-14 14:36:16', '0000-00-00 00:00:00'),
(1351, '', '', 'processforgotpassword', '2020-05-14 14:36:41', '0000-00-00 00:00:00'),
(1352, '', '', 'processforgotpassword', '2020-05-14 14:36:55', '0000-00-00 00:00:00'),
(1353, '', '', 'processforgotpassword', '2020-05-14 14:37:14', '0000-00-00 00:00:00'),
(1354, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:37:38', '2000-01-21 00:00:00'),
(1355, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:38:07', '0000-00-00 00:00:00'),
(1356, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:38:12', '0000-00-00 00:00:00'),
(1357, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:39:46', '0000-00-00 00:00:00'),
(1358, '', '', 'processforgotpassword', '2020-05-14 14:42:05', '0000-00-00 00:00:00'),
(1359, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:42:46', '0000-00-00 00:00:00'),
(1360, '', '', 'processregistration', '2020-05-14 14:42:55', '0000-00-00 00:00:00'),
(1361, '', '', 'processregistration', '2020-05-14 14:43:21', '0000-00-00 00:00:00'),
(1362, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:44:36', '2000-01-10 00:00:00'),
(1363, '', '', 'processlogin', '2020-05-14 14:50:06', '2000-04-05 00:00:00'),
(1364, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:53:06', '2000-05-10 00:00:00'),
(1365, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-14 14:53:41', '0000-00-00 00:00:00'),
(1366, '', '', 'getallpages', '2020-05-14 15:20:16', '0000-00-00 00:00:00'),
(1367, '', '', 'getallpages', '2020-05-14 15:21:10', '0000-00-00 00:00:00'),
(1368, '', '', 'getallpages', '2020-05-14 15:22:45', '0000-00-00 00:00:00'),
(1369, '', '', 'getallpages', '2020-05-14 15:23:32', '0000-00-00 00:00:00'),
(1370, '', '', 'getallpages', '2020-05-14 15:23:57', '0000-00-00 00:00:00'),
(1371, '', '', 'getallpages', '2020-05-14 15:25:12', '0000-00-00 00:00:00'),
(1372, '', '', 'getallpages', '2020-05-14 15:25:31', '0000-00-00 00:00:00'),
(1373, '', '', 'getallpages', '2020-05-14 15:25:39', '0000-00-00 00:00:00'),
(1374, '', '', 'getallpages', '2020-05-14 15:25:46', '0000-00-00 00:00:00'),
(1375, '', '', 'getallpages', '2020-05-14 15:25:58', '0000-00-00 00:00:00'),
(1376, '', '', 'getallpages', '2020-05-14 15:26:11', '0000-00-00 00:00:00'),
(1377, '', '', 'getallpages', '2020-05-14 15:26:28', '0000-00-00 00:00:00'),
(1378, '', '', 'getallpages', '2020-05-14 15:31:33', '2000-03-05 00:00:00'),
(1379, '', '', 'getallpages', '2020-05-14 15:31:59', '0000-00-00 00:00:00'),
(1380, '', '', 'getallpages', '2020-05-14 15:33:02', '0000-00-00 00:00:00'),
(1381, '', '', 'getallpages', '2020-05-14 15:33:06', '0000-00-00 00:00:00'),
(1382, '', '', 'getallpages', '2020-05-14 15:33:16', '0000-00-00 00:00:00'),
(1383, '', '', 'getallpages', '2020-05-14 15:33:30', '0000-00-00 00:00:00'),
(1384, '', '', 'getallpages', '2020-05-14 15:33:33', '0000-00-00 00:00:00'),
(1385, '', '', 'getallpages', '2020-05-14 15:33:38', '0000-00-00 00:00:00'),
(1386, '', '', 'getallpages', '2020-05-14 15:33:55', '0000-00-00 00:00:00'),
(1387, '', '', 'getallpages', '2020-05-14 15:34:17', '0000-00-00 00:00:00'),
(1388, '', '', 'getallpages', '2020-05-14 15:34:55', '0000-00-00 00:00:00'),
(1389, '', '', 'getallpages', '2020-05-14 15:34:58', '0000-00-00 00:00:00'),
(1390, '', '', 'getallpages', '2020-05-14 15:35:00', '0000-00-00 00:00:00'),
(1391, '', '', 'getallpages', '2020-05-14 15:35:03', '0000-00-00 00:00:00'),
(1392, '', '', 'getallpages', '2020-05-14 15:35:05', '0000-00-00 00:00:00'),
(1393, '', '', 'getallpages', '2020-05-14 15:35:24', '0000-00-00 00:00:00'),
(1394, '', '', 'getallpages', '2020-05-14 15:35:33', '0000-00-00 00:00:00'),
(1395, '', '', 'getallpages', '2020-05-14 15:35:38', '0000-00-00 00:00:00'),
(1396, '', '', 'getallpages', '2020-05-14 15:35:47', '0000-00-00 00:00:00'),
(1397, '', '', 'getallpages', '2020-05-14 15:35:54', '0000-00-00 00:00:00'),
(1398, '', '', 'getallpages', '2020-05-14 15:40:53', '0000-00-00 00:00:00'),
(1399, '', '', 'getallpages', '2020-05-14 15:48:34', '0000-00-00 00:00:00'),
(1400, '', '', 'getallpages', '2020-05-14 15:50:46', '0000-00-00 00:00:00'),
(1401, '', '', 'getallpages', '2020-05-14 15:51:50', '0000-00-00 00:00:00'),
(1402, '', '', 'getallpages', '2020-05-14 15:52:50', '0000-00-00 00:00:00'),
(1403, '', '', 'getallpages', '2020-05-14 15:53:19', '0000-00-00 00:00:00'),
(1404, '', '', 'getallpages', '2020-05-14 15:53:21', '0000-00-00 00:00:00'),
(1405, '', '', 'getallpages', '2020-05-14 16:09:40', '0000-00-00 00:00:00'),
(1406, '', '', 'processlogin', '2020-05-14 16:10:59', '0000-00-00 00:00:00'),
(1407, '', '', 'getallpages', '2020-05-14 16:11:04', '0000-00-00 00:00:00'),
(1408, '', '', 'getallpages', '2020-05-14 16:11:30', '0000-00-00 00:00:00'),
(1409, '', '', 'getallpages', '2020-05-14 16:12:22', '0000-00-00 00:00:00'),
(1410, '', '', 'getallpages', '2020-05-14 16:22:43', '2000-06-21 00:00:00'),
(1411, '', '', 'getallpages', '2020-05-14 16:23:19', '0000-00-00 00:00:00'),
(1412, '', '', 'getallpages', '2020-05-14 16:23:20', '0000-00-00 00:00:00'),
(1413, '', '', 'getallpages', '2020-05-14 16:23:22', '0000-00-00 00:00:00'),
(1414, '', '', 'getallpages', '2020-05-15 00:11:09', '0000-00-00 00:00:00'),
(1415, '', '', 'getallpages', '2020-05-15 00:11:24', '0000-00-00 00:00:00'),
(1416, '', '', 'getallpages', '2020-05-15 00:11:38', '0000-00-00 00:00:00'),
(1417, '', '', 'getallpages', '2020-05-15 00:12:07', '0000-00-00 00:00:00'),
(1418, '', '', 'getallpages', '2020-05-15 00:12:17', '0000-00-00 00:00:00'),
(1419, '', '', 'getallpages', '2020-05-15 00:16:53', '0000-00-00 00:00:00'),
(1420, '', '', 'getallpages', '2020-05-15 00:18:21', '0000-00-00 00:00:00'),
(1421, '', '', 'getallpages', '2020-05-15 00:19:20', '0000-00-00 00:00:00'),
(1422, '', '', 'getallpages', '2020-05-15 00:22:14', '0000-00-00 00:00:00'),
(1423, '', '', 'getallpages', '2020-05-15 00:25:44', '2000-02-10 00:00:00'),
(1424, '', '', 'getallpages', '2020-05-15 00:30:45', '2000-03-01 00:00:00'),
(1425, '', '', 'getallpages', '2020-05-15 00:31:11', '0000-00-00 00:00:00'),
(1426, '', '', 'getallpages', '2020-05-15 00:32:20', '0000-00-00 00:00:00'),
(1427, '', '', 'getallpages', '2020-05-15 00:32:29', '0000-00-00 00:00:00'),
(1428, '', '', 'getallpages', '2020-05-15 00:33:15', '0000-00-00 00:00:00'),
(1429, '', '', 'getallpages', '2020-05-15 01:45:43', '0000-00-00 00:00:00'),
(1430, '', '', 'getallpages', '2020-05-15 01:45:59', '0000-00-00 00:00:00'),
(1431, '', '', 'getallpages', '2020-05-15 02:27:42', '0000-00-00 00:00:00'),
(1432, '', '', 'getallpages', '2020-05-15 02:28:05', '0000-00-00 00:00:00'),
(1433, '', '', 'getallpages', '2020-05-15 02:35:55', '0000-00-00 00:00:00'),
(1434, '', '', 'getallpages', '2020-05-15 02:36:07', '0000-00-00 00:00:00'),
(1435, '', '', 'getallpages', '2020-05-15 02:36:40', '0000-00-00 00:00:00'),
(1436, '', '', 'getallpages', '2020-05-15 02:38:06', '0000-00-00 00:00:00'),
(1437, '', '', 'getallpages', '2020-05-15 02:40:35', '0000-00-00 00:00:00'),
(1438, '', '', 'getallpages', '2020-05-15 02:54:33', '0000-00-00 00:00:00'),
(1439, '', '', 'getallpages', '2020-05-15 02:54:47', '0000-00-00 00:00:00'),
(1440, '', '', 'getallpages', '2020-05-15 02:55:10', '0000-00-00 00:00:00'),
(1441, '', '', 'getallpages', '2020-05-15 02:55:11', '0000-00-00 00:00:00'),
(1442, '', '', 'getallpages', '2020-05-15 02:55:27', '0000-00-00 00:00:00'),
(1443, '', '', 'getallpages', '2020-05-15 02:56:08', '0000-00-00 00:00:00'),
(1444, '', '', 'getallpages', '2020-05-15 02:56:14', '0000-00-00 00:00:00'),
(1445, '', '', 'getallpages', '2020-05-15 02:57:35', '0000-00-00 00:00:00'),
(1446, '', '', 'getallpages', '2020-05-15 02:57:59', '0000-00-00 00:00:00'),
(1447, '', '', 'getallpages', '2020-05-15 02:58:03', '0000-00-00 00:00:00'),
(1448, '', '', 'getallpages', '2020-05-15 03:06:42', '2000-05-19 00:00:00'),
(1449, '', '', 'getallpages', '2020-05-15 03:07:17', '0000-00-00 00:00:00'),
(1450, '', '', 'getallpages', '2020-05-15 03:15:16', '0000-00-00 00:00:00'),
(1451, '', '', 'getallpages', '2020-05-15 03:15:32', '0000-00-00 00:00:00'),
(1452, '', '', 'getallpages', '2020-05-15 04:26:05', '0000-00-00 00:00:00'),
(1453, '', '', 'getallpages', '2020-05-15 04:46:52', '0000-00-00 00:00:00'),
(1454, '', '', 'getallpages', '2020-05-15 05:07:14', '2000-12-22 00:00:00'),
(1455, '', '', 'getallpages', '2020-05-15 05:10:04', '0000-00-00 00:00:00'),
(1456, 'ABCDEF', '192.168.1.11', 'getBlog', '2020-05-15 05:11:20', '0000-00-00 00:00:00'),
(1457, 'ABCDEF', '192.168.1.11', 'getBlog', '2020-05-15 05:11:27', '0000-00-00 00:00:00'),
(1458, '', '', 'getallpages', '2020-05-15 05:12:58', '0000-00-00 00:00:00'),
(1459, '', '', 'getallpages', '2020-05-15 05:13:04', '0000-00-00 00:00:00'),
(1460, '', '', 'getallpages', '2020-05-15 05:13:12', '0000-00-00 00:00:00'),
(1461, '', '', 'getallpages', '2020-05-15 05:13:45', '0000-00-00 00:00:00'),
(1462, 'ABCDEF', '192.168.1.11', 'getallpages', '2020-05-15 05:14:36', '0000-00-00 00:00:00'),
(1463, '', '', 'getallpages', '2020-05-15 05:14:57', '0000-00-00 00:00:00'),
(1464, '', '', 'getallpages', '2020-05-15 05:15:02', '0000-00-00 00:00:00'),
(1465, '', '', 'getallpages', '2020-05-15 05:16:08', '0000-00-00 00:00:00'),
(1466, '', '', 'getallpages', '2020-05-15 05:16:12', '0000-00-00 00:00:00'),
(1467, '', '', 'getallpages', '2020-05-15 05:16:20', '0000-00-00 00:00:00'),
(1468, '', '', 'getallpages', '2020-05-15 05:22:26', '0000-00-00 00:00:00'),
(1469, '', '', 'getallpages', '2020-05-15 05:22:29', '0000-00-00 00:00:00'),
(1470, '', '', 'processlogin', '2020-05-15 05:22:50', '0000-00-00 00:00:00'),
(1471, '', '', 'updatecustomerinfo', '2020-05-15 05:23:06', '0000-00-00 00:00:00'),
(1472, '', '', 'updatecustomerinfo', '2020-05-15 05:23:11', '0000-00-00 00:00:00'),
(1473, '', '', 'updatecustomerinfo', '2020-05-15 05:23:48', '0000-00-00 00:00:00'),
(1474, '', '', 'updatecustomerinfo', '2020-05-15 05:23:52', '0000-00-00 00:00:00'),
(1475, '', '', 'processregistration', '2020-05-15 05:24:33', '0000-00-00 00:00:00'),
(1476, '', '', 'verificationCode', '2020-05-15 05:24:40', '0000-00-00 00:00:00'),
(1477, '', '', 'processregistration', '2020-05-15 05:25:17', '0000-00-00 00:00:00'),
(1478, '', '', 'resendVerify', '2020-05-15 05:25:19', '0000-00-00 00:00:00'),
(1479, '', '', 'processlogin', '2020-05-15 05:30:42', '2000-03-23 00:00:00'),
(1480, '', '', 'contactus', '2020-05-15 05:31:05', '0000-00-00 00:00:00'),
(1481, '', '', 'getallpages', '2020-05-15 05:31:08', '0000-00-00 00:00:00'),
(1482, '', '', 'updatecustomerinfo', '2020-05-15 05:31:27', '0000-00-00 00:00:00'),
(1483, '', '', 'updatecustomerinfo', '2020-05-15 05:32:04', '0000-00-00 00:00:00'),
(1484, '', '', 'updatecustomerinfo', '2020-05-15 05:32:20', '0000-00-00 00:00:00'),
(1485, '', '', 'getallpages', '2020-05-15 06:23:20', '0000-00-00 00:00:00'),
(1486, '', '', 'processregistration', '2020-05-15 16:05:21', '0000-00-00 00:00:00'),
(1487, '', '', 'resendVerify', '2020-05-15 16:05:53', '0000-00-00 00:00:00'),
(1488, '', '', 'verificationCode', '2020-05-15 16:06:04', '0000-00-00 00:00:00'),
(1489, '', '', 'verificationCode', '2020-05-15 16:06:28', '0000-00-00 00:00:00'),
(1490, '', '', 'getallpages', '2020-05-15 16:06:46', '0000-00-00 00:00:00'),
(1491, '', '', 'getallpages', '2020-05-15 16:08:36', '2000-01-10 00:00:00'),
(1492, '', '', 'getallpages', '2020-05-15 16:10:54', '0000-00-00 00:00:00'),
(1493, '', '', 'processforgotpassword', '2020-05-15 16:16:09', '2000-03-15 00:00:00'),
(1494, '', '', 'processregistration', '2020-05-15 16:16:29', '0000-00-00 00:00:00'),
(1495, '', '', 'verificationCode', '2020-05-15 16:16:40', '0000-00-00 00:00:00'),
(1496, '', '', 'processforgotpassword', '2020-05-15 16:16:55', '0000-00-00 00:00:00'),
(1497, '', '', 'processforgotpassword', '2020-05-15 16:17:01', '0000-00-00 00:00:00'),
(1498, '', '', 'processregistration', '2020-05-15 16:17:30', '0000-00-00 00:00:00'),
(1499, '', '', 'getallpages', '2020-05-15 16:17:56', '0000-00-00 00:00:00'),
(1500, '', '', 'getallpages', '2020-05-15 16:18:04', '0000-00-00 00:00:00'),
(1501, '', '', 'updatecustomerinfo', '2020-05-15 16:18:57', '0000-00-00 00:00:00'),
(1502, '', '', 'updatecustomerinfo', '2020-05-15 16:19:23', '0000-00-00 00:00:00'),
(1503, '', '', 'updatecustomerinfo', '2020-05-15 16:19:28', '0000-00-00 00:00:00'),
(1504, '', '', 'processlogin', '2020-05-15 16:20:14', '0000-00-00 00:00:00'),
(1505, '', '', 'getallpages', '2020-05-15 16:24:55', '0000-00-00 00:00:00'),
(1506, '', '', 'processregistration', '2020-05-15 17:36:26', '0000-00-00 00:00:00'),
(1507, '', '', 'verificationCode', '2020-05-15 17:37:59', '0000-00-00 00:00:00'),
(1508, '', '', 'processlogin', '2020-05-16 09:24:39', '0000-00-00 00:00:00'),
(1509, '', '', 'processforgotpassword', '2020-05-16 09:25:37', '0000-00-00 00:00:00'),
(1510, '', '', 'verificationCodeForPassword', '2020-05-16 09:25:50', '0000-00-00 00:00:00'),
(1511, '', '', 'processforgotpassword', '2020-05-16 09:32:07', '0000-00-00 00:00:00'),
(1512, '', '', 'processforgotpassword', '2020-05-16 09:32:21', '0000-00-00 00:00:00'),
(1513, '', '', 'verificationCodeForPassword', '2020-05-16 09:32:36', '0000-00-00 00:00:00'),
(1514, '', '', 'processforgotpassword', '2020-05-16 10:54:14', '0000-00-00 00:00:00'),
(1515, '', '', 'verificationCodeForPassword', '2020-05-16 10:54:20', '0000-00-00 00:00:00'),
(1516, '', '', 'processlogin', '2020-05-16 10:55:42', '0000-00-00 00:00:00'),
(1517, '', '', 'processlogin', '2020-05-16 10:55:46', '0000-00-00 00:00:00'),
(1518, '', '', 'getallpages', '2020-05-16 10:55:57', '0000-00-00 00:00:00'),
(1519, '', '', 'processlogin', '2020-05-16 10:57:48', '2000-01-11 00:00:00'),
(1520, '', '', 'processlogin', '2020-05-16 10:57:55', '0000-00-00 00:00:00'),
(1521, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-16 11:01:33', '0000-00-00 00:00:00'),
(1522, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-16 11:01:42', '0000-00-00 00:00:00'),
(1523, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-16 11:08:49', '2000-04-27 00:00:00'),
(1524, 'ABCDEF', '192.168.1.11', 'processlogin', '2020-05-16 11:08:55', '0000-00-00 00:00:00'),
(1525, '', '', 'processlogin', '2020-05-16 11:09:54', '2000-07-19 00:00:00'),
(1526, '', '', 'getallpages', '2020-05-16 12:10:26', '0000-00-00 00:00:00'),
(1527, '', '', 'processforgotpassword', '2020-05-16 12:11:07', '0000-00-00 00:00:00'),
(1528, '', '', 'verificationCodeForPassword', '2020-05-16 12:11:17', '0000-00-00 00:00:00'),
(1529, '', '', 'updatepassword', '2020-05-16 12:12:05', '0000-00-00 00:00:00'),
(1530, '', '', 'processlogin', '2020-05-16 12:12:18', '0000-00-00 00:00:00'),
(1531, '', '', 'processlogin', '2020-05-16 12:12:34', '0000-00-00 00:00:00'),
(1532, '', '', 'processregistration', '2020-05-16 12:14:40', '2000-01-26 00:00:00'),
(1533, '', '', 'verificationCode', '2020-05-16 12:14:52', '0000-00-00 00:00:00'),
(1534, '', '', 'resendVerify', '2020-05-16 12:14:55', '0000-00-00 00:00:00'),
(1535, 'ABCDEF', '192.168.1.11', 'listOfBrands', '2020-05-16 13:19:35', '0000-00-00 00:00:00'),
(1536, 'ABCDEF', '192.168.1.11', 'listOfDesigners', '2020-05-16 13:20:21', '0000-00-00 00:00:00'),
(1537, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 13:28:58', '2000-05-17 00:00:00'),
(1538, '', '', 'getallpages', '2020-05-16 13:31:37', '0000-00-00 00:00:00'),
(1539, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 13:41:27', '0000-00-00 00:00:00'),
(1540, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 13:41:53', '0000-00-00 00:00:00'),
(1541, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 13:41:57', '0000-00-00 00:00:00'),
(1542, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 13:42:19', '0000-00-00 00:00:00'),
(1543, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 13:42:23', '0000-00-00 00:00:00'),
(1544, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 13:43:09', '0000-00-00 00:00:00'),
(1545, '', '', 'processregistration', '2020-05-16 13:50:00', '2000-11-03 00:00:00'),
(1546, '', '', 'resendVerify', '2020-05-16 13:50:08', '0000-00-00 00:00:00'),
(1547, '', '', 'resendVerify', '2020-05-16 13:50:25', '0000-00-00 00:00:00'),
(1548, '', '', 'processregistration', '2020-05-16 13:50:31', '0000-00-00 00:00:00'),
(1549, '', '', 'verificationCode', '2020-05-16 13:50:39', '0000-00-00 00:00:00'),
(1550, '', '', 'processforgotpassword', '2020-05-16 13:53:34', '0000-00-00 00:00:00'),
(1551, '', '', 'resendVerify', '2020-05-16 13:53:37', '0000-00-00 00:00:00'),
(1552, 'ABCDEF', '192.168.1.11', 'resendVerify', '2020-05-16 13:54:15', '0000-00-00 00:00:00'),
(1553, '', '', 'processlogin', '2020-05-16 13:54:48', '0000-00-00 00:00:00'),
(1554, '', '', 'getallpages', '2020-05-16 13:56:16', '0000-00-00 00:00:00'),
(1555, '', '', 'homePage', '2020-05-16 13:57:09', '0000-00-00 00:00:00'),
(1556, '', '', 'homePage', '2020-05-16 13:57:15', '0000-00-00 00:00:00'),
(1557, '', '', 'updatecustomerinfo', '2020-05-16 13:57:43', '0000-00-00 00:00:00'),
(1558, '', '', 'processforgotpassword', '2020-05-16 13:58:55', '0000-00-00 00:00:00'),
(1559, '', '', 'processforgotpassword', '2020-05-16 13:59:08', '0000-00-00 00:00:00'),
(1560, '', '', 'resendVerify', '2020-05-16 13:59:10', '0000-00-00 00:00:00'),
(1561, '', '', 'processlogin', '2020-05-16 13:59:37', '0000-00-00 00:00:00'),
(1562, '', '', 'getallpages', '2020-05-16 13:59:47', '0000-00-00 00:00:00'),
(1563, '', '', 'homePage', '2020-05-16 14:01:06', '0000-00-00 00:00:00'),
(1564, '', '', 'homePage', '2020-05-16 14:01:30', '0000-00-00 00:00:00'),
(1565, '', '', 'homePage', '2020-05-16 14:02:13', '0000-00-00 00:00:00'),
(1566, '', '', 'homePage', '2020-05-16 14:03:09', '0000-00-00 00:00:00'),
(1567, '', '', 'homePage', '2020-05-16 14:03:12', '0000-00-00 00:00:00'),
(1568, '', '', 'homePage', '2020-05-16 14:03:31', '0000-00-00 00:00:00'),
(1569, '', '', 'homePage', '2020-05-16 14:07:10', '2000-02-19 00:00:00'),
(1570, '', '', 'homePage', '2020-05-16 14:07:32', '0000-00-00 00:00:00'),
(1571, '', '', 'homePage', '2020-05-16 14:09:24', '2000-01-12 00:00:00'),
(1572, '', '', 'homePage', '2020-05-16 14:09:41', '0000-00-00 00:00:00'),
(1573, '', '', 'homePage', '2020-05-16 14:09:58', '0000-00-00 00:00:00'),
(1574, '', '', 'homePage', '2020-05-16 14:10:25', '0000-00-00 00:00:00'),
(1575, '', '', 'homePage', '2020-05-16 14:10:58', '0000-00-00 00:00:00'),
(1576, '', '', 'homePage', '2020-05-16 14:11:34', '0000-00-00 00:00:00'),
(1577, '', '', 'homePage', '2020-05-16 14:11:53', '0000-00-00 00:00:00'),
(1578, '', '', 'homePage', '2020-05-16 14:12:39', '0000-00-00 00:00:00'),
(1579, '', '', 'homePage', '2020-05-16 14:13:00', '0000-00-00 00:00:00'),
(1580, '', '', 'homePage', '2020-05-16 14:13:25', '0000-00-00 00:00:00'),
(1581, '', '', 'homePage', '2020-05-16 14:19:18', '0000-00-00 00:00:00'),
(1582, '', '', 'homePage', '2020-05-16 14:20:39', '0000-00-00 00:00:00'),
(1583, '', '', 'processlogin', '2020-05-16 14:21:50', '0000-00-00 00:00:00'),
(1584, '', '', 'homePage', '2020-05-16 14:22:01', '0000-00-00 00:00:00'),
(1585, '', '', 'homePage', '2020-05-16 14:22:12', '0000-00-00 00:00:00'),
(1586, '', '', 'homePage', '2020-05-16 14:25:24', '0000-00-00 00:00:00'),
(1587, '', '', 'homePage', '2020-05-16 14:34:41', '0000-00-00 00:00:00'),
(1588, '', '', 'homePage', '2020-05-16 14:35:18', '0000-00-00 00:00:00'),
(1589, '', '', 'homePage', '2020-05-16 14:55:59', '0000-00-00 00:00:00'),
(1590, '', '', 'homePage', '2020-05-16 14:56:05', '0000-00-00 00:00:00'),
(1591, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 20:09:27', '0000-00-00 00:00:00'),
(1592, '', '', 'homePage', '2020-05-16 20:34:38', '2002-03-13 00:00:00'),
(1593, '', '', 'homePage', '2020-05-16 20:35:27', '0000-00-00 00:00:00'),
(1594, 'ABCDEF', '192.168.1.11', 'mainCategories', '2020-05-16 20:48:18', '0000-00-00 00:00:00'),
(1595, 'ABCDEF', '192.168.1.11', 'subCategories', '2020-05-16 20:48:50', '0000-00-00 00:00:00'),
(1596, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 20:49:33', '0000-00-00 00:00:00'),
(1597, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 20:51:20', '2000-01-07 00:00:00'),
(1598, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 20:51:28', '0000-00-00 00:00:00'),
(1599, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 20:51:34', '0000-00-00 00:00:00'),
(1600, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 20:51:43', '0000-00-00 00:00:00'),
(1601, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-16 20:58:37', '2000-04-14 00:00:00'),
(1602, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:00:21', '2000-01-04 00:00:00'),
(1603, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 21:00:52', '0000-00-00 00:00:00'),
(1604, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 21:00:56', '0000-00-00 00:00:00'),
(1605, '', '', 'homePage', '2020-05-16 21:01:30', '0000-00-00 00:00:00'),
(1606, '', '', 'updatecustomerinfo', '2020-05-16 21:01:45', '0000-00-00 00:00:00'),
(1607, '', '', 'homePage', '2020-05-16 21:01:54', '0000-00-00 00:00:00'),
(1608, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:02:06', '0000-00-00 00:00:00'),
(1609, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:02:17', '0000-00-00 00:00:00'),
(1610, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:03:08', '0000-00-00 00:00:00'),
(1611, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:03:31', '0000-00-00 00:00:00'),
(1612, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:27:50', '0000-00-00 00:00:00'),
(1613, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:28:12', '0000-00-00 00:00:00'),
(1614, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:28:37', '0000-00-00 00:00:00'),
(1615, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:28:50', '0000-00-00 00:00:00'),
(1616, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:29:22', '0000-00-00 00:00:00'),
(1617, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:29:50', '0000-00-00 00:00:00'),
(1618, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:29:59', '0000-00-00 00:00:00'),
(1619, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:30:18', '0000-00-00 00:00:00'),
(1620, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:30:47', '0000-00-00 00:00:00'),
(1621, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:31:08', '0000-00-00 00:00:00'),
(1622, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:32:10', '0000-00-00 00:00:00'),
(1623, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:33:00', '0000-00-00 00:00:00'),
(1624, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:33:22', '0000-00-00 00:00:00'),
(1625, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:33:35', '0000-00-00 00:00:00'),
(1626, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:36:37', '0000-00-00 00:00:00'),
(1627, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:46:04', '0000-00-00 00:00:00'),
(1628, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:47:37', '0000-00-00 00:00:00'),
(1629, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:49:31', '2000-01-14 00:00:00'),
(1630, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:50:23', '0000-00-00 00:00:00'),
(1631, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 21:50:30', '0000-00-00 00:00:00'),
(1632, 'ABCDEF', '192.168.1.11', 'addtoorder', '2020-05-16 21:52:52', '0000-00-00 00:00:00'),
(1633, 'ABCDEF', '192.168.1.11', 'addtoorder', '2020-05-16 21:57:32', '0000-00-00 00:00:00'),
(1634, 'ABCDEF', '192.168.1.11', 'addtoorder', '2020-05-16 21:57:37', '0000-00-00 00:00:00'),
(1635, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 22:32:34', '0000-00-00 00:00:00'),
(1636, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 22:32:59', '0000-00-00 00:00:00'),
(1637, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 22:33:02', '0000-00-00 00:00:00'),
(1638, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:13:16', '0000-00-00 00:00:00'),
(1639, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:15:22', '2000-01-26 00:00:00'),
(1640, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:15:25', '0000-00-00 00:00:00'),
(1641, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:15:46', '0000-00-00 00:00:00'),
(1642, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:17:11', '0000-00-00 00:00:00'),
(1643, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:17:14', '0000-00-00 00:00:00'),
(1644, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:17:39', '0000-00-00 00:00:00'),
(1645, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:18:23', '0000-00-00 00:00:00'),
(1646, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:18:26', '0000-00-00 00:00:00'),
(1647, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:19:13', '0000-00-00 00:00:00'),
(1648, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:19:15', '0000-00-00 00:00:00'),
(1649, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:19:56', '0000-00-00 00:00:00'),
(1650, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:21:23', '0000-00-00 00:00:00'),
(1651, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-16 23:23:07', '2000-01-04 00:00:00'),
(1652, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 23:44:54', '0000-00-00 00:00:00'),
(1653, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 23:45:37', '0000-00-00 00:00:00'),
(1654, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 23:47:02', '0000-00-00 00:00:00'),
(1655, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 23:48:27', '0000-00-00 00:00:00'),
(1656, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 23:51:19', '0000-00-00 00:00:00'),
(1657, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 23:51:26', '0000-00-00 00:00:00'),
(1658, '', '', 'homePage', '2020-05-16 23:52:41', '0000-00-00 00:00:00'),
(1659, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-16 23:53:53', '0000-00-00 00:00:00'),
(1660, '', '', 'homePage', '2020-05-16 23:57:23', '0000-00-00 00:00:00'),
(1661, '', '', 'homePage', '2020-05-17 00:00:34', '0000-00-00 00:00:00'),
(1662, '', '', 'homePage', '2020-05-17 00:12:01', '0000-00-00 00:00:00'),
(1663, '', '', 'homePage', '2020-05-17 00:12:11', '0000-00-00 00:00:00'),
(1664, '', '', 'homePage', '2020-05-17 00:12:30', '0000-00-00 00:00:00'),
(1665, '', '', 'updatecustomerinfo', '2020-05-17 00:12:50', '0000-00-00 00:00:00'),
(1666, '', '', 'homePage', '2020-05-17 00:15:47', '0000-00-00 00:00:00'),
(1667, '', '', 'homePage', '2020-05-17 00:18:14', '0000-00-00 00:00:00'),
(1668, '', '', 'homePage', '2020-05-17 00:21:45', '2000-02-11 00:00:00'),
(1669, '', '', 'homePage', '2020-05-17 00:49:22', '0000-00-00 00:00:00'),
(1670, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-17 06:55:19', '0000-00-00 00:00:00'),
(1671, '', '', 'homePage', '2020-05-17 07:01:27', '0000-00-00 00:00:00'),
(1672, '', '', 'homePage', '2020-05-17 07:02:41', '0000-00-00 00:00:00'),
(1673, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-17 07:08:26', '0000-00-00 00:00:00'),
(1674, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-17 07:15:17', '2000-04-11 00:00:00'),
(1675, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-17 07:15:27', '0000-00-00 00:00:00'),
(1676, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-17 07:15:47', '0000-00-00 00:00:00'),
(1677, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-17 07:16:10', '0000-00-00 00:00:00'),
(1678, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-17 07:45:30', '0000-00-00 00:00:00'),
(1679, 'ABCDEF', '192.168.1.11', 'likeproduct', '2020-05-17 07:46:31', '0000-00-00 00:00:00'),
(1680, '', '', 'homePage', '2020-05-17 07:46:47', '0000-00-00 00:00:00'),
(1681, 'ABCDEF', '192.168.1.11', 'likeproduct', '2020-05-17 07:47:31', '0000-00-00 00:00:00'),
(1682, 'ABCDEF', '192.168.1.11', 'unlikeproduct', '2020-05-17 07:48:10', '0000-00-00 00:00:00'),
(1683, 'ABCDEF', '192.168.1.11', 'myWishList', '2020-05-17 07:48:25', '0000-00-00 00:00:00'),
(1684, 'ABCDEF', '192.168.1.11', 'likeproduct', '2020-05-17 07:49:29', '0000-00-00 00:00:00'),
(1685, 'ABCDEF', '192.168.1.11', 'myWishList', '2020-05-17 07:49:36', '0000-00-00 00:00:00'),
(1686, '', '', 'processregistration', '2020-05-17 08:02:07', '2000-09-20 00:00:00'),
(1687, '', '', 'resendVerify', '2020-05-17 08:02:14', '0000-00-00 00:00:00'),
(1688, '', '', 'verificationCode', '2020-05-17 08:02:25', '0000-00-00 00:00:00'),
(1689, '', '', 'resendVerify', '2020-05-17 08:02:28', '0000-00-00 00:00:00'),
(1690, '', '', 'verificationCode', '2020-05-17 08:02:39', '0000-00-00 00:00:00'),
(1691, '', '', 'verificationCode', '2020-05-17 08:02:41', '0000-00-00 00:00:00'),
(1692, '', '', 'processregistration', '2020-05-17 08:04:53', '0000-00-00 00:00:00'),
(1693, '', '', 'processregistration', '2020-05-17 08:04:59', '0000-00-00 00:00:00'),
(1694, '', '', 'verificationCode', '2020-05-17 08:05:09', '0000-00-00 00:00:00'),
(1695, '', '', 'homePage', '2020-05-17 08:35:09', '0000-00-00 00:00:00'),
(1696, '', '', 'homePage', '2020-05-17 08:42:51', '0000-00-00 00:00:00'),
(1697, '', '', 'homePage', '2020-05-17 08:44:14', '0000-00-00 00:00:00'),
(1698, '', '', 'homePage', '2020-05-17 08:46:45', '0000-00-00 00:00:00'),
(1699, '', '', 'homePage', '2020-05-17 08:47:30', '0000-00-00 00:00:00'),
(1700, '', '', 'homePage', '2020-05-17 08:48:08', '0000-00-00 00:00:00'),
(1701, '', '', 'homePage', '2020-05-17 08:49:41', '0000-00-00 00:00:00'),
(1702, '', '', 'homePage', '2020-05-17 08:52:31', '0000-00-00 00:00:00'),
(1703, '', '', 'homePage', '2020-05-17 08:53:11', '0000-00-00 00:00:00'),
(1704, '', '', 'homePage', '2020-05-17 09:13:41', '2000-12-30 00:00:00'),
(1705, '', '', 'processregistration', '2020-05-17 09:28:37', '0000-00-00 00:00:00'),
(1706, '', '', 'processregistration', '2020-05-17 09:28:45', '0000-00-00 00:00:00'),
(1707, '', '', 'processregistration', '2020-05-17 09:28:53', '0000-00-00 00:00:00'),
(1708, '', '', 'verificationCode', '2020-05-17 09:29:03', '0000-00-00 00:00:00'),
(1709, '', '', 'updatecustomerinfo', '2020-05-17 09:29:43', '0000-00-00 00:00:00'),
(1710, '', '', 'updatecustomerinfo', '2020-05-17 09:30:56', '0000-00-00 00:00:00'),
(1711, '', '', 'processlogin', '2020-05-17 09:32:02', '0000-00-00 00:00:00'),
(1712, '', '', 'processlogin', '2020-05-17 09:32:12', '0000-00-00 00:00:00'),
(1713, '', '', 'processlogin', '2020-05-17 09:32:47', '0000-00-00 00:00:00'),
(1714, '', '', 'processlogin', '2020-05-17 09:33:05', '0000-00-00 00:00:00'),
(1715, '', '', 'processforgotpassword', '2020-05-17 09:33:18', '0000-00-00 00:00:00'),
(1716, '', '', 'processforgotpassword', '2020-05-17 09:33:27', '0000-00-00 00:00:00'),
(1717, '', '', 'verificationCodeForPassword', '2020-05-17 09:33:33', '0000-00-00 00:00:00'),
(1718, '', '', 'updatepassword', '2020-05-17 09:34:00', '0000-00-00 00:00:00'),
(1719, '', '', 'processlogin', '2020-05-17 09:34:09', '0000-00-00 00:00:00');
INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(1720, '', '', 'updatecustomerinfo', '2020-05-17 09:40:04', '0000-00-00 00:00:00'),
(1721, '', '', 'updatecustomerinfo', '2020-05-17 09:42:05', '2000-01-21 00:00:00'),
(1722, '', '', 'homePage', '2020-05-17 09:42:48', '0000-00-00 00:00:00'),
(1723, '', '', 'getallpages', '2020-05-17 09:42:57', '0000-00-00 00:00:00'),
(1724, '', '', 'homePage', '2020-05-17 09:43:15', '0000-00-00 00:00:00'),
(1725, '', '', 'homePage', '2020-05-17 09:43:22', '0000-00-00 00:00:00'),
(1726, '', '', 'contactus', '2020-05-17 09:44:21', '0000-00-00 00:00:00'),
(1727, '', '', 'contactus', '2020-05-17 09:44:38', '0000-00-00 00:00:00'),
(1728, '', '', 'homePage', '2020-05-17 09:45:17', '0000-00-00 00:00:00'),
(1729, '', '', 'homePage', '2020-05-17 09:45:38', '0000-00-00 00:00:00'),
(1730, '', '', 'homePage', '2020-05-17 09:45:56', '0000-00-00 00:00:00'),
(1731, '', '', 'contactus', '2020-05-17 09:46:20', '0000-00-00 00:00:00'),
(1732, '', '', 'homePage', '2020-05-17 09:47:03', '0000-00-00 00:00:00'),
(1733, '', '', 'homePage', '2020-05-17 09:47:18', '0000-00-00 00:00:00'),
(1734, '', '', 'homePage', '2020-05-17 09:49:13', '2000-01-15 00:00:00'),
(1735, '', '', 'updatecustomerinfo', '2020-05-17 09:49:21', '0000-00-00 00:00:00'),
(1736, '', '', 'homePage', '2020-05-17 09:49:33', '0000-00-00 00:00:00'),
(1737, '', '', 'processforgotpassword', '2020-05-17 09:50:05', '0000-00-00 00:00:00'),
(1738, '', '', 'resendVerify', '2020-05-17 09:50:14', '0000-00-00 00:00:00'),
(1739, '', '', 'processforgotpassword', '2020-05-17 09:50:20', '0000-00-00 00:00:00'),
(1740, '', '', 'verificationCodeForPassword', '2020-05-17 09:50:26', '0000-00-00 00:00:00'),
(1741, '', '', 'updatepassword', '2020-05-17 09:50:45', '0000-00-00 00:00:00'),
(1742, '', '', 'processlogin', '2020-05-17 09:51:03', '0000-00-00 00:00:00'),
(1743, '', '', 'processlogin', '2020-05-17 09:52:51', '2000-01-08 00:00:00'),
(1744, '', '', 'processlogin', '2020-05-17 09:53:01', '0000-00-00 00:00:00'),
(1745, '', '', 'homePage', '2020-05-17 09:56:16', '0000-00-00 00:00:00'),
(1746, '', '', 'homePage', '2020-05-17 09:57:03', '0000-00-00 00:00:00'),
(1747, '', '', 'homePage', '2020-05-17 09:57:55', '0000-00-00 00:00:00'),
(1748, '', '', 'processregistration', '2020-05-17 09:58:21', '0000-00-00 00:00:00'),
(1749, '', '', 'verificationCode', '2020-05-17 09:58:30', '0000-00-00 00:00:00'),
(1750, '', '', 'processregistration', '2020-05-17 09:58:34', '0000-00-00 00:00:00'),
(1751, '', '', 'verificationCode', '2020-05-17 09:58:42', '0000-00-00 00:00:00'),
(1752, '', '', 'homePage', '2020-05-17 09:58:46', '0000-00-00 00:00:00'),
(1753, '', '', 'homePage', '2020-05-17 09:59:20', '0000-00-00 00:00:00'),
(1754, '', '', 'homePage', '2020-05-17 09:59:48', '0000-00-00 00:00:00'),
(1755, '', '', 'homePage', '2020-05-17 10:00:40', '0000-00-00 00:00:00'),
(1756, '', '', 'updatecustomerinfo', '2020-05-17 10:01:23', '0000-00-00 00:00:00'),
(1757, '', '', 'processlogin', '2020-05-17 10:02:05', '0000-00-00 00:00:00'),
(1758, '', '', 'homePage', '2020-05-17 10:02:18', '0000-00-00 00:00:00'),
(1759, '', '', 'homePage', '2020-05-17 10:02:54', '0000-00-00 00:00:00'),
(1760, '', '', 'updatecustomerinfo', '2020-05-17 10:05:48', '0000-00-00 00:00:00'),
(1761, '', '', 'processlogin', '2020-05-17 10:06:27', '0000-00-00 00:00:00'),
(1762, '', '', 'contactus', '2020-05-17 10:06:55', '0000-00-00 00:00:00'),
(1763, '', '', 'contactus', '2020-05-17 10:07:05', '0000-00-00 00:00:00'),
(1764, '', '', 'contactus', '2020-05-17 10:10:03', '0000-00-00 00:00:00'),
(1765, '', '', 'contactus', '2020-05-17 10:10:48', '0000-00-00 00:00:00'),
(1766, '', '', 'contactus', '2020-05-17 10:10:59', '0000-00-00 00:00:00'),
(1767, '', '', 'contactus', '2020-05-17 10:11:14', '0000-00-00 00:00:00'),
(1768, '', '', 'contactus', '2020-05-17 10:11:23', '0000-00-00 00:00:00'),
(1769, '', '', 'contactus', '2020-05-17 10:11:53', '0000-00-00 00:00:00'),
(1770, '', '', 'contactus', '2020-05-17 10:12:05', '0000-00-00 00:00:00'),
(1771, '', '', 'contactus', '2020-05-17 10:12:14', '0000-00-00 00:00:00'),
(1772, '', '', 'contactus', '2020-05-17 10:13:26', '0000-00-00 00:00:00'),
(1773, '', '', 'contactus', '2020-05-17 10:13:35', '0000-00-00 00:00:00'),
(1774, '', '', 'homePage', '2020-05-17 10:17:35', '0000-00-00 00:00:00'),
(1775, '', '', 'homePage', '2020-05-17 10:25:26', '0000-00-00 00:00:00'),
(1776, '', '', 'homePage', '2020-05-17 10:27:51', '0000-00-00 00:00:00'),
(1777, '', '', 'homePage', '2020-05-17 10:28:50', '0000-00-00 00:00:00'),
(1778, '', '', 'homePage', '2020-05-17 11:23:48', '0000-00-00 00:00:00'),
(1779, '', '', 'homePage', '2020-05-17 11:27:35', '2000-02-27 00:00:00'),
(1780, '', '', 'homePage', '2020-05-17 11:27:59', '0000-00-00 00:00:00'),
(1781, '', '', 'homePage', '2020-05-17 11:28:27', '0000-00-00 00:00:00'),
(1782, '', '', 'homePage', '2020-05-17 11:28:28', '0000-00-00 00:00:00'),
(1783, '', '', 'homePage', '2020-05-17 11:35:24', '2000-04-16 00:00:00'),
(1784, '', '', 'homePage', '2020-05-17 11:39:38', '0000-00-00 00:00:00'),
(1785, '', '', 'homePage', '2020-05-17 11:44:30', '0000-00-00 00:00:00'),
(1786, '', '', 'homePage', '2020-05-17 11:45:07', '0000-00-00 00:00:00'),
(1787, '', '', 'homePage', '2020-05-17 11:46:34', '0000-00-00 00:00:00'),
(1788, '', '', 'homePage', '2020-05-17 11:48:56', '0000-00-00 00:00:00'),
(1789, '', '', 'homePage', '2020-05-17 11:50:03', '0000-00-00 00:00:00'),
(1790, '', '', 'homePage', '2020-05-17 11:51:18', '0000-00-00 00:00:00'),
(1791, '', '', 'homePage', '2020-05-17 11:57:24', '0000-00-00 00:00:00'),
(1792, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 12:02:50', '0000-00-00 00:00:00'),
(1793, '', '', 'homePage', '2020-05-17 12:11:29', '0000-00-00 00:00:00'),
(1794, '', '', 'homePage', '2020-05-17 12:15:26', '0000-00-00 00:00:00'),
(1795, '', '', 'homePage', '2020-05-17 12:16:09', '0000-00-00 00:00:00'),
(1796, '', '', 'homePage', '2020-05-17 12:17:33', '0000-00-00 00:00:00'),
(1797, '', '', 'homePage', '2020-05-17 12:18:52', '0000-00-00 00:00:00'),
(1798, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 12:22:22', '0000-00-00 00:00:00'),
(1799, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 12:25:51', '2000-02-09 00:00:00'),
(1800, '', '', 'homePage', '2020-05-17 12:32:24', '2000-08-12 00:00:00'),
(1801, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 12:32:33', '2000-04-02 00:00:00'),
(1802, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 12:33:02', '0000-00-00 00:00:00'),
(1803, '', '', 'homePage', '2020-05-17 12:34:34', '2000-01-30 00:00:00'),
(1804, '', '', 'homePage', '2020-05-17 12:37:19', '0000-00-00 00:00:00'),
(1805, '', '', 'homePage', '2020-05-17 12:41:28', '0000-00-00 00:00:00'),
(1806, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 12:49:19', '0000-00-00 00:00:00'),
(1807, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-17 13:15:21', '0000-00-00 00:00:00'),
(1808, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-17 13:15:30', '0000-00-00 00:00:00'),
(1809, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-17 13:15:40', '0000-00-00 00:00:00'),
(1810, 'ABCDEF', '192.168.1.11', 'contactus', '2020-05-17 13:16:53', '0000-00-00 00:00:00'),
(1811, 'ABCDEF', '192.168.1.11', 'contactus', '2020-05-17 13:16:59', '0000-00-00 00:00:00'),
(1812, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 13:27:58', '0000-00-00 00:00:00'),
(1813, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 13:29:57', '2000-01-19 00:00:00'),
(1814, '', '', 'homePage', '2020-05-17 14:51:55', '0000-00-00 00:00:00'),
(1815, '', '', 'homePage', '2020-05-17 14:51:55', '0000-00-00 00:00:00'),
(1816, '', '', 'homePage', '2020-05-17 14:53:14', '0000-00-00 00:00:00'),
(1817, '', '', 'homePage', '2020-05-17 14:53:52', '0000-00-00 00:00:00'),
(1818, '', '', 'homePage', '2020-05-17 14:54:24', '0000-00-00 00:00:00'),
(1819, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 14:57:28', '0000-00-00 00:00:00'),
(1820, '', '', 'homePage', '2020-05-17 14:58:35', '0000-00-00 00:00:00'),
(1821, '', '', 'homePage', '2020-05-17 14:59:03', '0000-00-00 00:00:00'),
(1822, '', '', 'homePage', '2020-05-17 15:02:16', '0000-00-00 00:00:00'),
(1823, '', '', 'homePage', '2020-05-17 15:02:33', '0000-00-00 00:00:00'),
(1824, '', '', 'homePage', '2020-05-17 15:02:46', '0000-00-00 00:00:00'),
(1825, '', '', 'homePage', '2020-05-17 15:03:46', '0000-00-00 00:00:00'),
(1826, '', '', 'homePage', '2020-05-17 15:15:05', '0000-00-00 00:00:00'),
(1827, '', '', 'homePage', '2020-05-17 15:27:13', '2000-07-28 00:00:00'),
(1828, '', '', 'homePage', '2020-05-17 15:40:34', '2000-08-01 00:00:00'),
(1829, '', '', 'homePage', '2020-05-17 15:57:55', '0000-00-00 00:00:00'),
(1830, '', '', 'likeproduct', '2020-05-17 15:57:59', '0000-00-00 00:00:00'),
(1831, '', '', 'likeproduct', '2020-05-17 15:58:17', '0000-00-00 00:00:00'),
(1832, '', '', 'likeproduct', '2020-05-17 15:58:22', '0000-00-00 00:00:00'),
(1833, '', '', 'likeproduct', '2020-05-17 15:58:24', '0000-00-00 00:00:00'),
(1834, '', '', 'likeproduct', '2020-05-17 15:58:30', '0000-00-00 00:00:00'),
(1835, '', '', 'homePage', '2020-05-17 15:58:51', '0000-00-00 00:00:00'),
(1836, '', '', 'likeproduct', '2020-05-17 16:00:30', '0000-00-00 00:00:00'),
(1837, 'ABCDEF', '192.168.1.11', 'unlikeproduct', '2020-05-17 16:02:55', '0000-00-00 00:00:00'),
(1838, '', '', 'likeproduct', '2020-05-17 16:05:03', '0000-00-00 00:00:00'),
(1839, '', '', 'unlikeproduct', '2020-05-17 16:05:11', '0000-00-00 00:00:00'),
(1840, '', '', 'unlikeproduct', '2020-05-17 16:06:54', '2000-01-03 00:00:00'),
(1841, '', '', 'unlikeproduct', '2020-05-17 16:06:57', '0000-00-00 00:00:00'),
(1842, '', '', 'likeproduct', '2020-05-17 16:07:03', '0000-00-00 00:00:00'),
(1843, '', '', 'unlikeproduct', '2020-05-17 16:08:47', '2000-01-04 00:00:00'),
(1844, 'ABCDEF', '192.168.1.11', 'likeproduct', '2020-05-17 17:41:39', '0000-00-00 00:00:00'),
(1845, 'ABCDEF', '192.168.1.11', 'likeproduct', '2020-05-17 17:41:44', '0000-00-00 00:00:00'),
(1846, 'ABCDEF', '192.168.1.11', 'unlikeproduct', '2020-05-17 17:42:13', '0000-00-00 00:00:00'),
(1847, 'ABCDEF', '192.168.1.11', 'unlikeproduct', '2020-05-17 17:42:24', '0000-00-00 00:00:00'),
(1848, 'ABCDEF', '192.168.1.11', 'likeproduct', '2020-05-17 17:42:38', '0000-00-00 00:00:00'),
(1849, 'ABCDEF', '192.168.1.11', 'myWishList', '2020-05-17 17:42:51', '0000-00-00 00:00:00'),
(1850, '', '', 'homePage', '2020-05-17 17:46:11', '0000-00-00 00:00:00'),
(1851, '', '', 'homePage', '2020-05-17 17:46:50', '0000-00-00 00:00:00'),
(1852, '', '', 'likeproduct', '2020-05-17 17:46:56', '0000-00-00 00:00:00'),
(1853, '', '', 'homePage', '2020-05-17 17:48:27', '0000-00-00 00:00:00'),
(1854, '', '', 'unlikeproduct', '2020-05-17 18:01:06', '0000-00-00 00:00:00'),
(1855, '', '', 'likeproduct', '2020-05-17 18:01:13', '0000-00-00 00:00:00'),
(1856, '', '', 'homePage', '2020-05-17 18:07:52', '0000-00-00 00:00:00'),
(1857, '', '', 'unlikeproduct', '2020-05-17 18:09:33', '2000-01-01 00:00:00'),
(1858, '', '', 'likeproduct', '2020-05-17 18:09:35', '0000-00-00 00:00:00'),
(1859, '', '', 'likeproduct', '2020-05-17 18:09:36', '0000-00-00 00:00:00'),
(1860, '', '', 'likeproduct', '2020-05-17 18:10:07', '0000-00-00 00:00:00'),
(1861, '', '', 'unlikeproduct', '2020-05-17 18:10:08', '0000-00-00 00:00:00'),
(1862, '', '', 'unlikeproduct', '2020-05-17 18:10:10', '0000-00-00 00:00:00'),
(1863, '', '', 'likeproduct', '2020-05-17 18:10:11', '0000-00-00 00:00:00'),
(1864, '', '', 'likeproduct', '2020-05-17 18:10:13', '0000-00-00 00:00:00'),
(1865, '', '', 'unlikeproduct', '2020-05-17 18:10:14', '0000-00-00 00:00:00'),
(1866, '', '', 'homePage', '2020-05-17 18:10:16', '0000-00-00 00:00:00'),
(1867, '', '', 'unlikeproduct', '2020-05-17 18:10:47', '0000-00-00 00:00:00'),
(1868, '', '', 'likeproduct', '2020-05-17 18:10:49', '0000-00-00 00:00:00'),
(1869, '', '', 'likeproduct', '2020-05-17 18:10:49', '0000-00-00 00:00:00'),
(1870, 'ABCDEF', '192.168.1.11', 'likeproduct', '2020-05-17 18:13:18', '0000-00-00 00:00:00'),
(1871, 'ABCDEF', '192.168.1.11', 'likeproduct', '2020-05-17 18:13:31', '0000-00-00 00:00:00'),
(1872, '', '', 'homePage', '2020-05-17 18:25:16', '0000-00-00 00:00:00'),
(1873, '', '', 'unlikeproduct', '2020-05-17 18:28:57', '2000-02-21 00:00:00'),
(1874, '', '', 'unlikeproduct', '2020-05-17 18:28:59', '0000-00-00 00:00:00'),
(1875, '', '', 'likeproduct', '2020-05-17 18:29:00', '0000-00-00 00:00:00'),
(1876, '', '', 'likeproduct', '2020-05-17 18:29:01', '0000-00-00 00:00:00'),
(1877, '', '', 'unlikeproduct', '2020-05-17 18:29:03', '0000-00-00 00:00:00'),
(1878, '', '', 'unlikeproduct', '2020-05-17 18:29:04', '0000-00-00 00:00:00'),
(1879, '', '', 'likeproduct', '2020-05-17 18:29:05', '0000-00-00 00:00:00'),
(1880, '', '', 'likeproduct', '2020-05-17 18:29:06', '0000-00-00 00:00:00'),
(1881, '', '', 'unlikeproduct', '2020-05-17 18:29:07', '0000-00-00 00:00:00'),
(1882, '', '', 'unlikeproduct', '2020-05-17 18:29:07', '0000-00-00 00:00:00'),
(1883, '', '', 'likeproduct', '2020-05-17 18:29:08', '0000-00-00 00:00:00'),
(1884, '', '', 'unlikeproduct', '2020-05-17 18:39:53', '0000-00-00 00:00:00'),
(1885, '', '', 'unlikeproduct', '2020-05-17 18:39:53', '0000-00-00 00:00:00'),
(1886, '', '', 'unlikeproduct', '2020-05-17 18:39:55', '0000-00-00 00:00:00'),
(1887, '', '', 'likeproduct', '2020-05-17 18:39:56', '0000-00-00 00:00:00'),
(1888, '', '', 'unlikeproduct', '2020-05-17 18:40:29', '0000-00-00 00:00:00'),
(1889, '', '', 'likeproduct', '2020-05-17 18:40:30', '0000-00-00 00:00:00'),
(1890, '', '', 'likeproduct', '2020-05-17 18:40:31', '0000-00-00 00:00:00'),
(1891, '', '', 'unlikeproduct', '2020-05-17 18:40:33', '0000-00-00 00:00:00'),
(1892, '', '', 'unlikeproduct', '2020-05-17 18:40:34', '0000-00-00 00:00:00'),
(1893, '', '', 'likeproduct', '2020-05-17 18:40:36', '0000-00-00 00:00:00'),
(1894, '', '', 'likeproduct', '2020-05-17 18:40:37', '0000-00-00 00:00:00'),
(1895, '', '', 'unlikeproduct', '2020-05-17 18:40:39', '0000-00-00 00:00:00'),
(1896, '', '', 'unlikeproduct', '2020-05-17 18:40:40', '0000-00-00 00:00:00'),
(1897, '', '', 'homePage', '2020-05-17 18:41:33', '0000-00-00 00:00:00'),
(1898, '', '', 'likeproduct', '2020-05-17 18:42:36', '0000-00-00 00:00:00'),
(1899, '', '', 'likeproduct', '2020-05-17 18:42:38', '0000-00-00 00:00:00'),
(1900, '', '', 'unlikeproduct', '2020-05-17 18:42:39', '0000-00-00 00:00:00'),
(1901, '', '', 'likeproduct', '2020-05-17 18:44:54', '0000-00-00 00:00:00'),
(1902, '', '', 'unlikeproduct', '2020-05-17 18:44:59', '0000-00-00 00:00:00'),
(1903, '', '', 'unlikeproduct', '2020-05-17 18:45:02', '0000-00-00 00:00:00'),
(1904, '', '', 'likeproduct', '2020-05-17 18:45:03', '0000-00-00 00:00:00'),
(1905, '', '', 'likeproduct', '2020-05-17 18:45:04', '0000-00-00 00:00:00'),
(1906, '', '', 'unlikeproduct', '2020-05-17 18:45:05', '0000-00-00 00:00:00'),
(1907, '', '', 'unlikeproduct', '2020-05-17 18:45:07', '0000-00-00 00:00:00'),
(1908, '', '', 'likeproduct', '2020-05-17 18:45:07', '0000-00-00 00:00:00'),
(1909, '', '', 'likeproduct', '2020-05-17 18:45:09', '0000-00-00 00:00:00'),
(1910, '', '', 'unlikeproduct', '2020-05-17 18:45:11', '0000-00-00 00:00:00'),
(1911, '', '', 'likeproduct', '2020-05-17 18:45:58', '0000-00-00 00:00:00'),
(1912, '', '', 'unlikeproduct', '2020-05-17 18:46:00', '0000-00-00 00:00:00'),
(1913, '', '', 'likeproduct', '2020-05-17 18:46:02', '0000-00-00 00:00:00'),
(1914, '', '', 'likeproduct', '2020-05-17 18:46:04', '0000-00-00 00:00:00'),
(1915, '', '', 'unlikeproduct', '2020-05-17 18:46:52', '0000-00-00 00:00:00'),
(1916, '', '', 'unlikeproduct', '2020-05-17 18:46:53', '0000-00-00 00:00:00'),
(1917, '', '', 'likeproduct', '2020-05-17 18:46:54', '0000-00-00 00:00:00'),
(1918, '', '', 'likeproduct', '2020-05-17 18:48:42', '2000-01-08 00:00:00'),
(1919, '', '', 'homePage', '2020-05-17 18:49:35', '0000-00-00 00:00:00'),
(1920, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 18:51:08', '0000-00-00 00:00:00'),
(1921, '', '', 'homePage', '2020-05-17 18:54:19', '0000-00-00 00:00:00'),
(1922, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 18:55:09', '0000-00-00 00:00:00'),
(1923, '', '', 'homePage', '2020-05-17 19:05:57', '0000-00-00 00:00:00'),
(1924, '', '', 'homePage', '2020-05-17 19:06:49', '0000-00-00 00:00:00'),
(1925, '', '', 'likeproduct', '2020-05-17 19:07:04', '0000-00-00 00:00:00'),
(1926, '', '', 'unlikeproduct', '2020-05-17 19:07:06', '0000-00-00 00:00:00'),
(1927, '', '', 'unlikeproduct', '2020-05-17 19:07:08', '0000-00-00 00:00:00'),
(1928, '', '', 'unlikeproduct', '2020-05-17 19:07:10', '0000-00-00 00:00:00'),
(1929, '', '', 'likeproduct', '2020-05-17 19:07:43', '0000-00-00 00:00:00'),
(1930, '', '', 'homePage', '2020-05-17 19:07:45', '0000-00-00 00:00:00'),
(1931, '', '', 'unlikeproduct', '2020-05-17 19:07:51', '0000-00-00 00:00:00'),
(1932, '', '', 'homePage', '2020-05-17 19:08:15', '0000-00-00 00:00:00'),
(1933, '', '', 'likeproduct', '2020-05-17 19:08:21', '0000-00-00 00:00:00'),
(1934, '', '', 'unlikeproduct', '2020-05-17 19:08:23', '0000-00-00 00:00:00'),
(1935, '', '', 'likeproduct', '2020-05-17 19:08:25', '0000-00-00 00:00:00'),
(1936, '', '', 'likeproduct', '2020-05-17 19:08:27', '0000-00-00 00:00:00'),
(1937, '', '', 'unlikeproduct', '2020-05-17 19:08:29', '0000-00-00 00:00:00'),
(1938, '', '', 'unlikeproduct', '2020-05-17 19:11:07', '0000-00-00 00:00:00'),
(1939, '', '', 'likeproduct', '2020-05-17 19:11:09', '0000-00-00 00:00:00'),
(1940, '', '', 'unlikeproduct', '2020-05-17 19:11:12', '0000-00-00 00:00:00'),
(1941, '', '', 'likeproduct', '2020-05-17 19:11:13', '0000-00-00 00:00:00'),
(1942, '', '', 'homePage', '2020-05-17 19:11:15', '0000-00-00 00:00:00'),
(1943, '', '', 'homePage', '2020-05-17 19:14:46', '2000-02-11 00:00:00'),
(1944, '', '', 'likeproduct', '2020-05-17 19:14:50', '0000-00-00 00:00:00'),
(1945, '', '', 'unlikeproduct', '2020-05-17 19:14:53', '0000-00-00 00:00:00'),
(1946, '', '', 'unlikeproduct', '2020-05-17 19:14:54', '0000-00-00 00:00:00'),
(1947, '', '', 'likeproduct', '2020-05-17 19:15:38', '0000-00-00 00:00:00'),
(1948, '', '', 'homePage', '2020-05-17 19:15:40', '0000-00-00 00:00:00'),
(1949, '', '', 'unlikeproduct', '2020-05-17 19:15:43', '0000-00-00 00:00:00'),
(1950, '', '', 'unlikeproduct', '2020-05-17 19:15:45', '0000-00-00 00:00:00'),
(1951, '', '', 'likeproduct', '2020-05-17 19:15:47', '0000-00-00 00:00:00'),
(1952, '', '', 'likeproduct', '2020-05-17 19:15:49', '0000-00-00 00:00:00'),
(1953, '', '', 'homePage', '2020-05-17 19:23:39', '0000-00-00 00:00:00'),
(1954, '', '', 'homePage', '2020-05-17 19:24:11', '0000-00-00 00:00:00'),
(1955, '', '', 'unlikeproduct', '2020-05-17 19:24:42', '0000-00-00 00:00:00'),
(1956, '', '', 'likeproduct', '2020-05-17 19:24:43', '0000-00-00 00:00:00'),
(1957, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-17 19:27:58', '0000-00-00 00:00:00'),
(1958, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-17 19:29:58', '2000-01-20 00:00:00'),
(1959, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-17 19:30:03', '0000-00-00 00:00:00'),
(1960, '', '', 'homePage', '2020-05-17 19:30:38', '0000-00-00 00:00:00'),
(1961, '', '', 'unlikeproduct', '2020-05-17 19:30:44', '0000-00-00 00:00:00'),
(1962, '', '', 'likeproduct', '2020-05-17 19:30:47', '0000-00-00 00:00:00'),
(1963, '', '', 'homePage', '2020-05-17 19:31:19', '0000-00-00 00:00:00'),
(1964, '', '', 'likeproduct', '2020-05-17 19:31:23', '0000-00-00 00:00:00'),
(1965, '', '', 'likeproduct', '2020-05-17 19:31:26', '0000-00-00 00:00:00'),
(1966, '', '', 'unlikeproduct', '2020-05-17 19:31:28', '0000-00-00 00:00:00'),
(1967, '', '', 'unlikeproduct', '2020-05-17 19:31:29', '0000-00-00 00:00:00'),
(1968, '', '', 'likeproduct', '2020-05-17 19:31:48', '0000-00-00 00:00:00'),
(1969, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 19:32:06', '2000-01-23 00:00:00'),
(1970, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 19:42:18', '2000-06-12 00:00:00'),
(1971, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-17 19:44:15', '2000-01-17 00:00:00'),
(1972, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-17 19:44:39', '0000-00-00 00:00:00'),
(1973, '', '', 'homePage', '2020-05-18 04:07:01', '2003-09-13 00:00:00'),
(1974, '', '', 'likeproduct', '2020-05-18 04:16:30', '0000-00-00 00:00:00'),
(1975, '', '', 'likeproduct', '2020-05-18 04:16:30', '0000-00-00 00:00:00'),
(1976, '', '', 'likeproduct', '2020-05-18 04:16:31', '0000-00-00 00:00:00'),
(1977, '', '', 'unlikeproduct', '2020-05-18 04:16:32', '0000-00-00 00:00:00'),
(1978, '', '', 'unlikeproduct', '2020-05-18 04:16:35', '0000-00-00 00:00:00'),
(1979, '', '', 'unlikeproduct', '2020-05-18 04:16:36', '0000-00-00 00:00:00'),
(1980, '', '', 'homePage', '2020-05-18 04:16:38', '0000-00-00 00:00:00'),
(1981, '', '', 'likeproduct', '2020-05-18 04:23:22', '2000-04-04 00:00:00'),
(1982, '', '', 'homePage', '2020-05-18 04:24:37', '0000-00-00 00:00:00'),
(1983, '', '', 'unlikeproduct', '2020-05-18 04:41:09', '0000-00-00 00:00:00'),
(1984, '', '', 'homePage', '2020-05-18 04:46:32', '2000-03-23 00:00:00'),
(1985, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 04:47:55', '0000-00-00 00:00:00'),
(1986, '', '', 'homePage', '2020-05-18 05:10:04', '0000-00-00 00:00:00'),
(1987, '', '', 'homePage', '2020-05-18 05:10:25', '0000-00-00 00:00:00'),
(1988, '', '', 'likeproduct', '2020-05-18 05:10:54', '0000-00-00 00:00:00'),
(1989, '', '', 'homePage', '2020-05-18 05:11:11', '0000-00-00 00:00:00'),
(1990, '', '', 'homePage', '2020-05-18 05:11:16', '0000-00-00 00:00:00'),
(1991, '', '', 'homePage', '2020-05-18 05:11:35', '0000-00-00 00:00:00'),
(1992, '', '', 'unlikeproduct', '2020-05-18 05:11:40', '0000-00-00 00:00:00'),
(1993, '', '', 'homePage', '2020-05-18 05:12:04', '0000-00-00 00:00:00'),
(1994, '', '', 'likeproduct', '2020-05-18 05:12:06', '0000-00-00 00:00:00'),
(1995, '', '', 'unlikeproduct', '2020-05-18 05:12:10', '0000-00-00 00:00:00'),
(1996, '', '', 'homePage', '2020-05-18 05:14:28', '0000-00-00 00:00:00'),
(1997, '', '', 'homePage', '2020-05-18 05:14:41', '0000-00-00 00:00:00'),
(1998, '', '', 'homePage', '2020-05-18 05:17:02', '0000-00-00 00:00:00'),
(1999, '', '', 'likeproduct', '2020-05-18 05:17:05', '0000-00-00 00:00:00'),
(2000, '', '', 'unlikeproduct', '2020-05-18 05:17:09', '0000-00-00 00:00:00'),
(2001, '', '', 'homePage', '2020-05-18 05:19:29', '0000-00-00 00:00:00'),
(2002, '', '', 'likeproduct', '2020-05-18 05:20:41', '0000-00-00 00:00:00'),
(2003, '', '', 'likeproduct', '2020-05-18 05:20:42', '0000-00-00 00:00:00'),
(2004, '', '', 'unlikeproduct', '2020-05-18 05:20:44', '0000-00-00 00:00:00'),
(2005, '', '', 'likeproduct', '2020-05-18 05:20:51', '0000-00-00 00:00:00'),
(2006, '', '', 'unlikeproduct', '2020-05-18 05:22:53', '2000-01-22 00:00:00'),
(2007, '', '', 'homePage', '2020-05-18 05:26:49', '0000-00-00 00:00:00'),
(2008, '', '', 'homePage', '2020-05-18 05:27:27', '0000-00-00 00:00:00'),
(2009, '', '', 'homePage', '2020-05-18 05:28:04', '0000-00-00 00:00:00'),
(2010, '', '', 'homePage', '2020-05-18 05:36:27', '2000-05-03 00:00:00'),
(2011, '', '', 'homePage', '2020-05-18 05:37:11', '0000-00-00 00:00:00'),
(2012, '', '', 'homePage', '2020-05-18 05:37:12', '0000-00-00 00:00:00'),
(2013, '', '', 'homePage', '2020-05-18 05:37:15', '0000-00-00 00:00:00'),
(2014, '', '', 'homePage', '2020-05-18 05:37:18', '0000-00-00 00:00:00'),
(2015, '', '', 'homePage', '2020-05-18 05:37:21', '0000-00-00 00:00:00'),
(2016, '', '', 'homePage', '2020-05-18 05:37:24', '0000-00-00 00:00:00'),
(2017, '', '', 'homePage', '2020-05-18 05:37:28', '0000-00-00 00:00:00'),
(2018, '', '', 'homePage', '2020-05-18 05:37:31', '0000-00-00 00:00:00'),
(2019, '', '', 'homePage', '2020-05-18 05:37:34', '0000-00-00 00:00:00'),
(2020, '', '', 'homePage', '2020-05-18 05:37:44', '0000-00-00 00:00:00'),
(2021, '', '', 'homePage', '2020-05-18 05:37:45', '0000-00-00 00:00:00'),
(2022, '', '', 'homePage', '2020-05-18 05:38:59', '0000-00-00 00:00:00'),
(2023, '', '', 'homePage', '2020-05-18 05:39:38', '0000-00-00 00:00:00'),
(2024, '', '', 'homePage', '2020-05-18 05:39:49', '0000-00-00 00:00:00'),
(2025, '', '', 'homePage', '2020-05-18 05:43:07', '0000-00-00 00:00:00'),
(2026, '', '', 'homePage', '2020-05-18 05:43:35', '0000-00-00 00:00:00'),
(2027, '', '', 'homePage', '2020-05-18 05:44:22', '0000-00-00 00:00:00'),
(2028, '', '', 'homePage', '2020-05-18 05:44:40', '0000-00-00 00:00:00'),
(2029, '', '', 'homePage', '2020-05-18 05:45:02', '0000-00-00 00:00:00'),
(2030, '', '', 'homePage', '2020-05-18 05:45:03', '0000-00-00 00:00:00'),
(2031, '', '', 'homePage', '2020-05-18 05:45:09', '0000-00-00 00:00:00'),
(2032, '', '', 'homePage', '2020-05-18 05:45:18', '0000-00-00 00:00:00'),
(2033, '', '', 'homePage', '2020-05-18 05:45:34', '0000-00-00 00:00:00'),
(2034, '', '', 'getallpages', '2020-05-18 05:59:33', '0000-00-00 00:00:00'),
(2035, '', '', 'getallpages', '2020-05-18 05:59:38', '0000-00-00 00:00:00'),
(2036, '', '', 'homePage', '2020-05-18 06:17:11', '0000-00-00 00:00:00'),
(2037, '', '', 'homePage', '2020-05-18 07:44:37', '0000-00-00 00:00:00'),
(2038, '', '', 'getallproducts', '2020-05-18 07:45:12', '0000-00-00 00:00:00'),
(2039, '', '', 'getallproducts', '2020-05-18 07:45:17', '0000-00-00 00:00:00'),
(2040, '', '', 'getallproducts', '2020-05-18 07:45:22', '0000-00-00 00:00:00'),
(2041, '', '', 'getallproducts', '2020-05-18 07:45:29', '0000-00-00 00:00:00'),
(2042, '', '', 'getallproducts', '2020-05-18 07:45:53', '0000-00-00 00:00:00'),
(2043, '', '', 'getallproducts', '2020-05-18 07:52:02', '0000-00-00 00:00:00'),
(2044, '', '', 'getallproducts', '2020-05-18 07:52:07', '0000-00-00 00:00:00'),
(2045, '', '', 'getallproducts', '2020-05-18 07:54:17', '2000-01-30 00:00:00'),
(2046, '', '', 'getallproducts', '2020-05-18 07:54:24', '0000-00-00 00:00:00'),
(2047, '', '', 'getallproducts', '2020-05-18 07:56:02', '0000-00-00 00:00:00'),
(2048, '', '', 'getallproducts', '2020-05-18 07:56:35', '0000-00-00 00:00:00'),
(2049, '', '', 'getallproducts', '2020-05-18 07:56:36', '0000-00-00 00:00:00'),
(2050, '', '', 'getallproducts', '2020-05-18 07:57:38', '0000-00-00 00:00:00'),
(2051, '', '', 'getallproducts', '2020-05-18 07:57:48', '0000-00-00 00:00:00'),
(2052, '', '', 'homePage', '2020-05-18 07:58:24', '0000-00-00 00:00:00'),
(2053, '', '', 'getallproducts', '2020-05-18 07:58:33', '0000-00-00 00:00:00'),
(2054, '', '', 'getallproducts', '2020-05-18 07:58:44', '0000-00-00 00:00:00'),
(2055, '', '', 'getallproducts', '2020-05-18 08:00:08', '0000-00-00 00:00:00'),
(2056, '', '', 'getallproducts', '2020-05-18 08:00:11', '0000-00-00 00:00:00'),
(2057, '', '', 'getallproducts', '2020-05-18 08:00:18', '0000-00-00 00:00:00'),
(2058, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 08:00:43', '0000-00-00 00:00:00'),
(2059, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 08:01:16', '0000-00-00 00:00:00'),
(2060, '', '', 'getallproducts', '2020-05-18 08:02:36', '0000-00-00 00:00:00'),
(2061, '', '', 'getallproducts', '2020-05-18 08:03:03', '0000-00-00 00:00:00'),
(2062, '', '', 'getallproducts', '2020-05-18 08:03:38', '0000-00-00 00:00:00'),
(2063, '', '', 'getallproducts', '2020-05-18 08:03:53', '0000-00-00 00:00:00'),
(2064, '', '', 'getallproducts', '2020-05-18 08:04:01', '0000-00-00 00:00:00'),
(2065, '', '', 'homePage', '2020-05-18 08:04:51', '0000-00-00 00:00:00'),
(2066, '', '', 'getallproducts', '2020-05-18 08:05:08', '0000-00-00 00:00:00'),
(2067, '', '', 'getallproducts', '2020-05-18 08:06:10', '0000-00-00 00:00:00'),
(2068, '', '', 'likeproduct', '2020-05-18 08:10:54', '0000-00-00 00:00:00'),
(2069, '', '', 'unlikeproduct', '2020-05-18 08:10:56', '0000-00-00 00:00:00'),
(2070, '', '', 'likeproduct', '2020-05-18 08:11:27', '0000-00-00 00:00:00'),
(2071, '', '', 'getallproducts', '2020-05-18 08:15:34', '0000-00-00 00:00:00'),
(2072, '', '', 'getallproducts', '2020-05-18 08:15:38', '0000-00-00 00:00:00'),
(2073, '', '', 'getallproducts', '2020-05-18 08:16:15', '0000-00-00 00:00:00'),
(2074, '', '', 'getallproducts', '2020-05-18 08:16:15', '0000-00-00 00:00:00'),
(2075, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 08:19:07', '0000-00-00 00:00:00'),
(2076, '', '', 'getallproducts', '2020-05-18 08:22:10', '0000-00-00 00:00:00'),
(2077, '', '', 'getallproducts', '2020-05-18 08:22:18', '0000-00-00 00:00:00'),
(2078, '', '', 'getallproducts', '2020-05-18 08:23:57', '0000-00-00 00:00:00'),
(2079, '', '', 'homePage', '2020-05-18 08:25:38', '2000-01-01 00:00:00'),
(2080, '', '', 'homePage', '2020-05-18 08:25:39', '0000-00-00 00:00:00'),
(2081, '', '', 'homePage', '2020-05-18 08:26:26', '0000-00-00 00:00:00'),
(2082, '', '', 'getallproducts', '2020-05-18 08:26:34', '0000-00-00 00:00:00'),
(2083, '', '', 'getallproducts', '2020-05-18 08:26:38', '0000-00-00 00:00:00'),
(2084, '', '', 'getallproducts', '2020-05-18 08:26:43', '0000-00-00 00:00:00'),
(2085, '', '', 'unlikeproduct', '2020-05-18 08:26:48', '0000-00-00 00:00:00'),
(2086, '', '', 'likeproduct', '2020-05-18 08:26:50', '0000-00-00 00:00:00'),
(2087, '', '', 'unlikeproduct', '2020-05-18 08:27:12', '0000-00-00 00:00:00'),
(2088, '', '', 'unlikeproduct', '2020-05-18 08:27:14', '0000-00-00 00:00:00'),
(2089, '', '', 'getallproducts', '2020-05-18 08:29:21', '2000-01-27 00:00:00'),
(2090, '', '', 'homePage', '2020-05-18 08:30:19', '0000-00-00 00:00:00'),
(2091, '', '', 'getallproducts', '2020-05-18 08:30:26', '0000-00-00 00:00:00'),
(2092, '', '', 'likeproduct', '2020-05-18 08:31:23', '0000-00-00 00:00:00'),
(2093, '', '', 'unlikeproduct', '2020-05-18 08:31:25', '0000-00-00 00:00:00'),
(2094, '', '', 'unlikeproduct', '2020-05-18 08:32:54', '0000-00-00 00:00:00'),
(2095, '', '', 'likeproduct', '2020-05-18 08:35:31', '0000-00-00 00:00:00'),
(2096, '', '', 'unlikeproduct', '2020-05-18 08:35:34', '0000-00-00 00:00:00'),
(2097, '', '', 'getallproducts', '2020-05-18 08:35:37', '0000-00-00 00:00:00'),
(2098, '', '', 'unlikeproduct', '2020-05-18 08:35:39', '0000-00-00 00:00:00'),
(2099, '', '', 'likeproduct', '2020-05-18 08:38:25', '0000-00-00 00:00:00'),
(2100, '', '', 'likeproduct', '2020-05-18 08:38:27', '0000-00-00 00:00:00'),
(2101, '', '', 'likeproduct', '2020-05-18 08:38:29', '0000-00-00 00:00:00'),
(2102, '', '', 'getallproducts', '2020-05-18 08:38:46', '0000-00-00 00:00:00'),
(2103, '', '', 'getallproducts', '2020-05-18 08:38:49', '0000-00-00 00:00:00'),
(2104, '', '', 'unlikeproduct', '2020-05-18 08:44:43', '0000-00-00 00:00:00'),
(2105, '', '', 'likeproduct', '2020-05-18 08:44:46', '0000-00-00 00:00:00'),
(2106, '', '', 'likeproduct', '2020-05-18 08:44:48', '0000-00-00 00:00:00'),
(2107, '', '', 'unlikeproduct', '2020-05-18 08:44:50', '0000-00-00 00:00:00'),
(2108, '', '', 'getallproducts', '2020-05-18 08:44:51', '0000-00-00 00:00:00'),
(2109, '', '', 'getallproducts', '2020-05-18 08:45:08', '0000-00-00 00:00:00'),
(2110, '', '', 'getallproducts', '2020-05-18 08:47:07', '2000-01-19 00:00:00'),
(2111, '', '', 'getallproducts', '2020-05-18 08:47:34', '0000-00-00 00:00:00'),
(2112, '', '', 'getallproducts', '2020-05-18 08:47:45', '0000-00-00 00:00:00'),
(2113, '', '', 'getallproducts', '2020-05-18 08:57:18', '0000-00-00 00:00:00'),
(2114, '', '', 'unlikeproduct', '2020-05-18 09:03:44', '0000-00-00 00:00:00'),
(2115, '', '', 'getallproducts', '2020-05-18 09:03:46', '0000-00-00 00:00:00'),
(2116, '', '', 'getallproducts', '2020-05-18 09:03:49', '0000-00-00 00:00:00'),
(2117, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 09:08:44', '0000-00-00 00:00:00'),
(2118, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 09:09:09', '0000-00-00 00:00:00'),
(2119, '', '', 'getallproducts', '2020-05-18 09:14:58', '0000-00-00 00:00:00'),
(2120, '', '', 'getallproducts', '2020-05-18 09:18:22', '2000-02-04 00:00:00'),
(2121, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 09:24:33', '2000-09-24 00:00:00'),
(2122, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-18 09:25:59', '0000-00-00 00:00:00'),
(2123, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-18 09:26:03', '0000-00-00 00:00:00'),
(2124, '', '', 'homePage', '2020-05-18 09:30:14', '2000-07-12 00:00:00'),
(2125, '', '', 'getallproducts', '2020-05-18 09:30:19', '0000-00-00 00:00:00'),
(2126, '', '', 'likeproduct', '2020-05-18 09:35:27', '2000-03-08 00:00:00'),
(2127, '', '', 'unlikeproduct', '2020-05-18 09:37:29', '2000-01-22 00:00:00'),
(2128, '', '', 'unlikeproduct', '2020-05-18 09:37:31', '0000-00-00 00:00:00'),
(2129, '', '', 'getallproducts', '2020-05-18 09:37:33', '0000-00-00 00:00:00'),
(2130, '', '', 'getallproducts', '2020-05-18 09:37:35', '0000-00-00 00:00:00'),
(2131, '', '', 'getallproducts', '2020-05-18 09:37:41', '0000-00-00 00:00:00'),
(2132, '', '', 'getallproducts', '2020-05-18 09:37:42', '0000-00-00 00:00:00'),
(2133, '', '', 'homePage', '2020-05-18 09:38:00', '0000-00-00 00:00:00'),
(2134, '', '', 'homePage', '2020-05-18 09:38:02', '0000-00-00 00:00:00'),
(2135, '', '', 'getallproducts', '2020-05-18 09:52:11', '0000-00-00 00:00:00'),
(2136, '', '', 'getallproducts', '2020-05-18 09:52:24', '0000-00-00 00:00:00'),
(2137, '', '', 'getallproducts', '2020-05-18 09:52:27', '0000-00-00 00:00:00'),
(2138, '', '', 'getallproducts', '2020-05-18 09:53:11', '0000-00-00 00:00:00'),
(2139, '', '', 'getallproducts', '2020-05-18 09:53:12', '0000-00-00 00:00:00'),
(2140, '', '', 'getallproducts', '2020-05-18 09:53:13', '0000-00-00 00:00:00'),
(2141, '', '', 'getallproducts', '2020-05-18 09:53:21', '0000-00-00 00:00:00'),
(2142, '', '', 'getallproducts', '2020-05-18 09:53:24', '0000-00-00 00:00:00'),
(2143, '', '', 'getallproducts', '2020-05-18 09:53:30', '0000-00-00 00:00:00'),
(2144, '', '', 'getallproducts', '2020-05-18 09:53:46', '0000-00-00 00:00:00'),
(2145, '', '', 'getallproducts', '2020-05-18 09:53:51', '0000-00-00 00:00:00'),
(2146, '', '', 'getallproducts', '2020-05-18 09:53:56', '0000-00-00 00:00:00'),
(2147, '', '', 'getallproducts', '2020-05-18 09:53:57', '0000-00-00 00:00:00'),
(2148, '', '', 'getallproducts', '2020-05-18 09:54:01', '0000-00-00 00:00:00'),
(2149, '', '', 'getallproducts', '2020-05-18 09:54:06', '0000-00-00 00:00:00'),
(2150, '', '', 'homePage', '2020-05-18 09:54:27', '0000-00-00 00:00:00'),
(2151, '', '', 'homePage', '2020-05-18 09:54:29', '0000-00-00 00:00:00'),
(2152, '', '', 'getallproducts', '2020-05-18 09:54:42', '0000-00-00 00:00:00'),
(2153, '', '', 'getallproducts', '2020-05-18 09:54:46', '0000-00-00 00:00:00'),
(2154, '', '', 'getallproducts', '2020-05-18 10:00:12', '2000-03-26 00:00:00'),
(2155, '', '', 'getallproducts', '2020-05-18 10:00:14', '0000-00-00 00:00:00'),
(2156, '', '', 'getallproducts', '2020-05-18 10:00:16', '0000-00-00 00:00:00'),
(2157, '', '', 'getallproducts', '2020-05-18 10:00:24', '0000-00-00 00:00:00'),
(2158, '', '', 'getallproducts', '2020-05-18 10:00:31', '0000-00-00 00:00:00'),
(2159, '', '', 'getallproducts', '2020-05-18 10:00:38', '0000-00-00 00:00:00'),
(2160, '', '', 'getallproducts', '2020-05-18 10:00:40', '0000-00-00 00:00:00'),
(2161, '', '', 'getallproducts', '2020-05-18 10:00:40', '0000-00-00 00:00:00'),
(2162, '', '', 'getallproducts', '2020-05-18 10:00:40', '0000-00-00 00:00:00'),
(2163, '', '', 'getallproducts', '2020-05-18 10:00:46', '0000-00-00 00:00:00'),
(2164, '', '', 'getallproducts', '2020-05-18 10:00:48', '0000-00-00 00:00:00'),
(2165, '', '', 'homePage', '2020-05-18 10:03:22', '0000-00-00 00:00:00'),
(2166, '', '', 'getallproducts', '2020-05-18 10:15:27', '2000-07-25 00:00:00'),
(2167, '', '', 'getallproducts', '2020-05-18 10:15:31', '0000-00-00 00:00:00'),
(2168, '', '', 'getallproducts', '2020-05-18 10:16:10', '0000-00-00 00:00:00'),
(2169, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-18 10:35:38', '0000-00-00 00:00:00'),
(2170, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-18 10:36:15', '0000-00-00 00:00:00'),
(2171, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-18 10:36:41', '0000-00-00 00:00:00'),
(2172, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-18 10:37:17', '0000-00-00 00:00:00'),
(2173, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-18 10:37:33', '0000-00-00 00:00:00'),
(2174, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-18 10:37:51', '0000-00-00 00:00:00'),
(2175, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-18 10:37:57', '0000-00-00 00:00:00'),
(2176, '', '', 'getallproducts', '2020-05-18 10:39:58', '0000-00-00 00:00:00'),
(2177, '', '', 'getallproducts', '2020-05-18 10:40:11', '0000-00-00 00:00:00'),
(2178, '', '', 'getallproducts', '2020-05-18 10:40:13', '0000-00-00 00:00:00'),
(2179, '', '', 'getallproducts', '2020-05-18 10:40:20', '0000-00-00 00:00:00'),
(2180, '', '', 'getallproducts', '2020-05-18 10:40:31', '0000-00-00 00:00:00'),
(2181, '', '', 'homePage', '2020-05-18 11:27:30', '0000-00-00 00:00:00'),
(2182, '', '', 'getallproducts', '2020-05-18 11:33:47', '0000-00-00 00:00:00'),
(2183, '', '', 'getallproducts', '2020-05-18 11:33:53', '0000-00-00 00:00:00'),
(2184, '', '', 'getallproducts', '2020-05-18 11:33:56', '0000-00-00 00:00:00'),
(2185, '', '', 'getallproducts', '2020-05-18 11:34:01', '0000-00-00 00:00:00'),
(2186, '', '', 'getallproducts', '2020-05-18 11:34:03', '0000-00-00 00:00:00'),
(2187, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 11:36:46', '0000-00-00 00:00:00'),
(2188, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 11:36:51', '0000-00-00 00:00:00'),
(2189, '', '', 'homePage', '2020-05-18 11:37:08', '0000-00-00 00:00:00'),
(2190, '', '', 'homePage', '2020-05-18 11:37:13', '0000-00-00 00:00:00'),
(2191, '', '', 'getallproducts', '2020-05-18 11:37:21', '0000-00-00 00:00:00'),
(2192, '', '', 'getallproducts', '2020-05-18 11:37:22', '0000-00-00 00:00:00'),
(2193, '', '', 'getallproducts', '2020-05-18 11:37:23', '0000-00-00 00:00:00'),
(2194, '', '', 'getallproducts', '2020-05-18 11:37:24', '0000-00-00 00:00:00'),
(2195, '', '', 'getallproducts', '2020-05-18 11:37:24', '0000-00-00 00:00:00'),
(2196, '', '', 'getallproducts', '2020-05-18 11:37:26', '0000-00-00 00:00:00'),
(2197, '', '', 'getallproducts', '2020-05-18 11:37:28', '0000-00-00 00:00:00'),
(2198, '', '', 'getallproducts', '2020-05-18 11:37:31', '0000-00-00 00:00:00'),
(2199, '', '', 'getallproducts', '2020-05-18 11:37:32', '0000-00-00 00:00:00'),
(2200, '', '', 'getallproducts', '2020-05-18 11:37:34', '0000-00-00 00:00:00'),
(2201, '', '', 'getallproducts', '2020-05-18 11:37:36', '0000-00-00 00:00:00'),
(2202, '', '', 'getallproducts', '2020-05-18 11:37:37', '0000-00-00 00:00:00'),
(2203, '', '', 'getallproducts', '2020-05-18 11:37:43', '0000-00-00 00:00:00'),
(2204, '', '', 'getallproducts', '2020-05-18 11:37:43', '0000-00-00 00:00:00'),
(2205, '', '', 'getallproducts', '2020-05-18 11:37:46', '0000-00-00 00:00:00'),
(2206, '', '', 'getallproducts', '2020-05-18 11:37:52', '0000-00-00 00:00:00'),
(2207, '', '', 'homePage', '2020-05-18 11:39:19', '0000-00-00 00:00:00'),
(2208, '', '', 'getallproducts', '2020-05-18 11:39:21', '0000-00-00 00:00:00'),
(2209, '', '', 'homePage', '2020-05-18 11:40:20', '0000-00-00 00:00:00'),
(2210, '', '', 'getallproducts', '2020-05-18 11:59:23', '0000-00-00 00:00:00'),
(2211, '', '', 'getallproducts', '2020-05-18 11:59:25', '0000-00-00 00:00:00'),
(2212, '', '', 'getallproducts', '2020-05-18 11:59:26', '0000-00-00 00:00:00'),
(2213, '', '', 'getallproducts', '2020-05-18 11:59:31', '0000-00-00 00:00:00'),
(2214, '', '', 'getallproducts', '2020-05-18 11:59:36', '0000-00-00 00:00:00'),
(2215, '', '', 'getallproducts', '2020-05-18 11:59:37', '0000-00-00 00:00:00'),
(2216, '', '', 'getallproducts', '2020-05-18 12:03:36', '0000-00-00 00:00:00'),
(2217, '', '', 'getallproducts', '2020-05-18 12:03:44', '0000-00-00 00:00:00'),
(2218, '', '', 'getallproducts', '2020-05-18 12:03:48', '0000-00-00 00:00:00'),
(2219, '', '', 'getallproducts', '2020-05-18 12:21:27', '0000-00-00 00:00:00'),
(2220, '', '', 'getallproducts', '2020-05-18 12:21:29', '0000-00-00 00:00:00'),
(2221, '', '', 'getallproducts', '2020-05-18 12:21:34', '0000-00-00 00:00:00'),
(2222, '', '', 'getallproducts', '2020-05-18 12:22:26', '0000-00-00 00:00:00'),
(2223, '', '', 'getallproducts', '2020-05-18 12:22:28', '0000-00-00 00:00:00'),
(2224, '', '', 'getallproducts', '2020-05-18 12:22:33', '0000-00-00 00:00:00'),
(2225, '', '', 'getallproducts', '2020-05-18 12:23:02', '0000-00-00 00:00:00'),
(2226, '', '', 'getallproducts', '2020-05-18 12:23:03', '0000-00-00 00:00:00'),
(2227, '', '', 'getallproducts', '2020-05-18 12:23:08', '0000-00-00 00:00:00'),
(2228, '', '', 'getallproducts', '2020-05-18 12:23:39', '0000-00-00 00:00:00'),
(2229, '', '', 'getallproducts', '2020-05-18 12:23:46', '0000-00-00 00:00:00'),
(2230, '', '', 'getallproducts', '2020-05-18 12:23:50', '0000-00-00 00:00:00'),
(2231, '', '', 'getallproducts', '2020-05-18 12:39:03', '2000-09-13 00:00:00'),
(2232, '', '', 'getallproducts', '2020-05-18 12:39:11', '0000-00-00 00:00:00'),
(2233, '', '', 'getallproducts', '2020-05-18 12:39:13', '0000-00-00 00:00:00'),
(2234, '', '', 'getallproducts', '2020-05-18 12:39:18', '0000-00-00 00:00:00'),
(2235, '', '', 'getallproducts', '2020-05-18 12:39:21', '0000-00-00 00:00:00'),
(2236, '', '', 'getallproducts', '2020-05-18 12:39:38', '0000-00-00 00:00:00'),
(2237, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-18 12:42:04', '0000-00-00 00:00:00'),
(2238, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-18 12:43:58', '2000-01-14 00:00:00'),
(2239, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-18 12:59:55', '0000-00-00 00:00:00'),
(2240, 'ABCDEF', '192.168.1.11', 'deleteAlert', '2020-05-18 13:00:16', '0000-00-00 00:00:00'),
(2241, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-18 13:00:33', '0000-00-00 00:00:00'),
(2242, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-18 13:02:38', '2000-01-25 00:00:00'),
(2243, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-18 13:02:48', '0000-00-00 00:00:00'),
(2244, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-18 13:02:56', '0000-00-00 00:00:00'),
(2245, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-18 13:03:28', '0000-00-00 00:00:00'),
(2246, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-18 13:04:26', '0000-00-00 00:00:00'),
(2247, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-18 13:04:33', '0000-00-00 00:00:00'),
(2248, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 13:33:47', '0000-00-00 00:00:00'),
(2249, '', '', 'getallproducts', '2020-05-18 13:33:50', '0000-00-00 00:00:00'),
(2250, '', '', 'homePage', '2020-05-18 13:34:24', '0000-00-00 00:00:00'),
(2251, '', '', 'getallproducts', '2020-05-18 13:34:29', '0000-00-00 00:00:00'),
(2252, '', '', 'getallproducts', '2020-05-18 13:34:33', '0000-00-00 00:00:00'),
(2253, '', '', 'getallproducts', '2020-05-18 13:34:54', '0000-00-00 00:00:00'),
(2254, '', '', 'getallproducts', '2020-05-18 13:34:56', '0000-00-00 00:00:00'),
(2255, '', '', 'getallproducts', '2020-05-18 13:34:58', '0000-00-00 00:00:00'),
(2256, '', '', 'getallproducts', '2020-05-18 13:37:29', '0000-00-00 00:00:00'),
(2257, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 13:38:28', '0000-00-00 00:00:00'),
(2258, '', '', 'getallproducts', '2020-05-18 13:38:42', '0000-00-00 00:00:00'),
(2259, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-18 13:38:43', '0000-00-00 00:00:00'),
(2260, '', '', 'getallproducts', '2020-05-18 13:38:44', '0000-00-00 00:00:00'),
(2261, 'ABCDEF', '192.168.1.11', 'saerchProducts', '2020-05-18 13:39:18', '0000-00-00 00:00:00'),
(2262, '', '', 'getallproducts', '2020-05-18 13:39:39', '0000-00-00 00:00:00'),
(2263, 'ABCDEF', '192.168.1.11', 'myWishList', '2020-05-18 13:39:40', '0000-00-00 00:00:00'),
(2264, 'ABCDEF', '192.168.1.11', 'myWishList', '2020-05-18 13:39:43', '0000-00-00 00:00:00'),
(2265, '', '', 'getallproducts', '2020-05-18 13:40:53', '0000-00-00 00:00:00'),
(2266, '', '', 'getallproducts', '2020-05-18 13:40:53', '0000-00-00 00:00:00'),
(2267, '', '', 'getallproducts', '2020-05-18 13:40:53', '0000-00-00 00:00:00'),
(2268, '', '', 'getallproducts', '2020-05-18 13:40:56', '0000-00-00 00:00:00'),
(2269, '', '', 'getallproducts', '2020-05-18 13:41:19', '0000-00-00 00:00:00'),
(2270, '', '', 'getallproducts', '2020-05-18 13:41:23', '0000-00-00 00:00:00'),
(2271, '', '', 'homePage', '2020-05-18 13:42:18', '0000-00-00 00:00:00'),
(2272, '', '', 'getallproducts', '2020-05-18 13:42:22', '0000-00-00 00:00:00'),
(2273, '', '', 'homePage', '2020-05-18 13:47:32', '2000-03-10 00:00:00'),
(2274, '', '', 'getallproducts', '2020-05-18 13:47:36', '0000-00-00 00:00:00'),
(2275, '', '', 'getallproducts', '2020-05-18 13:48:52', '0000-00-00 00:00:00'),
(2276, '', '', 'getallproducts', '2020-05-18 13:49:31', '0000-00-00 00:00:00'),
(2277, '', '', 'getallproducts', '2020-05-18 13:49:50', '0000-00-00 00:00:00'),
(2278, '', '', 'getallproducts', '2020-05-18 13:49:53', '0000-00-00 00:00:00'),
(2279, '', '', 'getallproducts', '2020-05-18 13:50:17', '0000-00-00 00:00:00'),
(2280, '', '', 'getallproducts', '2020-05-18 13:50:22', '0000-00-00 00:00:00'),
(2281, '', '', 'getallproducts', '2020-05-18 13:54:39', '0000-00-00 00:00:00'),
(2282, '', '', 'getallproducts', '2020-05-18 13:54:44', '0000-00-00 00:00:00'),
(2283, '', '', 'getallproducts', '2020-05-18 13:54:46', '0000-00-00 00:00:00'),
(2284, '', '', 'getallproducts', '2020-05-18 13:54:46', '0000-00-00 00:00:00'),
(2285, '', '', 'getallproducts', '2020-05-18 13:54:55', '0000-00-00 00:00:00'),
(2286, '', '', 'getallproducts', '2020-05-18 13:54:57', '0000-00-00 00:00:00'),
(2287, '', '', 'getallproducts', '2020-05-18 13:54:57', '0000-00-00 00:00:00'),
(2288, '', '', 'getallproducts', '2020-05-18 14:01:56', '2000-04-19 00:00:00'),
(2289, '', '', 'getallproducts', '2020-05-18 14:01:58', '0000-00-00 00:00:00'),
(2290, '', '', 'getallproducts', '2020-05-18 14:01:58', '0000-00-00 00:00:00'),
(2291, '', '', 'getallproducts', '2020-05-18 14:01:59', '0000-00-00 00:00:00'),
(2292, '', '', 'getallproducts', '2020-05-18 14:02:02', '0000-00-00 00:00:00'),
(2293, '', '', 'getallproducts', '2020-05-18 14:02:06', '0000-00-00 00:00:00'),
(2294, '', '', 'getallproducts', '2020-05-18 14:04:01', '2000-01-15 00:00:00'),
(2295, '', '', 'getallproducts', '2020-05-18 14:05:06', '0000-00-00 00:00:00'),
(2296, '', '', 'getallproducts', '2020-05-18 14:09:35', '0000-00-00 00:00:00'),
(2297, '', '', 'getallproducts', '2020-05-18 14:10:05', '0000-00-00 00:00:00'),
(2298, '', '', 'getallproducts', '2020-05-18 14:11:30', '0000-00-00 00:00:00'),
(2299, 'ABCDEF', '192.168.1.11', 'moreproducts', '2020-05-18 14:12:18', '0000-00-00 00:00:00'),
(2300, '', '', 'getallproducts', '2020-05-18 14:12:34', '0000-00-00 00:00:00'),
(2301, '', '', 'getallproducts', '2020-05-18 14:12:35', '0000-00-00 00:00:00'),
(2302, '', '', 'getallproducts', '2020-05-18 14:12:35', '0000-00-00 00:00:00'),
(2303, '', '', 'getallproducts', '2020-05-18 14:12:35', '0000-00-00 00:00:00'),
(2304, '', '', 'getallproducts', '2020-05-18 14:12:35', '0000-00-00 00:00:00'),
(2305, '', '', 'getallproducts', '2020-05-18 14:13:06', '0000-00-00 00:00:00'),
(2306, '', '', 'getallproducts', '2020-05-18 14:13:06', '0000-00-00 00:00:00'),
(2307, '', '', 'getallproducts', '2020-05-18 14:13:07', '0000-00-00 00:00:00'),
(2308, '', '', 'getallproducts', '2020-05-18 14:13:07', '0000-00-00 00:00:00'),
(2309, '', '', 'getallproducts', '2020-05-18 14:13:07', '0000-00-00 00:00:00'),
(2310, '', '', 'getallproducts', '2020-05-18 14:13:08', '0000-00-00 00:00:00'),
(2311, '', '', 'getallproducts', '2020-05-18 14:13:08', '0000-00-00 00:00:00'),
(2312, '', '', 'getallproducts', '2020-05-18 14:13:08', '0000-00-00 00:00:00'),
(2313, '', '', 'getallproducts', '2020-05-18 14:13:08', '0000-00-00 00:00:00'),
(2314, '', '', 'getallproducts', '2020-05-18 14:13:08', '0000-00-00 00:00:00'),
(2315, 'ABCDEF', '192.168.1.11', 'moreproducts', '2020-05-18 14:13:08', '0000-00-00 00:00:00'),
(2316, '', '', 'getallproducts', '2020-05-18 14:13:08', '0000-00-00 00:00:00'),
(2317, '', '', 'getallproducts', '2020-05-18 14:13:08', '0000-00-00 00:00:00'),
(2318, '', '', 'homePage', '2020-05-18 14:13:40', '0000-00-00 00:00:00'),
(2319, 'ABCDEF', '192.168.1.11', 'moreproducts', '2020-05-18 14:13:44', '0000-00-00 00:00:00'),
(2320, '', '', 'getallproducts', '2020-05-18 14:13:55', '0000-00-00 00:00:00'),
(2321, '', '', 'getallproducts', '2020-05-18 14:14:02', '0000-00-00 00:00:00'),
(2322, '', '', 'getallproducts', '2020-05-18 14:14:05', '0000-00-00 00:00:00'),
(2323, '', '', 'homePage', '2020-05-19 02:37:27', '0000-00-00 00:00:00'),
(2324, '', '', 'getallproducts', '2020-05-19 02:46:18', '2000-05-31 00:00:00'),
(2325, '', '', 'getallproducts', '2020-05-19 02:46:19', '0000-00-00 00:00:00'),
(2326, '', '', 'getallproducts', '2020-05-19 02:46:21', '0000-00-00 00:00:00'),
(2327, '', '', 'getallproducts', '2020-05-19 02:46:23', '0000-00-00 00:00:00'),
(2328, '', '', 'getallproducts', '2020-05-19 02:46:24', '0000-00-00 00:00:00'),
(2329, '', '', 'getallproducts', '2020-05-19 02:46:27', '0000-00-00 00:00:00'),
(2330, '', '', 'getallproducts', '2020-05-19 02:46:29', '0000-00-00 00:00:00'),
(2331, '', '', 'getallproducts', '2020-05-19 02:46:30', '0000-00-00 00:00:00'),
(2332, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-19 07:36:19', '0000-00-00 00:00:00'),
(2333, '', '', 'homePage', '2020-05-19 08:33:04', '0000-00-00 00:00:00'),
(2334, '', '', 'homePage', '2020-05-19 08:33:05', '0000-00-00 00:00:00'),
(2335, '', '', 'getallproducts', '2020-05-19 08:33:27', '0000-00-00 00:00:00'),
(2336, '', '', 'getallproducts', '2020-05-19 08:36:54', '2000-02-07 00:00:00'),
(2337, '', '', 'getallproducts', '2020-05-19 08:36:58', '0000-00-00 00:00:00'),
(2338, '', '', 'getallproducts', '2020-05-19 08:36:59', '0000-00-00 00:00:00'),
(2339, '', '', 'getallproducts', '2020-05-19 08:37:01', '0000-00-00 00:00:00'),
(2340, '', '', 'getallproducts', '2020-05-19 08:39:39', '0000-00-00 00:00:00'),
(2341, '', '', 'getallproducts', '2020-05-19 08:39:40', '0000-00-00 00:00:00'),
(2342, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 08:39:47', '0000-00-00 00:00:00'),
(2343, '', '', 'homePage', '2020-05-19 08:40:47', '0000-00-00 00:00:00'),
(2344, '', '', 'getallproducts', '2020-05-19 08:40:53', '0000-00-00 00:00:00'),
(2345, '', '', 'getallproducts', '2020-05-19 08:41:25', '0000-00-00 00:00:00'),
(2346, '', '', 'getallproducts', '2020-05-19 08:41:25', '0000-00-00 00:00:00'),
(2347, '', '', 'getallproducts', '2020-05-19 08:41:29', '0000-00-00 00:00:00'),
(2348, '', '', 'getallproducts', '2020-05-19 08:41:47', '0000-00-00 00:00:00'),
(2349, '', '', 'getallproducts', '2020-05-19 08:43:26', '0000-00-00 00:00:00'),
(2350, '', '', 'getallproducts', '2020-05-19 08:43:26', '0000-00-00 00:00:00'),
(2351, '', '', 'getallproducts', '2020-05-19 08:43:27', '0000-00-00 00:00:00'),
(2352, '', '', 'getallproducts', '2020-05-19 08:43:30', '0000-00-00 00:00:00'),
(2353, '', '', 'getallproducts', '2020-05-19 08:43:52', '0000-00-00 00:00:00'),
(2354, '', '', 'getallproducts', '2020-05-19 08:43:53', '0000-00-00 00:00:00'),
(2355, '', '', 'getallproducts', '2020-05-19 08:43:53', '0000-00-00 00:00:00'),
(2356, '', '', 'getallproducts', '2020-05-19 08:43:55', '0000-00-00 00:00:00'),
(2357, '', '', 'getallproducts', '2020-05-19 08:44:11', '0000-00-00 00:00:00'),
(2358, '', '', 'getallproducts', '2020-05-19 08:44:12', '0000-00-00 00:00:00'),
(2359, '', '', 'getallproducts', '2020-05-19 08:44:12', '0000-00-00 00:00:00'),
(2360, '', '', 'getallproducts', '2020-05-19 08:44:14', '0000-00-00 00:00:00'),
(2361, '', '', 'getallproducts', '2020-05-19 08:45:15', '0000-00-00 00:00:00');
INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(2362, '', '', 'homePage', '2020-05-19 08:47:36', '0000-00-00 00:00:00'),
(2363, '', '', 'getallproducts', '2020-05-19 08:48:57', '0000-00-00 00:00:00'),
(2364, '', '', 'getallproducts', '2020-05-19 08:49:06', '0000-00-00 00:00:00'),
(2365, '', '', 'homePage', '2020-05-19 08:49:36', '0000-00-00 00:00:00'),
(2366, '', '', 'homePage', '2020-05-19 08:51:35', '2000-01-19 00:00:00'),
(2367, '', '', 'getallproducts', '2020-05-19 08:51:39', '0000-00-00 00:00:00'),
(2368, '', '', 'getallproducts', '2020-05-19 08:51:41', '0000-00-00 00:00:00'),
(2369, '', '', 'getallproducts', '2020-05-19 08:54:33', '0000-00-00 00:00:00'),
(2370, '', '', 'getallproducts', '2020-05-19 08:54:34', '0000-00-00 00:00:00'),
(2371, '', '', 'getallproducts', '2020-05-19 08:55:02', '0000-00-00 00:00:00'),
(2372, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 08:56:56', '2000-10-29 00:00:00'),
(2373, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:00:02', '0000-00-00 00:00:00'),
(2374, '', '', 'homePage', '2020-05-19 09:01:01', '0000-00-00 00:00:00'),
(2375, '', '', 'getallproducts', '2020-05-19 09:04:25', '2000-02-04 00:00:00'),
(2376, '', '', 'getallproducts', '2020-05-19 09:04:28', '0000-00-00 00:00:00'),
(2377, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:04:48', '0000-00-00 00:00:00'),
(2378, '', '', 'homePage', '2020-05-19 09:04:52', '0000-00-00 00:00:00'),
(2379, '', '', 'getallproducts', '2020-05-19 09:04:56', '0000-00-00 00:00:00'),
(2380, '', '', 'getallproducts', '2020-05-19 09:04:58', '0000-00-00 00:00:00'),
(2381, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:05:07', '0000-00-00 00:00:00'),
(2382, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:05:14', '0000-00-00 00:00:00'),
(2383, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:05:54', '0000-00-00 00:00:00'),
(2384, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:06:23', '0000-00-00 00:00:00'),
(2385, '', '', 'likeproduct', '2020-05-19 09:06:29', '0000-00-00 00:00:00'),
(2386, '', '', 'likeproduct', '2020-05-19 09:07:21', '0000-00-00 00:00:00'),
(2387, '', '', 'homePage', '2020-05-19 09:07:37', '0000-00-00 00:00:00'),
(2388, '', '', 'getallproducts', '2020-05-19 09:07:51', '0000-00-00 00:00:00'),
(2389, '', '', 'likeproduct', '2020-05-19 09:07:58', '0000-00-00 00:00:00'),
(2390, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:08:34', '2000-01-31 00:00:00'),
(2391, '', '', 'unlikeproduct', '2020-05-19 09:09:06', '0000-00-00 00:00:00'),
(2392, '', '', 'unlikeproduct', '2020-05-19 09:09:08', '0000-00-00 00:00:00'),
(2393, '', '', 'likeproduct', '2020-05-19 09:12:46', '2000-02-18 00:00:00'),
(2394, '', '', 'unlikeproduct', '2020-05-19 09:12:54', '0000-00-00 00:00:00'),
(2395, '', '', 'getallproducts', '2020-05-19 09:14:10', '0000-00-00 00:00:00'),
(2396, '', '', 'getallproducts', '2020-05-19 09:17:09', '0000-00-00 00:00:00'),
(2397, '', '', 'getallproducts', '2020-05-19 09:18:32', '0000-00-00 00:00:00'),
(2398, '', '', 'getallproducts', '2020-05-19 09:24:09', '0000-00-00 00:00:00'),
(2399, '', '', 'getallproducts', '2020-05-19 09:24:26', '0000-00-00 00:00:00'),
(2400, '', '', 'getallproducts', '2020-05-19 09:24:41', '0000-00-00 00:00:00'),
(2401, '', '', 'getallproducts', '2020-05-19 09:25:10', '0000-00-00 00:00:00'),
(2402, '', '', 'homePage', '2020-05-19 09:25:49', '0000-00-00 00:00:00'),
(2403, '', '', 'getallproducts', '2020-05-19 09:25:53', '0000-00-00 00:00:00'),
(2404, '', '', 'getallproducts', '2020-05-19 09:25:55', '0000-00-00 00:00:00'),
(2405, '', '', 'homePage', '2020-05-19 09:27:13', '0000-00-00 00:00:00'),
(2406, '', '', 'getallproducts', '2020-05-19 09:27:17', '0000-00-00 00:00:00'),
(2407, '', '', 'getallproducts', '2020-05-19 09:27:20', '0000-00-00 00:00:00'),
(2408, '', '', 'homePage', '2020-05-19 09:27:51', '0000-00-00 00:00:00'),
(2409, '', '', 'getallproducts', '2020-05-19 09:27:55', '0000-00-00 00:00:00'),
(2410, '', '', 'getallproducts', '2020-05-19 09:27:57', '0000-00-00 00:00:00'),
(2411, '', '', 'getallproducts', '2020-05-19 09:28:03', '0000-00-00 00:00:00'),
(2412, '', '', 'getallproducts', '2020-05-19 09:28:16', '0000-00-00 00:00:00'),
(2413, '', '', 'getallproducts', '2020-05-19 09:28:17', '0000-00-00 00:00:00'),
(2414, '', '', 'getallproducts', '2020-05-19 09:28:40', '0000-00-00 00:00:00'),
(2415, '', '', 'getallproducts', '2020-05-19 09:28:46', '0000-00-00 00:00:00'),
(2416, '', '', 'getallproducts', '2020-05-19 09:30:29', '2000-01-03 00:00:00'),
(2417, '', '', 'getallproducts', '2020-05-19 09:30:34', '0000-00-00 00:00:00'),
(2418, '', '', 'getallproducts', '2020-05-19 09:30:38', '0000-00-00 00:00:00'),
(2419, '', '', 'getallproducts', '2020-05-19 09:30:41', '0000-00-00 00:00:00'),
(2420, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:34:31', '0000-00-00 00:00:00'),
(2421, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:36:44', '0000-00-00 00:00:00'),
(2422, '', '', 'homePage', '2020-05-19 09:36:45', '0000-00-00 00:00:00'),
(2423, '', '', 'getallpages', '2020-05-19 09:36:50', '0000-00-00 00:00:00'),
(2424, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:36:59', '0000-00-00 00:00:00'),
(2425, '', '', 'getallpages', '2020-05-19 09:37:24', '0000-00-00 00:00:00'),
(2426, '', '', 'getallpages', '2020-05-19 09:37:27', '0000-00-00 00:00:00'),
(2427, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:37:38', '0000-00-00 00:00:00'),
(2428, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:38:15', '0000-00-00 00:00:00'),
(2429, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:38:38', '0000-00-00 00:00:00'),
(2430, '', '', 'homePage', '2020-05-19 09:41:04', '2000-02-17 00:00:00'),
(2431, '', '', 'getallproducts', '2020-05-19 09:41:09', '0000-00-00 00:00:00'),
(2432, '', '', 'getallproducts', '2020-05-19 09:41:11', '0000-00-00 00:00:00'),
(2433, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:41:17', '0000-00-00 00:00:00'),
(2434, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:41:32', '0000-00-00 00:00:00'),
(2435, '', '', 'homePage', '2020-05-19 09:42:29', '0000-00-00 00:00:00'),
(2436, '', '', 'getallproducts', '2020-05-19 09:42:32', '0000-00-00 00:00:00'),
(2437, '', '', 'getallproducts', '2020-05-19 09:42:35', '0000-00-00 00:00:00'),
(2438, '', '', 'getallproducts', '2020-05-19 09:42:38', '0000-00-00 00:00:00'),
(2439, '', '', 'getallproducts', '2020-05-19 09:42:53', '0000-00-00 00:00:00'),
(2440, '', '', 'getallproducts', '2020-05-19 09:43:04', '0000-00-00 00:00:00'),
(2441, '', '', 'getallproducts', '2020-05-19 09:43:06', '0000-00-00 00:00:00'),
(2442, '', '', 'homePage', '2020-05-19 09:44:54', '2000-01-08 00:00:00'),
(2443, '', '', 'getallproducts', '2020-05-19 09:45:28', '0000-00-00 00:00:00'),
(2444, '', '', 'getallproducts', '2020-05-19 09:45:33', '0000-00-00 00:00:00'),
(2445, '', '', 'getallproducts', '2020-05-19 09:45:34', '0000-00-00 00:00:00'),
(2446, '', '', 'getallproducts', '2020-05-19 09:45:36', '0000-00-00 00:00:00'),
(2447, '', '', 'getallproducts', '2020-05-19 09:45:41', '0000-00-00 00:00:00'),
(2448, '', '', 'getallproducts', '2020-05-19 09:45:44', '0000-00-00 00:00:00'),
(2449, '', '', 'homePage', '2020-05-19 09:46:20', '0000-00-00 00:00:00'),
(2450, '', '', 'getallproducts', '2020-05-19 09:46:41', '0000-00-00 00:00:00'),
(2451, '', '', 'getallproducts', '2020-05-19 09:46:44', '0000-00-00 00:00:00'),
(2452, '', '', 'homePage', '2020-05-19 09:47:10', '0000-00-00 00:00:00'),
(2453, '', '', 'getallproducts', '2020-05-19 09:47:30', '0000-00-00 00:00:00'),
(2454, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:49:33', '0000-00-00 00:00:00'),
(2455, '', '', 'homePage', '2020-05-19 09:49:37', '2000-01-27 00:00:00'),
(2456, '', '', 'getallproducts', '2020-05-19 09:49:40', '0000-00-00 00:00:00'),
(2457, '', '', 'getallproducts', '2020-05-19 09:49:43', '0000-00-00 00:00:00'),
(2458, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:49:55', '0000-00-00 00:00:00'),
(2459, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:51:54', '2000-01-19 00:00:00'),
(2460, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:52:20', '0000-00-00 00:00:00'),
(2461, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:52:59', '0000-00-00 00:00:00'),
(2462, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 09:53:05', '0000-00-00 00:00:00'),
(2463, '', '', 'getallproducts', '2020-05-19 09:59:11', '0000-00-00 00:00:00'),
(2464, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 10:00:03', '2000-04-18 00:00:00'),
(2465, '', '', 'getallproducts', '2020-05-19 10:01:31', '0000-00-00 00:00:00'),
(2466, '', '', 'getallproducts', '2020-05-19 10:03:03', '0000-00-00 00:00:00'),
(2467, '', '', 'getallproducts', '2020-05-19 10:03:04', '0000-00-00 00:00:00'),
(2468, '', '', 'getallproducts', '2020-05-19 10:03:07', '0000-00-00 00:00:00'),
(2469, '', '', 'getallproducts', '2020-05-19 10:03:07', '0000-00-00 00:00:00'),
(2470, '', '', 'getallproducts', '2020-05-19 10:03:10', '0000-00-00 00:00:00'),
(2471, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 10:03:59', '0000-00-00 00:00:00'),
(2472, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 10:04:03', '0000-00-00 00:00:00'),
(2473, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 10:05:30', '0000-00-00 00:00:00'),
(2474, '', '', 'getallproducts', '2020-05-19 10:06:33', '2000-02-03 00:00:00'),
(2475, '', '', 'getallproducts', '2020-05-19 10:06:35', '0000-00-00 00:00:00'),
(2476, '', '', 'getallproducts', '2020-05-19 10:06:38', '0000-00-00 00:00:00'),
(2477, '', '', 'getallproducts', '2020-05-19 10:06:39', '0000-00-00 00:00:00'),
(2478, '', '', 'getallproducts', '2020-05-19 10:06:39', '0000-00-00 00:00:00'),
(2479, '', '', 'unlikeproduct', '2020-05-19 10:06:51', '0000-00-00 00:00:00'),
(2480, '', '', 'likeproduct', '2020-05-19 10:06:54', '0000-00-00 00:00:00'),
(2481, '', '', 'unlikeproduct', '2020-05-19 10:07:44', '0000-00-00 00:00:00'),
(2482, '', '', 'getallproducts', '2020-05-19 10:07:47', '0000-00-00 00:00:00'),
(2483, '', '', 'likeproduct', '2020-05-19 10:07:49', '0000-00-00 00:00:00'),
(2484, '', '', 'getallproducts', '2020-05-19 10:07:59', '0000-00-00 00:00:00'),
(2485, '', '', 'getallproducts', '2020-05-19 10:08:01', '0000-00-00 00:00:00'),
(2486, '', '', 'getallproducts', '2020-05-19 10:08:39', '0000-00-00 00:00:00'),
(2487, '', '', 'getallproducts', '2020-05-19 10:08:40', '0000-00-00 00:00:00'),
(2488, '', '', 'homePage', '2020-05-19 10:09:05', '0000-00-00 00:00:00'),
(2489, '', '', 'getallproducts', '2020-05-19 10:09:09', '0000-00-00 00:00:00'),
(2490, '', '', 'getallproducts', '2020-05-19 10:09:11', '0000-00-00 00:00:00'),
(2491, '', '', 'getallproducts', '2020-05-19 10:09:39', '0000-00-00 00:00:00'),
(2492, '', '', 'getallproducts', '2020-05-19 10:09:41', '0000-00-00 00:00:00'),
(2493, '', '', 'getallproducts', '2020-05-19 10:10:04', '0000-00-00 00:00:00'),
(2494, '', '', 'getallproducts', '2020-05-19 10:10:27', '0000-00-00 00:00:00'),
(2495, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 10:13:58', '2000-05-08 00:00:00'),
(2496, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 10:14:28', '0000-00-00 00:00:00'),
(2497, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-19 10:15:50', '0000-00-00 00:00:00'),
(2498, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 10:16:00', '0000-00-00 00:00:00'),
(2499, '', '', 'homePage', '2020-05-19 10:21:49', '0000-00-00 00:00:00'),
(2500, '', '', 'getallproducts', '2020-05-19 10:21:54', '0000-00-00 00:00:00'),
(2501, '', '', 'getallproducts', '2020-05-19 10:23:24', '0000-00-00 00:00:00'),
(2502, '', '', 'getallproducts', '2020-05-19 10:23:27', '0000-00-00 00:00:00'),
(2503, '', '', 'getallproducts', '2020-05-19 10:23:28', '0000-00-00 00:00:00'),
(2504, '', '', 'getallproducts', '2020-05-19 10:23:29', '0000-00-00 00:00:00'),
(2505, '', '', 'getallproducts', '2020-05-19 10:23:29', '0000-00-00 00:00:00'),
(2506, '', '', 'getallproducts', '2020-05-19 10:23:29', '0000-00-00 00:00:00'),
(2507, '', '', 'getallproducts', '2020-05-19 10:28:53', '2000-03-24 00:00:00'),
(2508, '', '', 'getallproducts', '2020-05-19 10:28:54', '0000-00-00 00:00:00'),
(2509, '', '', 'getallproducts', '2020-05-19 10:28:56', '0000-00-00 00:00:00'),
(2510, '', '', 'getallproducts', '2020-05-19 10:28:57', '0000-00-00 00:00:00'),
(2511, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 10:32:09', '0000-00-00 00:00:00'),
(2512, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 10:32:18', '0000-00-00 00:00:00'),
(2513, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 10:33:02', '0000-00-00 00:00:00'),
(2514, '', '', 'getallproducts', '2020-05-19 10:33:30', '0000-00-00 00:00:00'),
(2515, '', '', 'getallproducts', '2020-05-19 10:33:32', '0000-00-00 00:00:00'),
(2516, '', '', 'getallproducts', '2020-05-19 10:33:46', '0000-00-00 00:00:00'),
(2517, '', '', 'getallproducts', '2020-05-19 10:33:48', '0000-00-00 00:00:00'),
(2518, '', '', 'getallproducts', '2020-05-19 10:33:49', '0000-00-00 00:00:00'),
(2519, '', '', 'getallproducts', '2020-05-19 10:33:49', '0000-00-00 00:00:00'),
(2520, '', '', 'getallproducts', '2020-05-19 10:33:58', '0000-00-00 00:00:00'),
(2521, '', '', 'getallproducts', '2020-05-19 10:35:20', '0000-00-00 00:00:00'),
(2522, '', '', 'getallproducts', '2020-05-19 10:35:22', '0000-00-00 00:00:00'),
(2523, '', '', 'getallproducts', '2020-05-19 10:35:29', '0000-00-00 00:00:00'),
(2524, '', '', 'getallproducts', '2020-05-19 10:35:33', '0000-00-00 00:00:00'),
(2525, '', '', 'getallproducts', '2020-05-19 10:35:38', '0000-00-00 00:00:00'),
(2526, '', '', 'getallproducts', '2020-05-19 10:35:38', '0000-00-00 00:00:00'),
(2527, '', '', 'getallproducts', '2020-05-19 10:35:38', '0000-00-00 00:00:00'),
(2528, '', '', 'getallproducts', '2020-05-19 10:35:40', '0000-00-00 00:00:00'),
(2529, '', '', 'getallproducts', '2020-05-19 10:35:41', '0000-00-00 00:00:00'),
(2530, '', '', 'homePage', '2020-05-19 10:37:54', '0000-00-00 00:00:00'),
(2531, '', '', 'homePage', '2020-05-19 10:39:25', '0000-00-00 00:00:00'),
(2532, '', '', 'homePage', '2020-05-19 10:39:27', '0000-00-00 00:00:00'),
(2533, '', '', 'getallproducts', '2020-05-19 10:39:47', '0000-00-00 00:00:00'),
(2534, '', '', 'getallproducts', '2020-05-19 10:39:49', '0000-00-00 00:00:00'),
(2535, '', '', 'getallproducts', '2020-05-19 10:39:50', '0000-00-00 00:00:00'),
(2536, '', '', 'getallproducts', '2020-05-19 10:39:55', '0000-00-00 00:00:00'),
(2537, '', '', 'getallproducts', '2020-05-19 10:40:03', '0000-00-00 00:00:00'),
(2538, '', '', 'getallproducts', '2020-05-19 10:43:18', '0000-00-00 00:00:00'),
(2539, '', '', 'getallproducts', '2020-05-19 10:43:52', '0000-00-00 00:00:00'),
(2540, '', '', 'getallproducts', '2020-05-19 10:44:04', '0000-00-00 00:00:00'),
(2541, '', '', 'getallproducts', '2020-05-19 10:44:11', '0000-00-00 00:00:00'),
(2542, '', '', 'getallproducts', '2020-05-19 10:44:15', '0000-00-00 00:00:00'),
(2543, '', '', 'getallproducts', '2020-05-19 10:44:21', '0000-00-00 00:00:00'),
(2544, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 10:44:34', '0000-00-00 00:00:00'),
(2545, '', '', 'getallproducts', '2020-05-19 10:48:24', '0000-00-00 00:00:00'),
(2546, '', '', 'getallproducts', '2020-05-19 10:48:34', '0000-00-00 00:00:00'),
(2547, '', '', 'getallproducts', '2020-05-19 10:50:57', '0000-00-00 00:00:00'),
(2548, '', '', 'getallproducts', '2020-05-19 10:51:00', '0000-00-00 00:00:00'),
(2549, '', '', 'getallproducts', '2020-05-19 10:51:10', '0000-00-00 00:00:00'),
(2550, '', '', 'getallproducts', '2020-05-19 10:51:16', '0000-00-00 00:00:00'),
(2551, '', '', 'homePage', '2020-05-19 10:54:25', '0000-00-00 00:00:00'),
(2552, '', '', 'getallproducts', '2020-05-19 10:54:33', '0000-00-00 00:00:00'),
(2553, '', '', 'homePage', '2020-05-19 10:54:39', '0000-00-00 00:00:00'),
(2554, '', '', 'getallproducts', '2020-05-19 10:54:42', '0000-00-00 00:00:00'),
(2555, '', '', 'getallproducts', '2020-05-19 10:54:47', '0000-00-00 00:00:00'),
(2556, '', '', 'getallproducts', '2020-05-19 10:55:10', '0000-00-00 00:00:00'),
(2557, '', '', 'getallproducts', '2020-05-19 10:55:10', '0000-00-00 00:00:00'),
(2558, '', '', 'getallproducts', '2020-05-19 10:55:11', '0000-00-00 00:00:00'),
(2559, '', '', 'getallproducts', '2020-05-19 10:55:17', '0000-00-00 00:00:00'),
(2560, '', '', 'getallproducts', '2020-05-19 10:55:17', '0000-00-00 00:00:00'),
(2561, '', '', 'getallproducts', '2020-05-19 10:55:17', '0000-00-00 00:00:00'),
(2562, '', '', 'getallproducts', '2020-05-19 10:55:21', '0000-00-00 00:00:00'),
(2563, '', '', 'getallproducts', '2020-05-19 10:55:23', '0000-00-00 00:00:00'),
(2564, '', '', 'getallproducts', '2020-05-19 10:55:25', '0000-00-00 00:00:00'),
(2565, '', '', 'getallproducts', '2020-05-19 10:55:25', '0000-00-00 00:00:00'),
(2566, '', '', 'getallproducts', '2020-05-19 10:55:26', '0000-00-00 00:00:00'),
(2567, '', '', 'getallproducts', '2020-05-19 10:55:30', '0000-00-00 00:00:00'),
(2568, '', '', 'getallproducts', '2020-05-19 10:55:34', '0000-00-00 00:00:00'),
(2569, '', '', 'getallproducts', '2020-05-19 10:55:35', '0000-00-00 00:00:00'),
(2570, '', '', 'getallproducts', '2020-05-19 10:55:35', '0000-00-00 00:00:00'),
(2571, '', '', 'getallproducts', '2020-05-19 10:55:40', '0000-00-00 00:00:00'),
(2572, '', '', 'getallproducts', '2020-05-19 10:55:43', '0000-00-00 00:00:00'),
(2573, '', '', 'getallproducts', '2020-05-19 10:55:45', '0000-00-00 00:00:00'),
(2574, '', '', 'getallproducts', '2020-05-19 10:55:45', '0000-00-00 00:00:00'),
(2575, '', '', 'getallproducts', '2020-05-19 10:55:46', '0000-00-00 00:00:00'),
(2576, '', '', 'getallproducts', '2020-05-19 10:55:55', '0000-00-00 00:00:00'),
(2577, '', '', 'getallproducts', '2020-05-19 10:55:58', '0000-00-00 00:00:00'),
(2578, '', '', 'getallproducts', '2020-05-19 10:56:00', '0000-00-00 00:00:00'),
(2579, '', '', 'getallproducts', '2020-05-19 10:56:03', '0000-00-00 00:00:00'),
(2580, '', '', 'getallproducts', '2020-05-19 10:56:05', '0000-00-00 00:00:00'),
(2581, '', '', 'getallproducts', '2020-05-19 10:56:07', '0000-00-00 00:00:00'),
(2582, '', '', 'getallproducts', '2020-05-19 10:56:11', '0000-00-00 00:00:00'),
(2583, '', '', 'getallproducts', '2020-05-19 10:56:13', '0000-00-00 00:00:00'),
(2584, '', '', 'getallproducts', '2020-05-19 10:56:15', '0000-00-00 00:00:00'),
(2585, '', '', 'getallproducts', '2020-05-19 10:56:15', '0000-00-00 00:00:00'),
(2586, '', '', 'getallproducts', '2020-05-19 10:56:16', '0000-00-00 00:00:00'),
(2587, '', '', 'getallproducts', '2020-05-19 10:57:32', '0000-00-00 00:00:00'),
(2588, '', '', 'getallproducts', '2020-05-19 10:57:32', '0000-00-00 00:00:00'),
(2589, '', '', 'getallproducts', '2020-05-19 10:57:32', '0000-00-00 00:00:00'),
(2590, '', '', 'getallproducts', '2020-05-19 10:57:36', '0000-00-00 00:00:00'),
(2591, '', '', 'getallproducts', '2020-05-19 10:57:36', '0000-00-00 00:00:00'),
(2592, '', '', 'getallproducts', '2020-05-19 10:57:36', '0000-00-00 00:00:00'),
(2593, '', '', 'getallproducts', '2020-05-19 10:57:37', '0000-00-00 00:00:00'),
(2594, '', '', 'getallproducts', '2020-05-19 10:57:37', '0000-00-00 00:00:00'),
(2595, '', '', 'getallproducts', '2020-05-19 10:57:38', '0000-00-00 00:00:00'),
(2596, '', '', 'getallproducts', '2020-05-19 10:58:37', '0000-00-00 00:00:00'),
(2597, '', '', 'getallproducts', '2020-05-19 10:58:37', '0000-00-00 00:00:00'),
(2598, '', '', 'getallproducts', '2020-05-19 10:58:37', '0000-00-00 00:00:00'),
(2599, '', '', 'getallproducts', '2020-05-19 10:58:39', '0000-00-00 00:00:00'),
(2600, '', '', 'getallproducts', '2020-05-19 10:58:39', '0000-00-00 00:00:00'),
(2601, '', '', 'getallproducts', '2020-05-19 10:58:39', '0000-00-00 00:00:00'),
(2602, '', '', 'getallproducts', '2020-05-19 10:58:45', '0000-00-00 00:00:00'),
(2603, '', '', 'getallproducts', '2020-05-19 10:58:45', '0000-00-00 00:00:00'),
(2604, '', '', 'getallproducts', '2020-05-19 10:58:45', '0000-00-00 00:00:00'),
(2605, '', '', 'getallproducts', '2020-05-19 10:59:48', '0000-00-00 00:00:00'),
(2606, '', '', 'getallproducts', '2020-05-19 10:59:48', '0000-00-00 00:00:00'),
(2607, '', '', 'getallproducts', '2020-05-19 10:59:48', '0000-00-00 00:00:00'),
(2608, '', '', 'getallproducts', '2020-05-19 10:59:53', '0000-00-00 00:00:00'),
(2609, '', '', 'getallproducts', '2020-05-19 10:59:54', '0000-00-00 00:00:00'),
(2610, '', '', 'getallproducts', '2020-05-19 10:59:54', '0000-00-00 00:00:00'),
(2611, '', '', 'getallproducts', '2020-05-19 11:00:10', '0000-00-00 00:00:00'),
(2612, '', '', 'getallproducts', '2020-05-19 11:00:10', '0000-00-00 00:00:00'),
(2613, '', '', 'getallproducts', '2020-05-19 11:00:10', '0000-00-00 00:00:00'),
(2614, '', '', 'getallproducts', '2020-05-19 11:00:32', '0000-00-00 00:00:00'),
(2615, '', '', 'getallproducts', '2020-05-19 11:00:32', '0000-00-00 00:00:00'),
(2616, '', '', 'getallproducts', '2020-05-19 11:00:32', '0000-00-00 00:00:00'),
(2617, '', '', 'getallproducts', '2020-05-19 11:00:46', '0000-00-00 00:00:00'),
(2618, '', '', 'getallproducts', '2020-05-19 11:00:46', '0000-00-00 00:00:00'),
(2619, '', '', 'getallproducts', '2020-05-19 11:00:46', '0000-00-00 00:00:00'),
(2620, '', '', 'getallproducts', '2020-05-19 11:01:58', '0000-00-00 00:00:00'),
(2621, '', '', 'getallproducts', '2020-05-19 11:01:59', '0000-00-00 00:00:00'),
(2622, '', '', 'getallproducts', '2020-05-19 11:01:59', '0000-00-00 00:00:00'),
(2623, '', '', 'getallproducts', '2020-05-19 11:02:17', '0000-00-00 00:00:00'),
(2624, '', '', 'homePage', '2020-05-19 11:07:32', '2000-03-15 00:00:00'),
(2625, '', '', 'getallproducts', '2020-05-19 11:07:36', '0000-00-00 00:00:00'),
(2626, '', '', 'getallproducts', '2020-05-19 11:07:39', '0000-00-00 00:00:00'),
(2627, '', '', 'homePage', '2020-05-19 11:08:03', '0000-00-00 00:00:00'),
(2628, '', '', 'getallproducts', '2020-05-19 11:18:20', '2000-06-17 00:00:00'),
(2629, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-19 11:20:27', '0000-00-00 00:00:00'),
(2630, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-19 11:21:16', '0000-00-00 00:00:00'),
(2631, '', '', 'homePage', '2020-05-19 11:21:40', '2000-02-00 00:00:00'),
(2632, '', '', 'getallproducts', '2020-05-19 11:22:00', '0000-00-00 00:00:00'),
(2633, '', '', 'getallproducts', '2020-05-19 11:22:03', '0000-00-00 00:00:00'),
(2634, '', '', 'getallproducts', '2020-05-19 11:22:04', '0000-00-00 00:00:00'),
(2635, '', '', 'getallproducts', '2020-05-19 11:22:04', '0000-00-00 00:00:00'),
(2636, '', '', 'getallproducts', '2020-05-19 11:22:06', '0000-00-00 00:00:00'),
(2637, '', '', 'getallproducts', '2020-05-19 11:22:06', '0000-00-00 00:00:00'),
(2638, '', '', 'getallproducts', '2020-05-19 11:22:06', '0000-00-00 00:00:00'),
(2639, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-19 11:23:33', '0000-00-00 00:00:00'),
(2640, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-19 11:23:57', '0000-00-00 00:00:00'),
(2641, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-19 11:26:22', '0000-00-00 00:00:00'),
(2642, '', '', 'homePage', '2020-05-19 11:26:47', '0000-00-00 00:00:00'),
(2643, '', '', 'getallproducts', '2020-05-19 11:26:52', '0000-00-00 00:00:00'),
(2644, '', '', 'getallproducts', '2020-05-19 11:26:57', '0000-00-00 00:00:00'),
(2645, '', '', 'homePage', '2020-05-19 11:27:21', '0000-00-00 00:00:00'),
(2646, '', '', 'getallproducts', '2020-05-19 11:27:24', '0000-00-00 00:00:00'),
(2647, '', '', 'getallproducts', '2020-05-19 11:27:29', '0000-00-00 00:00:00'),
(2648, '', '', 'homePage', '2020-05-19 11:27:59', '0000-00-00 00:00:00'),
(2649, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-19 11:28:14', '2000-01-12 00:00:00'),
(2650, '', '', 'getallproducts', '2020-05-19 11:28:21', '0000-00-00 00:00:00'),
(2651, '', '', 'getallproducts', '2020-05-19 11:28:26', '0000-00-00 00:00:00'),
(2652, '', '', 'homePage', '2020-05-19 11:29:10', '0000-00-00 00:00:00'),
(2653, '', '', 'getallproducts', '2020-05-19 11:29:14', '0000-00-00 00:00:00'),
(2654, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-19 11:29:26', '0000-00-00 00:00:00'),
(2655, '', '', 'homePage', '2020-05-19 11:29:28', '0000-00-00 00:00:00'),
(2656, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-19 11:30:36', '0000-00-00 00:00:00'),
(2657, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-19 11:31:14', '0000-00-00 00:00:00'),
(2658, '', '', 'getallproducts', '2020-05-19 11:43:35', '0000-00-00 00:00:00'),
(2659, '', '', 'getallproducts', '2020-05-19 11:43:40', '0000-00-00 00:00:00'),
(2660, '', '', 'homePage', '2020-05-19 11:44:12', '0000-00-00 00:00:00'),
(2661, '', '', 'getallproducts', '2020-05-19 11:44:17', '0000-00-00 00:00:00'),
(2662, '', '', 'getallproducts', '2020-05-19 11:44:21', '0000-00-00 00:00:00'),
(2663, '', '', 'getallproducts', '2020-05-19 11:44:22', '0000-00-00 00:00:00'),
(2664, '', '', 'getallproducts', '2020-05-19 11:44:22', '0000-00-00 00:00:00'),
(2665, '', '', 'getallproducts', '2020-05-19 11:44:26', '0000-00-00 00:00:00'),
(2666, '', '', 'getallproducts', '2020-05-19 11:44:26', '0000-00-00 00:00:00'),
(2667, '', '', 'getallproducts', '2020-05-19 11:44:26', '0000-00-00 00:00:00'),
(2668, '', '', 'getallproducts', '2020-05-19 11:44:31', '0000-00-00 00:00:00'),
(2669, '', '', 'getallproducts', '2020-05-19 11:44:32', '0000-00-00 00:00:00'),
(2670, '', '', 'getallproducts', '2020-05-19 11:44:37', '0000-00-00 00:00:00'),
(2671, '', '', 'getallproducts', '2020-05-19 11:44:37', '0000-00-00 00:00:00'),
(2672, '', '', 'getallproducts', '2020-05-19 11:44:37', '0000-00-00 00:00:00'),
(2673, '', '', 'homePage', '2020-05-19 12:34:58', '0000-00-00 00:00:00'),
(2674, '', '', 'getallproducts', '2020-05-19 12:35:07', '0000-00-00 00:00:00'),
(2675, '', '', 'getallproducts', '2020-05-19 12:35:23', '0000-00-00 00:00:00'),
(2676, '', '', 'getallproducts', '2020-05-19 12:35:25', '0000-00-00 00:00:00'),
(2677, '', '', 'getallproducts', '2020-05-19 12:35:26', '0000-00-00 00:00:00'),
(2678, '', '', 'getallproducts', '2020-05-19 12:35:27', '0000-00-00 00:00:00'),
(2679, '', '', 'getallproducts', '2020-05-19 12:35:28', '0000-00-00 00:00:00'),
(2680, '', '', 'getallproducts', '2020-05-19 12:35:33', '0000-00-00 00:00:00'),
(2681, '', '', 'getallproducts', '2020-05-19 12:35:38', '0000-00-00 00:00:00'),
(2682, '', '', 'getallproducts', '2020-05-19 12:37:55', '0000-00-00 00:00:00'),
(2683, '', '', 'getallproducts', '2020-05-19 12:38:51', '0000-00-00 00:00:00'),
(2684, '', '', 'getallproducts', '2020-05-19 12:39:22', '0000-00-00 00:00:00'),
(2685, '', '', 'homePage', '2020-05-19 12:39:55', '0000-00-00 00:00:00'),
(2686, '', '', 'getallproducts', '2020-05-19 12:39:58', '0000-00-00 00:00:00'),
(2687, '', '', 'homePage', '2020-05-19 12:51:54', '2000-07-16 00:00:00'),
(2688, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 12:58:05', '0000-00-00 00:00:00'),
(2689, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 12:58:21', '0000-00-00 00:00:00'),
(2690, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 12:58:42', '0000-00-00 00:00:00'),
(2691, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 12:59:12', '0000-00-00 00:00:00'),
(2692, '', '', 'homePage', '2020-05-19 12:59:40', '0000-00-00 00:00:00'),
(2693, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:00:08', '0000-00-00 00:00:00'),
(2694, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:00:11', '0000-00-00 00:00:00'),
(2695, '', '', 'homePage', '2020-05-19 13:02:02', '0000-00-00 00:00:00'),
(2696, '', '', 'getallproducts', '2020-05-19 13:02:06', '0000-00-00 00:00:00'),
(2697, '', '', 'getallproducts', '2020-05-19 13:02:10', '0000-00-00 00:00:00'),
(2698, '', '', 'getallproducts', '2020-05-19 13:02:13', '0000-00-00 00:00:00'),
(2699, '', '', 'getallproducts', '2020-05-19 13:02:18', '0000-00-00 00:00:00'),
(2700, '', '', 'getallproducts', '2020-05-19 13:02:18', '0000-00-00 00:00:00'),
(2701, '', '', 'getallproducts', '2020-05-19 13:02:18', '0000-00-00 00:00:00'),
(2702, '', '', 'getallproducts', '2020-05-19 13:05:17', '0000-00-00 00:00:00'),
(2703, '', '', 'getallproducts', '2020-05-19 13:05:20', '0000-00-00 00:00:00'),
(2704, '', '', 'getallproducts', '2020-05-19 13:05:22', '0000-00-00 00:00:00'),
(2705, '', '', 'getallproducts', '2020-05-19 13:05:28', '0000-00-00 00:00:00'),
(2706, '', '', 'getallproducts', '2020-05-19 13:05:41', '0000-00-00 00:00:00'),
(2707, '', '', 'getallproducts', '2020-05-19 13:05:54', '0000-00-00 00:00:00'),
(2708, '', '', 'getallproducts', '2020-05-19 13:06:30', '0000-00-00 00:00:00'),
(2709, '', '', 'getallproducts', '2020-05-19 13:06:42', '0000-00-00 00:00:00'),
(2710, '', '', 'getallproducts', '2020-05-19 13:06:45', '0000-00-00 00:00:00'),
(2711, '', '', 'getallproducts', '2020-05-19 13:06:49', '0000-00-00 00:00:00'),
(2712, '', '', 'getallproducts', '2020-05-19 13:06:55', '0000-00-00 00:00:00'),
(2713, '', '', 'getallproducts', '2020-05-19 13:06:59', '0000-00-00 00:00:00'),
(2714, '', '', 'getallproducts', '2020-05-19 13:07:06', '0000-00-00 00:00:00'),
(2715, '', '', 'getallproducts', '2020-05-19 13:07:11', '0000-00-00 00:00:00'),
(2716, '', '', 'getallproducts', '2020-05-19 13:07:15', '0000-00-00 00:00:00'),
(2717, '', '', 'getallproducts', '2020-05-19 13:07:21', '0000-00-00 00:00:00'),
(2718, '', '', 'getallproducts', '2020-05-19 13:07:29', '0000-00-00 00:00:00'),
(2719, '', '', 'getallproducts', '2020-05-19 13:07:54', '0000-00-00 00:00:00'),
(2720, '', '', 'getallproducts', '2020-05-19 13:08:35', '0000-00-00 00:00:00'),
(2721, '', '', 'getallproducts', '2020-05-19 13:08:48', '0000-00-00 00:00:00'),
(2722, '', '', 'getallproducts', '2020-05-19 13:08:48', '0000-00-00 00:00:00'),
(2723, '', '', 'getallproducts', '2020-05-19 13:08:48', '0000-00-00 00:00:00'),
(2724, '', '', 'getallproducts', '2020-05-19 13:08:51', '0000-00-00 00:00:00'),
(2725, '', '', 'getallproducts', '2020-05-19 13:08:55', '0000-00-00 00:00:00'),
(2726, '', '', 'getallproducts', '2020-05-19 13:09:03', '0000-00-00 00:00:00'),
(2727, '', '', 'getallproducts', '2020-05-19 13:09:03', '0000-00-00 00:00:00'),
(2728, '', '', 'getallproducts', '2020-05-19 13:09:04', '0000-00-00 00:00:00'),
(2729, '', '', 'getallproducts', '2020-05-19 13:09:27', '0000-00-00 00:00:00'),
(2730, '', '', 'getallproducts', '2020-05-19 13:09:28', '0000-00-00 00:00:00'),
(2731, '', '', 'getallproducts', '2020-05-19 13:09:28', '0000-00-00 00:00:00'),
(2732, '', '', 'getallproducts', '2020-05-19 13:09:32', '0000-00-00 00:00:00'),
(2733, '', '', 'getallproducts', '2020-05-19 13:09:50', '0000-00-00 00:00:00'),
(2734, '', '', 'getallproducts', '2020-05-19 13:09:50', '0000-00-00 00:00:00'),
(2735, '', '', 'getallproducts', '2020-05-19 13:09:50', '0000-00-00 00:00:00'),
(2736, '', '', 'getallproducts', '2020-05-19 13:09:55', '0000-00-00 00:00:00'),
(2737, '', '', 'getallproducts', '2020-05-19 13:10:09', '0000-00-00 00:00:00'),
(2738, '', '', 'getallproducts', '2020-05-19 13:10:15', '0000-00-00 00:00:00'),
(2739, '', '', 'getallproducts', '2020-05-19 13:10:23', '0000-00-00 00:00:00'),
(2740, '', '', 'getallproducts', '2020-05-19 13:10:23', '0000-00-00 00:00:00'),
(2741, '', '', 'getallproducts', '2020-05-19 13:10:23', '0000-00-00 00:00:00'),
(2742, '', '', 'getallproducts', '2020-05-19 13:11:06', '0000-00-00 00:00:00'),
(2743, '', '', 'getallproducts', '2020-05-19 13:11:06', '0000-00-00 00:00:00'),
(2744, '', '', 'getallproducts', '2020-05-19 13:11:06', '0000-00-00 00:00:00'),
(2745, '', '', 'getallproducts', '2020-05-19 13:11:09', '0000-00-00 00:00:00'),
(2746, '', '', 'getallproducts', '2020-05-19 13:11:09', '0000-00-00 00:00:00'),
(2747, '', '', 'getallproducts', '2020-05-19 13:11:09', '0000-00-00 00:00:00'),
(2748, '', '', 'getallproducts', '2020-05-19 13:11:12', '0000-00-00 00:00:00'),
(2749, '', '', 'getallproducts', '2020-05-19 13:11:13', '0000-00-00 00:00:00'),
(2750, '', '', 'getallproducts', '2020-05-19 13:11:14', '0000-00-00 00:00:00'),
(2751, '', '', 'getallproducts', '2020-05-19 13:11:17', '0000-00-00 00:00:00'),
(2752, '', '', 'getallproducts', '2020-05-19 13:11:20', '0000-00-00 00:00:00'),
(2753, '', '', 'getallproducts', '2020-05-19 13:11:23', '0000-00-00 00:00:00'),
(2754, '', '', 'getallproducts', '2020-05-19 13:11:23', '0000-00-00 00:00:00'),
(2755, '', '', 'getallproducts', '2020-05-19 13:11:23', '0000-00-00 00:00:00'),
(2756, '', '', 'getallproducts', '2020-05-19 13:11:43', '0000-00-00 00:00:00'),
(2757, '', '', 'homePage', '2020-05-19 13:13:07', '0000-00-00 00:00:00'),
(2758, '', '', 'homePage', '2020-05-19 13:14:05', '0000-00-00 00:00:00'),
(2759, '', '', 'getallproducts', '2020-05-19 13:14:37', '0000-00-00 00:00:00'),
(2760, '', '', 'getallproducts', '2020-05-19 13:14:43', '0000-00-00 00:00:00'),
(2761, '', '', 'getallproducts', '2020-05-19 13:14:45', '0000-00-00 00:00:00'),
(2762, '', '', 'getallproducts', '2020-05-19 13:14:48', '0000-00-00 00:00:00'),
(2763, '', '', 'getallproducts', '2020-05-19 13:14:50', '0000-00-00 00:00:00'),
(2764, '', '', 'getallproducts', '2020-05-19 13:14:51', '0000-00-00 00:00:00'),
(2765, '', '', 'getallproducts', '2020-05-19 13:14:51', '0000-00-00 00:00:00'),
(2766, '', '', 'getallproducts', '2020-05-19 13:14:52', '0000-00-00 00:00:00'),
(2767, '', '', 'getallproducts', '2020-05-19 13:14:53', '0000-00-00 00:00:00'),
(2768, '', '', 'getallproducts', '2020-05-19 13:14:53', '0000-00-00 00:00:00'),
(2769, '', '', 'getallproducts', '2020-05-19 13:14:55', '0000-00-00 00:00:00'),
(2770, '', '', 'getallproducts', '2020-05-19 13:14:55', '0000-00-00 00:00:00'),
(2771, '', '', 'getallproducts', '2020-05-19 13:14:55', '0000-00-00 00:00:00'),
(2772, '', '', 'homePage', '2020-05-19 13:15:16', '0000-00-00 00:00:00'),
(2773, '', '', 'getallproducts', '2020-05-19 13:15:20', '0000-00-00 00:00:00'),
(2774, '', '', 'getallproducts', '2020-05-19 13:15:23', '0000-00-00 00:00:00'),
(2775, '', '', 'homePage', '2020-05-19 13:19:21', '0000-00-00 00:00:00'),
(2776, '', '', 'getallproducts', '2020-05-19 13:19:24', '0000-00-00 00:00:00'),
(2777, '', '', 'getallproducts', '2020-05-19 13:19:28', '0000-00-00 00:00:00'),
(2778, '', '', 'getallproducts', '2020-05-19 13:19:31', '0000-00-00 00:00:00'),
(2779, '', '', 'getallproducts', '2020-05-19 13:19:33', '0000-00-00 00:00:00'),
(2780, '', '', 'getallproducts', '2020-05-19 13:19:34', '0000-00-00 00:00:00'),
(2781, '', '', 'getallproducts', '2020-05-19 13:19:34', '0000-00-00 00:00:00'),
(2782, '', '', 'getallproducts', '2020-05-19 13:19:42', '0000-00-00 00:00:00'),
(2783, '', '', 'getallproducts', '2020-05-19 13:19:42', '0000-00-00 00:00:00'),
(2784, '', '', 'getallproducts', '2020-05-19 13:19:42', '0000-00-00 00:00:00'),
(2785, '', '', 'getallproducts', '2020-05-19 13:19:45', '0000-00-00 00:00:00'),
(2786, '', '', 'getallproducts', '2020-05-19 13:19:47', '0000-00-00 00:00:00'),
(2787, '', '', 'homePage', '2020-05-19 13:20:02', '0000-00-00 00:00:00'),
(2788, '', '', 'getallproducts', '2020-05-19 13:20:05', '0000-00-00 00:00:00'),
(2789, '', '', 'getallproducts', '2020-05-19 13:20:08', '0000-00-00 00:00:00'),
(2790, '', '', 'getallproducts', '2020-05-19 13:20:09', '0000-00-00 00:00:00'),
(2791, '', '', 'getallproducts', '2020-05-19 13:20:09', '0000-00-00 00:00:00'),
(2792, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:21:07', '0000-00-00 00:00:00'),
(2793, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:22:00', '0000-00-00 00:00:00'),
(2794, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:22:17', '0000-00-00 00:00:00'),
(2795, '', '', 'homePage', '2020-05-19 13:27:21', '0000-00-00 00:00:00'),
(2796, '', '', 'getallproducts', '2020-05-19 13:27:28', '0000-00-00 00:00:00'),
(2797, '', '', 'getallproducts', '2020-05-19 13:27:34', '0000-00-00 00:00:00'),
(2798, '', '', 'homePage', '2020-05-19 13:29:32', '2000-01-18 00:00:00'),
(2799, '', '', 'getallproducts', '2020-05-19 13:29:37', '0000-00-00 00:00:00'),
(2800, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:37:29', '2000-09-12 00:00:00'),
(2801, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:37:57', '0000-00-00 00:00:00'),
(2802, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:38:10', '0000-00-00 00:00:00'),
(2803, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:38:50', '0000-00-00 00:00:00'),
(2804, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:38:59', '0000-00-00 00:00:00'),
(2805, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:39:04', '0000-00-00 00:00:00'),
(2806, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:39:09', '0000-00-00 00:00:00'),
(2807, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:39:14', '0000-00-00 00:00:00'),
(2808, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:39:22', '0000-00-00 00:00:00'),
(2809, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:40:19', '0000-00-00 00:00:00'),
(2810, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:42:25', '2000-01-26 00:00:00'),
(2811, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:46:55', '0000-00-00 00:00:00'),
(2812, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:47:10', '0000-00-00 00:00:00'),
(2813, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:48:12', '0000-00-00 00:00:00'),
(2814, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 13:48:43', '0000-00-00 00:00:00'),
(2815, '', '', 'homePage', '2020-05-19 13:50:20', '0000-00-00 00:00:00'),
(2816, '', '', 'homePage', '2020-05-19 13:53:14', '0000-00-00 00:00:00'),
(2817, '', '', 'getallproducts', '2020-05-19 13:53:18', '0000-00-00 00:00:00'),
(2818, '', '', 'getallproducts', '2020-05-19 13:53:22', '0000-00-00 00:00:00'),
(2819, '', '', 'getallproducts', '2020-05-19 13:53:22', '0000-00-00 00:00:00'),
(2820, '', '', 'getallproducts', '2020-05-19 13:53:22', '0000-00-00 00:00:00'),
(2821, '', '', 'getallproducts', '2020-05-19 13:53:25', '0000-00-00 00:00:00'),
(2822, '', '', 'getallproducts', '2020-05-19 13:53:27', '0000-00-00 00:00:00'),
(2823, '', '', 'getallproducts', '2020-05-19 13:53:30', '0000-00-00 00:00:00'),
(2824, '', '', 'getallproducts', '2020-05-19 13:53:32', '0000-00-00 00:00:00'),
(2825, '', '', 'getallproducts', '2020-05-19 13:53:34', '0000-00-00 00:00:00'),
(2826, '', '', 'getallproducts', '2020-05-19 13:53:34', '0000-00-00 00:00:00'),
(2827, '', '', 'getallproducts', '2020-05-19 13:53:35', '0000-00-00 00:00:00'),
(2828, '', '', 'getallproducts', '2020-05-19 13:53:37', '0000-00-00 00:00:00'),
(2829, '', '', 'getallproducts', '2020-05-19 13:53:37', '0000-00-00 00:00:00'),
(2830, '', '', 'getallproducts', '2020-05-19 13:53:38', '0000-00-00 00:00:00'),
(2831, '', '', 'getallproducts', '2020-05-19 13:53:42', '0000-00-00 00:00:00'),
(2832, '', '', 'getallproducts', '2020-05-19 13:53:42', '0000-00-00 00:00:00'),
(2833, '', '', 'getallproducts', '2020-05-19 13:53:42', '0000-00-00 00:00:00'),
(2834, '', '', 'getallproducts', '2020-05-19 13:53:44', '0000-00-00 00:00:00'),
(2835, '', '', 'getallproducts', '2020-05-19 13:53:58', '0000-00-00 00:00:00'),
(2836, '', '', 'getallproducts', '2020-05-19 13:54:01', '0000-00-00 00:00:00'),
(2837, '', '', 'getallproducts', '2020-05-19 13:54:02', '0000-00-00 00:00:00'),
(2838, '', '', 'getallproducts', '2020-05-19 13:54:02', '0000-00-00 00:00:00'),
(2839, '', '', 'getallproducts', '2020-05-19 13:54:26', '0000-00-00 00:00:00'),
(2840, '', '', 'getallproducts', '2020-05-19 13:54:31', '0000-00-00 00:00:00'),
(2841, '', '', 'getallproducts', '2020-05-19 13:54:38', '0000-00-00 00:00:00'),
(2842, '', '', 'getallproducts', '2020-05-19 13:56:05', '0000-00-00 00:00:00'),
(2843, '', '', 'getallproducts', '2020-05-19 13:56:37', '0000-00-00 00:00:00'),
(2844, '', '', 'getallproducts', '2020-05-19 13:56:41', '0000-00-00 00:00:00'),
(2845, '', '', 'getallproducts', '2020-05-19 13:56:44', '0000-00-00 00:00:00'),
(2846, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 14:07:36', '0000-00-00 00:00:00'),
(2847, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 14:07:54', '0000-00-00 00:00:00'),
(2848, '', '', 'getallproducts', '2020-05-19 14:11:01', '0000-00-00 00:00:00'),
(2849, '', '', 'getallproducts', '2020-05-19 14:11:04', '0000-00-00 00:00:00'),
(2850, '', '', 'getallproducts', '2020-05-19 14:11:07', '0000-00-00 00:00:00'),
(2851, '', '', 'getallproducts', '2020-05-19 14:11:12', '0000-00-00 00:00:00'),
(2852, '', '', 'getallproducts', '2020-05-19 14:11:16', '0000-00-00 00:00:00'),
(2853, '', '', 'getallproducts', '2020-05-19 14:13:02', '2000-01-06 00:00:00'),
(2854, '', '', 'getallproducts', '2020-05-19 14:14:41', '0000-00-00 00:00:00'),
(2855, '', '', 'getallproducts', '2020-05-19 14:16:56', '0000-00-00 00:00:00'),
(2856, '', '', 'getallproducts', '2020-05-19 14:21:28', '0000-00-00 00:00:00'),
(2857, '', '', 'getallproducts', '2020-05-19 14:21:30', '0000-00-00 00:00:00'),
(2858, '', '', 'getallproducts', '2020-05-19 14:23:33', '2000-01-23 00:00:00'),
(2859, '', '', 'homePage', '2020-05-19 14:23:46', '0000-00-00 00:00:00'),
(2860, '', '', 'homePage', '2020-05-19 14:23:48', '0000-00-00 00:00:00'),
(2861, '', '', 'homePage', '2020-05-19 14:24:19', '0000-00-00 00:00:00'),
(2862, '', '', 'getallproducts', '2020-05-19 14:24:23', '0000-00-00 00:00:00'),
(2863, '', '', 'getallproducts', '2020-05-19 14:24:31', '0000-00-00 00:00:00'),
(2864, '', '', 'getallproducts', '2020-05-19 14:25:08', '0000-00-00 00:00:00'),
(2865, '', '', 'getallproducts', '2020-05-19 14:25:46', '0000-00-00 00:00:00'),
(2866, '', '', 'homePage', '2020-05-19 14:31:33', '0000-00-00 00:00:00'),
(2867, '', '', 'getallproducts', '2020-05-19 14:31:38', '0000-00-00 00:00:00'),
(2868, '', '', 'getallproducts', '2020-05-19 14:31:43', '0000-00-00 00:00:00'),
(2869, '', '', 'homePage', '2020-05-19 14:36:40', '0000-00-00 00:00:00'),
(2870, '', '', 'homePage', '2020-05-19 14:43:58', '0000-00-00 00:00:00'),
(2871, '', '', 'getallproducts', '2020-05-19 14:44:03', '0000-00-00 00:00:00'),
(2872, '', '', 'getallproducts', '2020-05-19 14:44:06', '0000-00-00 00:00:00'),
(2873, '', '', 'getallproducts', '2020-05-19 14:44:08', '0000-00-00 00:00:00'),
(2874, '', '', 'getallproducts', '2020-05-19 14:44:10', '0000-00-00 00:00:00'),
(2875, '', '', 'getallproducts', '2020-05-19 14:44:13', '0000-00-00 00:00:00'),
(2876, '', '', 'getallproducts', '2020-05-19 14:44:16', '0000-00-00 00:00:00'),
(2877, '', '', 'getallproducts', '2020-05-19 14:44:18', '0000-00-00 00:00:00'),
(2878, '', '', 'getallproducts', '2020-05-19 14:44:21', '0000-00-00 00:00:00'),
(2879, '', '', 'getallproducts', '2020-05-19 14:44:22', '0000-00-00 00:00:00'),
(2880, '', '', 'getallproducts', '2020-05-19 14:44:22', '0000-00-00 00:00:00'),
(2881, '', '', 'getallproducts', '2020-05-19 14:44:22', '0000-00-00 00:00:00'),
(2882, '', '', 'getallproducts', '2020-05-19 14:44:22', '0000-00-00 00:00:00'),
(2883, '', '', 'getallproducts', '2020-05-19 14:44:22', '0000-00-00 00:00:00'),
(2884, '', '', 'homePage', '2020-05-19 14:44:54', '0000-00-00 00:00:00'),
(2885, '', '', 'getallproducts', '2020-05-19 14:44:58', '0000-00-00 00:00:00'),
(2886, '', '', 'getallproducts', '2020-05-19 14:44:59', '0000-00-00 00:00:00'),
(2887, '', '', 'getallproducts', '2020-05-19 14:45:02', '0000-00-00 00:00:00'),
(2888, '', '', 'getallproducts', '2020-05-19 14:45:04', '0000-00-00 00:00:00'),
(2889, '', '', 'getallproducts', '2020-05-19 14:45:04', '0000-00-00 00:00:00'),
(2890, '', '', 'getallproducts', '2020-05-19 14:45:04', '0000-00-00 00:00:00'),
(2891, '', '', 'getallproducts', '2020-05-19 14:45:12', '0000-00-00 00:00:00'),
(2892, '', '', 'getallproducts', '2020-05-19 14:45:12', '0000-00-00 00:00:00'),
(2893, '', '', 'getallproducts', '2020-05-19 14:45:12', '0000-00-00 00:00:00'),
(2894, '', '', 'getallproducts', '2020-05-19 14:45:34', '0000-00-00 00:00:00'),
(2895, '', '', 'getallproducts', '2020-05-19 14:45:34', '0000-00-00 00:00:00'),
(2896, '', '', 'getallproducts', '2020-05-19 14:45:35', '0000-00-00 00:00:00'),
(2897, '', '', 'getallproducts', '2020-05-19 14:45:38', '0000-00-00 00:00:00'),
(2898, '', '', 'getallproducts', '2020-05-19 14:45:38', '0000-00-00 00:00:00'),
(2899, '', '', 'getallproducts', '2020-05-19 14:45:38', '0000-00-00 00:00:00'),
(2900, '', '', 'homePage', '2020-05-19 14:46:13', '0000-00-00 00:00:00'),
(2901, '', '', 'getallproducts', '2020-05-19 14:46:17', '0000-00-00 00:00:00'),
(2902, '', '', 'getallproducts', '2020-05-19 14:46:20', '0000-00-00 00:00:00'),
(2903, '', '', 'getallproducts', '2020-05-19 14:46:21', '0000-00-00 00:00:00'),
(2904, '', '', 'getallproducts', '2020-05-19 14:46:21', '0000-00-00 00:00:00'),
(2905, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 14:48:55', '0000-00-00 00:00:00'),
(2906, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:50:36', '0000-00-00 00:00:00'),
(2907, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:50:53', '0000-00-00 00:00:00'),
(2908, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:51:37', '0000-00-00 00:00:00'),
(2909, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:53:03', '0000-00-00 00:00:00'),
(2910, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:53:13', '0000-00-00 00:00:00'),
(2911, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:53:40', '0000-00-00 00:00:00'),
(2912, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:53:59', '0000-00-00 00:00:00'),
(2913, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:56:03', '2000-01-24 00:00:00'),
(2914, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:57:12', '0000-00-00 00:00:00'),
(2915, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:57:32', '0000-00-00 00:00:00'),
(2916, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:57:47', '0000-00-00 00:00:00'),
(2917, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:57:51', '0000-00-00 00:00:00'),
(2918, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:58:30', '0000-00-00 00:00:00'),
(2919, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 15:59:28', '0000-00-00 00:00:00'),
(2920, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 16:00:07', '0000-00-00 00:00:00'),
(2921, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 16:00:23', '0000-00-00 00:00:00'),
(2922, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 16:00:50', '0000-00-00 00:00:00'),
(2923, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 16:01:34', '0000-00-00 00:00:00'),
(2924, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 16:02:05', '0000-00-00 00:00:00'),
(2925, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 16:02:16', '0000-00-00 00:00:00'),
(2926, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 16:02:59', '0000-00-00 00:00:00'),
(2927, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 16:03:41', '0000-00-00 00:00:00'),
(2928, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 16:04:07', '0000-00-00 00:00:00'),
(2929, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 16:05:00', '0000-00-00 00:00:00'),
(2930, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-19 16:05:21', '0000-00-00 00:00:00'),
(2931, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-19 16:06:21', '0000-00-00 00:00:00'),
(2932, '', '', 'processlogin', '2020-05-19 22:46:29', '0000-00-00 00:00:00'),
(2933, '', '', 'homePage', '2020-05-19 22:46:44', '0000-00-00 00:00:00'),
(2934, '', '', 'getallproducts', '2020-05-19 22:46:53', '0000-00-00 00:00:00'),
(2935, '', '', 'getallproducts', '2020-05-19 22:46:57', '0000-00-00 00:00:00'),
(2936, '', '', 'getallproducts', '2020-05-19 22:46:57', '0000-00-00 00:00:00'),
(2937, '', '', 'getallproducts', '2020-05-19 22:46:57', '0000-00-00 00:00:00'),
(2938, '', '', 'getallproducts', '2020-05-19 22:48:14', '0000-00-00 00:00:00'),
(2939, '', '', 'getallproducts', '2020-05-19 22:48:57', '0000-00-00 00:00:00'),
(2940, '', '', 'getallproducts', '2020-05-19 22:50:53', '2000-01-16 00:00:00'),
(2941, '', '', 'getallproducts', '2020-05-19 22:50:57', '0000-00-00 00:00:00'),
(2942, '', '', 'getallproducts', '2020-05-19 22:50:57', '0000-00-00 00:00:00'),
(2943, '', '', 'getallproducts', '2020-05-19 22:50:57', '0000-00-00 00:00:00'),
(2944, '', '', 'homePage', '2020-05-19 22:57:19', '0000-00-00 00:00:00'),
(2945, '', '', 'getallproducts', '2020-05-19 22:57:25', '0000-00-00 00:00:00'),
(2946, '', '', 'getallproducts', '2020-05-19 22:57:30', '0000-00-00 00:00:00'),
(2947, '', '', 'getallproducts', '2020-05-19 22:57:49', '0000-00-00 00:00:00'),
(2948, '', '', 'getallproducts', '2020-05-19 22:57:49', '0000-00-00 00:00:00'),
(2949, '', '', 'getallproducts', '2020-05-19 22:57:49', '0000-00-00 00:00:00'),
(2950, '', '', 'getallproducts', '2020-05-19 22:57:55', '0000-00-00 00:00:00'),
(2951, '', '', 'getallproducts', '2020-05-19 22:57:55', '0000-00-00 00:00:00'),
(2952, '', '', 'getallproducts', '2020-05-19 22:57:55', '0000-00-00 00:00:00'),
(2953, '', '', 'getallproducts', '2020-05-19 22:58:00', '0000-00-00 00:00:00'),
(2954, '', '', 'getallproducts', '2020-05-19 22:58:00', '0000-00-00 00:00:00'),
(2955, '', '', 'getallproducts', '2020-05-19 22:58:01', '0000-00-00 00:00:00'),
(2956, '', '', 'getallproducts', '2020-05-19 22:58:06', '0000-00-00 00:00:00'),
(2957, '', '', 'getallproducts', '2020-05-19 22:58:06', '0000-00-00 00:00:00'),
(2958, '', '', 'getallproducts', '2020-05-19 22:58:06', '0000-00-00 00:00:00'),
(2959, '', '', 'getallproducts', '2020-05-19 22:58:51', '0000-00-00 00:00:00'),
(2960, '', '', 'getallproducts', '2020-05-19 22:58:51', '0000-00-00 00:00:00'),
(2961, '', '', 'getallproducts', '2020-05-19 22:58:51', '0000-00-00 00:00:00'),
(2962, '', '', 'getallproducts', '2020-05-19 22:59:02', '0000-00-00 00:00:00'),
(2963, '', '', 'getallproducts', '2020-05-19 22:59:02', '0000-00-00 00:00:00'),
(2964, '', '', 'getallproducts', '2020-05-19 22:59:03', '0000-00-00 00:00:00'),
(2965, '', '', 'homePage', '2020-05-19 22:59:47', '0000-00-00 00:00:00'),
(2966, '', '', 'getallproducts', '2020-05-19 23:00:06', '0000-00-00 00:00:00'),
(2967, '', '', 'getallproducts', '2020-05-19 23:00:24', '0000-00-00 00:00:00'),
(2968, '', '', 'getallproducts', '2020-05-19 23:00:32', '0000-00-00 00:00:00'),
(2969, '', '', 'getallproducts', '2020-05-19 23:00:36', '0000-00-00 00:00:00'),
(2970, '', '', 'getallproducts', '2020-05-19 23:00:39', '0000-00-00 00:00:00'),
(2971, '', '', 'getallproducts', '2020-05-19 23:00:41', '0000-00-00 00:00:00'),
(2972, '', '', 'getallproducts', '2020-05-19 23:00:44', '0000-00-00 00:00:00'),
(2973, '', '', 'getallproducts', '2020-05-19 23:00:49', '0000-00-00 00:00:00'),
(2974, '', '', 'getallproducts', '2020-05-19 23:00:51', '0000-00-00 00:00:00'),
(2975, '', '', 'getallproducts', '2020-05-19 23:00:56', '0000-00-00 00:00:00'),
(2976, '', '', 'getallproducts', '2020-05-19 23:01:01', '0000-00-00 00:00:00'),
(2977, '', '', 'getallproducts', '2020-05-19 23:01:10', '0000-00-00 00:00:00'),
(2978, '', '', 'getallproducts', '2020-05-19 23:01:13', '0000-00-00 00:00:00'),
(2979, '', '', 'getallproducts', '2020-05-19 23:01:16', '0000-00-00 00:00:00'),
(2980, '', '', 'homePage', '2020-05-19 23:02:02', '0000-00-00 00:00:00');
INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(2981, '', '', 'getallproducts', '2020-05-19 23:02:14', '0000-00-00 00:00:00'),
(2982, '', '', 'getallproducts', '2020-05-19 23:02:24', '0000-00-00 00:00:00'),
(2983, '', '', 'getallproducts', '2020-05-19 23:02:24', '0000-00-00 00:00:00'),
(2984, '', '', 'getallproducts', '2020-05-19 23:02:24', '0000-00-00 00:00:00'),
(2985, '', '', 'getallproducts', '2020-05-19 23:02:29', '0000-00-00 00:00:00'),
(2986, '', '', 'getallproducts', '2020-05-19 23:02:29', '0000-00-00 00:00:00'),
(2987, '', '', 'getallproducts', '2020-05-19 23:02:30', '0000-00-00 00:00:00'),
(2988, '', '', 'getallproducts', '2020-05-19 23:02:39', '0000-00-00 00:00:00'),
(2989, '', '', 'getallproducts', '2020-05-19 23:02:45', '0000-00-00 00:00:00'),
(2990, '', '', 'getallproducts', '2020-05-19 23:03:33', '0000-00-00 00:00:00'),
(2991, '', '', 'getallproducts', '2020-05-19 23:03:36', '0000-00-00 00:00:00'),
(2992, '', '', 'getallproducts', '2020-05-19 23:03:37', '0000-00-00 00:00:00'),
(2993, '', '', 'getallproducts', '2020-05-19 23:03:37', '0000-00-00 00:00:00'),
(2994, '', '', 'getallproducts', '2020-05-19 23:03:50', '0000-00-00 00:00:00'),
(2995, '', '', 'getallproducts', '2020-05-19 23:03:50', '0000-00-00 00:00:00'),
(2996, '', '', 'getallproducts', '2020-05-19 23:03:51', '0000-00-00 00:00:00'),
(2997, '', '', 'getallproducts', '2020-05-19 23:03:54', '0000-00-00 00:00:00'),
(2998, '', '', 'getallproducts', '2020-05-19 23:03:54', '0000-00-00 00:00:00'),
(2999, '', '', 'getallproducts', '2020-05-19 23:03:55', '0000-00-00 00:00:00'),
(3000, '', '', 'getallproducts', '2020-05-19 23:04:04', '0000-00-00 00:00:00'),
(3001, '', '', 'getallproducts', '2020-05-19 23:04:04', '0000-00-00 00:00:00'),
(3002, '', '', 'getallproducts', '2020-05-19 23:04:04', '0000-00-00 00:00:00'),
(3003, '', '', 'getallproducts', '2020-05-19 23:04:08', '0000-00-00 00:00:00'),
(3004, '', '', 'getallproducts', '2020-05-19 23:04:08', '0000-00-00 00:00:00'),
(3005, '', '', 'getallproducts', '2020-05-19 23:04:08', '0000-00-00 00:00:00'),
(3006, '', '', 'getallproducts', '2020-05-19 23:04:16', '0000-00-00 00:00:00'),
(3007, '', '', 'getallproducts', '2020-05-19 23:04:18', '0000-00-00 00:00:00'),
(3008, '', '', 'getallproducts', '2020-05-19 23:04:19', '0000-00-00 00:00:00'),
(3009, '', '', 'getallproducts', '2020-05-19 23:04:19', '0000-00-00 00:00:00'),
(3010, '', '', 'getallproducts', '2020-05-19 23:07:00', '0000-00-00 00:00:00'),
(3011, '', '', 'getallproducts', '2020-05-19 23:07:02', '0000-00-00 00:00:00'),
(3012, '', '', 'getallproducts', '2020-05-19 23:07:03', '0000-00-00 00:00:00'),
(3013, '', '', 'getallproducts', '2020-05-19 23:07:03', '0000-00-00 00:00:00'),
(3014, '', '', 'homePage', '2020-05-19 23:07:16', '0000-00-00 00:00:00'),
(3015, '', '', 'homePage', '2020-05-19 23:07:19', '0000-00-00 00:00:00'),
(3016, '', '', 'homePage', '2020-05-19 23:07:36', '0000-00-00 00:00:00'),
(3017, '', '', 'getallproducts', '2020-05-19 23:07:42', '0000-00-00 00:00:00'),
(3018, '', '', 'getallproducts', '2020-05-19 23:07:47', '0000-00-00 00:00:00'),
(3019, '', '', 'getallproducts', '2020-05-19 23:07:47', '0000-00-00 00:00:00'),
(3020, '', '', 'getallproducts', '2020-05-19 23:07:47', '0000-00-00 00:00:00'),
(3021, '', '', 'getallproducts', '2020-05-19 23:07:54', '0000-00-00 00:00:00'),
(3022, '', '', 'getallproducts', '2020-05-19 23:07:54', '0000-00-00 00:00:00'),
(3023, '', '', 'getallproducts', '2020-05-19 23:07:55', '0000-00-00 00:00:00'),
(3024, '', '', 'homePage', '2020-05-19 23:09:31', '0000-00-00 00:00:00'),
(3025, '', '', 'homePage', '2020-05-19 23:09:33', '0000-00-00 00:00:00'),
(3026, '', '', 'homePage', '2020-05-19 23:09:53', '0000-00-00 00:00:00'),
(3027, '', '', 'homePage', '2020-05-19 23:14:58', '2000-03-05 00:00:00'),
(3028, '', '', 'getallproducts', '2020-05-19 23:18:57', '0000-00-00 00:00:00'),
(3029, '', '', 'getallproducts', '2020-05-19 23:19:51', '0000-00-00 00:00:00'),
(3030, '', '', 'homePage', '2020-05-19 23:20:36', '0000-00-00 00:00:00'),
(3031, '', '', 'homePage', '2020-05-19 23:20:38', '0000-00-00 00:00:00'),
(3032, '', '', 'getallproducts', '2020-05-19 23:20:49', '0000-00-00 00:00:00'),
(3033, '', '', 'getallproducts', '2020-05-19 23:21:42', '0000-00-00 00:00:00'),
(3034, '', '', 'getallproducts', '2020-05-19 23:25:02', '2000-02-00 00:00:00'),
(3035, '', '', 'getallproducts', '2020-05-19 23:25:07', '0000-00-00 00:00:00'),
(3036, '', '', 'getallproducts', '2020-05-19 23:25:11', '0000-00-00 00:00:00'),
(3037, '', '', 'getallproducts', '2020-05-19 23:26:35', '0000-00-00 00:00:00'),
(3038, '', '', 'getallproducts', '2020-05-19 23:26:40', '0000-00-00 00:00:00'),
(3039, '', '', 'getallproducts', '2020-05-19 23:28:39', '2000-01-19 00:00:00'),
(3040, '', '', 'getallproducts', '2020-05-19 23:32:06', '2000-02-07 00:00:00'),
(3041, '', '', 'getallproducts', '2020-05-19 23:32:55', '0000-00-00 00:00:00'),
(3042, '', '', 'getallproducts', '2020-05-19 23:34:21', '0000-00-00 00:00:00'),
(3043, '', '', 'getallproducts', '2020-05-19 23:34:29', '0000-00-00 00:00:00'),
(3044, '', '', 'getallproducts', '2020-05-19 23:34:49', '0000-00-00 00:00:00'),
(3045, '', '', 'getallproducts', '2020-05-19 23:35:24', '0000-00-00 00:00:00'),
(3046, '', '', 'getallproducts', '2020-05-19 23:35:44', '0000-00-00 00:00:00'),
(3047, '', '', 'getallproducts', '2020-05-19 23:35:49', '0000-00-00 00:00:00'),
(3048, '', '', 'getallproducts', '2020-05-19 23:35:55', '0000-00-00 00:00:00'),
(3049, '', '', 'getallproducts', '2020-05-19 23:36:27', '0000-00-00 00:00:00'),
(3050, '', '', 'getallproducts', '2020-05-19 23:36:30', '0000-00-00 00:00:00'),
(3051, '', '', 'getallproducts', '2020-05-19 23:36:38', '0000-00-00 00:00:00'),
(3052, '', '', 'getallproducts', '2020-05-19 23:36:45', '0000-00-00 00:00:00'),
(3053, '', '', 'getallproducts', '2020-05-19 23:36:46', '0000-00-00 00:00:00'),
(3054, '', '', 'getallproducts', '2020-05-19 23:36:47', '0000-00-00 00:00:00'),
(3055, '', '', 'getallproducts', '2020-05-19 23:36:50', '0000-00-00 00:00:00'),
(3056, '', '', 'getallproducts', '2020-05-19 23:37:05', '0000-00-00 00:00:00'),
(3057, '', '', 'getallproducts', '2020-05-19 23:37:40', '0000-00-00 00:00:00'),
(3058, '', '', 'getallproducts', '2020-05-19 23:38:20', '0000-00-00 00:00:00'),
(3059, '', '', 'getallproducts', '2020-05-19 23:38:35', '0000-00-00 00:00:00'),
(3060, '', '', 'getallproducts', '2020-05-19 23:38:52', '0000-00-00 00:00:00'),
(3061, '', '', 'getallproducts', '2020-05-19 23:39:27', '0000-00-00 00:00:00'),
(3062, '', '', 'getallproducts', '2020-05-19 23:39:29', '0000-00-00 00:00:00'),
(3063, '', '', 'getallproducts', '2020-05-19 23:39:31', '0000-00-00 00:00:00'),
(3064, '', '', 'getallproducts', '2020-05-19 23:39:35', '0000-00-00 00:00:00'),
(3065, '', '', 'getallproducts', '2020-05-19 23:39:39', '0000-00-00 00:00:00'),
(3066, '', '', 'getallproducts', '2020-05-19 23:40:35', '0000-00-00 00:00:00'),
(3067, '', '', 'getallproducts', '2020-05-19 23:40:36', '0000-00-00 00:00:00'),
(3068, '', '', 'getallproducts', '2020-05-19 23:40:37', '0000-00-00 00:00:00'),
(3069, '', '', 'getallproducts', '2020-05-19 23:40:40', '0000-00-00 00:00:00'),
(3070, '', '', 'getallproducts', '2020-05-19 23:40:41', '0000-00-00 00:00:00'),
(3071, '', '', 'getallproducts', '2020-05-19 23:40:42', '0000-00-00 00:00:00'),
(3072, '', '', 'getallproducts', '2020-05-19 23:40:43', '0000-00-00 00:00:00'),
(3073, '', '', 'getallproducts', '2020-05-19 23:40:44', '0000-00-00 00:00:00'),
(3074, '', '', 'getallproducts', '2020-05-19 23:40:45', '0000-00-00 00:00:00'),
(3075, '', '', 'getallproducts', '2020-05-19 23:40:47', '0000-00-00 00:00:00'),
(3076, '', '', 'getallproducts', '2020-05-19 23:40:48', '0000-00-00 00:00:00'),
(3077, '', '', 'getallproducts', '2020-05-19 23:40:49', '0000-00-00 00:00:00'),
(3078, '', '', 'getallproducts', '2020-05-19 23:40:51', '0000-00-00 00:00:00'),
(3079, '', '', 'homePage', '2020-05-19 23:41:36', '0000-00-00 00:00:00'),
(3080, '', '', 'getallproducts', '2020-05-19 23:41:44', '0000-00-00 00:00:00'),
(3081, '', '', 'getallproducts', '2020-05-19 23:42:00', '0000-00-00 00:00:00'),
(3082, '', '', 'getallproducts', '2020-05-19 23:42:04', '0000-00-00 00:00:00'),
(3083, '', '', 'getallproducts', '2020-05-19 23:42:06', '0000-00-00 00:00:00'),
(3084, '', '', 'getallproducts', '2020-05-19 23:42:08', '0000-00-00 00:00:00'),
(3085, '', '', 'getallproducts', '2020-05-19 23:42:11', '0000-00-00 00:00:00'),
(3086, '', '', 'getallproducts', '2020-05-19 23:42:14', '0000-00-00 00:00:00'),
(3087, '', '', 'getallproducts', '2020-05-19 23:45:10', '0000-00-00 00:00:00'),
(3088, '', '', 'getallproducts', '2020-05-19 23:45:13', '0000-00-00 00:00:00'),
(3089, '', '', 'getallproducts', '2020-05-19 23:45:22', '0000-00-00 00:00:00'),
(3090, '', '', 'getallproducts', '2020-05-19 23:45:51', '0000-00-00 00:00:00'),
(3091, '', '', 'getallproducts', '2020-05-19 23:45:52', '0000-00-00 00:00:00'),
(3092, '', '', 'getallproducts', '2020-05-19 23:47:25', '0000-00-00 00:00:00'),
(3093, '', '', 'getallproducts', '2020-05-19 23:47:43', '0000-00-00 00:00:00'),
(3094, '', '', 'getallproducts', '2020-05-19 23:48:19', '0000-00-00 00:00:00'),
(3095, '', '', 'getallproducts', '2020-05-19 23:48:23', '0000-00-00 00:00:00'),
(3096, '', '', 'getallproducts', '2020-05-19 23:49:11', '0000-00-00 00:00:00'),
(3097, '', '', 'getallproducts', '2020-05-20 00:05:31', '0000-00-00 00:00:00'),
(3098, '', '', 'getallproducts', '2020-05-20 00:05:34', '0000-00-00 00:00:00'),
(3099, '', '', 'getallproducts', '2020-05-20 00:07:24', '2000-01-10 00:00:00'),
(3100, '', '', 'homePage', '2020-05-20 00:10:04', '0000-00-00 00:00:00'),
(3101, '', '', 'getallproducts', '2020-05-20 00:10:10', '0000-00-00 00:00:00'),
(3102, '', '', 'getallproducts', '2020-05-20 00:10:14', '0000-00-00 00:00:00'),
(3103, '', '', 'getallproducts', '2020-05-20 00:10:31', '0000-00-00 00:00:00'),
(3104, '', '', 'getallproducts', '2020-05-20 00:10:39', '0000-00-00 00:00:00'),
(3105, '', '', 'getallproducts', '2020-05-20 00:16:55', '0000-00-00 00:00:00'),
(3106, '', '', 'getallproducts', '2020-05-20 00:16:55', '0000-00-00 00:00:00'),
(3107, '', '', 'getallproducts', '2020-05-20 00:31:51', '0000-00-00 00:00:00'),
(3108, '', '', 'getallproducts', '2020-05-20 00:31:51', '0000-00-00 00:00:00'),
(3109, '', '', 'getallproducts', '2020-05-20 00:31:51', '0000-00-00 00:00:00'),
(3110, '', '', 'getallproducts', '2020-05-20 00:31:55', '0000-00-00 00:00:00'),
(3111, '', '', 'getallproducts', '2020-05-20 00:31:55', '0000-00-00 00:00:00'),
(3112, '', '', 'getallproducts', '2020-05-20 00:31:56', '0000-00-00 00:00:00'),
(3113, '', '', 'homePage', '2020-05-20 00:42:58', '0000-00-00 00:00:00'),
(3114, '', '', 'getallproducts', '2020-05-20 00:43:03', '0000-00-00 00:00:00'),
(3115, '', '', 'getallproducts', '2020-05-20 00:43:07', '0000-00-00 00:00:00'),
(3116, '', '', 'getallproducts', '2020-05-20 00:43:07', '0000-00-00 00:00:00'),
(3117, '', '', 'getallproducts', '2020-05-20 00:43:07', '0000-00-00 00:00:00'),
(3118, '', '', 'getallproducts', '2020-05-20 00:43:10', '0000-00-00 00:00:00'),
(3119, '', '', 'getallproducts', '2020-05-20 00:43:10', '0000-00-00 00:00:00'),
(3120, '', '', 'getallproducts', '2020-05-20 00:43:10', '0000-00-00 00:00:00'),
(3121, '', '', 'getallproducts', '2020-05-20 00:43:13', '0000-00-00 00:00:00'),
(3122, '', '', 'getallproducts', '2020-05-20 00:43:13', '0000-00-00 00:00:00'),
(3123, '', '', 'getallproducts', '2020-05-20 00:43:13', '0000-00-00 00:00:00'),
(3124, '', '', 'getallproducts', '2020-05-20 00:43:16', '0000-00-00 00:00:00'),
(3125, '', '', 'getallproducts', '2020-05-20 00:43:17', '0000-00-00 00:00:00'),
(3126, '', '', 'getallproducts', '2020-05-20 00:43:17', '0000-00-00 00:00:00'),
(3127, '', '', 'getallproducts', '2020-05-20 00:43:20', '0000-00-00 00:00:00'),
(3128, '', '', 'getallproducts', '2020-05-20 00:43:22', '0000-00-00 00:00:00'),
(3129, '', '', 'getallproducts', '2020-05-20 00:43:25', '0000-00-00 00:00:00'),
(3130, '', '', 'getallproducts', '2020-05-20 00:43:27', '0000-00-00 00:00:00'),
(3131, '', '', 'getallproducts', '2020-05-20 00:43:29', '0000-00-00 00:00:00'),
(3132, '', '', 'getallproducts', '2020-05-20 00:43:32', '0000-00-00 00:00:00'),
(3133, '', '', 'getallproducts', '2020-05-20 00:43:36', '0000-00-00 00:00:00'),
(3134, '', '', 'getallproducts', '2020-05-20 00:43:39', '0000-00-00 00:00:00'),
(3135, '', '', 'getallproducts', '2020-05-20 00:43:41', '0000-00-00 00:00:00'),
(3136, '', '', 'getallproducts', '2020-05-20 00:43:42', '0000-00-00 00:00:00'),
(3137, '', '', 'getallproducts', '2020-05-20 00:43:44', '0000-00-00 00:00:00'),
(3138, '', '', 'getallproducts', '2020-05-20 00:43:44', '0000-00-00 00:00:00'),
(3139, '', '', 'getallproducts', '2020-05-20 00:44:26', '0000-00-00 00:00:00'),
(3140, '', '', 'getallproducts', '2020-05-20 00:44:30', '0000-00-00 00:00:00'),
(3141, '', '', 'getallproducts', '2020-05-20 00:44:31', '0000-00-00 00:00:00'),
(3142, '', '', 'getallproducts', '2020-05-20 00:44:45', '0000-00-00 00:00:00'),
(3143, '', '', 'getallproducts', '2020-05-20 00:44:48', '0000-00-00 00:00:00'),
(3144, '', '', 'getallproducts', '2020-05-20 00:44:50', '0000-00-00 00:00:00'),
(3145, '', '', 'getallproducts', '2020-05-20 00:44:57', '0000-00-00 00:00:00'),
(3146, '', '', 'getallproducts', '2020-05-20 00:44:57', '0000-00-00 00:00:00'),
(3147, '', '', 'getallproducts', '2020-05-20 00:44:57', '0000-00-00 00:00:00'),
(3148, '', '', 'getallproducts', '2020-05-20 00:45:02', '0000-00-00 00:00:00'),
(3149, '', '', 'getallproducts', '2020-05-20 00:45:04', '0000-00-00 00:00:00'),
(3150, '', '', 'getallproducts', '2020-05-20 00:45:07', '0000-00-00 00:00:00'),
(3151, '', '', 'getallproducts', '2020-05-20 00:45:07', '0000-00-00 00:00:00'),
(3152, '', '', 'getallproducts', '2020-05-20 00:45:08', '0000-00-00 00:00:00'),
(3153, '', '', 'getallproducts', '2020-05-20 00:46:08', '0000-00-00 00:00:00'),
(3154, '', '', 'getallproducts', '2020-05-20 00:46:12', '0000-00-00 00:00:00'),
(3155, '', '', 'getallproducts', '2020-05-20 00:46:13', '0000-00-00 00:00:00'),
(3156, '', '', 'getallproducts', '2020-05-20 00:46:13', '0000-00-00 00:00:00'),
(3157, '', '', 'getallproducts', '2020-05-20 00:48:46', '0000-00-00 00:00:00'),
(3158, '', '', 'getallproducts', '2020-05-20 00:48:49', '0000-00-00 00:00:00'),
(3159, '', '', 'getallproducts', '2020-05-20 00:49:14', '0000-00-00 00:00:00'),
(3160, '', '', 'getallproducts', '2020-05-20 00:49:14', '0000-00-00 00:00:00'),
(3161, '', '', 'getallproducts', '2020-05-20 00:49:14', '0000-00-00 00:00:00'),
(3162, '', '', 'homePage', '2020-05-20 08:30:37', '0000-00-00 00:00:00'),
(3163, '', '', 'getallproducts', '2020-05-20 08:30:51', '0000-00-00 00:00:00'),
(3164, '', '', 'getallproducts', '2020-05-20 08:30:57', '0000-00-00 00:00:00'),
(3165, '', '', 'getallproducts', '2020-05-20 08:36:31', '0000-00-00 00:00:00'),
(3166, '', '', 'getallproducts', '2020-05-20 08:36:33', '0000-00-00 00:00:00'),
(3167, '', '', 'getallproducts', '2020-05-20 08:36:34', '0000-00-00 00:00:00'),
(3168, '', '', 'getallproducts', '2020-05-20 08:36:34', '0000-00-00 00:00:00'),
(3169, '', '', 'getallproducts', '2020-05-20 08:37:00', '0000-00-00 00:00:00'),
(3170, '', '', 'getallproducts', '2020-05-20 08:37:00', '0000-00-00 00:00:00'),
(3171, '', '', 'getallproducts', '2020-05-20 08:37:00', '0000-00-00 00:00:00'),
(3172, '', '', 'getallproducts', '2020-05-20 08:37:03', '0000-00-00 00:00:00'),
(3173, '', '', 'getallproducts', '2020-05-20 08:37:03', '0000-00-00 00:00:00'),
(3174, '', '', 'getallproducts', '2020-05-20 08:37:03', '0000-00-00 00:00:00'),
(3175, '', '', 'getallproducts', '2020-05-20 08:37:24', '0000-00-00 00:00:00'),
(3176, '', '', 'getallproducts', '2020-05-20 08:37:29', '0000-00-00 00:00:00'),
(3177, '', '', 'getallproducts', '2020-05-20 08:37:50', '0000-00-00 00:00:00'),
(3178, '', '', 'getallproducts', '2020-05-20 08:37:50', '0000-00-00 00:00:00'),
(3179, '', '', 'getallproducts', '2020-05-20 08:37:51', '0000-00-00 00:00:00'),
(3180, '', '', 'getallproducts', '2020-05-20 08:37:57', '0000-00-00 00:00:00'),
(3181, '', '', 'getallproducts', '2020-05-20 08:37:57', '0000-00-00 00:00:00'),
(3182, '', '', 'getallproducts', '2020-05-20 08:37:57', '0000-00-00 00:00:00'),
(3183, '', '', 'getallproducts', '2020-05-20 08:41:55', '0000-00-00 00:00:00'),
(3184, '', '', 'getallproducts', '2020-05-20 08:41:55', '0000-00-00 00:00:00'),
(3185, '', '', 'getallproducts', '2020-05-20 08:41:57', '0000-00-00 00:00:00'),
(3186, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-20 08:52:54', '0000-00-00 00:00:00'),
(3187, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-20 08:53:03', '0000-00-00 00:00:00'),
(3188, '', '', 'homePage', '2020-05-20 09:06:22', '0000-00-00 00:00:00'),
(3189, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-20 09:07:26', '0000-00-00 00:00:00'),
(3190, '', '', 'homePage', '2020-05-20 09:08:07', '2000-01-05 00:00:00'),
(3191, '', '', 'homePage', '2020-05-20 09:08:22', '0000-00-00 00:00:00'),
(3192, '', '', 'homePage', '2020-05-20 09:08:32', '0000-00-00 00:00:00'),
(3193, '', '', 'homePage', '2020-05-20 09:08:43', '0000-00-00 00:00:00'),
(3194, '', '', 'homePage', '2020-05-20 09:08:54', '0000-00-00 00:00:00'),
(3195, '', '', 'homePage', '2020-05-20 09:09:07', '0000-00-00 00:00:00'),
(3196, '', '', 'homePage', '2020-05-20 09:09:37', '0000-00-00 00:00:00'),
(3197, '', '', 'homePage', '2020-05-20 09:10:14', '0000-00-00 00:00:00'),
(3198, '', '', 'homePage', '2020-05-20 09:42:39', '0000-00-00 00:00:00'),
(3199, '', '', 'processlogin', '2020-05-20 09:43:05', '0000-00-00 00:00:00'),
(3200, '', '', 'homePage', '2020-05-20 09:43:08', '0000-00-00 00:00:00'),
(3201, '', '', 'getallproducts', '2020-05-20 09:43:10', '0000-00-00 00:00:00'),
(3202, '', '', 'getallproducts', '2020-05-20 09:43:13', '0000-00-00 00:00:00'),
(3203, '', '', 'getallproducts', '2020-05-20 09:43:15', '0000-00-00 00:00:00'),
(3204, '', '', 'getallproducts', '2020-05-20 09:43:16', '0000-00-00 00:00:00'),
(3205, '', '', 'getallproducts', '2020-05-20 09:43:19', '0000-00-00 00:00:00'),
(3206, '', '', 'getallproducts', '2020-05-20 09:43:21', '0000-00-00 00:00:00'),
(3207, '', '', 'homePage', '2020-05-20 09:45:05', '2000-01-04 00:00:00'),
(3208, '', '', 'getallproducts', '2020-05-20 09:45:13', '0000-00-00 00:00:00'),
(3209, '', '', 'getallproducts', '2020-05-20 09:45:51', '0000-00-00 00:00:00'),
(3210, '', '', 'homePage', '2020-05-20 09:47:51', '2000-01-20 00:00:00'),
(3211, '', '', 'getallproducts', '2020-05-20 09:48:08', '0000-00-00 00:00:00'),
(3212, '', '', 'getallproducts', '2020-05-20 09:48:12', '0000-00-00 00:00:00'),
(3213, '', '', 'getallproducts', '2020-05-20 09:49:12', '0000-00-00 00:00:00'),
(3214, '', '', 'getallproducts', '2020-05-20 09:55:14', '0000-00-00 00:00:00'),
(3215, '', '', 'getallproducts', '2020-05-20 09:55:20', '0000-00-00 00:00:00'),
(3216, '', '', 'getallproducts', '2020-05-20 09:57:12', '2000-01-12 00:00:00'),
(3217, '', '', 'getallproducts', '2020-05-20 09:57:16', '0000-00-00 00:00:00'),
(3218, '', '', 'getallproducts', '2020-05-20 09:58:11', '0000-00-00 00:00:00'),
(3219, '', '', 'getallproducts', '2020-05-20 09:59:06', '0000-00-00 00:00:00'),
(3220, '', '', 'getallproducts', '2020-05-20 09:59:08', '0000-00-00 00:00:00'),
(3221, '', '', 'getallproducts', '2020-05-20 09:59:11', '0000-00-00 00:00:00'),
(3222, '', '', 'homePage', '2020-05-20 09:59:31', '0000-00-00 00:00:00'),
(3223, '', '', 'homePage', '2020-05-20 10:00:30', '0000-00-00 00:00:00'),
(3224, '', '', 'getallproducts', '2020-05-20 10:00:33', '0000-00-00 00:00:00'),
(3225, '', '', 'getallproducts', '2020-05-20 10:00:38', '0000-00-00 00:00:00'),
(3226, '', '', 'homePage', '2020-05-20 10:03:12', '0000-00-00 00:00:00'),
(3227, '', '', 'getallproducts', '2020-05-20 10:03:18', '0000-00-00 00:00:00'),
(3228, '', '', 'getallproducts', '2020-05-20 10:03:22', '0000-00-00 00:00:00'),
(3229, '', '', 'homePage', '2020-05-20 10:04:08', '0000-00-00 00:00:00'),
(3230, '', '', 'getallproducts', '2020-05-20 10:04:11', '0000-00-00 00:00:00'),
(3231, '', '', 'getallproducts', '2020-05-20 10:04:16', '0000-00-00 00:00:00'),
(3232, '', '', 'getallproducts', '2020-05-20 10:04:32', '0000-00-00 00:00:00'),
(3233, '', '', 'homePage', '2020-05-20 10:05:23', '0000-00-00 00:00:00'),
(3234, '', '', 'getallproducts', '2020-05-20 10:05:34', '0000-00-00 00:00:00'),
(3235, '', '', 'getallproducts', '2020-05-20 10:05:38', '0000-00-00 00:00:00'),
(3236, '', '', 'getallproducts', '2020-05-20 10:05:41', '0000-00-00 00:00:00'),
(3237, '', '', 'homePage', '2020-05-20 10:06:19', '0000-00-00 00:00:00'),
(3238, '', '', 'getallproducts', '2020-05-20 10:06:26', '0000-00-00 00:00:00'),
(3239, '', '', 'getallproducts', '2020-05-20 10:06:31', '0000-00-00 00:00:00'),
(3240, '', '', 'getallproducts', '2020-05-20 10:06:34', '0000-00-00 00:00:00'),
(3241, '', '', 'homePage', '2020-05-20 10:06:53', '0000-00-00 00:00:00'),
(3242, '', '', 'getallproducts', '2020-05-20 10:06:58', '0000-00-00 00:00:00'),
(3243, '', '', 'getallproducts', '2020-05-20 10:07:02', '0000-00-00 00:00:00'),
(3244, '', '', 'getallproducts', '2020-05-20 10:07:04', '0000-00-00 00:00:00'),
(3245, '', '', 'getallproducts', '2020-05-20 10:07:05', '0000-00-00 00:00:00'),
(3246, '', '', 'getallproducts', '2020-05-20 10:07:05', '0000-00-00 00:00:00'),
(3247, '', '', 'getallproducts', '2020-05-20 10:10:00', '0000-00-00 00:00:00'),
(3248, '', '', 'getallproducts', '2020-05-20 10:10:02', '0000-00-00 00:00:00'),
(3249, '', '', 'getallproducts', '2020-05-20 10:10:16', '0000-00-00 00:00:00'),
(3250, '', '', 'getallproducts', '2020-05-20 10:10:16', '0000-00-00 00:00:00'),
(3251, '', '', 'getallproducts', '2020-05-20 10:10:19', '0000-00-00 00:00:00'),
(3252, '', '', 'getallproducts', '2020-05-20 10:10:19', '0000-00-00 00:00:00'),
(3253, '', '', 'getallproducts', '2020-05-20 10:10:28', '0000-00-00 00:00:00'),
(3254, '', '', 'getallproducts', '2020-05-20 10:10:28', '0000-00-00 00:00:00'),
(3255, '', '', 'getallproducts', '2020-05-20 10:10:29', '0000-00-00 00:00:00'),
(3256, '', '', 'getallproducts', '2020-05-20 10:10:30', '0000-00-00 00:00:00'),
(3257, '', '', 'getallproducts', '2020-05-20 10:10:30', '0000-00-00 00:00:00'),
(3258, '', '', 'getallproducts', '2020-05-20 10:10:31', '0000-00-00 00:00:00'),
(3259, '', '', 'getallproducts', '2020-05-20 10:10:32', '0000-00-00 00:00:00'),
(3260, '', '', 'getallproducts', '2020-05-20 10:10:34', '0000-00-00 00:00:00'),
(3261, '', '', 'getallproducts', '2020-05-20 10:11:41', '0000-00-00 00:00:00'),
(3262, '', '', 'getallproducts', '2020-05-20 10:11:43', '0000-00-00 00:00:00'),
(3263, '', '', 'getallproducts', '2020-05-20 10:11:46', '0000-00-00 00:00:00'),
(3264, '', '', 'getallproducts', '2020-05-20 10:11:49', '0000-00-00 00:00:00'),
(3265, '', '', 'getallproducts', '2020-05-20 10:11:51', '0000-00-00 00:00:00'),
(3266, '', '', 'getallproducts', '2020-05-20 10:11:53', '0000-00-00 00:00:00'),
(3267, '', '', 'getallproducts', '2020-05-20 10:11:57', '0000-00-00 00:00:00'),
(3268, '', '', 'getallproducts', '2020-05-20 10:12:06', '0000-00-00 00:00:00'),
(3269, '', '', 'getallproducts', '2020-05-20 10:12:10', '0000-00-00 00:00:00'),
(3270, '', '', 'getallproducts', '2020-05-20 10:12:15', '0000-00-00 00:00:00'),
(3271, '', '', 'getallproducts', '2020-05-20 10:16:06', '0000-00-00 00:00:00'),
(3272, '', '', 'getallproducts', '2020-05-20 10:16:09', '0000-00-00 00:00:00'),
(3273, '', '', 'getallproducts', '2020-05-20 10:16:59', '0000-00-00 00:00:00'),
(3274, '', '', 'getallproducts', '2020-05-20 10:17:00', '0000-00-00 00:00:00'),
(3275, '', '', 'getallproducts', '2020-05-20 10:17:00', '0000-00-00 00:00:00'),
(3276, '', '', 'getallproducts', '2020-05-20 10:17:02', '0000-00-00 00:00:00'),
(3277, '', '', 'getallproducts', '2020-05-20 10:17:03', '0000-00-00 00:00:00'),
(3278, '', '', 'getallproducts', '2020-05-20 10:17:06', '0000-00-00 00:00:00'),
(3279, '', '', 'getallproducts', '2020-05-20 10:17:09', '0000-00-00 00:00:00'),
(3280, '', '', 'getallproducts', '2020-05-20 10:17:11', '0000-00-00 00:00:00'),
(3281, '', '', 'getallproducts', '2020-05-20 10:17:12', '0000-00-00 00:00:00'),
(3282, '', '', 'getallproducts', '2020-05-20 10:17:12', '0000-00-00 00:00:00'),
(3283, '', '', 'getallproducts', '2020-05-20 10:18:18', '0000-00-00 00:00:00'),
(3284, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 11:53:56', '0000-00-00 00:00:00'),
(3285, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 11:57:16', '2000-02-00 00:00:00'),
(3286, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 11:57:40', '0000-00-00 00:00:00'),
(3287, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 11:57:46', '0000-00-00 00:00:00'),
(3288, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 11:58:27', '0000-00-00 00:00:00'),
(3289, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 11:58:51', '0000-00-00 00:00:00'),
(3290, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 11:58:57', '0000-00-00 00:00:00'),
(3291, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:03:51', '0000-00-00 00:00:00'),
(3292, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:03:57', '0000-00-00 00:00:00'),
(3293, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:05:23', '0000-00-00 00:00:00'),
(3294, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:05:31', '0000-00-00 00:00:00'),
(3295, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:06:35', '0000-00-00 00:00:00'),
(3296, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:07:52', '0000-00-00 00:00:00'),
(3297, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:08:07', '0000-00-00 00:00:00'),
(3298, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:08:43', '0000-00-00 00:00:00'),
(3299, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:08:49', '0000-00-00 00:00:00'),
(3300, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:08:55', '0000-00-00 00:00:00'),
(3301, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:09:02', '0000-00-00 00:00:00'),
(3302, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:09:07', '0000-00-00 00:00:00'),
(3303, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:09:54', '0000-00-00 00:00:00'),
(3304, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:09:59', '0000-00-00 00:00:00'),
(3305, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:10:08', '0000-00-00 00:00:00'),
(3306, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:10:16', '0000-00-00 00:00:00'),
(3307, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:10:20', '0000-00-00 00:00:00'),
(3308, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:10:36', '0000-00-00 00:00:00'),
(3309, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:10:48', '0000-00-00 00:00:00'),
(3310, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:10:51', '0000-00-00 00:00:00'),
(3311, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 12:11:13', '0000-00-00 00:00:00'),
(3312, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 12:11:21', '0000-00-00 00:00:00'),
(3313, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:11:33', '0000-00-00 00:00:00'),
(3314, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:12:09', '0000-00-00 00:00:00'),
(3315, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:12:13', '0000-00-00 00:00:00'),
(3316, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:13:42', '0000-00-00 00:00:00'),
(3317, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 12:13:58', '0000-00-00 00:00:00'),
(3318, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 12:14:10', '0000-00-00 00:00:00'),
(3319, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:14:17', '0000-00-00 00:00:00'),
(3320, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:14:48', '0000-00-00 00:00:00'),
(3321, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:15:44', '0000-00-00 00:00:00'),
(3322, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 12:20:09', '0000-00-00 00:00:00'),
(3323, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 12:20:16', '0000-00-00 00:00:00'),
(3324, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-20 12:20:30', '0000-00-00 00:00:00'),
(3325, 'ABCDEF', '192.168.1.11', 'deleteAlert', '2020-05-20 12:21:22', '0000-00-00 00:00:00'),
(3326, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-20 12:29:07', '0000-00-00 00:00:00'),
(3327, '', '', 'homePage', '2020-05-20 12:29:26', '0000-00-00 00:00:00'),
(3328, '', '', 'getallproducts', '2020-05-20 12:31:11', '2000-01-05 00:00:00'),
(3329, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-20 12:38:05', '0000-00-00 00:00:00'),
(3330, '', '', 'homePage', '2020-05-20 12:41:59', '0000-00-00 00:00:00'),
(3331, '', '', 'getallproducts', '2020-05-20 12:42:21', '0000-00-00 00:00:00'),
(3332, '', '', 'getallproducts', '2020-05-20 12:42:24', '0000-00-00 00:00:00'),
(3333, '', '', 'getallproducts', '2020-05-20 12:42:26', '0000-00-00 00:00:00'),
(3334, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-20 12:43:00', '0000-00-00 00:00:00'),
(3335, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-20 12:43:04', '0000-00-00 00:00:00'),
(3336, 'ABCDEF', '192.168.1.11', 'contactus', '2020-05-20 12:44:16', '0000-00-00 00:00:00'),
(3337, 'ABCDEF', '192.168.1.11', 'contactus', '2020-05-20 12:45:50', '0000-00-00 00:00:00'),
(3338, 'ABCDEF', '192.168.1.11', 'contactus', '2020-05-20 12:45:58', '0000-00-00 00:00:00'),
(3339, '', '', 'homePage', '2020-05-20 12:53:24', '0000-00-00 00:00:00'),
(3340, '', '', 'homePage', '2020-05-20 13:01:14', '0000-00-00 00:00:00'),
(3341, '', '', 'getallproducts', '2020-05-20 13:01:19', '0000-00-00 00:00:00'),
(3342, '', '', 'getallproducts', '2020-05-20 13:01:23', '0000-00-00 00:00:00'),
(3343, '', '', 'getallproducts', '2020-05-20 13:01:26', '0000-00-00 00:00:00'),
(3344, '', '', 'getallproducts', '2020-05-20 13:01:28', '0000-00-00 00:00:00'),
(3345, '', '', 'getallproducts', '2020-05-20 13:01:29', '0000-00-00 00:00:00'),
(3346, '', '', 'getallproducts', '2020-05-20 13:01:29', '0000-00-00 00:00:00'),
(3347, '', '', 'getallproducts', '2020-05-20 13:01:34', '0000-00-00 00:00:00'),
(3348, '', '', 'getallproducts', '2020-05-20 13:01:37', '0000-00-00 00:00:00'),
(3349, '', '', 'getallproducts', '2020-05-20 13:01:40', '0000-00-00 00:00:00'),
(3350, '', '', 'getallproducts', '2020-05-20 13:01:45', '0000-00-00 00:00:00'),
(3351, '', '', 'getallproducts', '2020-05-20 13:01:46', '0000-00-00 00:00:00'),
(3352, '', '', 'getallproducts', '2020-05-20 13:01:46', '0000-00-00 00:00:00'),
(3353, '', '', 'getallproducts', '2020-05-20 13:01:53', '0000-00-00 00:00:00'),
(3354, '', '', 'getallproducts', '2020-05-20 13:01:53', '0000-00-00 00:00:00'),
(3355, '', '', 'getallproducts', '2020-05-20 13:01:53', '0000-00-00 00:00:00'),
(3356, '', '', 'homePage', '2020-05-20 13:02:28', '0000-00-00 00:00:00'),
(3357, '', '', 'getallproducts', '2020-05-20 13:02:34', '0000-00-00 00:00:00'),
(3358, '', '', 'getallproducts', '2020-05-20 13:02:46', '0000-00-00 00:00:00'),
(3359, '', '', 'getallproducts', '2020-05-20 13:02:54', '0000-00-00 00:00:00'),
(3360, '', '', 'getallproducts', '2020-05-20 13:02:54', '0000-00-00 00:00:00'),
(3361, '', '', 'getallproducts', '2020-05-20 13:02:54', '0000-00-00 00:00:00'),
(3362, '', '', 'getallproducts', '2020-05-20 13:02:57', '0000-00-00 00:00:00'),
(3363, '', '', 'getallproducts', '2020-05-20 13:02:57', '0000-00-00 00:00:00'),
(3364, '', '', 'getallproducts', '2020-05-20 13:02:57', '0000-00-00 00:00:00'),
(3365, '', '', 'getallproducts', '2020-05-20 13:02:59', '0000-00-00 00:00:00'),
(3366, '', '', 'getallproducts', '2020-05-20 13:02:59', '0000-00-00 00:00:00'),
(3367, '', '', 'getallproducts', '2020-05-20 13:02:59', '0000-00-00 00:00:00'),
(3368, '', '', 'homePage', '2020-05-20 13:27:10', '0000-00-00 00:00:00'),
(3369, '', '', 'homePage', '2020-05-20 13:27:11', '0000-00-00 00:00:00'),
(3370, '', '', 'getallproducts', '2020-05-20 13:27:16', '0000-00-00 00:00:00'),
(3371, '', '', 'getallproducts', '2020-05-20 13:27:21', '0000-00-00 00:00:00'),
(3372, '', '', 'homePage', '2020-05-20 13:27:35', '0000-00-00 00:00:00'),
(3373, '', '', 'getallproducts', '2020-05-20 13:27:46', '0000-00-00 00:00:00'),
(3374, '', '', 'getallproducts', '2020-05-20 13:27:51', '0000-00-00 00:00:00'),
(3375, '', '', 'getallproducts', '2020-05-20 13:27:53', '0000-00-00 00:00:00'),
(3376, '', '', 'getallproducts', '2020-05-20 13:27:55', '0000-00-00 00:00:00'),
(3377, '', '', 'getallproducts', '2020-05-20 13:27:55', '0000-00-00 00:00:00'),
(3378, '', '', 'getallproducts', '2020-05-20 13:27:56', '0000-00-00 00:00:00'),
(3379, '', '', 'getallproducts', '2020-05-20 13:28:10', '0000-00-00 00:00:00'),
(3380, '', '', 'getallproducts', '2020-05-20 13:28:16', '0000-00-00 00:00:00'),
(3381, '', '', 'getallproducts', '2020-05-20 13:28:20', '0000-00-00 00:00:00'),
(3382, '', '', 'getallproducts', '2020-05-20 13:28:20', '0000-00-00 00:00:00'),
(3383, '', '', 'getallproducts', '2020-05-20 13:28:20', '0000-00-00 00:00:00'),
(3384, '', '', 'homePage', '2020-05-20 13:31:57', '2000-02-17 00:00:00'),
(3385, '', '', 'homePage', '2020-05-20 13:31:57', '2000-02-17 00:00:00'),
(3386, '', '', 'homePage', '2020-05-20 13:32:15', '0000-00-00 00:00:00'),
(3387, '', '', 'processlogin', '2020-05-20 13:32:38', '0000-00-00 00:00:00'),
(3388, '', '', 'homePage', '2020-05-20 13:32:40', '0000-00-00 00:00:00'),
(3389, '', '', 'getallproducts', '2020-05-20 13:32:42', '0000-00-00 00:00:00'),
(3390, '', '', 'getallproducts', '2020-05-20 13:32:47', '0000-00-00 00:00:00'),
(3391, '', '', 'getallproducts', '2020-05-20 13:32:48', '0000-00-00 00:00:00'),
(3392, '', '', 'getallproducts', '2020-05-20 13:32:48', '0000-00-00 00:00:00'),
(3393, '', '', 'getallproducts', '2020-05-20 13:32:54', '0000-00-00 00:00:00'),
(3394, '', '', 'getallproducts', '2020-05-20 13:33:31', '0000-00-00 00:00:00'),
(3395, '', '', 'getallproducts', '2020-05-20 13:33:32', '0000-00-00 00:00:00'),
(3396, '', '', 'getallproducts', '2020-05-20 13:33:32', '0000-00-00 00:00:00'),
(3397, '', '', 'getallproducts', '2020-05-20 13:33:34', '0000-00-00 00:00:00'),
(3398, '', '', 'getallproducts', '2020-05-20 13:33:37', '0000-00-00 00:00:00'),
(3399, '', '', 'getallproducts', '2020-05-20 13:33:39', '0000-00-00 00:00:00'),
(3400, '', '', 'getallproducts', '2020-05-20 13:33:39', '0000-00-00 00:00:00'),
(3401, '', '', 'getallproducts', '2020-05-20 13:33:40', '0000-00-00 00:00:00'),
(3402, '', '', 'getallproducts', '2020-05-20 13:34:13', '0000-00-00 00:00:00'),
(3403, '', '', 'getallproducts', '2020-05-20 13:34:28', '0000-00-00 00:00:00'),
(3404, '', '', 'getallproducts', '2020-05-20 13:34:28', '0000-00-00 00:00:00'),
(3405, '', '', 'getallproducts', '2020-05-20 13:34:28', '0000-00-00 00:00:00'),
(3406, '', '', 'getallproducts', '2020-05-20 13:34:30', '0000-00-00 00:00:00'),
(3407, '', '', 'getallproducts', '2020-05-20 13:34:30', '0000-00-00 00:00:00'),
(3408, '', '', 'getallproducts', '2020-05-20 13:34:30', '0000-00-00 00:00:00'),
(3409, '', '', 'getallproducts', '2020-05-20 13:34:32', '0000-00-00 00:00:00'),
(3410, '', '', 'getallproducts', '2020-05-20 13:34:32', '0000-00-00 00:00:00'),
(3411, '', '', 'getallproducts', '2020-05-20 13:34:33', '0000-00-00 00:00:00'),
(3412, '', '', 'getallproducts', '2020-05-20 13:34:34', '0000-00-00 00:00:00'),
(3413, '', '', 'getallproducts', '2020-05-20 13:34:37', '0000-00-00 00:00:00'),
(3414, '', '', 'getallproducts', '2020-05-20 13:36:09', '0000-00-00 00:00:00'),
(3415, '', '', 'getallproducts', '2020-05-20 13:36:11', '0000-00-00 00:00:00'),
(3416, '', '', 'getallproducts', '2020-05-20 13:36:11', '0000-00-00 00:00:00'),
(3417, '', '', 'getallproducts', '2020-05-20 13:36:11', '0000-00-00 00:00:00'),
(3418, '', '', 'getallproducts', '2020-05-20 13:36:14', '0000-00-00 00:00:00'),
(3419, '', '', 'getallproducts', '2020-05-20 13:36:14', '0000-00-00 00:00:00'),
(3420, '', '', 'getallproducts', '2020-05-20 13:36:14', '0000-00-00 00:00:00'),
(3421, '', '', 'getallproducts', '2020-05-20 13:36:19', '0000-00-00 00:00:00'),
(3422, '', '', 'getallproducts', '2020-05-20 13:36:19', '0000-00-00 00:00:00'),
(3423, '', '', 'getallproducts', '2020-05-20 13:36:20', '0000-00-00 00:00:00'),
(3424, '', '', 'getallproducts', '2020-05-20 13:36:23', '0000-00-00 00:00:00'),
(3425, '', '', 'getallproducts', '2020-05-20 13:36:25', '0000-00-00 00:00:00'),
(3426, '', '', 'getallproducts', '2020-05-20 13:57:27', '0000-00-00 00:00:00'),
(3427, '', '', 'getallproducts', '2020-05-20 13:57:28', '0000-00-00 00:00:00'),
(3428, '', '', 'getallproducts', '2020-05-20 13:57:29', '0000-00-00 00:00:00'),
(3429, '', '', 'homePage', '2020-05-20 13:57:54', '0000-00-00 00:00:00'),
(3430, '', '', 'unlikeproduct', '2020-05-20 14:03:00', '2000-03-06 00:00:00'),
(3431, '', '', 'likeproduct', '2020-05-20 14:04:06', '0000-00-00 00:00:00'),
(3432, 'ABCDEF', '192.168.1.11', 'moreproducts', '2020-05-20 14:05:00', '0000-00-00 00:00:00'),
(3433, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-20 14:07:58', '0000-00-00 00:00:00'),
(3434, '', '', 'homePage', '2020-05-20 14:33:17', '0000-00-00 00:00:00'),
(3435, '', '', 'homePage', '2020-05-20 14:33:17', '0000-00-00 00:00:00'),
(3436, '', '', 'homePage', '2020-05-20 14:33:18', '0000-00-00 00:00:00'),
(3437, '', '', 'getallproducts', '2020-05-20 14:34:57', '0000-00-00 00:00:00'),
(3438, '', '', 'getallproducts', '2020-05-20 14:35:05', '0000-00-00 00:00:00'),
(3439, 'ABCDEF', '192.168.1.11', 'moreproducts', '2020-05-20 17:21:28', '0000-00-00 00:00:00'),
(3440, 'ABCDEF', '192.168.1.11', 'moreflashes', '2020-05-20 17:22:14', '0000-00-00 00:00:00'),
(3441, '', '', 'homePage', '2020-05-20 21:46:10', '0000-00-00 00:00:00'),
(3442, '', '', 'homePage', '2020-05-20 21:46:10', '0000-00-00 00:00:00'),
(3443, 'ABCDEF', '192.168.1.11', 'moreproducts', '2020-05-20 21:47:44', '0000-00-00 00:00:00'),
(3444, 'ABCDEF', '192.168.1.11', 'moreflashes', '2020-05-20 22:14:18', '0000-00-00 00:00:00'),
(3445, '', '', 'homePage', '2020-05-20 22:26:43', '0000-00-00 00:00:00'),
(3446, '', '', 'moreproducts', '2020-05-20 22:26:50', '0000-00-00 00:00:00'),
(3447, '', '', 'moreproducts', '2020-05-20 22:27:05', '0000-00-00 00:00:00'),
(3448, '', '', 'homePage', '2020-05-20 22:41:11', '0000-00-00 00:00:00'),
(3449, '', '', 'homePage', '2020-05-20 22:41:15', '0000-00-00 00:00:00'),
(3450, '', '', 'moreproducts', '2020-05-20 22:41:21', '0000-00-00 00:00:00'),
(3451, '', '', 'homePage', '2020-05-20 22:53:27', '2000-07-26 00:00:00'),
(3452, '', '', 'homePage', '2020-05-20 22:53:33', '0000-00-00 00:00:00'),
(3453, '', '', 'homePage', '2020-05-20 22:55:36', '2000-01-23 00:00:00'),
(3454, '', '', 'homePage', '2020-05-20 22:55:38', '0000-00-00 00:00:00'),
(3455, '', '', 'homePage', '2020-05-20 22:56:00', '0000-00-00 00:00:00'),
(3456, '', '', 'homePage', '2020-05-20 22:56:02', '0000-00-00 00:00:00'),
(3457, '', '', 'likeproduct', '2020-05-20 22:56:04', '0000-00-00 00:00:00'),
(3458, '', '', 'unlikeproduct', '2020-05-20 22:56:06', '0000-00-00 00:00:00'),
(3459, '', '', 'getallproducts', '2020-05-20 22:56:12', '0000-00-00 00:00:00'),
(3460, '', '', 'homePage', '2020-05-20 23:00:34', '0000-00-00 00:00:00'),
(3461, '', '', 'homePage', '2020-05-20 23:04:53', '0000-00-00 00:00:00'),
(3462, '', '', 'homePage', '2020-05-20 23:06:55', '2000-01-22 00:00:00'),
(3463, '', '', 'homePage', '2020-05-20 23:06:57', '0000-00-00 00:00:00'),
(3464, '', '', 'homePage', '2020-05-20 23:07:15', '0000-00-00 00:00:00'),
(3465, '', '', 'homePage', '2020-05-20 23:07:17', '0000-00-00 00:00:00'),
(3466, '', '', 'homePage', '2020-05-20 23:07:47', '0000-00-00 00:00:00'),
(3467, '', '', 'homePage', '2020-05-20 23:07:49', '0000-00-00 00:00:00'),
(3468, '', '', 'homePage', '2020-05-20 23:08:08', '0000-00-00 00:00:00'),
(3469, '', '', 'homePage', '2020-05-20 23:08:10', '0000-00-00 00:00:00'),
(3470, '', '', 'homePage', '2020-05-20 23:08:35', '0000-00-00 00:00:00'),
(3471, '', '', 'homePage', '2020-05-20 23:09:21', '0000-00-00 00:00:00'),
(3472, '', '', 'homePage', '2020-05-20 23:09:54', '0000-00-00 00:00:00'),
(3473, '', '', 'homePage', '2020-05-20 23:09:56', '0000-00-00 00:00:00'),
(3474, '', '', 'homePage', '2020-05-20 23:10:16', '0000-00-00 00:00:00'),
(3475, '', '', 'homePage', '2020-05-20 23:11:04', '0000-00-00 00:00:00'),
(3476, '', '', 'homePage', '2020-05-20 23:11:53', '0000-00-00 00:00:00'),
(3477, '', '', 'homePage', '2020-05-20 23:11:55', '0000-00-00 00:00:00'),
(3478, '', '', 'homePage', '2020-05-20 23:12:08', '0000-00-00 00:00:00'),
(3479, '', '', 'likeproduct', '2020-05-20 23:12:15', '0000-00-00 00:00:00'),
(3480, '', '', 'homePage', '2020-05-20 23:13:17', '0000-00-00 00:00:00'),
(3481, '', '', 'unlikeproduct', '2020-05-20 23:13:25', '0000-00-00 00:00:00'),
(3482, '', '', 'moreproducts', '2020-05-20 23:14:40', '0000-00-00 00:00:00'),
(3483, '', '', 'homePage', '2020-05-20 23:18:53', '0000-00-00 00:00:00'),
(3484, '', '', 'moreproducts', '2020-05-20 23:18:58', '0000-00-00 00:00:00'),
(3485, '', '', 'homePage', '2020-05-20 23:57:06', '0000-00-00 00:00:00'),
(3486, '', '', 'homePage', '2020-05-20 23:57:54', '0000-00-00 00:00:00'),
(3487, '', '', 'likeproduct', '2020-05-20 23:57:59', '0000-00-00 00:00:00'),
(3488, '', '', 'homePage', '2020-05-20 23:59:21', '0000-00-00 00:00:00'),
(3489, '', '', 'unlikeproduct', '2020-05-20 23:59:27', '0000-00-00 00:00:00'),
(3490, '', '', 'homePage', '2020-05-20 23:59:34', '0000-00-00 00:00:00'),
(3491, '', '', 'likeproduct', '2020-05-21 00:00:34', '0000-00-00 00:00:00'),
(3492, '', '', 'unlikeproduct', '2020-05-21 00:01:06', '0000-00-00 00:00:00'),
(3493, '', '', 'unlikeproduct', '2020-05-21 00:01:08', '0000-00-00 00:00:00'),
(3494, '', '', 'homePage', '2020-05-21 00:01:12', '0000-00-00 00:00:00'),
(3495, '', '', 'homePage', '2020-05-21 00:02:26', '0000-00-00 00:00:00'),
(3496, '', '', 'homePage', '2020-05-21 00:04:30', '2000-01-24 00:00:00'),
(3497, '', '', 'unlikeproduct', '2020-05-21 00:04:36', '0000-00-00 00:00:00'),
(3498, '', '', 'likeproduct', '2020-05-21 00:04:39', '0000-00-00 00:00:00'),
(3499, '', '', 'likeproduct', '2020-05-21 00:05:10', '0000-00-00 00:00:00'),
(3500, '', '', 'unlikeproduct', '2020-05-21 00:05:15', '0000-00-00 00:00:00'),
(3501, '', '', 'unlikeproduct', '2020-05-21 00:06:27', '0000-00-00 00:00:00'),
(3502, '', '', 'homePage', '2020-05-21 00:09:35', '0000-00-00 00:00:00'),
(3503, '', '', 'homePage', '2020-05-21 00:48:46', '0000-00-00 00:00:00'),
(3504, 'ABCDEF', '192.168.1.11', 'moreflashes', '2020-05-21 00:55:31', '0000-00-00 00:00:00'),
(3505, 'ABCDEF', '192.168.1.11', 'moreflashes', '2020-05-21 00:56:08', '0000-00-00 00:00:00'),
(3506, 'ABCDEF', '192.168.1.11', 'moreproducts', '2020-05-21 00:56:47', '0000-00-00 00:00:00'),
(3507, '', '', 'likeproduct', '2020-05-21 00:59:16', '2000-06-30 00:00:00'),
(3508, '', '', 'likeproduct', '2020-05-21 01:01:17', '2000-01-21 00:00:00'),
(3509, '', '', 'likeproduct', '2020-05-21 01:03:11', '2000-01-14 00:00:00'),
(3510, '', '', 'unlikeproduct', '2020-05-21 01:03:14', '0000-00-00 00:00:00'),
(3511, '', '', 'unlikeproduct', '2020-05-21 01:08:06', '0000-00-00 00:00:00'),
(3512, '', '', 'homePage', '2020-05-21 01:28:58', '0000-00-00 00:00:00'),
(3513, '', '', 'homePage', '2020-05-21 01:31:34', '0000-00-00 00:00:00'),
(3514, '', '', 'homePage', '2020-05-21 07:11:11', '0000-00-00 00:00:00'),
(3515, '', '', 'homePage', '2020-05-21 07:11:25', '0000-00-00 00:00:00'),
(3516, '', '', 'getallproducts', '2020-05-21 07:11:48', '0000-00-00 00:00:00'),
(3517, '', '', 'getallproducts', '2020-05-21 07:11:48', '0000-00-00 00:00:00'),
(3518, '', '', 'getallproducts', '2020-05-21 07:11:49', '0000-00-00 00:00:00'),
(3519, '', '', 'getallproducts', '2020-05-21 07:11:49', '0000-00-00 00:00:00'),
(3520, '', '', 'getallproducts', '2020-05-21 07:11:50', '0000-00-00 00:00:00'),
(3521, '', '', 'getallproducts', '2020-05-21 07:11:50', '0000-00-00 00:00:00'),
(3522, '', '', 'getallproducts', '2020-05-21 07:11:51', '0000-00-00 00:00:00'),
(3523, '', '', 'getallproducts', '2020-05-21 07:11:51', '0000-00-00 00:00:00'),
(3524, '', '', 'getallproducts', '2020-05-21 07:11:52', '0000-00-00 00:00:00'),
(3525, '', '', 'getallproducts', '2020-05-21 07:11:52', '0000-00-00 00:00:00'),
(3526, '', '', 'getallproducts', '2020-05-21 07:12:01', '0000-00-00 00:00:00'),
(3527, '', '', 'getallproducts', '2020-05-21 07:12:32', '0000-00-00 00:00:00'),
(3528, '', '', 'getallproducts', '2020-05-21 07:13:03', '0000-00-00 00:00:00'),
(3529, '', '', 'getallproducts', '2020-05-21 07:13:05', '0000-00-00 00:00:00'),
(3530, '', '', 'getallproducts', '2020-05-21 07:13:13', '0000-00-00 00:00:00'),
(3531, '', '', 'getallproducts', '2020-05-21 07:13:15', '0000-00-00 00:00:00'),
(3532, '', '', 'getallproducts', '2020-05-21 07:13:16', '0000-00-00 00:00:00'),
(3533, '', '', 'homePage', '2020-05-21 07:14:31', '0000-00-00 00:00:00'),
(3534, '', '', 'homePage', '2020-05-21 07:15:33', '0000-00-00 00:00:00'),
(3535, '', '', 'unlikeproduct', '2020-05-21 07:17:31', '2000-01-18 00:00:00'),
(3536, '', '', 'getallproducts', '2020-05-21 07:25:49', '0000-00-00 00:00:00'),
(3537, '', '', 'homePage', '2020-05-21 07:34:13', '2000-05-04 00:00:00'),
(3538, '', '', 'likeproduct', '2020-05-21 07:35:11', '0000-00-00 00:00:00'),
(3539, '', '', 'unlikeproduct', '2020-05-21 07:35:33', '0000-00-00 00:00:00'),
(3540, '', '', 'homePage', '2020-05-21 07:41:07', '0000-00-00 00:00:00'),
(3541, '', '', 'homePage', '2020-05-21 07:41:43', '0000-00-00 00:00:00'),
(3542, '', '', 'homePage', '2020-05-21 07:42:07', '0000-00-00 00:00:00'),
(3543, '', '', 'likeproduct', '2020-05-21 07:42:12', '0000-00-00 00:00:00'),
(3544, '', '', 'unlikeproduct', '2020-05-21 08:01:46', '0000-00-00 00:00:00'),
(3545, '', '', 'likeproduct', '2020-05-21 08:02:29', '0000-00-00 00:00:00'),
(3546, '', '', 'homePage', '2020-05-21 08:07:02', '0000-00-00 00:00:00'),
(3547, '', '', 'homePage', '2020-05-21 08:08:59', '2000-01-17 00:00:00'),
(3548, '', '', 'unlikeproduct', '2020-05-21 08:09:16', '0000-00-00 00:00:00'),
(3549, '', '', 'homePage', '2020-05-21 08:18:22', '0000-00-00 00:00:00'),
(3550, '', '', 'likeproduct', '2020-05-21 08:18:44', '0000-00-00 00:00:00'),
(3551, '', '', 'homePage', '2020-05-21 08:19:06', '0000-00-00 00:00:00'),
(3552, '', '', 'homePage', '2020-05-21 08:32:11', '0000-00-00 00:00:00'),
(3553, '', '', 'likeproduct', '2020-05-21 08:32:17', '0000-00-00 00:00:00'),
(3554, '', '', 'homePage', '2020-05-21 08:32:20', '0000-00-00 00:00:00'),
(3555, '', '', 'homePage', '2020-05-21 08:34:09', '2000-01-09 00:00:00'),
(3556, '', '', 'homePage', '2020-05-21 08:34:17', '0000-00-00 00:00:00'),
(3557, '', '', 'unlikeproduct', '2020-05-21 08:35:00', '0000-00-00 00:00:00'),
(3558, '', '', 'likeproduct', '2020-05-21 08:35:03', '0000-00-00 00:00:00'),
(3559, '', '', 'unlikeproduct', '2020-05-21 08:35:08', '0000-00-00 00:00:00'),
(3560, '', '', 'homePage', '2020-05-21 08:35:29', '0000-00-00 00:00:00'),
(3561, '', '', 'unlikeproduct', '2020-05-21 08:35:40', '0000-00-00 00:00:00'),
(3562, '', '', 'unlikeproduct', '2020-05-21 08:35:43', '0000-00-00 00:00:00'),
(3563, '', '', 'likeproduct', '2020-05-21 08:35:44', '0000-00-00 00:00:00'),
(3564, '', '', 'homePage', '2020-05-21 08:35:46', '0000-00-00 00:00:00'),
(3565, '', '', 'likeproduct', '2020-05-21 08:37:25', '0000-00-00 00:00:00'),
(3566, '', '', 'homePage', '2020-05-21 08:39:55', '0000-00-00 00:00:00'),
(3567, '', '', 'unlikeproduct', '2020-05-21 08:40:05', '0000-00-00 00:00:00'),
(3568, '', '', 'likeproduct', '2020-05-21 08:40:11', '0000-00-00 00:00:00'),
(3569, '', '', 'likeproduct', '2020-05-21 08:41:56', '2000-01-05 00:00:00'),
(3570, '', '', 'homePage', '2020-05-21 08:42:00', '0000-00-00 00:00:00'),
(3571, '', '', 'unlikeproduct', '2020-05-21 08:42:03', '0000-00-00 00:00:00'),
(3572, '', '', 'homePage', '2020-05-21 08:43:00', '0000-00-00 00:00:00'),
(3573, '', '', 'likeproduct', '2020-05-21 08:43:03', '0000-00-00 00:00:00'),
(3574, '', '', 'unlikeproduct', '2020-05-21 08:43:04', '0000-00-00 00:00:00'),
(3575, '', '', 'likeproduct', '2020-05-21 08:43:09', '0000-00-00 00:00:00'),
(3576, '', '', 'likeproduct', '2020-05-21 08:43:12', '0000-00-00 00:00:00'),
(3577, '', '', 'unlikeproduct', '2020-05-21 08:43:14', '0000-00-00 00:00:00'),
(3578, '', '', 'homePage', '2020-05-21 08:45:40', '0000-00-00 00:00:00'),
(3579, '', '', 'likeproduct', '2020-05-21 08:45:42', '0000-00-00 00:00:00'),
(3580, '', '', 'likeproduct', '2020-05-21 08:45:44', '0000-00-00 00:00:00'),
(3581, '', '', 'homePage', '2020-05-21 08:45:47', '0000-00-00 00:00:00'),
(3582, '', '', 'likeproduct', '2020-05-21 08:45:58', '0000-00-00 00:00:00'),
(3583, '', '', 'homePage', '2020-05-21 08:48:22', '0000-00-00 00:00:00'),
(3584, '', '', 'homePage', '2020-05-21 08:48:22', '0000-00-00 00:00:00'),
(3585, '', '', 'homePage', '2020-05-21 08:48:38', '0000-00-00 00:00:00'),
(3586, '', '', 'homePage', '2020-05-21 08:48:40', '0000-00-00 00:00:00'),
(3587, '', '', 'homePage', '2020-05-21 08:49:51', '0000-00-00 00:00:00'),
(3588, '', '', 'unlikeproduct', '2020-05-21 08:49:58', '0000-00-00 00:00:00'),
(3589, '', '', 'unlikeproduct', '2020-05-21 08:50:43', '0000-00-00 00:00:00'),
(3590, '', '', 'homePage', '2020-05-21 08:50:54', '0000-00-00 00:00:00'),
(3591, '', '', 'homePage', '2020-05-21 08:51:10', '0000-00-00 00:00:00'),
(3592, '', '', 'homePage', '2020-05-21 08:51:19', '0000-00-00 00:00:00'),
(3593, '', '', 'homePage', '2020-05-21 08:51:20', '0000-00-00 00:00:00'),
(3594, '', '', 'homePage', '2020-05-21 08:51:48', '0000-00-00 00:00:00'),
(3595, '', '', 'homePage', '2020-05-21 08:51:53', '0000-00-00 00:00:00'),
(3596, '', '', 'homePage', '2020-05-21 08:52:25', '0000-00-00 00:00:00'),
(3597, '', '', 'homePage', '2020-05-21 08:53:02', '0000-00-00 00:00:00'),
(3598, '', '', 'homePage', '2020-05-21 08:53:31', '0000-00-00 00:00:00'),
(3599, '', '', 'homePage', '2020-05-21 08:59:22', '0000-00-00 00:00:00'),
(3600, '', '', 'likeproduct', '2020-05-21 09:09:57', '0000-00-00 00:00:00'),
(3601, '', '', 'likeproduct', '2020-05-21 09:10:00', '0000-00-00 00:00:00'),
(3602, '', '', 'homePage', '2020-05-21 09:10:02', '0000-00-00 00:00:00'),
(3603, '', '', 'unlikeproduct', '2020-05-21 09:10:06', '0000-00-00 00:00:00'),
(3604, '', '', 'unlikeproduct', '2020-05-21 09:10:21', '0000-00-00 00:00:00'),
(3605, '', '', 'likeproduct', '2020-05-21 09:10:39', '0000-00-00 00:00:00'),
(3606, '', '', 'unlikeproduct', '2020-05-21 09:10:52', '0000-00-00 00:00:00'),
(3607, '', '', 'likeproduct', '2020-05-21 09:10:54', '0000-00-00 00:00:00'),
(3608, '', '', 'unlikeproduct', '2020-05-21 09:11:05', '0000-00-00 00:00:00'),
(3609, '', '', 'unlikeproduct', '2020-05-21 09:11:06', '0000-00-00 00:00:00'),
(3610, '', '', 'getallproducts', '2020-05-21 09:15:41', '0000-00-00 00:00:00'),
(3611, '', '', 'homePage', '2020-05-21 09:17:31', '2000-01-10 00:00:00'),
(3612, '', '', 'getallproducts', '2020-05-21 09:17:36', '0000-00-00 00:00:00'),
(3613, '', '', 'getallproducts', '2020-05-21 09:17:36', '0000-00-00 00:00:00'),
(3614, '', '', 'getallproducts', '2020-05-21 09:17:36', '0000-00-00 00:00:00'),
(3615, '', '', 'getallproducts', '2020-05-21 09:17:36', '0000-00-00 00:00:00'),
(3616, '', '', 'getallproducts', '2020-05-21 09:17:36', '0000-00-00 00:00:00'),
(3617, '', '', 'getallproducts', '2020-05-21 09:17:37', '0000-00-00 00:00:00'),
(3618, '', '', 'getallproducts', '2020-05-21 09:17:37', '0000-00-00 00:00:00'),
(3619, '', '', 'getallproducts', '2020-05-21 09:17:37', '0000-00-00 00:00:00'),
(3620, '', '', 'getallproducts', '2020-05-21 09:17:37', '0000-00-00 00:00:00'),
(3621, '', '', 'getallproducts', '2020-05-21 09:17:38', '0000-00-00 00:00:00'),
(3622, '', '', 'getallproducts', '2020-05-21 09:17:38', '0000-00-00 00:00:00');
INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(3623, '', '', 'getallproducts', '2020-05-21 09:17:38', '0000-00-00 00:00:00'),
(3624, '', '', 'getallproducts', '2020-05-21 09:17:38', '0000-00-00 00:00:00'),
(3625, '', '', 'getallproducts', '2020-05-21 09:17:38', '0000-00-00 00:00:00'),
(3626, '', '', 'getallproducts', '2020-05-21 09:17:39', '0000-00-00 00:00:00'),
(3627, '', '', 'getallproducts', '2020-05-21 09:17:39', '0000-00-00 00:00:00'),
(3628, '', '', 'getallproducts', '2020-05-21 09:17:39', '0000-00-00 00:00:00'),
(3629, '', '', 'getallproducts', '2020-05-21 09:17:40', '0000-00-00 00:00:00'),
(3630, '', '', 'getallproducts', '2020-05-21 09:17:40', '0000-00-00 00:00:00'),
(3631, '', '', 'getallproducts', '2020-05-21 09:17:40', '0000-00-00 00:00:00'),
(3632, '', '', 'getallproducts', '2020-05-21 09:17:40', '0000-00-00 00:00:00'),
(3633, '', '', 'getallproducts', '2020-05-21 09:17:40', '0000-00-00 00:00:00'),
(3634, '', '', 'getallproducts', '2020-05-21 09:17:40', '0000-00-00 00:00:00'),
(3635, '', '', 'getallproducts', '2020-05-21 09:17:40', '0000-00-00 00:00:00'),
(3636, '', '', 'getallproducts', '2020-05-21 09:17:41', '0000-00-00 00:00:00'),
(3637, '', '', 'getallproducts', '2020-05-21 09:17:41', '0000-00-00 00:00:00'),
(3638, '', '', 'getallproducts', '2020-05-21 09:17:41', '0000-00-00 00:00:00'),
(3639, '', '', 'getallproducts', '2020-05-21 09:17:41', '0000-00-00 00:00:00'),
(3640, '', '', 'getallproducts', '2020-05-21 09:17:41', '0000-00-00 00:00:00'),
(3641, '', '', 'getallproducts', '2020-05-21 09:17:41', '0000-00-00 00:00:00'),
(3642, '', '', 'getallproducts', '2020-05-21 09:17:42', '0000-00-00 00:00:00'),
(3643, '', '', 'getallproducts', '2020-05-21 09:17:42', '0000-00-00 00:00:00'),
(3644, '', '', 'getallproducts', '2020-05-21 09:17:42', '0000-00-00 00:00:00'),
(3645, '', '', 'getallproducts', '2020-05-21 09:17:43', '0000-00-00 00:00:00'),
(3646, '', '', 'getallproducts', '2020-05-21 09:17:43', '0000-00-00 00:00:00'),
(3647, '', '', 'getallproducts', '2020-05-21 09:17:43', '0000-00-00 00:00:00'),
(3648, '', '', 'getallproducts', '2020-05-21 09:17:43', '0000-00-00 00:00:00'),
(3649, '', '', 'getallproducts', '2020-05-21 09:17:44', '0000-00-00 00:00:00'),
(3650, '', '', 'getallproducts', '2020-05-21 09:17:44', '0000-00-00 00:00:00'),
(3651, '', '', 'getallproducts', '2020-05-21 09:17:44', '0000-00-00 00:00:00'),
(3652, '', '', 'getallproducts', '2020-05-21 09:17:44', '0000-00-00 00:00:00'),
(3653, '', '', 'getallproducts', '2020-05-21 09:17:45', '0000-00-00 00:00:00'),
(3654, '', '', 'getallproducts', '2020-05-21 09:17:45', '0000-00-00 00:00:00'),
(3655, '', '', 'getallproducts', '2020-05-21 09:17:45', '0000-00-00 00:00:00'),
(3656, '', '', 'getallproducts', '2020-05-21 09:17:45', '0000-00-00 00:00:00'),
(3657, '', '', 'getallproducts', '2020-05-21 09:17:45', '0000-00-00 00:00:00'),
(3658, '', '', 'getallproducts', '2020-05-21 09:17:45', '0000-00-00 00:00:00'),
(3659, '', '', 'getallproducts', '2020-05-21 09:17:45', '0000-00-00 00:00:00'),
(3660, '', '', 'getallproducts', '2020-05-21 09:17:46', '0000-00-00 00:00:00'),
(3661, '', '', 'getallproducts', '2020-05-21 09:17:46', '0000-00-00 00:00:00'),
(3662, '', '', 'getallproducts', '2020-05-21 09:17:46', '0000-00-00 00:00:00'),
(3663, '', '', 'getallproducts', '2020-05-21 09:17:46', '0000-00-00 00:00:00'),
(3664, '', '', 'getallproducts', '2020-05-21 09:17:46', '0000-00-00 00:00:00'),
(3665, '', '', 'getallproducts', '2020-05-21 09:17:47', '0000-00-00 00:00:00'),
(3666, '', '', 'getallproducts', '2020-05-21 09:17:47', '0000-00-00 00:00:00'),
(3667, '', '', 'getallproducts', '2020-05-21 09:17:47', '0000-00-00 00:00:00'),
(3668, '', '', 'getallproducts', '2020-05-21 09:17:47', '0000-00-00 00:00:00'),
(3669, '', '', 'getallproducts', '2020-05-21 09:17:48', '0000-00-00 00:00:00'),
(3670, '', '', 'getallproducts', '2020-05-21 09:17:48', '0000-00-00 00:00:00'),
(3671, '', '', 'getallproducts', '2020-05-21 09:17:48', '0000-00-00 00:00:00'),
(3672, '', '', 'getallproducts', '2020-05-21 09:17:48', '0000-00-00 00:00:00'),
(3673, '', '', 'getallproducts', '2020-05-21 09:17:49', '0000-00-00 00:00:00'),
(3674, '', '', 'getallproducts', '2020-05-21 09:17:49', '0000-00-00 00:00:00'),
(3675, '', '', 'getallproducts', '2020-05-21 09:17:49', '0000-00-00 00:00:00'),
(3676, '', '', 'getallproducts', '2020-05-21 09:17:49', '0000-00-00 00:00:00'),
(3677, '', '', 'getallproducts', '2020-05-21 09:17:49', '0000-00-00 00:00:00'),
(3678, '', '', 'getallproducts', '2020-05-21 09:17:50', '0000-00-00 00:00:00'),
(3679, '', '', 'getallproducts', '2020-05-21 09:17:50', '0000-00-00 00:00:00'),
(3680, '', '', 'getallproducts', '2020-05-21 09:17:50', '0000-00-00 00:00:00'),
(3681, '', '', 'getallproducts', '2020-05-21 09:17:50', '0000-00-00 00:00:00'),
(3682, '', '', 'getallproducts', '2020-05-21 09:17:50', '0000-00-00 00:00:00'),
(3683, '', '', 'getallproducts', '2020-05-21 09:17:50', '0000-00-00 00:00:00'),
(3684, '', '', 'getallproducts', '2020-05-21 09:17:50', '0000-00-00 00:00:00'),
(3685, '', '', 'getallproducts', '2020-05-21 09:17:51', '0000-00-00 00:00:00'),
(3686, '', '', 'getallproducts', '2020-05-21 09:17:51', '0000-00-00 00:00:00'),
(3687, '', '', 'getallproducts', '2020-05-21 09:17:51', '0000-00-00 00:00:00'),
(3688, '', '', 'getallproducts', '2020-05-21 09:17:51', '0000-00-00 00:00:00'),
(3689, '', '', 'getallproducts', '2020-05-21 09:17:52', '0000-00-00 00:00:00'),
(3690, '', '', 'getallproducts', '2020-05-21 09:17:52', '0000-00-00 00:00:00'),
(3691, '', '', 'getallproducts', '2020-05-21 09:17:52', '0000-00-00 00:00:00'),
(3692, '', '', 'getallproducts', '2020-05-21 09:17:52', '0000-00-00 00:00:00'),
(3693, '', '', 'getallproducts', '2020-05-21 09:17:52', '0000-00-00 00:00:00'),
(3694, '', '', 'getallproducts', '2020-05-21 09:17:53', '0000-00-00 00:00:00'),
(3695, '', '', 'getallproducts', '2020-05-21 09:17:53', '0000-00-00 00:00:00'),
(3696, '', '', 'getallproducts', '2020-05-21 09:17:53', '0000-00-00 00:00:00'),
(3697, '', '', 'getallproducts', '2020-05-21 09:17:54', '0000-00-00 00:00:00'),
(3698, '', '', 'getallproducts', '2020-05-21 09:17:54', '0000-00-00 00:00:00'),
(3699, '', '', 'getallproducts', '2020-05-21 09:17:54', '0000-00-00 00:00:00'),
(3700, '', '', 'getallproducts', '2020-05-21 09:17:54', '0000-00-00 00:00:00'),
(3701, '', '', 'getallproducts', '2020-05-21 09:17:55', '0000-00-00 00:00:00'),
(3702, '', '', 'getallproducts', '2020-05-21 09:17:55', '0000-00-00 00:00:00'),
(3703, '', '', 'getallproducts', '2020-05-21 09:17:55', '0000-00-00 00:00:00'),
(3704, '', '', 'getallproducts', '2020-05-21 09:17:55', '0000-00-00 00:00:00'),
(3705, '', '', 'getallproducts', '2020-05-21 09:17:55', '0000-00-00 00:00:00'),
(3706, '', '', 'getallproducts', '2020-05-21 09:17:55', '0000-00-00 00:00:00'),
(3707, '', '', 'getallproducts', '2020-05-21 09:17:55', '0000-00-00 00:00:00'),
(3708, '', '', 'getallproducts', '2020-05-21 09:17:56', '0000-00-00 00:00:00'),
(3709, '', '', 'getallproducts', '2020-05-21 09:17:56', '0000-00-00 00:00:00'),
(3710, '', '', 'getallproducts', '2020-05-21 09:17:56', '0000-00-00 00:00:00'),
(3711, '', '', 'getallproducts', '2020-05-21 09:17:56', '0000-00-00 00:00:00'),
(3712, '', '', 'getallproducts', '2020-05-21 09:17:57', '0000-00-00 00:00:00'),
(3713, '', '', 'getallproducts', '2020-05-21 09:17:57', '0000-00-00 00:00:00'),
(3714, '', '', 'getallproducts', '2020-05-21 09:17:57', '0000-00-00 00:00:00'),
(3715, '', '', 'getallproducts', '2020-05-21 09:17:57', '0000-00-00 00:00:00'),
(3716, '', '', 'getallproducts', '2020-05-21 09:17:57', '0000-00-00 00:00:00'),
(3717, '', '', 'getallproducts', '2020-05-21 09:17:58', '0000-00-00 00:00:00'),
(3718, '', '', 'getallproducts', '2020-05-21 09:17:58', '0000-00-00 00:00:00'),
(3719, '', '', 'getallproducts', '2020-05-21 09:17:58', '0000-00-00 00:00:00'),
(3720, '', '', 'getallproducts', '2020-05-21 09:17:58', '0000-00-00 00:00:00'),
(3721, '', '', 'getallproducts', '2020-05-21 09:17:58', '0000-00-00 00:00:00'),
(3722, '', '', 'getallproducts', '2020-05-21 09:17:58', '0000-00-00 00:00:00'),
(3723, '', '', 'getallproducts', '2020-05-21 09:17:59', '0000-00-00 00:00:00'),
(3724, '', '', 'getallproducts', '2020-05-21 09:19:24', '0000-00-00 00:00:00'),
(3725, '', '', 'homePage', '2020-05-21 09:22:40', '0000-00-00 00:00:00'),
(3726, '', '', 'likeproduct', '2020-05-21 09:25:12', '0000-00-00 00:00:00'),
(3727, '', '', 'likeproduct', '2020-05-21 09:25:14', '0000-00-00 00:00:00'),
(3728, '', '', 'homePage', '2020-05-21 09:25:17', '0000-00-00 00:00:00'),
(3729, '', '', 'likeproduct', '2020-05-21 09:25:20', '0000-00-00 00:00:00'),
(3730, '', '', 'unlikeproduct', '2020-05-21 09:30:37', '2000-03-17 00:00:00'),
(3731, '', '', 'unlikeproduct', '2020-05-21 09:30:40', '0000-00-00 00:00:00'),
(3732, '', '', 'likeproduct', '2020-05-21 09:30:54', '0000-00-00 00:00:00'),
(3733, '', '', 'homePage', '2020-05-21 09:31:48', '0000-00-00 00:00:00'),
(3734, '', '', 'unlikeproduct', '2020-05-21 09:31:53', '0000-00-00 00:00:00'),
(3735, '', '', 'likeproduct', '2020-05-21 09:31:56', '0000-00-00 00:00:00'),
(3736, '', '', 'unlikeproduct', '2020-05-21 09:35:20', '2000-02-04 00:00:00'),
(3737, '', '', 'likeproduct', '2020-05-21 09:35:23', '0000-00-00 00:00:00'),
(3738, '', '', 'unlikeproduct', '2020-05-21 09:35:26', '0000-00-00 00:00:00'),
(3739, '', '', 'homePage', '2020-05-21 09:35:28', '0000-00-00 00:00:00'),
(3740, '', '', 'likeproduct', '2020-05-21 09:37:38', '2000-01-30 00:00:00'),
(3741, '', '', 'likeproduct', '2020-05-21 09:37:38', '0000-00-00 00:00:00'),
(3742, '', '', 'homePage', '2020-05-21 09:37:44', '0000-00-00 00:00:00'),
(3743, '', '', 'unlikeproduct', '2020-05-21 09:38:06', '0000-00-00 00:00:00'),
(3744, '', '', 'unlikeproduct', '2020-05-21 09:38:06', '0000-00-00 00:00:00'),
(3745, '', '', 'homePage', '2020-05-21 09:39:20', '0000-00-00 00:00:00'),
(3746, '', '', 'likeproduct', '2020-05-21 09:39:22', '0000-00-00 00:00:00'),
(3747, '', '', 'unlikeproduct', '2020-05-21 09:39:27', '0000-00-00 00:00:00'),
(3748, '', '', 'likeproduct', '2020-05-21 09:39:35', '0000-00-00 00:00:00'),
(3749, '', '', 'likeproduct', '2020-05-21 09:39:45', '0000-00-00 00:00:00'),
(3750, '', '', 'likeproduct', '2020-05-21 09:39:45', '0000-00-00 00:00:00'),
(3751, '', '', 'unlikeproduct', '2020-05-21 09:42:32', '0000-00-00 00:00:00'),
(3752, '', '', 'unlikeproduct', '2020-05-21 09:42:32', '0000-00-00 00:00:00'),
(3753, '', '', 'homePage', '2020-05-21 09:43:34', '0000-00-00 00:00:00'),
(3754, '', '', 'likeproduct', '2020-05-21 09:43:37', '0000-00-00 00:00:00'),
(3755, '', '', 'homePage', '2020-05-21 09:43:42', '0000-00-00 00:00:00'),
(3756, '', '', 'unlikeproduct', '2020-05-21 09:43:48', '0000-00-00 00:00:00'),
(3757, '', '', 'homePage', '2020-05-21 09:50:10', '0000-00-00 00:00:00'),
(3758, '', '', 'likeproduct', '2020-05-21 09:50:14', '0000-00-00 00:00:00'),
(3759, '', '', 'homePage', '2020-05-21 09:50:23', '0000-00-00 00:00:00'),
(3760, '', '', 'unlikeproduct', '2020-05-21 09:51:35', '0000-00-00 00:00:00'),
(3761, '', '', 'homePage', '2020-05-21 09:51:37', '0000-00-00 00:00:00'),
(3762, '', '', 'likeproduct', '2020-05-21 09:51:42', '0000-00-00 00:00:00'),
(3763, '', '', 'unlikeproduct', '2020-05-21 09:51:49', '0000-00-00 00:00:00'),
(3764, '', '', 'likeproduct', '2020-05-21 09:51:55', '0000-00-00 00:00:00'),
(3765, '', '', 'unlikeproduct', '2020-05-21 09:52:42', '0000-00-00 00:00:00'),
(3766, '', '', 'unlikeproduct', '2020-05-21 09:52:48', '0000-00-00 00:00:00'),
(3767, '', '', 'likeproduct', '2020-05-21 09:52:51', '0000-00-00 00:00:00'),
(3768, '', '', 'unlikeproduct', '2020-05-21 09:52:53', '0000-00-00 00:00:00'),
(3769, '', '', 'homePage', '2020-05-21 09:54:50', '2000-01-17 00:00:00'),
(3770, '', '', 'likeproduct', '2020-05-21 09:54:55', '0000-00-00 00:00:00'),
(3771, '', '', 'unlikeproduct', '2020-05-21 09:54:57', '0000-00-00 00:00:00'),
(3772, '', '', 'likeproduct', '2020-05-21 09:55:01', '0000-00-00 00:00:00'),
(3773, '', '', 'likeproduct', '2020-05-21 09:55:04', '0000-00-00 00:00:00'),
(3774, '', '', 'unlikeproduct', '2020-05-21 09:55:53', '0000-00-00 00:00:00'),
(3775, '', '', 'likeproduct', '2020-05-21 09:55:57', '0000-00-00 00:00:00'),
(3776, '', '', 'homePage', '2020-05-21 09:59:31', '2000-02-14 00:00:00'),
(3777, '', '', 'likeproduct', '2020-05-21 09:59:36', '0000-00-00 00:00:00'),
(3778, 'ABCDEF', '192.168.1.11', 'moreflashes', '2020-05-21 10:28:06', '0000-00-00 00:00:00'),
(3779, '', '', 'moreflashes', '2020-05-21 10:37:49', '0000-00-00 00:00:00'),
(3780, '', '', 'unlikeproduct', '2020-05-21 10:38:11', '0000-00-00 00:00:00'),
(3781, '', '', 'moreflashes', '2020-05-21 10:38:33', '0000-00-00 00:00:00'),
(3782, 'ABCDEF', '192.168.1.11', 'homePage', '2020-05-21 10:38:58', '0000-00-00 00:00:00'),
(3783, '', '', 'likeproduct', '2020-05-21 10:39:09', '0000-00-00 00:00:00'),
(3784, '', '', 'unlikeproduct', '2020-05-21 10:39:11', '0000-00-00 00:00:00'),
(3785, '', '', 'moreflashes', '2020-05-21 10:39:16', '0000-00-00 00:00:00'),
(3786, '', '', 'likeproduct', '2020-05-21 10:39:19', '0000-00-00 00:00:00'),
(3787, '', '', 'moreflashes', '2020-05-21 10:39:21', '0000-00-00 00:00:00'),
(3788, '', '', 'unlikeproduct', '2020-05-21 10:39:22', '0000-00-00 00:00:00'),
(3789, '', '', 'moreflashes', '2020-05-21 10:42:51', '2000-02-09 00:00:00'),
(3790, '', '', 'likeproduct', '2020-05-21 10:42:54', '0000-00-00 00:00:00'),
(3791, '', '', 'moreflashes', '2020-05-21 10:42:57', '0000-00-00 00:00:00'),
(3792, '', '', 'unlikeproduct', '2020-05-21 10:42:59', '0000-00-00 00:00:00'),
(3793, '', '', 'unlikeproduct', '2020-05-21 10:43:11', '0000-00-00 00:00:00'),
(3794, '', '', 'moreflashes', '2020-05-21 10:43:14', '0000-00-00 00:00:00'),
(3795, '', '', 'likeproduct', '2020-05-21 10:43:17', '0000-00-00 00:00:00'),
(3796, '', '', 'moreflashes', '2020-05-21 10:43:19', '0000-00-00 00:00:00'),
(3797, '', '', 'unlikeproduct', '2020-05-21 10:43:22', '0000-00-00 00:00:00'),
(3798, '', '', 'moreflashes', '2020-05-21 10:43:46', '0000-00-00 00:00:00'),
(3799, '', '', 'likeproduct', '2020-05-21 10:43:48', '0000-00-00 00:00:00'),
(3800, '', '', 'unlikeproduct', '2020-05-21 10:43:50', '0000-00-00 00:00:00'),
(3801, '', '', 'moreflashes', '2020-05-21 10:43:57', '0000-00-00 00:00:00'),
(3802, '', '', 'likeproduct', '2020-05-21 10:45:13', '0000-00-00 00:00:00'),
(3803, '', '', 'unlikeproduct', '2020-05-21 10:46:48', '0000-00-00 00:00:00'),
(3804, '', '', 'moreflashes', '2020-05-21 10:46:51', '0000-00-00 00:00:00'),
(3805, '', '', 'likeproduct', '2020-05-21 10:46:53', '0000-00-00 00:00:00'),
(3806, '', '', 'homePage', '2020-05-21 10:46:59', '0000-00-00 00:00:00'),
(3807, '', '', 'moreflashes', '2020-05-21 10:47:04', '0000-00-00 00:00:00'),
(3808, '', '', 'unlikeproduct', '2020-05-21 10:47:06', '0000-00-00 00:00:00'),
(3809, '', '', 'moreflashes', '2020-05-21 10:48:15', '0000-00-00 00:00:00'),
(3810, '', '', 'homePage', '2020-05-21 10:49:46', '0000-00-00 00:00:00'),
(3811, '', '', 'homePage', '2020-05-21 10:51:03', '0000-00-00 00:00:00'),
(3812, '', '', 'moreflashes', '2020-05-21 10:51:46', '0000-00-00 00:00:00'),
(3813, '', '', 'moreproducts', '2020-05-21 10:51:53', '0000-00-00 00:00:00'),
(3814, '', '', 'unlikeproduct', '2020-05-21 10:51:56', '0000-00-00 00:00:00'),
(3815, '', '', 'moreproducts', '2020-05-21 10:54:18', '0000-00-00 00:00:00'),
(3816, '', '', 'unlikeproduct', '2020-05-21 10:54:21', '0000-00-00 00:00:00'),
(3817, '', '', 'likeproduct', '2020-05-21 10:54:26', '0000-00-00 00:00:00'),
(3818, '', '', 'moreflashes', '2020-05-21 10:55:27', '0000-00-00 00:00:00'),
(3819, '', '', 'moreproducts', '2020-05-21 10:55:33', '0000-00-00 00:00:00'),
(3820, '', '', 'unlikeproduct', '2020-05-21 10:55:37', '0000-00-00 00:00:00'),
(3821, '', '', 'moreproducts', '2020-05-21 10:55:42', '0000-00-00 00:00:00'),
(3822, '', '', 'moreproducts', '2020-05-21 10:55:51', '0000-00-00 00:00:00'),
(3823, '', '', 'unlikeproduct', '2020-05-21 10:55:54', '0000-00-00 00:00:00'),
(3824, '', '', 'unlikeproduct', '2020-05-21 10:55:55', '0000-00-00 00:00:00'),
(3825, '', '', 'homePage', '2020-05-21 10:55:58', '0000-00-00 00:00:00'),
(3826, '', '', 'moreproducts', '2020-05-21 10:56:03', '0000-00-00 00:00:00'),
(3827, '', '', 'likeproduct', '2020-05-21 10:56:06', '0000-00-00 00:00:00'),
(3828, '', '', 'moreproducts', '2020-05-21 10:57:18', '0000-00-00 00:00:00'),
(3829, '', '', 'likeproduct', '2020-05-21 10:57:20', '0000-00-00 00:00:00'),
(3830, '', '', 'moreproducts', '2020-05-21 10:57:26', '0000-00-00 00:00:00'),
(3831, '', '', 'likeproduct', '2020-05-21 10:57:29', '0000-00-00 00:00:00'),
(3832, '', '', 'unlikeproduct', '2020-05-21 10:57:35', '0000-00-00 00:00:00'),
(3833, '', '', 'moreproducts', '2020-05-21 10:57:37', '0000-00-00 00:00:00'),
(3834, '', '', 'likeproduct', '2020-05-21 10:57:40', '0000-00-00 00:00:00'),
(3835, '', '', 'moreproducts', '2020-05-21 10:57:48', '0000-00-00 00:00:00'),
(3836, '', '', 'likeproduct', '2020-05-21 10:57:50', '0000-00-00 00:00:00'),
(3837, '', '', 'moreproducts', '2020-05-21 10:59:52', '2000-01-22 00:00:00'),
(3838, '', '', 'homePage', '2020-05-21 10:59:56', '0000-00-00 00:00:00'),
(3839, '', '', 'moreproducts', '2020-05-21 10:59:59', '0000-00-00 00:00:00'),
(3840, '', '', 'unlikeproduct', '2020-05-21 11:00:01', '0000-00-00 00:00:00'),
(3841, '', '', 'moreproducts', '2020-05-21 11:00:04', '0000-00-00 00:00:00'),
(3842, '', '', 'likeproduct', '2020-05-21 11:00:06', '0000-00-00 00:00:00'),
(3843, '', '', 'unlikeproduct', '2020-05-21 11:00:09', '0000-00-00 00:00:00'),
(3844, '', '', 'moreproducts', '2020-05-21 11:00:10', '0000-00-00 00:00:00'),
(3845, '', '', 'likeproduct', '2020-05-21 11:00:13', '0000-00-00 00:00:00'),
(3846, '', '', 'unlikeproduct', '2020-05-21 11:00:14', '0000-00-00 00:00:00'),
(3847, '', '', 'unlikeproduct', '2020-05-21 11:00:14', '0000-00-00 00:00:00'),
(3848, '', '', 'unlikeproduct', '2020-05-21 11:00:16', '0000-00-00 00:00:00'),
(3849, '', '', 'likeproduct', '2020-05-21 11:00:20', '0000-00-00 00:00:00'),
(3850, '', '', 'moreflashes', '2020-05-21 11:00:24', '0000-00-00 00:00:00'),
(3851, '', '', 'moreflashes', '2020-05-21 11:01:13', '0000-00-00 00:00:00'),
(3852, '', '', 'getallproducts', '2020-05-21 11:09:58', '2000-05-25 00:00:00'),
(3853, '', '', 'homePage', '2020-05-21 11:11:02', '0000-00-00 00:00:00'),
(3854, '', '', 'moreflashes', '2020-05-21 11:11:19', '0000-00-00 00:00:00'),
(3855, '', '', 'unlikeproduct', '2020-05-21 11:11:54', '0000-00-00 00:00:00'),
(3856, '', '', 'getallproducts', '2020-05-21 11:12:03', '0000-00-00 00:00:00'),
(3857, '', '', 'getallproducts', '2020-05-21 11:13:39', '0000-00-00 00:00:00'),
(3858, '', '', 'homePage', '2020-05-21 11:21:19', '0000-00-00 00:00:00'),
(3859, '', '', 'homePage', '2020-05-21 11:21:37', '0000-00-00 00:00:00'),
(3860, '', '', 'getallproducts', '2020-05-21 11:21:41', '0000-00-00 00:00:00'),
(3861, '', '', 'getallproducts', '2020-05-21 11:34:53', '0000-00-00 00:00:00'),
(3862, '', '', 'getallproducts', '2020-05-21 11:39:59', '2000-03-06 00:00:00'),
(3863, '', '', 'getallproducts', '2020-05-21 11:40:31', '0000-00-00 00:00:00'),
(3864, '', '', 'getallproducts', '2020-05-21 11:42:09', '0000-00-00 00:00:00'),
(3865, '', '', 'getallproducts', '2020-05-21 11:42:44', '0000-00-00 00:00:00'),
(3866, '', '', 'getallproducts', '2020-05-21 11:43:01', '0000-00-00 00:00:00'),
(3867, '', '', 'getallproducts', '2020-05-21 11:46:16', '0000-00-00 00:00:00'),
(3868, '', '', 'getallproducts', '2020-05-21 11:46:21', '0000-00-00 00:00:00'),
(3869, '', '', 'getallproducts', '2020-05-21 11:47:31', '0000-00-00 00:00:00'),
(3870, '', '', 'getallproducts', '2020-05-21 11:47:33', '0000-00-00 00:00:00'),
(3871, '', '', 'homePage', '2020-05-21 11:47:49', '0000-00-00 00:00:00'),
(3872, '', '', 'homePage', '2020-05-21 11:50:47', '0000-00-00 00:00:00'),
(3873, '', '', 'homePage', '2020-05-21 11:51:04', '0000-00-00 00:00:00'),
(3874, '', '', 'getallproducts', '2020-05-21 11:52:00', '0000-00-00 00:00:00'),
(3875, '', '', 'getallproducts', '2020-05-21 11:52:21', '0000-00-00 00:00:00'),
(3876, '', '', 'getallproducts', '2020-05-21 11:52:32', '0000-00-00 00:00:00'),
(3877, '', '', 'getallproducts', '2020-05-21 11:57:22', '0000-00-00 00:00:00'),
(3878, '', '', 'getallproducts', '2020-05-21 11:58:55', '0000-00-00 00:00:00'),
(3879, '', '', 'homePage', '2020-05-21 12:12:27', '2000-08-12 00:00:00'),
(3880, '', '', 'homePage', '2020-05-21 12:20:30', '0000-00-00 00:00:00'),
(3881, '', '', 'getallproducts', '2020-05-21 12:20:33', '0000-00-00 00:00:00'),
(3882, '', '', 'getallproducts', '2020-05-21 12:32:09', '0000-00-00 00:00:00'),
(3883, '', '', 'getallproducts', '2020-05-21 12:33:09', '0000-00-00 00:00:00'),
(3884, '', '', 'getallproducts', '2020-05-21 12:33:43', '0000-00-00 00:00:00'),
(3885, '', '', 'getallproducts', '2020-05-21 12:34:09', '0000-00-00 00:00:00'),
(3886, '', '', 'getallproducts', '2020-05-21 12:38:49', '0000-00-00 00:00:00'),
(3887, '', '', 'getallproducts', '2020-05-21 12:42:07', '0000-00-00 00:00:00'),
(3888, '', '', 'getallproducts', '2020-05-21 12:43:43', '0000-00-00 00:00:00'),
(3889, '', '', 'getallproducts', '2020-05-21 13:03:15', '0000-00-00 00:00:00'),
(3890, '', '', 'getallproducts', '2020-05-21 13:03:47', '0000-00-00 00:00:00'),
(3891, '', '', 'getallproducts', '2020-05-21 13:03:49', '0000-00-00 00:00:00'),
(3892, '', '', 'getallproducts', '2020-05-21 13:04:49', '0000-00-00 00:00:00'),
(3893, '', '', 'getallproducts', '2020-05-21 13:05:15', '0000-00-00 00:00:00'),
(3894, '', '', 'getallproducts', '2020-05-21 13:05:19', '0000-00-00 00:00:00'),
(3895, '', '', 'getallproducts', '2020-05-21 13:05:21', '0000-00-00 00:00:00'),
(3896, '', '', 'getallproducts', '2020-05-21 13:05:24', '0000-00-00 00:00:00'),
(3897, '', '', 'getallproducts', '2020-05-21 13:05:27', '0000-00-00 00:00:00'),
(3898, '', '', 'getallproducts', '2020-05-21 13:05:42', '0000-00-00 00:00:00'),
(3899, '', '', 'getallproducts', '2020-05-21 13:05:47', '0000-00-00 00:00:00'),
(3900, '', '', 'homePage', '2020-05-21 13:09:33', '2000-02-26 00:00:00'),
(3901, '', '', 'getallproducts', '2020-05-21 13:09:37', '0000-00-00 00:00:00'),
(3902, '', '', 'getallproducts', '2020-05-21 13:09:40', '0000-00-00 00:00:00'),
(3903, '', '', 'getallproducts', '2020-05-21 13:10:15', '0000-00-00 00:00:00'),
(3904, '', '', 'getallproducts', '2020-05-21 13:10:20', '0000-00-00 00:00:00'),
(3905, '', '', 'getallproducts', '2020-05-21 13:11:04', '0000-00-00 00:00:00'),
(3906, '', '', 'getallproducts', '2020-05-21 13:11:21', '0000-00-00 00:00:00'),
(3907, '', '', 'getallproducts', '2020-05-21 13:12:08', '0000-00-00 00:00:00'),
(3908, '', '', 'getallproducts', '2020-05-21 13:12:58', '0000-00-00 00:00:00'),
(3909, '', '', 'getallproducts', '2020-05-21 13:13:01', '0000-00-00 00:00:00'),
(3910, '', '', 'getallproducts', '2020-05-21 13:13:04', '0000-00-00 00:00:00'),
(3911, '', '', 'getallproducts', '2020-05-21 13:13:07', '0000-00-00 00:00:00'),
(3912, '', '', 'getallproducts', '2020-05-21 13:13:09', '0000-00-00 00:00:00'),
(3913, '', '', 'getallproducts', '2020-05-21 13:13:09', '0000-00-00 00:00:00'),
(3914, '', '', 'getallproducts', '2020-05-21 13:13:13', '0000-00-00 00:00:00'),
(3915, '', '', 'getallproducts', '2020-05-21 13:13:14', '0000-00-00 00:00:00'),
(3916, '', '', 'getallproducts', '2020-05-21 13:13:16', '0000-00-00 00:00:00'),
(3917, '', '', 'getallproducts', '2020-05-21 13:13:19', '0000-00-00 00:00:00'),
(3918, '', '', 'getallproducts', '2020-05-21 13:13:21', '0000-00-00 00:00:00'),
(3919, '', '', 'getallproducts', '2020-05-21 13:13:24', '0000-00-00 00:00:00'),
(3920, '', '', 'getallproducts', '2020-05-21 13:13:24', '0000-00-00 00:00:00'),
(3921, '', '', 'getallproducts', '2020-05-21 13:13:25', '0000-00-00 00:00:00'),
(3922, '', '', 'getallproducts', '2020-05-21 13:13:25', '0000-00-00 00:00:00'),
(3923, '', '', 'getallproducts', '2020-05-21 13:13:26', '0000-00-00 00:00:00'),
(3924, '', '', 'getallproducts', '2020-05-21 13:13:28', '0000-00-00 00:00:00'),
(3925, '', '', 'getallproducts', '2020-05-21 13:13:31', '0000-00-00 00:00:00'),
(3926, '', '', 'getallproducts', '2020-05-21 13:13:42', '0000-00-00 00:00:00'),
(3927, '', '', 'getallproducts', '2020-05-21 13:13:49', '0000-00-00 00:00:00'),
(3928, '', '', 'getallproducts', '2020-05-21 13:13:54', '0000-00-00 00:00:00'),
(3929, '', '', 'getallproducts', '2020-05-21 13:14:00', '0000-00-00 00:00:00'),
(3930, '', '', 'getallproducts', '2020-05-21 13:14:04', '0000-00-00 00:00:00'),
(3931, '', '', 'getallproducts', '2020-05-21 13:14:09', '0000-00-00 00:00:00'),
(3932, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-21 13:15:54', '0000-00-00 00:00:00'),
(3933, '', '', 'getallproducts', '2020-05-21 13:19:26', '2000-03-17 00:00:00'),
(3934, '', '', 'getallproducts', '2020-05-21 13:19:34', '0000-00-00 00:00:00'),
(3935, '', '', 'getallproducts', '2020-05-21 13:19:52', '0000-00-00 00:00:00'),
(3936, '', '', 'likeproduct', '2020-05-21 13:20:05', '0000-00-00 00:00:00'),
(3937, '', '', 'getallproducts', '2020-05-21 13:20:14', '0000-00-00 00:00:00'),
(3938, '', '', 'likeproduct', '2020-05-21 13:20:31', '0000-00-00 00:00:00'),
(3939, '', '', 'getallproducts', '2020-05-21 13:20:34', '0000-00-00 00:00:00'),
(3940, '', '', 'getallproducts', '2020-05-21 13:20:38', '0000-00-00 00:00:00'),
(3941, '', '', 'getallproducts', '2020-05-21 13:20:41', '0000-00-00 00:00:00'),
(3942, '', '', 'unlikeproduct', '2020-05-21 13:20:47', '0000-00-00 00:00:00'),
(3943, '', '', 'moreflashes', '2020-05-21 13:20:49', '0000-00-00 00:00:00'),
(3944, '', '', 'getallproducts', '2020-05-21 13:20:51', '0000-00-00 00:00:00'),
(3945, '', '', 'getallproducts', '2020-05-21 13:20:56', '0000-00-00 00:00:00'),
(3946, '', '', 'getallproducts', '2020-05-21 13:21:04', '0000-00-00 00:00:00'),
(3947, '', '', 'getallproducts', '2020-05-21 13:21:08', '0000-00-00 00:00:00'),
(3948, '', '', 'getallproducts', '2020-05-21 13:21:10', '0000-00-00 00:00:00'),
(3949, '', '', 'getallproducts', '2020-05-21 13:21:13', '0000-00-00 00:00:00'),
(3950, '', '', 'getallproducts', '2020-05-21 13:21:13', '0000-00-00 00:00:00'),
(3951, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-21 13:24:20', '2000-05-06 00:00:00'),
(3952, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-21 13:24:28', '0000-00-00 00:00:00'),
(3953, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-21 13:30:35', '0000-00-00 00:00:00'),
(3954, '', '', 'homePage', '2020-05-21 13:30:59', '0000-00-00 00:00:00'),
(3955, '', '', 'getallproducts', '2020-05-21 13:31:05', '0000-00-00 00:00:00'),
(3956, '', '', 'getallproducts', '2020-05-21 13:31:10', '0000-00-00 00:00:00'),
(3957, '', '', 'getallproducts', '2020-05-21 13:31:11', '0000-00-00 00:00:00'),
(3958, '', '', 'getallproducts', '2020-05-21 13:31:16', '0000-00-00 00:00:00'),
(3959, '', '', 'homePage', '2020-05-21 13:31:24', '0000-00-00 00:00:00'),
(3960, '', '', 'getallproducts', '2020-05-21 13:31:55', '0000-00-00 00:00:00'),
(3961, '', '', 'homePage', '2020-05-21 13:39:39', '0000-00-00 00:00:00'),
(3962, '', '', 'homePage', '2020-05-21 13:39:54', '0000-00-00 00:00:00'),
(3963, '', '', 'getallproducts', '2020-05-21 13:39:56', '0000-00-00 00:00:00'),
(3964, '', '', 'moreflashes', '2020-05-21 13:48:25', '2000-05-09 00:00:00'),
(3965, '', '', 'getallproducts', '2020-05-21 13:48:29', '0000-00-00 00:00:00'),
(3966, '', '', 'getallproducts', '2020-05-21 13:48:34', '0000-00-00 00:00:00'),
(3967, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-21 13:50:36', '2000-12-01 00:00:00'),
(3968, '', '', 'getallproducts', '2020-05-21 13:53:38', '2000-03-04 00:00:00'),
(3969, '', '', 'getallproducts', '2020-05-21 13:53:40', '0000-00-00 00:00:00'),
(3970, '', '', 'getallproducts', '2020-05-21 13:53:44', '0000-00-00 00:00:00'),
(3971, '', '', 'unlikeproduct', '2020-05-21 13:54:06', '0000-00-00 00:00:00'),
(3972, '', '', 'likeproduct', '2020-05-21 13:54:29', '0000-00-00 00:00:00'),
(3973, '', '', 'likeproduct', '2020-05-21 13:54:32', '0000-00-00 00:00:00'),
(3974, '', '', 'unlikeproduct', '2020-05-21 13:54:35', '0000-00-00 00:00:00'),
(3975, '', '', 'moreflashes', '2020-05-21 13:54:41', '0000-00-00 00:00:00'),
(3976, '', '', 'unlikeproduct', '2020-05-21 13:54:43', '0000-00-00 00:00:00'),
(3977, '', '', 'getallproducts', '2020-05-21 13:54:51', '0000-00-00 00:00:00'),
(3978, '', '', 'getallproducts', '2020-05-21 13:54:52', '0000-00-00 00:00:00'),
(3979, '', '', 'getallproducts', '2020-05-21 13:54:55', '0000-00-00 00:00:00'),
(3980, '', '', 'getallproducts', '2020-05-21 13:55:00', '0000-00-00 00:00:00'),
(3981, '', '', 'getallproducts', '2020-05-21 13:55:01', '0000-00-00 00:00:00'),
(3982, '', '', 'getallproducts', '2020-05-21 13:55:03', '0000-00-00 00:00:00'),
(3983, '', '', 'getallproducts', '2020-05-21 13:55:18', '0000-00-00 00:00:00'),
(3984, '', '', 'getallproducts', '2020-05-21 13:55:21', '0000-00-00 00:00:00'),
(3985, '', '', 'getallproducts', '2020-05-21 13:55:25', '0000-00-00 00:00:00'),
(3986, '', '', 'getallproducts', '2020-05-21 13:55:34', '0000-00-00 00:00:00'),
(3987, '', '', 'homePage', '2020-05-21 13:55:41', '0000-00-00 00:00:00'),
(3988, '', '', 'homePage', '2020-05-21 13:55:45', '0000-00-00 00:00:00'),
(3989, '', '', 'homePage', '2020-05-21 13:55:47', '0000-00-00 00:00:00'),
(3990, '', '', 'getallproducts', '2020-05-21 13:56:29', '0000-00-00 00:00:00'),
(3991, '', '', 'getallproducts', '2020-05-21 14:17:39', '0000-00-00 00:00:00'),
(3992, '', '', 'getallproducts', '2020-05-21 14:17:41', '0000-00-00 00:00:00'),
(3993, '', '', 'getallproducts', '2020-05-21 14:17:42', '0000-00-00 00:00:00'),
(3994, '', '', 'getallproducts', '2020-05-21 14:17:45', '0000-00-00 00:00:00'),
(3995, '', '', 'getallproducts', '2020-05-21 14:17:45', '0000-00-00 00:00:00'),
(3996, '', '', 'getallproducts', '2020-05-21 14:17:48', '0000-00-00 00:00:00'),
(3997, '', '', 'getallproducts', '2020-05-21 14:17:48', '0000-00-00 00:00:00'),
(3998, '', '', 'getallproducts', '2020-05-21 14:32:32', '0000-00-00 00:00:00'),
(3999, '', '', 'getallproducts', '2020-05-21 14:32:36', '0000-00-00 00:00:00'),
(4000, '', '', 'getallproducts', '2020-05-21 14:32:40', '0000-00-00 00:00:00'),
(4001, '', '', 'getallproducts', '2020-05-21 14:32:41', '0000-00-00 00:00:00'),
(4002, '', '', 'getallproducts', '2020-05-21 14:32:46', '0000-00-00 00:00:00'),
(4003, '', '', 'getallproducts', '2020-05-21 14:32:53', '0000-00-00 00:00:00'),
(4004, '', '', 'getallproducts', '2020-05-21 14:32:55', '0000-00-00 00:00:00'),
(4005, '', '', 'getallproducts', '2020-05-21 14:33:02', '0000-00-00 00:00:00'),
(4006, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-21 14:36:48', '0000-00-00 00:00:00'),
(4007, '', '', 'homePage', '2020-05-22 01:54:45', '2004-09-03 00:00:00'),
(4008, '', '', 'homePage', '2020-05-22 01:54:45', '2004-09-03 00:00:00'),
(4009, '', '', 'getallproducts', '2020-05-22 01:54:59', '0000-00-00 00:00:00'),
(4010, '', '', 'getallproducts', '2020-05-22 01:54:59', '0000-00-00 00:00:00'),
(4011, '', '', 'getallproducts', '2020-05-22 01:55:01', '0000-00-00 00:00:00'),
(4012, '', '', 'getallproducts', '2020-05-22 01:55:03', '0000-00-00 00:00:00'),
(4013, '', '', 'getallproducts', '2020-05-22 01:56:06', '0000-00-00 00:00:00'),
(4014, '', '', 'getallproducts', '2020-05-22 01:56:06', '0000-00-00 00:00:00'),
(4015, '', '', 'getallproducts', '2020-05-22 01:56:06', '0000-00-00 00:00:00'),
(4016, '', '', 'getallproducts', '2020-05-22 01:56:07', '0000-00-00 00:00:00'),
(4017, '', '', 'getallproducts', '2020-05-22 01:56:08', '0000-00-00 00:00:00'),
(4018, '', '', 'getallproducts', '2020-05-22 01:56:12', '0000-00-00 00:00:00'),
(4019, '', '', 'getallproducts', '2020-05-22 01:56:15', '0000-00-00 00:00:00'),
(4020, '', '', 'getallproducts', '2020-05-22 01:56:19', '0000-00-00 00:00:00'),
(4021, '', '', 'getallproducts', '2020-05-22 01:56:19', '0000-00-00 00:00:00'),
(4022, '', '', 'getallproducts', '2020-05-22 01:56:20', '0000-00-00 00:00:00'),
(4023, '', '', 'getallproducts', '2020-05-22 01:56:28', '0000-00-00 00:00:00'),
(4024, '', '', 'getallproducts', '2020-05-22 01:56:28', '0000-00-00 00:00:00'),
(4025, '', '', 'getallproducts', '2020-05-22 01:56:28', '0000-00-00 00:00:00'),
(4026, '', '', 'getallproducts', '2020-05-22 01:56:35', '0000-00-00 00:00:00'),
(4027, '', '', 'getallproducts', '2020-05-22 01:56:45', '0000-00-00 00:00:00'),
(4028, '', '', 'getallproducts', '2020-05-22 01:56:48', '0000-00-00 00:00:00'),
(4029, '', '', 'getallproducts', '2020-05-22 01:56:50', '0000-00-00 00:00:00'),
(4030, '', '', 'homePage', '2020-05-22 01:57:10', '0000-00-00 00:00:00'),
(4031, '', '', 'getallproducts', '2020-05-22 01:57:17', '0000-00-00 00:00:00'),
(4032, '', '', 'getallproducts', '2020-05-22 01:57:24', '0000-00-00 00:00:00'),
(4033, '', '', 'getallproducts', '2020-05-22 01:57:27', '0000-00-00 00:00:00'),
(4034, '', '', 'getallproducts', '2020-05-22 01:58:42', '0000-00-00 00:00:00'),
(4035, '', '', 'getallproducts', '2020-05-22 01:58:42', '0000-00-00 00:00:00'),
(4036, '', '', 'getallproducts', '2020-05-22 01:58:43', '0000-00-00 00:00:00'),
(4037, '', '', 'getallproducts', '2020-05-22 01:58:49', '0000-00-00 00:00:00'),
(4038, '', '', 'getallproducts', '2020-05-22 01:58:53', '0000-00-00 00:00:00'),
(4039, '', '', 'homePage', '2020-05-22 01:59:06', '0000-00-00 00:00:00'),
(4040, '', '', 'homePage', '2020-05-22 01:59:07', '0000-00-00 00:00:00'),
(4041, '', '', 'homePage', '2020-05-22 01:59:10', '0000-00-00 00:00:00'),
(4042, '', '', 'homePage', '2020-05-22 01:59:12', '0000-00-00 00:00:00'),
(4043, '', '', 'homePage', '2020-05-22 01:59:12', '0000-00-00 00:00:00'),
(4044, '', '', 'homePage', '2020-05-22 01:59:15', '0000-00-00 00:00:00'),
(4045, '', '', 'homePage', '2020-05-22 02:00:33', '0000-00-00 00:00:00'),
(4046, '', '', 'getallproducts', '2020-05-22 02:00:37', '0000-00-00 00:00:00'),
(4047, '', '', 'getallproducts', '2020-05-22 02:00:40', '0000-00-00 00:00:00'),
(4048, '', '', 'getallproducts', '2020-05-22 02:00:43', '0000-00-00 00:00:00'),
(4049, '', '', 'getallproducts', '2020-05-22 02:00:46', '0000-00-00 00:00:00'),
(4050, '', '', 'getallproducts', '2020-05-22 02:00:51', '0000-00-00 00:00:00'),
(4051, '', '', 'getallproducts', '2020-05-22 02:00:55', '0000-00-00 00:00:00'),
(4052, '', '', 'getallproducts', '2020-05-22 02:00:58', '0000-00-00 00:00:00'),
(4053, '', '', 'getallproducts', '2020-05-22 02:01:01', '0000-00-00 00:00:00'),
(4054, '', '', 'getallproducts', '2020-05-22 02:01:02', '0000-00-00 00:00:00'),
(4055, '', '', 'getallproducts', '2020-05-22 02:01:04', '0000-00-00 00:00:00'),
(4056, '', '', 'getallproducts', '2020-05-22 02:01:07', '0000-00-00 00:00:00'),
(4057, '', '', 'getallproducts', '2020-05-22 02:01:09', '0000-00-00 00:00:00'),
(4058, '', '', 'getallproducts', '2020-05-22 02:01:10', '0000-00-00 00:00:00'),
(4059, '', '', 'getallproducts', '2020-05-22 02:01:10', '0000-00-00 00:00:00'),
(4060, '', '', 'getallproducts', '2020-05-22 02:01:10', '0000-00-00 00:00:00'),
(4061, '', '', 'getallproducts', '2020-05-22 02:01:10', '0000-00-00 00:00:00'),
(4062, '', '', 'getallproducts', '2020-05-22 02:01:10', '0000-00-00 00:00:00'),
(4063, '', '', 'getallproducts', '2020-05-22 02:01:24', '0000-00-00 00:00:00'),
(4064, '', '', 'getallproducts', '2020-05-22 02:01:24', '0000-00-00 00:00:00'),
(4065, '', '', 'getallproducts', '2020-05-22 02:01:24', '0000-00-00 00:00:00'),
(4066, '', '', 'getallproducts', '2020-05-22 02:01:24', '0000-00-00 00:00:00'),
(4067, '', '', 'getallproducts', '2020-05-22 02:01:25', '0000-00-00 00:00:00'),
(4068, '', '', 'getallproducts', '2020-05-22 02:01:25', '0000-00-00 00:00:00'),
(4069, '', '', 'getallproducts', '2020-05-22 02:01:33', '0000-00-00 00:00:00'),
(4070, '', '', 'getallproducts', '2020-05-22 02:01:33', '0000-00-00 00:00:00'),
(4071, '', '', 'getallproducts', '2020-05-22 02:01:33', '0000-00-00 00:00:00'),
(4072, '', '', 'getallproducts', '2020-05-22 02:01:33', '0000-00-00 00:00:00'),
(4073, '', '', 'getallproducts', '2020-05-22 02:01:33', '0000-00-00 00:00:00'),
(4074, '', '', 'getallproducts', '2020-05-22 02:01:34', '0000-00-00 00:00:00'),
(4075, '', '', 'getallproducts', '2020-05-22 02:01:48', '0000-00-00 00:00:00'),
(4076, '', '', 'getallproducts', '2020-05-22 02:01:48', '0000-00-00 00:00:00'),
(4077, '', '', 'getallproducts', '2020-05-22 02:01:48', '0000-00-00 00:00:00'),
(4078, '', '', 'getallproducts', '2020-05-22 02:10:53', '0000-00-00 00:00:00'),
(4079, '', '', 'getallproducts', '2020-05-22 02:10:57', '0000-00-00 00:00:00'),
(4080, '', '', 'getallproducts', '2020-05-22 02:11:00', '0000-00-00 00:00:00'),
(4081, '', '', 'getallproducts', '2020-05-22 02:11:02', '0000-00-00 00:00:00'),
(4082, '', '', 'getallproducts', '2020-05-22 02:11:08', '0000-00-00 00:00:00'),
(4083, '', '', 'getallproducts', '2020-05-22 02:11:10', '0000-00-00 00:00:00'),
(4084, '', '', 'getallproducts', '2020-05-22 02:11:13', '0000-00-00 00:00:00'),
(4085, '', '', 'getallproducts', '2020-05-22 02:11:14', '0000-00-00 00:00:00'),
(4086, '', '', 'getallproducts', '2020-05-22 02:11:14', '0000-00-00 00:00:00'),
(4087, '', '', 'getallproducts', '2020-05-22 02:11:21', '0000-00-00 00:00:00'),
(4088, '', '', 'getallproducts', '2020-05-22 02:11:41', '0000-00-00 00:00:00'),
(4089, '', '', 'getallproducts', '2020-05-22 02:11:43', '0000-00-00 00:00:00'),
(4090, '', '', 'getallproducts', '2020-05-22 02:11:43', '0000-00-00 00:00:00'),
(4091, '', '', 'getallproducts', '2020-05-22 02:11:44', '0000-00-00 00:00:00'),
(4092, '', '', 'homePage', '2020-05-22 02:14:12', '0000-00-00 00:00:00'),
(4093, '', '', 'homePage', '2020-05-22 02:15:30', '0000-00-00 00:00:00'),
(4094, '', '', 'getallproducts', '2020-05-22 02:16:19', '0000-00-00 00:00:00'),
(4095, '', '', 'getallproducts', '2020-05-22 02:16:22', '0000-00-00 00:00:00'),
(4096, '', '', 'getallproducts', '2020-05-22 02:16:22', '0000-00-00 00:00:00'),
(4097, '', '', 'getallproducts', '2020-05-22 02:16:22', '0000-00-00 00:00:00'),
(4098, '', '', 'getallproducts', '2020-05-22 02:16:32', '0000-00-00 00:00:00'),
(4099, '', '', 'getallproducts', '2020-05-22 02:16:33', '0000-00-00 00:00:00'),
(4100, '', '', 'getallproducts', '2020-05-22 02:16:33', '0000-00-00 00:00:00'),
(4101, '', '', 'getallproducts', '2020-05-22 02:16:37', '0000-00-00 00:00:00'),
(4102, '', '', 'getallproducts', '2020-05-22 02:26:15', '0000-00-00 00:00:00'),
(4103, '', '', 'getallproducts', '2020-05-22 02:26:15', '0000-00-00 00:00:00'),
(4104, '', '', 'getallproducts', '2020-05-22 02:26:15', '0000-00-00 00:00:00'),
(4105, '', '', 'homePage', '2020-05-22 02:26:35', '0000-00-00 00:00:00'),
(4106, '', '', 'getallproducts', '2020-05-22 02:26:55', '0000-00-00 00:00:00'),
(4107, '', '', 'getallproducts', '2020-05-22 02:27:11', '0000-00-00 00:00:00'),
(4108, '', '', 'getallproducts', '2020-05-22 02:27:11', '0000-00-00 00:00:00'),
(4109, '', '', 'getallproducts', '2020-05-22 02:27:11', '0000-00-00 00:00:00'),
(4110, '', '', 'getallproducts', '2020-05-22 02:27:33', '0000-00-00 00:00:00'),
(4111, '', '', 'getallproducts', '2020-05-22 02:27:42', '0000-00-00 00:00:00'),
(4112, '', '', 'getallproducts', '2020-05-22 02:28:40', '0000-00-00 00:00:00'),
(4113, '', '', 'getallproducts', '2020-05-22 02:28:45', '0000-00-00 00:00:00'),
(4114, '', '', 'getallproducts', '2020-05-22 02:28:49', '0000-00-00 00:00:00'),
(4115, '', '', 'getallproducts', '2020-05-22 02:28:51', '0000-00-00 00:00:00'),
(4116, '', '', 'getallproducts', '2020-05-22 02:28:52', '0000-00-00 00:00:00'),
(4117, '', '', 'getallproducts', '2020-05-22 02:28:54', '0000-00-00 00:00:00'),
(4118, '', '', 'getallproducts', '2020-05-22 02:28:54', '0000-00-00 00:00:00'),
(4119, '', '', 'getallproducts', '2020-05-22 02:28:55', '0000-00-00 00:00:00'),
(4120, '', '', 'getallproducts', '2020-05-22 02:29:08', '0000-00-00 00:00:00'),
(4121, '', '', 'getallproducts', '2020-05-22 02:29:08', '0000-00-00 00:00:00'),
(4122, '', '', 'getallproducts', '2020-05-22 02:29:12', '0000-00-00 00:00:00'),
(4123, '', '', 'getallproducts', '2020-05-22 02:29:15', '0000-00-00 00:00:00'),
(4124, '', '', 'getallproducts', '2020-05-22 02:29:38', '0000-00-00 00:00:00'),
(4125, '', '', 'getallproducts', '2020-05-22 02:29:38', '0000-00-00 00:00:00'),
(4126, '', '', 'getallproducts', '2020-05-22 02:29:41', '0000-00-00 00:00:00'),
(4127, '', '', 'getallproducts', '2020-05-22 02:29:41', '0000-00-00 00:00:00'),
(4128, '', '', 'getallproducts', '2020-05-22 02:30:14', '0000-00-00 00:00:00'),
(4129, '', '', 'getallproducts', '2020-05-22 02:30:14', '0000-00-00 00:00:00'),
(4130, '', '', 'getallproducts', '2020-05-22 02:30:15', '0000-00-00 00:00:00'),
(4131, '', '', 'getallproducts', '2020-05-22 02:30:22', '0000-00-00 00:00:00'),
(4132, '', '', 'getallproducts', '2020-05-22 02:30:24', '0000-00-00 00:00:00'),
(4133, '', '', 'getallproducts', '2020-05-22 02:30:27', '0000-00-00 00:00:00'),
(4134, '', '', 'getallproducts', '2020-05-22 02:30:27', '0000-00-00 00:00:00'),
(4135, '', '', 'getallproducts', '2020-05-22 02:30:27', '0000-00-00 00:00:00'),
(4136, '', '', 'getallproducts', '2020-05-22 02:30:29', '0000-00-00 00:00:00'),
(4137, '', '', 'getallproducts', '2020-05-22 02:30:29', '0000-00-00 00:00:00'),
(4138, '', '', 'getallproducts', '2020-05-22 02:30:30', '0000-00-00 00:00:00'),
(4139, '', '', 'getallproducts', '2020-05-22 02:30:54', '0000-00-00 00:00:00'),
(4140, '', '', 'getallproducts', '2020-05-22 02:30:54', '0000-00-00 00:00:00'),
(4141, '', '', 'getallproducts', '2020-05-22 02:30:59', '0000-00-00 00:00:00'),
(4142, '', '', 'getallproducts', '2020-05-22 02:31:02', '0000-00-00 00:00:00'),
(4143, '', '', 'getallproducts', '2020-05-22 02:31:03', '0000-00-00 00:00:00'),
(4144, '', '', 'getallproducts', '2020-05-22 02:31:04', '0000-00-00 00:00:00'),
(4145, '', '', 'getallproducts', '2020-05-22 02:31:08', '0000-00-00 00:00:00'),
(4146, '', '', 'getallproducts', '2020-05-22 02:31:08', '0000-00-00 00:00:00'),
(4147, '', '', 'getallproducts', '2020-05-22 02:31:08', '0000-00-00 00:00:00'),
(4148, '', '', 'homePage', '2020-05-22 02:32:21', '0000-00-00 00:00:00'),
(4149, '', '', 'getallproducts', '2020-05-22 02:32:34', '0000-00-00 00:00:00'),
(4150, '', '', 'getallproducts', '2020-05-22 02:32:40', '0000-00-00 00:00:00'),
(4151, '', '', 'getallproducts', '2020-05-22 02:32:40', '0000-00-00 00:00:00'),
(4152, '', '', 'getallproducts', '2020-05-22 02:32:40', '0000-00-00 00:00:00'),
(4153, '', '', 'getallproducts', '2020-05-22 02:32:45', '0000-00-00 00:00:00'),
(4154, '', '', 'getallproducts', '2020-05-22 02:32:45', '0000-00-00 00:00:00'),
(4155, '', '', 'getallproducts', '2020-05-22 02:32:45', '0000-00-00 00:00:00'),
(4156, '', '', 'getallproducts', '2020-05-22 02:32:49', '0000-00-00 00:00:00'),
(4157, '', '', 'getallproducts', '2020-05-22 02:32:49', '0000-00-00 00:00:00'),
(4158, '', '', 'getallproducts', '2020-05-22 02:32:50', '0000-00-00 00:00:00'),
(4159, '', '', 'getallproducts', '2020-05-22 02:32:52', '0000-00-00 00:00:00'),
(4160, '', '', 'getallproducts', '2020-05-22 02:32:52', '0000-00-00 00:00:00'),
(4161, '', '', 'getallproducts', '2020-05-22 02:32:52', '0000-00-00 00:00:00'),
(4162, '', '', 'getallproducts', '2020-05-22 02:32:57', '0000-00-00 00:00:00'),
(4163, '', '', 'getallproducts', '2020-05-22 02:33:01', '0000-00-00 00:00:00'),
(4164, '', '', 'getallproducts', '2020-05-22 02:33:04', '0000-00-00 00:00:00'),
(4165, '', '', 'getallproducts', '2020-05-22 02:33:04', '0000-00-00 00:00:00'),
(4166, '', '', 'getallproducts', '2020-05-22 02:33:05', '0000-00-00 00:00:00'),
(4167, '', '', 'getallproducts', '2020-05-22 02:33:08', '0000-00-00 00:00:00'),
(4168, '', '', 'getallproducts', '2020-05-22 02:33:09', '0000-00-00 00:00:00'),
(4169, '', '', 'getallproducts', '2020-05-22 02:33:09', '0000-00-00 00:00:00'),
(4170, '', '', 'getallproducts', '2020-05-22 02:33:15', '0000-00-00 00:00:00'),
(4171, '', '', 'getallproducts', '2020-05-22 02:33:18', '0000-00-00 00:00:00'),
(4172, '', '', 'getallproducts', '2020-05-22 02:33:20', '0000-00-00 00:00:00'),
(4173, '', '', 'getallproducts', '2020-05-22 02:33:22', '0000-00-00 00:00:00'),
(4174, '', '', 'getallproducts', '2020-05-22 02:33:23', '0000-00-00 00:00:00'),
(4175, '', '', 'getallproducts', '2020-05-22 02:33:25', '0000-00-00 00:00:00'),
(4176, '', '', 'getallproducts', '2020-05-22 02:33:25', '0000-00-00 00:00:00'),
(4177, '', '', 'getallproducts', '2020-05-22 02:33:29', '0000-00-00 00:00:00'),
(4178, '', '', 'getallproducts', '2020-05-22 02:33:30', '0000-00-00 00:00:00'),
(4179, '', '', 'getallproducts', '2020-05-22 02:33:31', '0000-00-00 00:00:00'),
(4180, '', '', 'getallproducts', '2020-05-22 02:33:32', '0000-00-00 00:00:00'),
(4181, '', '', 'getallproducts', '2020-05-22 02:33:32', '0000-00-00 00:00:00'),
(4182, '', '', 'getallproducts', '2020-05-22 02:33:35', '0000-00-00 00:00:00'),
(4183, '', '', 'getallproducts', '2020-05-22 02:33:35', '0000-00-00 00:00:00'),
(4184, '', '', 'getallproducts', '2020-05-22 02:33:35', '0000-00-00 00:00:00'),
(4185, '', '', 'getallproducts', '2020-05-22 02:33:39', '0000-00-00 00:00:00'),
(4186, '', '', 'getallproducts', '2020-05-22 02:33:39', '0000-00-00 00:00:00'),
(4187, '', '', 'getallproducts', '2020-05-22 02:33:40', '0000-00-00 00:00:00'),
(4188, '', '', 'getallproducts', '2020-05-22 02:33:40', '0000-00-00 00:00:00'),
(4189, '', '', 'getallproducts', '2020-05-22 02:33:40', '0000-00-00 00:00:00'),
(4190, '', '', 'getallproducts', '2020-05-22 02:37:46', '0000-00-00 00:00:00'),
(4191, '', '', 'getallproducts', '2020-05-22 02:37:46', '0000-00-00 00:00:00'),
(4192, '', '', 'getallproducts', '2020-05-22 02:37:46', '0000-00-00 00:00:00'),
(4193, '', '', 'getallproducts', '2020-05-22 02:44:46', '2000-04-20 00:00:00'),
(4194, '', '', 'getallproducts', '2020-05-22 02:44:46', '2000-04-20 00:00:00'),
(4195, '', '', 'getallproducts', '2020-05-22 02:44:46', '0000-00-00 00:00:00'),
(4196, '', '', 'getallproducts', '2020-05-22 02:44:52', '0000-00-00 00:00:00'),
(4197, '', '', 'getallproducts', '2020-05-22 02:44:52', '0000-00-00 00:00:00'),
(4198, '', '', 'getallproducts', '2020-05-22 02:44:55', '0000-00-00 00:00:00'),
(4199, '', '', 'getallproducts', '2020-05-22 02:44:56', '0000-00-00 00:00:00'),
(4200, '', '', 'getallproducts', '2020-05-22 02:44:57', '0000-00-00 00:00:00'),
(4201, '', '', 'getallproducts', '2020-05-22 02:44:58', '0000-00-00 00:00:00'),
(4202, '', '', 'getallproducts', '2020-05-22 02:45:00', '0000-00-00 00:00:00'),
(4203, '', '', 'getallproducts', '2020-05-22 02:45:02', '0000-00-00 00:00:00'),
(4204, '', '', 'getallproducts', '2020-05-22 02:45:05', '0000-00-00 00:00:00'),
(4205, '', '', 'getallproducts', '2020-05-22 02:45:06', '0000-00-00 00:00:00'),
(4206, '', '', 'getallproducts', '2020-05-22 02:45:13', '0000-00-00 00:00:00'),
(4207, '', '', 'getallproducts', '2020-05-22 02:45:15', '0000-00-00 00:00:00'),
(4208, '', '', 'getallproducts', '2020-05-22 02:45:19', '0000-00-00 00:00:00'),
(4209, '', '', 'getallproducts', '2020-05-22 02:45:22', '0000-00-00 00:00:00'),
(4210, '', '', 'getallproducts', '2020-05-22 02:45:25', '0000-00-00 00:00:00'),
(4211, '', '', 'getallproducts', '2020-05-22 02:45:30', '0000-00-00 00:00:00'),
(4212, '', '', 'getallproducts', '2020-05-22 02:45:33', '0000-00-00 00:00:00'),
(4213, '', '', 'getallproducts', '2020-05-22 02:46:22', '0000-00-00 00:00:00'),
(4214, '', '', 'getallproducts', '2020-05-22 02:46:38', '0000-00-00 00:00:00'),
(4215, '', '', 'getallproducts', '2020-05-22 02:46:49', '0000-00-00 00:00:00'),
(4216, '', '', 'getallproducts', '2020-05-22 02:46:52', '0000-00-00 00:00:00'),
(4217, '', '', 'getallproducts', '2020-05-22 02:46:57', '0000-00-00 00:00:00'),
(4218, '', '', 'getallproducts', '2020-05-22 02:49:42', '0000-00-00 00:00:00'),
(4219, '', '', 'getallproducts', '2020-05-22 02:49:44', '0000-00-00 00:00:00'),
(4220, '', '', 'getallproducts', '2020-05-22 02:49:48', '0000-00-00 00:00:00'),
(4221, '', '', 'getallproducts', '2020-05-22 02:49:50', '0000-00-00 00:00:00'),
(4222, '', '', 'getallproducts', '2020-05-22 02:49:55', '0000-00-00 00:00:00'),
(4223, '', '', 'getallproducts', '2020-05-22 02:50:12', '0000-00-00 00:00:00'),
(4224, '', '', 'getallproducts', '2020-05-22 02:50:13', '0000-00-00 00:00:00'),
(4225, '', '', 'getallproducts', '2020-05-22 02:50:18', '0000-00-00 00:00:00'),
(4226, '', '', 'getallproducts', '2020-05-22 02:50:34', '0000-00-00 00:00:00'),
(4227, '', '', 'getallproducts', '2020-05-22 02:50:38', '0000-00-00 00:00:00'),
(4228, '', '', 'getallproducts', '2020-05-22 02:50:43', '0000-00-00 00:00:00'),
(4229, '', '', 'getallproducts', '2020-05-22 02:51:04', '0000-00-00 00:00:00'),
(4230, '', '', 'getallproducts', '2020-05-22 02:51:05', '0000-00-00 00:00:00'),
(4231, '', '', 'getallproducts', '2020-05-22 02:51:45', '0000-00-00 00:00:00'),
(4232, '', '', 'getallproducts', '2020-05-22 02:51:58', '0000-00-00 00:00:00'),
(4233, '', '', 'getallproducts', '2020-05-22 02:52:03', '0000-00-00 00:00:00'),
(4234, '', '', 'getallproducts', '2020-05-22 02:52:33', '0000-00-00 00:00:00'),
(4235, '', '', 'getallproducts', '2020-05-22 02:52:34', '0000-00-00 00:00:00'),
(4236, '', '', 'getallproducts', '2020-05-22 02:52:36', '0000-00-00 00:00:00'),
(4237, '', '', 'getallproducts', '2020-05-22 02:52:38', '0000-00-00 00:00:00'),
(4238, '', '', 'getallproducts', '2020-05-22 02:52:42', '0000-00-00 00:00:00'),
(4239, '', '', 'getallproducts', '2020-05-22 02:53:33', '0000-00-00 00:00:00'),
(4240, '', '', 'getallproducts', '2020-05-22 02:54:22', '0000-00-00 00:00:00'),
(4241, '', '', 'getallproducts', '2020-05-22 02:57:57', '2000-02-15 00:00:00'),
(4242, '', '', 'getallproducts', '2020-05-22 03:00:07', '2000-01-30 00:00:00'),
(4243, '', '', 'homePage', '2020-05-22 03:01:53', '2000-01-06 00:00:00'),
(4244, '', '', 'getallproducts', '2020-05-22 03:01:58', '0000-00-00 00:00:00'),
(4245, '', '', 'getallproducts', '2020-05-22 03:02:01', '0000-00-00 00:00:00'),
(4246, '', '', 'getallproducts', '2020-05-22 03:02:04', '0000-00-00 00:00:00'),
(4247, '', '', 'getallproducts', '2020-05-22 03:02:05', '0000-00-00 00:00:00'),
(4248, '', '', 'getallproducts', '2020-05-22 03:03:01', '0000-00-00 00:00:00'),
(4249, '', '', 'getallproducts', '2020-05-22 03:03:02', '0000-00-00 00:00:00'),
(4250, '', '', 'getallproducts', '2020-05-22 03:03:04', '0000-00-00 00:00:00'),
(4251, '', '', 'getallproducts', '2020-05-22 03:03:06', '0000-00-00 00:00:00'),
(4252, '', '', 'homePage', '2020-05-22 03:04:28', '0000-00-00 00:00:00'),
(4253, '', '', 'getallproducts', '2020-05-22 03:04:32', '0000-00-00 00:00:00'),
(4254, '', '', 'getallproducts', '2020-05-22 03:04:34', '0000-00-00 00:00:00'),
(4255, '', '', 'getallproducts', '2020-05-22 03:04:50', '0000-00-00 00:00:00'),
(4256, '', '', 'homePage', '2020-05-22 03:08:49', '0000-00-00 00:00:00'),
(4257, '', '', 'getallproducts', '2020-05-22 03:08:54', '0000-00-00 00:00:00'),
(4258, '', '', 'getallproducts', '2020-05-22 03:08:57', '0000-00-00 00:00:00'),
(4259, '', '', 'getallproducts', '2020-05-22 03:09:52', '0000-00-00 00:00:00'),
(4260, '', '', 'getallproducts', '2020-05-22 03:09:53', '0000-00-00 00:00:00'),
(4261, '', '', 'getallproducts', '2020-05-22 03:09:55', '0000-00-00 00:00:00'),
(4262, '', '', 'getallproducts', '2020-05-22 03:10:11', '0000-00-00 00:00:00'),
(4263, '', '', 'getallproducts', '2020-05-22 03:11:19', '0000-00-00 00:00:00'),
(4264, '', '', 'getallproducts', '2020-05-22 03:11:21', '0000-00-00 00:00:00'),
(4265, '', '', 'getallproducts', '2020-05-22 03:11:23', '0000-00-00 00:00:00'),
(4266, '', '', 'getallproducts', '2020-05-22 03:11:27', '0000-00-00 00:00:00'),
(4267, '', '', 'getallproducts', '2020-05-22 03:11:29', '0000-00-00 00:00:00');
INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(4268, '', '', 'getallproducts', '2020-05-22 03:11:32', '0000-00-00 00:00:00'),
(4269, '', '', 'getallproducts', '2020-05-22 03:11:35', '0000-00-00 00:00:00'),
(4270, '', '', 'getallproducts', '2020-05-22 03:11:39', '0000-00-00 00:00:00'),
(4271, '', '', 'getallproducts', '2020-05-22 03:14:37', '0000-00-00 00:00:00'),
(4272, '', '', 'getallproducts', '2020-05-22 03:14:38', '0000-00-00 00:00:00'),
(4273, '', '', 'getallproducts', '2020-05-22 03:16:56', '0000-00-00 00:00:00'),
(4274, '', '', 'getallproducts', '2020-05-22 03:16:56', '0000-00-00 00:00:00'),
(4275, '', '', 'getallproducts', '2020-05-22 03:16:56', '0000-00-00 00:00:00'),
(4276, '', '', 'getallproducts', '2020-05-22 03:17:10', '0000-00-00 00:00:00'),
(4277, '', '', 'getallproducts', '2020-05-22 03:17:10', '0000-00-00 00:00:00'),
(4278, '', '', 'getallproducts', '2020-05-22 03:17:10', '0000-00-00 00:00:00'),
(4279, '', '', 'getallproducts', '2020-05-22 03:17:22', '0000-00-00 00:00:00'),
(4280, '', '', 'getallproducts', '2020-05-22 03:17:22', '0000-00-00 00:00:00'),
(4281, '', '', 'getallproducts', '2020-05-22 03:17:23', '0000-00-00 00:00:00'),
(4282, '', '', 'getallproducts', '2020-05-22 03:17:34', '0000-00-00 00:00:00'),
(4283, '', '', 'getallproducts', '2020-05-22 03:23:03', '2000-03-29 00:00:00'),
(4284, '', '', 'getallproducts', '2020-05-22 03:24:30', '0000-00-00 00:00:00'),
(4285, '', '', 'getallproducts', '2020-05-22 03:24:47', '0000-00-00 00:00:00'),
(4286, '', '', 'homePage', '2020-05-22 03:26:55', '2000-01-28 00:00:00'),
(4287, '', '', 'getallproducts', '2020-05-22 03:27:07', '0000-00-00 00:00:00'),
(4288, '', '', 'getallproducts', '2020-05-22 03:27:10', '0000-00-00 00:00:00'),
(4289, '', '', 'getallproducts', '2020-05-22 03:27:13', '0000-00-00 00:00:00'),
(4290, '', '', 'getallproducts', '2020-05-22 03:27:18', '0000-00-00 00:00:00'),
(4291, '', '', 'getallproducts', '2020-05-22 03:27:20', '0000-00-00 00:00:00'),
(4292, '', '', 'getallproducts', '2020-05-22 03:27:23', '0000-00-00 00:00:00'),
(4293, '', '', 'getallproducts', '2020-05-22 03:27:26', '0000-00-00 00:00:00'),
(4294, '', '', 'getallproducts', '2020-05-22 03:27:28', '0000-00-00 00:00:00'),
(4295, '', '', 'getallproducts', '2020-05-22 03:27:29', '0000-00-00 00:00:00'),
(4296, '', '', 'getallproducts', '2020-05-22 03:27:29', '0000-00-00 00:00:00'),
(4297, '', '', 'getallproducts', '2020-05-22 03:27:31', '0000-00-00 00:00:00'),
(4298, '', '', 'getallproducts', '2020-05-22 03:27:32', '0000-00-00 00:00:00'),
(4299, '', '', 'getallproducts', '2020-05-22 03:27:32', '0000-00-00 00:00:00'),
(4300, '', '', 'getallproducts', '2020-05-22 03:27:34', '0000-00-00 00:00:00'),
(4301, '', '', 'getallproducts', '2020-05-22 03:28:02', '0000-00-00 00:00:00'),
(4302, '', '', 'getallproducts', '2020-05-22 03:28:07', '0000-00-00 00:00:00'),
(4303, '', '', 'homePage', '2020-05-22 03:28:24', '0000-00-00 00:00:00'),
(4304, '', '', 'getallproducts', '2020-05-22 03:28:29', '0000-00-00 00:00:00'),
(4305, '', '', 'getallproducts', '2020-05-22 03:28:34', '0000-00-00 00:00:00'),
(4306, '', '', 'getallproducts', '2020-05-22 03:28:36', '0000-00-00 00:00:00'),
(4307, '', '', 'getallproducts', '2020-05-22 03:31:37', '0000-00-00 00:00:00'),
(4308, '', '', 'getallproducts', '2020-05-22 03:31:44', '0000-00-00 00:00:00'),
(4309, '', '', 'getallproducts', '2020-05-22 03:33:56', '0000-00-00 00:00:00'),
(4310, '', '', 'getallproducts', '2020-05-22 03:34:39', '0000-00-00 00:00:00'),
(4311, '', '', 'getallproducts', '2020-05-22 03:34:44', '0000-00-00 00:00:00'),
(4312, '', '', 'getallproducts', '2020-05-22 03:34:45', '0000-00-00 00:00:00'),
(4313, '', '', 'getallproducts', '2020-05-22 03:34:47', '0000-00-00 00:00:00'),
(4314, '', '', 'homePage', '2020-05-22 03:38:02', '0000-00-00 00:00:00'),
(4315, '', '', 'homePage', '2020-05-22 03:38:29', '0000-00-00 00:00:00'),
(4316, '', '', 'homePage', '2020-05-22 03:39:17', '0000-00-00 00:00:00'),
(4317, '', '', 'getallproducts', '2020-05-22 03:39:21', '0000-00-00 00:00:00'),
(4318, '', '', 'getallproducts', '2020-05-22 03:39:24', '0000-00-00 00:00:00'),
(4319, '', '', 'getallproducts', '2020-05-22 03:39:28', '0000-00-00 00:00:00'),
(4320, '', '', 'getallproducts', '2020-05-22 03:39:32', '0000-00-00 00:00:00'),
(4321, '', '', 'getallproducts', '2020-05-22 03:39:55', '0000-00-00 00:00:00'),
(4322, '', '', 'getallproducts', '2020-05-22 03:39:57', '0000-00-00 00:00:00'),
(4323, '', '', 'getallproducts', '2020-05-22 03:39:59', '0000-00-00 00:00:00'),
(4324, '', '', 'getallproducts', '2020-05-22 03:40:00', '0000-00-00 00:00:00'),
(4325, '', '', 'getallproducts', '2020-05-22 03:43:18', '0000-00-00 00:00:00'),
(4326, '', '', 'homePage', '2020-05-22 03:48:34', '2000-03-16 00:00:00'),
(4327, '', '', 'homePage', '2020-05-22 03:48:35', '0000-00-00 00:00:00'),
(4328, '', '', 'homePage', '2020-05-22 03:48:57', '0000-00-00 00:00:00'),
(4329, '', '', 'homePage', '2020-05-22 03:48:59', '0000-00-00 00:00:00'),
(4330, '', '', 'homePage', '2020-05-22 03:49:19', '0000-00-00 00:00:00'),
(4331, '', '', 'getallproducts', '2020-05-22 03:49:24', '0000-00-00 00:00:00'),
(4332, '', '', 'getallproducts', '2020-05-22 03:52:58', '2000-02-14 00:00:00'),
(4333, '', '', 'getallproducts', '2020-05-22 03:53:02', '0000-00-00 00:00:00'),
(4334, '', '', 'getallproducts', '2020-05-22 03:54:15', '0000-00-00 00:00:00'),
(4335, '', '', 'getallproducts', '2020-05-22 03:54:18', '0000-00-00 00:00:00'),
(4336, '', '', 'homePage', '2020-05-22 03:55:45', '0000-00-00 00:00:00'),
(4337, '', '', 'getallproducts', '2020-05-22 03:55:52', '0000-00-00 00:00:00'),
(4338, '', '', 'getallproducts', '2020-05-22 03:59:25', '2000-02-13 00:00:00'),
(4339, '', '', 'homePage', '2020-05-22 04:01:13', '2000-01-08 00:00:00'),
(4340, '', '', 'getallproducts', '2020-05-22 04:02:25', '0000-00-00 00:00:00'),
(4341, '', '', 'getallproducts', '2020-05-22 04:04:36', '2000-01-31 00:00:00'),
(4342, '', '', 'getallproducts', '2020-05-22 04:08:20', '2000-02-24 00:00:00'),
(4343, '', '', 'homePage', '2020-05-22 04:15:20', '2000-04-20 00:00:00'),
(4344, '', '', 'homePage', '2020-05-22 04:15:22', '0000-00-00 00:00:00'),
(4345, '', '', 'getallproducts', '2020-05-22 04:17:57', '0000-00-00 00:00:00'),
(4346, '', '', 'getallproducts', '2020-05-22 04:21:36', '2000-02-19 00:00:00'),
(4347, '', '', 'getallproducts', '2020-05-22 04:24:25', '0000-00-00 00:00:00'),
(4348, '', '', 'getallproducts', '2020-05-22 04:24:28', '0000-00-00 00:00:00'),
(4349, '', '', 'getallproducts', '2020-05-22 04:24:34', '0000-00-00 00:00:00'),
(4350, '', '', 'getallproducts', '2020-05-22 04:25:48', '0000-00-00 00:00:00'),
(4351, '', '', 'getallproducts', '2020-05-22 04:26:25', '0000-00-00 00:00:00'),
(4352, '', '', 'getallproducts', '2020-05-22 04:27:25', '0000-00-00 00:00:00'),
(4353, '', '', 'likeproduct', '2020-05-22 04:30:30', '0000-00-00 00:00:00'),
(4354, '', '', 'unlikeproduct', '2020-05-22 04:30:32', '0000-00-00 00:00:00'),
(4355, '', '', 'likeproduct', '2020-05-22 04:30:35', '0000-00-00 00:00:00'),
(4356, '', '', 'getallproducts', '2020-05-22 04:30:40', '0000-00-00 00:00:00'),
(4357, '', '', 'homePage', '2020-05-22 04:33:13', '0000-00-00 00:00:00'),
(4358, '', '', 'getallproducts', '2020-05-22 04:33:16', '0000-00-00 00:00:00'),
(4359, '', '', 'homePage', '2020-05-22 04:33:35', '0000-00-00 00:00:00'),
(4360, '', '', 'getallproducts', '2020-05-22 04:33:38', '0000-00-00 00:00:00'),
(4361, '', '', 'getallproducts', '2020-05-22 04:33:46', '0000-00-00 00:00:00'),
(4362, '', '', 'homePage', '2020-05-22 04:34:12', '0000-00-00 00:00:00'),
(4363, '', '', 'getallproducts', '2020-05-22 04:34:16', '0000-00-00 00:00:00'),
(4364, '', '', 'getallproducts', '2020-05-22 04:34:21', '0000-00-00 00:00:00'),
(4365, '', '', 'homePage', '2020-05-22 04:35:26', '0000-00-00 00:00:00'),
(4366, '', '', 'getallproducts', '2020-05-22 04:35:30', '0000-00-00 00:00:00'),
(4367, '', '', 'getallproducts', '2020-05-22 04:35:35', '0000-00-00 00:00:00'),
(4368, '', '', 'getallproducts', '2020-05-22 04:35:38', '0000-00-00 00:00:00'),
(4369, '', '', 'getallproducts', '2020-05-22 04:35:40', '0000-00-00 00:00:00'),
(4370, '', '', 'getallproducts', '2020-05-22 04:35:41', '0000-00-00 00:00:00'),
(4371, '', '', 'getallproducts', '2020-05-22 04:35:41', '0000-00-00 00:00:00'),
(4372, '', '', 'getallproducts', '2020-05-22 04:35:46', '0000-00-00 00:00:00'),
(4373, '', '', 'getallproducts', '2020-05-22 04:35:51', '0000-00-00 00:00:00'),
(4374, '', '', 'getallproducts', '2020-05-22 04:36:17', '0000-00-00 00:00:00'),
(4375, '', '', 'getallproducts', '2020-05-22 04:36:48', '0000-00-00 00:00:00'),
(4376, '', '', 'homePage', '2020-05-22 04:37:09', '0000-00-00 00:00:00'),
(4377, '', '', 'getallproducts', '2020-05-22 04:37:14', '0000-00-00 00:00:00'),
(4378, '', '', 'getallproducts', '2020-05-22 04:38:17', '0000-00-00 00:00:00'),
(4379, '', '', 'getallproducts', '2020-05-22 04:39:12', '0000-00-00 00:00:00'),
(4380, '', '', 'getallproducts', '2020-05-22 04:40:22', '0000-00-00 00:00:00'),
(4381, '', '', 'getallproducts', '2020-05-22 04:40:26', '0000-00-00 00:00:00'),
(4382, '', '', 'getallproducts', '2020-05-22 04:48:09', '0000-00-00 00:00:00'),
(4383, '', '', 'homePage', '2020-05-22 04:49:53', '2000-01-04 00:00:00'),
(4384, '', '', 'homePage', '2020-05-22 04:52:33', '0000-00-00 00:00:00'),
(4385, '', '', 'getallproducts', '2020-05-22 04:52:58', '0000-00-00 00:00:00'),
(4386, '', '', 'getallproducts', '2020-05-22 04:53:03', '0000-00-00 00:00:00'),
(4387, '', '', 'getallproducts', '2020-05-22 04:53:21', '0000-00-00 00:00:00'),
(4388, '', '', 'getallproducts', '2020-05-22 04:54:19', '0000-00-00 00:00:00'),
(4389, '', '', 'homePage', '2020-05-22 04:55:31', '0000-00-00 00:00:00'),
(4390, '', '', 'homePage', '2020-05-22 04:59:00', '2000-02-09 00:00:00'),
(4391, '', '', 'getallproducts', '2020-05-22 04:59:05', '0000-00-00 00:00:00'),
(4392, '', '', 'getallproducts', '2020-05-22 04:59:10', '0000-00-00 00:00:00'),
(4393, '', '', 'homePage', '2020-05-22 04:59:42', '0000-00-00 00:00:00'),
(4394, '', '', 'getallproducts', '2020-05-22 04:59:45', '0000-00-00 00:00:00'),
(4395, '', '', 'getallproducts', '2020-05-22 04:59:49', '0000-00-00 00:00:00'),
(4396, '', '', 'getallproducts', '2020-05-22 04:59:54', '0000-00-00 00:00:00'),
(4397, '', '', 'homePage', '2020-05-22 05:00:30', '0000-00-00 00:00:00'),
(4398, '', '', 'getallproducts', '2020-05-22 05:00:34', '0000-00-00 00:00:00'),
(4399, '', '', 'getallproducts', '2020-05-22 05:00:38', '0000-00-00 00:00:00'),
(4400, '', '', 'getallproducts', '2020-05-22 05:00:43', '0000-00-00 00:00:00'),
(4401, '', '', 'homePage', '2020-05-22 05:01:14', '0000-00-00 00:00:00'),
(4402, '', '', 'homePage', '2020-05-22 05:01:16', '0000-00-00 00:00:00'),
(4403, '', '', 'getallproducts', '2020-05-22 05:04:55', '2000-02-19 00:00:00'),
(4404, '', '', 'getallproducts', '2020-05-22 05:04:59', '0000-00-00 00:00:00'),
(4405, '', '', 'getallproducts', '2020-05-22 05:05:05', '0000-00-00 00:00:00'),
(4406, '', '', 'getallproducts', '2020-05-22 05:05:57', '0000-00-00 00:00:00'),
(4407, '', '', 'getallproducts', '2020-05-22 05:06:01', '0000-00-00 00:00:00'),
(4408, '', '', 'getallproducts', '2020-05-22 05:06:08', '0000-00-00 00:00:00'),
(4409, '', '', 'getallproducts', '2020-05-22 05:06:56', '0000-00-00 00:00:00'),
(4410, '', '', 'homePage', '2020-05-22 05:08:43', '2000-01-07 00:00:00'),
(4411, '', '', 'getallproducts', '2020-05-22 05:08:47', '0000-00-00 00:00:00'),
(4412, '', '', 'getallproducts', '2020-05-22 05:08:51', '0000-00-00 00:00:00'),
(4413, '', '', 'homePage', '2020-05-22 05:13:33', '0000-00-00 00:00:00'),
(4414, '', '', 'getallproducts', '2020-05-22 05:14:40', '0000-00-00 00:00:00'),
(4415, '', '', 'getallproducts', '2020-05-22 05:17:49', '0000-00-00 00:00:00'),
(4416, '', '', 'getallproducts', '2020-05-22 05:17:49', '0000-00-00 00:00:00'),
(4417, '', '', 'homePage', '2020-05-22 05:24:50', '2000-04-21 00:00:00'),
(4418, '', '', 'getallproducts', '2020-05-22 05:25:10', '0000-00-00 00:00:00'),
(4419, '', '', 'getallproducts', '2020-05-22 05:25:22', '0000-00-00 00:00:00'),
(4420, '', '', 'getallproducts', '2020-05-22 05:26:24', '0000-00-00 00:00:00'),
(4421, '', '', 'homePage', '2020-05-22 05:31:17', '0000-00-00 00:00:00'),
(4422, '', '', 'getallproducts', '2020-05-22 05:31:20', '0000-00-00 00:00:00'),
(4423, '', '', 'homePage', '2020-05-22 05:32:16', '0000-00-00 00:00:00'),
(4424, '', '', 'getallproducts', '2020-05-22 05:32:20', '0000-00-00 00:00:00'),
(4425, '', '', 'getallproducts', '2020-05-22 05:32:43', '0000-00-00 00:00:00'),
(4426, '', '', 'getallproducts', '2020-05-22 05:33:16', '0000-00-00 00:00:00'),
(4427, '', '', 'homePage', '2020-05-22 05:33:57', '0000-00-00 00:00:00'),
(4428, '', '', 'getallproducts', '2020-05-22 05:34:02', '0000-00-00 00:00:00'),
(4429, '', '', 'getallproducts', '2020-05-22 05:35:56', '2000-01-14 00:00:00'),
(4430, '', '', 'getallproducts', '2020-05-22 05:36:20', '0000-00-00 00:00:00'),
(4431, '', '', 'homePage', '2020-05-22 05:37:20', '0000-00-00 00:00:00'),
(4432, '', '', 'getallproducts', '2020-05-22 05:37:24', '0000-00-00 00:00:00'),
(4433, '', '', 'getallproducts', '2020-05-22 05:37:29', '0000-00-00 00:00:00'),
(4434, '', '', 'getallproducts', '2020-05-22 05:37:36', '0000-00-00 00:00:00'),
(4435, '', '', 'getallproducts', '2020-05-22 05:37:39', '0000-00-00 00:00:00'),
(4436, '', '', 'likeproduct', '2020-05-22 05:37:42', '0000-00-00 00:00:00'),
(4437, '', '', 'homePage', '2020-05-22 05:37:48', '0000-00-00 00:00:00'),
(4438, '', '', 'getallproducts', '2020-05-22 05:37:54', '0000-00-00 00:00:00'),
(4439, '', '', 'getallproducts', '2020-05-22 05:37:59', '0000-00-00 00:00:00'),
(4440, '', '', 'getallproducts', '2020-05-22 05:38:01', '0000-00-00 00:00:00'),
(4441, '', '', 'getallproducts', '2020-05-22 05:38:09', '0000-00-00 00:00:00'),
(4442, '', '', 'getallproducts', '2020-05-22 05:38:25', '0000-00-00 00:00:00'),
(4443, '', '', 'getallproducts', '2020-05-22 05:38:25', '0000-00-00 00:00:00'),
(4444, '', '', 'getallproducts', '2020-05-22 05:38:28', '0000-00-00 00:00:00'),
(4445, '', '', 'getallproducts', '2020-05-22 05:38:30', '0000-00-00 00:00:00'),
(4446, '', '', 'getallproducts', '2020-05-22 05:38:30', '0000-00-00 00:00:00'),
(4447, '', '', 'getallproducts', '2020-05-22 05:38:30', '0000-00-00 00:00:00'),
(4448, '', '', 'getallproducts', '2020-05-22 05:38:32', '0000-00-00 00:00:00'),
(4449, '', '', 'getallproducts', '2020-05-22 05:38:32', '0000-00-00 00:00:00'),
(4450, '', '', 'getallproducts', '2020-05-22 05:38:32', '0000-00-00 00:00:00'),
(4451, '', '', 'getallproducts', '2020-05-22 05:38:35', '0000-00-00 00:00:00'),
(4452, '', '', 'getallproducts', '2020-05-22 05:38:35', '0000-00-00 00:00:00'),
(4453, '', '', 'getallproducts', '2020-05-22 05:38:35', '0000-00-00 00:00:00'),
(4454, '', '', 'getallproducts', '2020-05-22 05:38:35', '0000-00-00 00:00:00'),
(4455, '', '', 'getallproducts', '2020-05-22 05:38:35', '0000-00-00 00:00:00'),
(4456, '', '', 'getallproducts', '2020-05-22 05:38:35', '0000-00-00 00:00:00'),
(4457, '', '', 'getallproducts', '2020-05-22 05:38:37', '0000-00-00 00:00:00'),
(4458, '', '', 'getallproducts', '2020-05-22 05:38:37', '0000-00-00 00:00:00'),
(4459, '', '', 'getallproducts', '2020-05-22 05:38:38', '0000-00-00 00:00:00'),
(4460, '', '', 'homePage', '2020-05-22 05:39:58', '0000-00-00 00:00:00'),
(4461, '', '', 'getallproducts', '2020-05-22 05:40:03', '0000-00-00 00:00:00'),
(4462, '', '', 'getallproducts', '2020-05-22 05:40:06', '0000-00-00 00:00:00'),
(4463, '', '', 'getallproducts', '2020-05-22 05:40:07', '0000-00-00 00:00:00'),
(4464, '', '', 'getallproducts', '2020-05-22 05:40:07', '0000-00-00 00:00:00'),
(4465, '', '', 'getallproducts', '2020-05-22 05:40:09', '0000-00-00 00:00:00'),
(4466, '', '', 'getallproducts', '2020-05-22 05:40:09', '0000-00-00 00:00:00'),
(4467, '', '', 'getallproducts', '2020-05-22 05:40:09', '0000-00-00 00:00:00'),
(4468, '', '', 'getallproducts', '2020-05-22 05:40:13', '0000-00-00 00:00:00'),
(4469, '', '', 'getallproducts', '2020-05-22 05:40:14', '0000-00-00 00:00:00'),
(4470, '', '', 'getallproducts', '2020-05-22 05:40:14', '0000-00-00 00:00:00'),
(4471, '', '', 'getallproducts', '2020-05-22 05:41:13', '0000-00-00 00:00:00'),
(4472, '', '', 'getallproducts', '2020-05-22 05:41:13', '0000-00-00 00:00:00'),
(4473, '', '', 'getallproducts', '2020-05-22 05:41:13', '0000-00-00 00:00:00'),
(4474, '', '', 'homePage', '2020-05-22 05:42:01', '0000-00-00 00:00:00'),
(4475, '', '', 'getallproducts', '2020-05-22 05:42:09', '0000-00-00 00:00:00'),
(4476, '', '', 'getallproducts', '2020-05-22 05:42:17', '0000-00-00 00:00:00'),
(4477, '', '', 'getallproducts', '2020-05-22 05:42:22', '0000-00-00 00:00:00'),
(4478, '', '', 'homePage', '2020-05-22 05:43:00', '0000-00-00 00:00:00'),
(4479, '', '', 'getallproducts', '2020-05-22 05:43:03', '0000-00-00 00:00:00'),
(4480, '', '', 'getallproducts', '2020-05-22 05:43:07', '0000-00-00 00:00:00'),
(4481, '', '', 'homePage', '2020-05-22 05:46:37', '2000-02-10 00:00:00'),
(4482, '', '', 'homePage', '2020-05-22 05:47:26', '0000-00-00 00:00:00'),
(4483, '', '', 'getallproducts', '2020-05-22 05:47:44', '0000-00-00 00:00:00'),
(4484, '', '', 'getallproducts', '2020-05-22 05:47:56', '0000-00-00 00:00:00'),
(4485, '', '', 'homePage', '2020-05-22 05:48:30', '0000-00-00 00:00:00'),
(4486, '', '', 'homePage', '2020-05-22 05:48:32', '0000-00-00 00:00:00'),
(4487, '', '', 'homePage', '2020-05-22 05:48:50', '0000-00-00 00:00:00'),
(4488, '', '', 'getallproducts', '2020-05-22 05:48:53', '0000-00-00 00:00:00'),
(4489, '', '', 'getallproducts', '2020-05-22 05:48:57', '0000-00-00 00:00:00'),
(4490, '', '', 'homePage', '2020-05-22 05:49:45', '0000-00-00 00:00:00'),
(4491, '', '', 'homePage', '2020-05-22 05:50:22', '0000-00-00 00:00:00'),
(4492, '', '', 'getallproducts', '2020-05-22 05:50:48', '0000-00-00 00:00:00'),
(4493, '', '', 'getallproducts', '2020-05-22 05:50:51', '0000-00-00 00:00:00'),
(4494, '', '', 'getallproducts', '2020-05-22 05:50:55', '0000-00-00 00:00:00'),
(4495, '', '', 'getallproducts', '2020-05-22 05:50:57', '0000-00-00 00:00:00'),
(4496, '', '', 'homePage', '2020-05-22 05:51:25', '0000-00-00 00:00:00'),
(4497, '', '', 'homePage', '2020-05-22 05:53:10', '2000-01-05 00:00:00'),
(4498, '', '', 'homePage', '2020-05-22 05:53:34', '0000-00-00 00:00:00'),
(4499, '', '', 'homePage', '2020-05-22 05:56:21', '0000-00-00 00:00:00'),
(4500, '', '', 'getallproducts', '2020-05-22 05:56:26', '0000-00-00 00:00:00'),
(4501, '', '', 'getallproducts', '2020-05-22 05:56:30', '0000-00-00 00:00:00'),
(4502, '', '', 'getallproducts', '2020-05-22 05:57:00', '0000-00-00 00:00:00'),
(4503, '', '', 'getallproducts', '2020-05-22 05:57:03', '0000-00-00 00:00:00'),
(4504, '', '', 'getallproducts', '2020-05-22 05:57:06', '0000-00-00 00:00:00'),
(4505, '', '', 'homePage', '2020-05-22 05:59:37', '0000-00-00 00:00:00'),
(4506, '', '', 'homePage', '2020-05-22 05:59:38', '0000-00-00 00:00:00'),
(4507, '', '', 'homePage', '2020-05-22 05:59:57', '0000-00-00 00:00:00'),
(4508, '', '', 'homePage', '2020-05-22 05:59:59', '0000-00-00 00:00:00'),
(4509, '', '', 'homePage', '2020-05-22 06:00:15', '0000-00-00 00:00:00'),
(4510, '', '', 'homePage', '2020-05-22 06:00:17', '0000-00-00 00:00:00'),
(4511, '', '', 'homePage', '2020-05-22 06:00:33', '0000-00-00 00:00:00'),
(4512, '', '', 'homePage', '2020-05-22 06:00:34', '0000-00-00 00:00:00'),
(4513, '', '', 'homePage', '2020-05-22 06:00:52', '0000-00-00 00:00:00'),
(4514, '', '', 'getallproducts', '2020-05-22 06:00:56', '0000-00-00 00:00:00'),
(4515, '', '', 'getallproducts', '2020-05-22 06:01:01', '0000-00-00 00:00:00'),
(4516, '', '', 'getallproducts', '2020-05-22 06:01:16', '0000-00-00 00:00:00'),
(4517, '', '', 'getallproducts', '2020-05-22 06:01:18', '0000-00-00 00:00:00'),
(4518, '', '', 'getallproducts', '2020-05-22 06:01:19', '0000-00-00 00:00:00'),
(4519, '', '', 'getallproducts', '2020-05-22 06:01:19', '0000-00-00 00:00:00'),
(4520, '', '', 'getallproducts', '2020-05-22 06:01:19', '0000-00-00 00:00:00'),
(4521, '', '', 'getallproducts', '2020-05-22 06:03:08', '2000-01-09 00:00:00'),
(4522, '', '', 'getallproducts', '2020-05-22 06:03:12', '0000-00-00 00:00:00'),
(4523, '', '', 'getallproducts', '2020-05-22 06:03:52', '0000-00-00 00:00:00'),
(4524, '', '', 'getallproducts', '2020-05-22 06:03:56', '0000-00-00 00:00:00'),
(4525, '', '', 'homePage', '2020-05-22 06:04:08', '0000-00-00 00:00:00'),
(4526, '', '', 'homePage', '2020-05-22 06:05:54', '2000-01-06 00:00:00'),
(4527, '', '', 'homePage', '2020-05-22 06:05:57', '0000-00-00 00:00:00'),
(4528, '', '', 'homePage', '2020-05-22 06:06:17', '0000-00-00 00:00:00'),
(4529, '', '', 'getallproducts', '2020-05-22 06:06:21', '0000-00-00 00:00:00'),
(4530, '', '', 'getallproducts', '2020-05-22 06:06:24', '0000-00-00 00:00:00'),
(4531, '', '', 'homePage', '2020-05-22 06:06:47', '0000-00-00 00:00:00'),
(4532, '', '', 'getallproducts', '2020-05-22 06:06:54', '0000-00-00 00:00:00'),
(4533, '', '', 'getallproducts', '2020-05-22 06:06:59', '0000-00-00 00:00:00'),
(4534, '', '', 'getallproducts', '2020-05-22 06:07:05', '0000-00-00 00:00:00'),
(4535, '', '', 'getallproducts', '2020-05-22 06:07:07', '0000-00-00 00:00:00'),
(4536, '', '', 'getallproducts', '2020-05-22 06:07:11', '0000-00-00 00:00:00'),
(4537, '', '', 'getallproducts', '2020-05-22 06:07:14', '0000-00-00 00:00:00'),
(4538, '', '', 'getallproducts', '2020-05-22 06:07:17', '0000-00-00 00:00:00'),
(4539, '', '', 'getallproducts', '2020-05-22 06:07:22', '0000-00-00 00:00:00'),
(4540, '', '', 'getallproducts', '2020-05-22 06:07:22', '0000-00-00 00:00:00'),
(4541, '', '', 'getallproducts', '2020-05-22 06:07:22', '0000-00-00 00:00:00'),
(4542, '', '', 'getallproducts', '2020-05-22 06:07:25', '0000-00-00 00:00:00'),
(4543, '', '', 'homePage', '2020-05-22 06:09:56', '0000-00-00 00:00:00'),
(4544, '', '', 'getallproducts', '2020-05-22 06:10:02', '0000-00-00 00:00:00'),
(4545, '', '', 'getallproducts', '2020-05-22 06:10:04', '0000-00-00 00:00:00'),
(4546, '', '', 'getallproducts', '2020-05-22 06:10:07', '0000-00-00 00:00:00'),
(4547, '', '', 'getallproducts', '2020-05-22 06:10:11', '0000-00-00 00:00:00'),
(4548, '', '', 'getallproducts', '2020-05-22 06:10:13', '0000-00-00 00:00:00'),
(4549, '', '', 'getallproducts', '2020-05-22 06:10:13', '0000-00-00 00:00:00'),
(4550, '', '', 'getallproducts', '2020-05-22 06:10:14', '0000-00-00 00:00:00'),
(4551, '', '', 'getallproducts', '2020-05-22 06:10:16', '0000-00-00 00:00:00'),
(4552, '', '', 'getallproducts', '2020-05-22 06:10:16', '0000-00-00 00:00:00'),
(4553, '', '', 'getallproducts', '2020-05-22 06:10:16', '0000-00-00 00:00:00'),
(4554, '', '', 'homePage', '2020-05-22 06:11:22', '0000-00-00 00:00:00'),
(4555, '', '', 'getallproducts', '2020-05-22 06:11:25', '0000-00-00 00:00:00'),
(4556, '', '', 'getallproducts', '2020-05-22 06:11:32', '0000-00-00 00:00:00'),
(4557, '', '', 'getallproducts', '2020-05-22 06:11:35', '0000-00-00 00:00:00'),
(4558, '', '', 'getallproducts', '2020-05-22 06:11:46', '0000-00-00 00:00:00'),
(4559, '', '', 'getallproducts', '2020-05-22 06:11:49', '0000-00-00 00:00:00'),
(4560, '', '', 'getallproducts', '2020-05-22 06:12:25', '0000-00-00 00:00:00'),
(4561, '', '', 'getallproducts', '2020-05-22 06:12:27', '0000-00-00 00:00:00'),
(4562, '', '', 'getallproducts', '2020-05-22 06:12:32', '0000-00-00 00:00:00'),
(4563, '', '', 'homePage', '2020-05-22 06:13:55', '0000-00-00 00:00:00'),
(4564, '', '', 'getallproducts', '2020-05-22 06:13:58', '0000-00-00 00:00:00'),
(4565, '', '', 'homePage', '2020-05-22 06:14:38', '0000-00-00 00:00:00'),
(4566, '', '', 'getallproducts', '2020-05-22 06:14:45', '0000-00-00 00:00:00'),
(4567, '', '', 'getallproducts', '2020-05-22 06:14:47', '0000-00-00 00:00:00'),
(4568, '', '', 'homePage', '2020-05-22 13:06:54', '0000-00-00 00:00:00'),
(4569, '', '', 'getallproducts', '2020-05-22 13:07:03', '0000-00-00 00:00:00'),
(4570, '', '', 'getallproducts', '2020-05-22 13:07:17', '0000-00-00 00:00:00'),
(4571, '', '', 'getallproducts', '2020-05-22 13:07:30', '0000-00-00 00:00:00'),
(4572, '', '', 'getallproducts', '2020-05-22 13:08:01', '0000-00-00 00:00:00'),
(4573, '', '', 'getallproducts', '2020-05-22 13:10:15', '0000-00-00 00:00:00'),
(4574, '', '', 'getallproducts', '2020-05-22 13:10:17', '0000-00-00 00:00:00'),
(4575, '', '', 'getallproducts', '2020-05-22 13:10:36', '0000-00-00 00:00:00'),
(4576, '', '', 'homePage', '2020-05-22 13:10:59', '0000-00-00 00:00:00'),
(4577, '', '', 'getallproducts', '2020-05-22 13:11:02', '0000-00-00 00:00:00'),
(4578, '', '', 'getallproducts', '2020-05-22 13:11:05', '0000-00-00 00:00:00'),
(4579, '', '', 'getallproducts', '2020-05-22 13:11:13', '0000-00-00 00:00:00'),
(4580, '', '', 'getallproducts', '2020-05-22 13:11:15', '0000-00-00 00:00:00'),
(4581, '', '', 'getallproducts', '2020-05-22 13:11:20', '0000-00-00 00:00:00'),
(4582, '', '', 'homePage', '2020-05-22 13:12:32', '0000-00-00 00:00:00'),
(4583, '', '', 'getallproducts', '2020-05-22 13:12:37', '0000-00-00 00:00:00'),
(4584, '', '', 'getallproducts', '2020-05-22 13:12:46', '0000-00-00 00:00:00'),
(4585, '', '', 'getallproducts', '2020-05-22 13:12:49', '0000-00-00 00:00:00'),
(4586, '', '', 'getallproducts', '2020-05-22 13:12:55', '0000-00-00 00:00:00'),
(4587, '', '', 'getallproducts', '2020-05-22 13:13:00', '0000-00-00 00:00:00'),
(4588, '', '', 'getallproducts', '2020-05-22 13:15:32', '0000-00-00 00:00:00'),
(4589, '', '', 'getallproducts', '2020-05-22 13:15:42', '0000-00-00 00:00:00'),
(4590, '', '', 'getallproducts', '2020-05-22 13:15:45', '0000-00-00 00:00:00'),
(4591, '', '', 'getallproducts', '2020-05-22 13:15:50', '0000-00-00 00:00:00'),
(4592, '', '', 'getallproducts', '2020-05-22 13:27:50', '2000-07-20 00:00:00'),
(4593, '', '', 'homePage', '2020-05-22 13:30:00', '2000-01-30 00:00:00'),
(4594, '', '', 'getallproducts', '2020-05-22 13:30:05', '0000-00-00 00:00:00'),
(4595, '', '', 'getallproducts', '2020-05-22 13:30:10', '0000-00-00 00:00:00'),
(4596, '', '', 'getallproducts', '2020-05-22 13:30:13', '0000-00-00 00:00:00'),
(4597, '', '', 'getallproducts', '2020-05-22 13:30:18', '0000-00-00 00:00:00'),
(4598, '', '', 'getallproducts', '2020-05-22 13:30:22', '0000-00-00 00:00:00'),
(4599, '', '', 'getallproducts', '2020-05-22 13:34:15', '0000-00-00 00:00:00'),
(4600, '', '', 'getallproducts', '2020-05-22 13:34:21', '0000-00-00 00:00:00'),
(4601, '', '', 'getallproducts', '2020-05-22 13:34:27', '0000-00-00 00:00:00'),
(4602, '', '', 'getallproducts', '2020-05-22 13:34:31', '0000-00-00 00:00:00'),
(4603, '', '', 'getallproducts', '2020-05-22 13:34:32', '0000-00-00 00:00:00'),
(4604, '', '', 'getallproducts', '2020-05-22 13:34:49', '0000-00-00 00:00:00'),
(4605, '', '', 'getallproducts', '2020-05-22 13:34:52', '0000-00-00 00:00:00'),
(4606, '', '', 'getallproducts', '2020-05-22 13:34:54', '0000-00-00 00:00:00'),
(4607, '', '', 'getallproducts', '2020-05-22 13:34:55', '0000-00-00 00:00:00'),
(4608, '', '', 'getallproducts', '2020-05-22 13:34:55', '0000-00-00 00:00:00'),
(4609, '', '', 'getallproducts', '2020-05-22 13:34:58', '0000-00-00 00:00:00'),
(4610, '', '', 'getallproducts', '2020-05-22 13:34:58', '0000-00-00 00:00:00'),
(4611, '', '', 'getallproducts', '2020-05-22 13:34:58', '0000-00-00 00:00:00'),
(4612, '', '', 'homePage', '2020-05-22 13:37:38', '0000-00-00 00:00:00'),
(4613, '', '', 'homePage', '2020-05-22 13:37:40', '0000-00-00 00:00:00'),
(4614, '', '', 'homePage', '2020-05-22 13:37:57', '0000-00-00 00:00:00'),
(4615, '', '', 'homePage', '2020-05-22 13:37:59', '0000-00-00 00:00:00'),
(4616, '', '', 'homePage', '2020-05-22 13:38:24', '0000-00-00 00:00:00'),
(4617, '', '', 'homePage', '2020-05-22 13:38:30', '0000-00-00 00:00:00'),
(4618, '', '', 'getallproducts', '2020-05-22 13:38:32', '0000-00-00 00:00:00'),
(4619, '', '', 'getallproducts', '2020-05-22 13:38:37', '0000-00-00 00:00:00'),
(4620, '', '', 'getallproducts', '2020-05-22 13:38:37', '0000-00-00 00:00:00'),
(4621, '', '', 'getallproducts', '2020-05-22 13:38:38', '0000-00-00 00:00:00'),
(4622, '', '', 'getallproducts', '2020-05-22 13:38:40', '0000-00-00 00:00:00'),
(4623, '', '', 'getallproducts', '2020-05-22 13:38:52', '0000-00-00 00:00:00'),
(4624, '', '', 'getallproducts', '2020-05-22 13:38:55', '0000-00-00 00:00:00'),
(4625, '', '', 'getallproducts', '2020-05-22 13:38:55', '0000-00-00 00:00:00'),
(4626, '', '', 'getallproducts', '2020-05-22 13:38:55', '0000-00-00 00:00:00'),
(4627, '', '', 'getallproducts', '2020-05-22 13:39:25', '0000-00-00 00:00:00'),
(4628, '', '', 'getallproducts', '2020-05-22 13:41:17', '2000-01-12 00:00:00'),
(4629, '', '', 'getallproducts', '2020-05-22 13:41:26', '0000-00-00 00:00:00'),
(4630, '', '', 'getallproducts', '2020-05-22 13:41:27', '0000-00-00 00:00:00'),
(4631, '', '', 'getallproducts', '2020-05-22 13:41:54', '0000-00-00 00:00:00'),
(4632, '', '', 'getallproducts', '2020-05-22 13:41:57', '0000-00-00 00:00:00'),
(4633, '', '', 'getallproducts', '2020-05-22 13:42:01', '0000-00-00 00:00:00'),
(4634, '', '', 'getallproducts', '2020-05-22 13:42:03', '0000-00-00 00:00:00'),
(4635, '', '', 'getallproducts', '2020-05-22 13:42:05', '0000-00-00 00:00:00'),
(4636, '', '', 'getallproducts', '2020-05-22 13:42:12', '0000-00-00 00:00:00'),
(4637, '', '', 'getallproducts', '2020-05-22 13:42:12', '0000-00-00 00:00:00'),
(4638, '', '', 'getallproducts', '2020-05-22 13:42:18', '0000-00-00 00:00:00'),
(4639, '', '', 'getallproducts', '2020-05-22 13:44:26', '2000-01-28 00:00:00'),
(4640, '', '', 'getallproducts', '2020-05-22 13:44:29', '0000-00-00 00:00:00'),
(4641, '', '', 'getallproducts', '2020-05-22 13:51:54', '0000-00-00 00:00:00'),
(4642, '', '', 'getallproducts', '2020-05-22 13:51:57', '0000-00-00 00:00:00'),
(4643, '', '', 'getallproducts', '2020-05-22 13:52:01', '0000-00-00 00:00:00'),
(4644, '', '', 'getallproducts', '2020-05-22 13:52:05', '0000-00-00 00:00:00'),
(4645, '', '', 'getallproducts', '2020-05-22 13:52:07', '0000-00-00 00:00:00'),
(4646, '', '', 'getallproducts', '2020-05-22 13:52:10', '0000-00-00 00:00:00'),
(4647, '', '', 'getallproducts', '2020-05-22 13:52:10', '0000-00-00 00:00:00'),
(4648, '', '', 'getallproducts', '2020-05-22 13:52:10', '0000-00-00 00:00:00'),
(4649, '', '', 'getallproducts', '2020-05-22 13:52:47', '0000-00-00 00:00:00'),
(4650, '', '', 'getallproducts', '2020-05-22 13:52:50', '0000-00-00 00:00:00'),
(4651, '', '', 'getallproducts', '2020-05-22 13:53:04', '0000-00-00 00:00:00'),
(4652, '', '', 'getallproducts', '2020-05-22 13:53:23', '0000-00-00 00:00:00'),
(4653, '', '', 'getallproducts', '2020-05-22 13:53:29', '0000-00-00 00:00:00'),
(4654, '', '', 'getallproducts', '2020-05-22 13:53:31', '0000-00-00 00:00:00'),
(4655, '', '', 'getallproducts', '2020-05-22 13:53:57', '0000-00-00 00:00:00'),
(4656, '', '', 'getallproducts', '2020-05-22 13:53:59', '0000-00-00 00:00:00'),
(4657, '', '', 'getallproducts', '2020-05-22 13:54:09', '0000-00-00 00:00:00'),
(4658, '', '', 'getallproducts', '2020-05-22 13:54:18', '0000-00-00 00:00:00'),
(4659, '', '', 'getallproducts', '2020-05-22 13:54:22', '0000-00-00 00:00:00'),
(4660, '', '', 'getallproducts', '2020-05-22 14:00:28', '0000-00-00 00:00:00'),
(4661, '', '', 'homePage', '2020-05-22 14:01:15', '0000-00-00 00:00:00'),
(4662, '', '', 'getallproducts', '2020-05-22 14:01:44', '0000-00-00 00:00:00'),
(4663, '', '', 'getallproducts', '2020-05-22 14:01:50', '0000-00-00 00:00:00'),
(4664, '', '', 'getallproducts', '2020-05-22 14:04:59', '0000-00-00 00:00:00'),
(4665, '', '', 'getallproducts', '2020-05-22 14:05:03', '0000-00-00 00:00:00'),
(4666, '', '', 'getallproducts', '2020-05-22 14:05:10', '0000-00-00 00:00:00'),
(4667, '', '', 'getallproducts', '2020-05-22 14:05:59', '0000-00-00 00:00:00'),
(4668, '', '', 'getallproducts', '2020-05-22 14:06:02', '0000-00-00 00:00:00'),
(4669, '', '', 'getallproducts', '2020-05-22 14:06:06', '0000-00-00 00:00:00'),
(4670, '', '', 'getallproducts', '2020-05-22 14:09:21', '0000-00-00 00:00:00'),
(4671, '', '', 'getallproducts', '2020-05-22 14:09:26', '0000-00-00 00:00:00'),
(4672, '', '', 'getallproducts', '2020-05-22 14:09:44', '0000-00-00 00:00:00'),
(4673, '', '', 'getallproducts', '2020-05-22 14:09:44', '0000-00-00 00:00:00'),
(4674, '', '', 'getallproducts', '2020-05-22 14:09:45', '0000-00-00 00:00:00'),
(4675, '', '', 'homePage', '2020-05-22 14:10:00', '0000-00-00 00:00:00'),
(4676, '', '', 'homePage', '2020-05-22 14:11:14', '0000-00-00 00:00:00'),
(4677, '', '', 'getallproducts', '2020-05-22 14:11:39', '0000-00-00 00:00:00'),
(4678, '', '', 'getallproducts', '2020-05-22 14:11:41', '0000-00-00 00:00:00'),
(4679, '', '', 'getallproducts', '2020-05-22 14:11:48', '0000-00-00 00:00:00'),
(4680, '', '', 'getallproducts', '2020-05-22 14:12:20', '0000-00-00 00:00:00'),
(4681, '', '', 'getallproducts', '2020-05-22 14:12:22', '0000-00-00 00:00:00'),
(4682, '', '', 'getallproducts', '2020-05-22 14:12:41', '0000-00-00 00:00:00'),
(4683, '', '', 'getallproducts', '2020-05-22 14:12:49', '0000-00-00 00:00:00'),
(4684, '', '', 'getallproducts', '2020-05-22 14:15:15', '0000-00-00 00:00:00'),
(4685, '', '', 'getallproducts', '2020-05-22 14:15:31', '0000-00-00 00:00:00'),
(4686, '', '', 'getallproducts', '2020-05-22 14:15:40', '0000-00-00 00:00:00'),
(4687, '', '', 'getallproducts', '2020-05-22 14:15:44', '0000-00-00 00:00:00'),
(4688, '', '', 'getallproducts', '2020-05-22 14:16:02', '0000-00-00 00:00:00'),
(4689, '', '', 'getallproducts', '2020-05-22 14:16:05', '0000-00-00 00:00:00'),
(4690, '', '', 'getallproducts', '2020-05-22 14:16:09', '0000-00-00 00:00:00'),
(4691, '', '', 'getallproducts', '2020-05-22 14:16:10', '0000-00-00 00:00:00'),
(4692, '', '', 'getallproducts', '2020-05-22 14:16:13', '0000-00-00 00:00:00'),
(4693, '', '', 'getallproducts', '2020-05-22 14:16:14', '0000-00-00 00:00:00'),
(4694, '', '', 'getallproducts', '2020-05-22 14:16:15', '0000-00-00 00:00:00'),
(4695, '', '', 'getallproducts', '2020-05-22 14:16:18', '0000-00-00 00:00:00'),
(4696, '', '', 'getallproducts', '2020-05-22 14:17:13', '0000-00-00 00:00:00'),
(4697, '', '', 'getallproducts', '2020-05-22 14:17:16', '0000-00-00 00:00:00'),
(4698, '', '', 'getallproducts', '2020-05-22 14:17:19', '0000-00-00 00:00:00'),
(4699, '', '', 'getallproducts', '2020-05-22 14:17:20', '0000-00-00 00:00:00'),
(4700, '', '', 'getallproducts', '2020-05-22 14:17:21', '0000-00-00 00:00:00'),
(4701, '', '', 'getallproducts', '2020-05-22 14:19:12', '2000-01-11 00:00:00'),
(4702, '', '', 'getallproducts', '2020-05-22 14:19:15', '0000-00-00 00:00:00'),
(4703, '', '', 'getallproducts', '2020-05-22 14:19:17', '0000-00-00 00:00:00'),
(4704, '', '', 'getallproducts', '2020-05-22 14:19:21', '0000-00-00 00:00:00'),
(4705, '', '', 'getallproducts', '2020-05-22 14:19:22', '0000-00-00 00:00:00'),
(4706, '', '', 'getallproducts', '2020-05-22 14:20:04', '0000-00-00 00:00:00'),
(4707, '', '', 'likeproduct', '2020-05-22 14:23:08', '0000-00-00 00:00:00'),
(4708, '', '', 'unlikeproduct', '2020-05-22 14:23:12', '0000-00-00 00:00:00'),
(4709, '', '', 'getallproducts', '2020-05-22 14:23:19', '0000-00-00 00:00:00'),
(4710, '', '', 'getallproducts', '2020-05-22 14:23:24', '0000-00-00 00:00:00'),
(4711, '', '', 'getallproducts', '2020-05-22 14:23:28', '0000-00-00 00:00:00'),
(4712, '', '', 'getallproducts', '2020-05-22 14:23:31', '0000-00-00 00:00:00'),
(4713, '', '', 'getallproducts', '2020-05-22 14:23:39', '0000-00-00 00:00:00'),
(4714, '', '', 'getallproducts', '2020-05-22 14:23:45', '0000-00-00 00:00:00'),
(4715, '', '', 'getallproducts', '2020-05-22 14:23:48', '0000-00-00 00:00:00'),
(4716, '', '', 'homePage', '2020-05-22 14:32:13', '2000-05-05 00:00:00'),
(4717, '', '', 'homePage', '2020-05-22 14:32:13', '2000-05-05 00:00:00'),
(4718, '', '', 'homePage', '2020-05-22 14:39:42', '0000-00-00 00:00:00'),
(4719, '', '', 'getallproducts', '2020-05-22 14:39:53', '0000-00-00 00:00:00'),
(4720, '', '', 'getallproducts', '2020-05-22 14:40:01', '0000-00-00 00:00:00'),
(4721, '', '', 'getallproducts', '2020-05-22 14:40:03', '0000-00-00 00:00:00'),
(4722, '', '', 'getallproducts', '2020-05-22 14:40:07', '0000-00-00 00:00:00'),
(4723, '', '', 'getallproducts', '2020-05-22 14:40:16', '0000-00-00 00:00:00'),
(4724, '', '', 'getallproducts', '2020-05-22 14:40:23', '0000-00-00 00:00:00'),
(4725, '', '', 'getallproducts', '2020-05-22 14:40:48', '0000-00-00 00:00:00'),
(4726, '', '', 'getallproducts', '2020-05-22 14:41:24', '0000-00-00 00:00:00'),
(4727, '', '', 'getallproducts', '2020-05-22 14:41:56', '0000-00-00 00:00:00'),
(4728, '', '', 'getallproducts', '2020-05-22 14:43:20', '0000-00-00 00:00:00'),
(4729, '', '', 'getallproducts', '2020-05-22 14:43:22', '0000-00-00 00:00:00'),
(4730, '', '', 'getallproducts', '2020-05-22 14:43:29', '0000-00-00 00:00:00'),
(4731, '', '', 'getallproducts', '2020-05-22 14:46:50', '2000-02-01 00:00:00'),
(4732, '', '', 'getallproducts', '2020-05-22 14:46:57', '0000-00-00 00:00:00'),
(4733, '', '', 'getallproducts', '2020-05-22 14:47:00', '0000-00-00 00:00:00'),
(4734, '', '', 'getallproducts', '2020-05-22 14:47:15', '0000-00-00 00:00:00'),
(4735, '', '', 'getallproducts', '2020-05-22 14:47:15', '0000-00-00 00:00:00'),
(4736, '', '', 'getallproducts', '2020-05-22 14:47:15', '0000-00-00 00:00:00'),
(4737, '', '', 'getallproducts', '2020-05-22 14:47:44', '0000-00-00 00:00:00'),
(4738, '', '', 'getallproducts', '2020-05-22 14:47:51', '0000-00-00 00:00:00'),
(4739, '', '', 'getallproducts', '2020-05-22 14:48:14', '0000-00-00 00:00:00'),
(4740, '', '', 'getallproducts', '2020-05-22 14:48:37', '0000-00-00 00:00:00'),
(4741, '', '', 'getallproducts', '2020-05-22 14:48:41', '0000-00-00 00:00:00'),
(4742, '', '', 'getallproducts', '2020-05-22 14:48:46', '0000-00-00 00:00:00'),
(4743, '', '', 'getallproducts', '2020-05-22 14:49:02', '0000-00-00 00:00:00'),
(4744, '', '', 'getallproducts', '2020-05-22 14:49:08', '0000-00-00 00:00:00'),
(4745, '', '', 'getallproducts', '2020-05-22 14:51:03', '2000-01-15 00:00:00'),
(4746, '', '', 'getallproducts', '2020-05-22 14:51:13', '0000-00-00 00:00:00'),
(4747, '', '', 'getallproducts', '2020-05-22 14:51:15', '0000-00-00 00:00:00'),
(4748, '', '', 'getallproducts', '2020-05-22 14:51:24', '0000-00-00 00:00:00'),
(4749, '', '', 'homePage', '2020-05-22 14:53:54', '0000-00-00 00:00:00'),
(4750, '', '', 'getallproducts', '2020-05-22 14:53:57', '0000-00-00 00:00:00'),
(4751, '', '', 'getallproducts', '2020-05-22 14:54:38', '0000-00-00 00:00:00'),
(4752, '', '', 'getallproducts', '2020-05-22 14:54:44', '0000-00-00 00:00:00'),
(4753, '', '', 'homePage', '2020-05-22 15:07:28', '0000-00-00 00:00:00'),
(4754, '', '', 'homePage', '2020-05-22 15:07:30', '0000-00-00 00:00:00'),
(4755, '', '', 'homePage', '2020-05-22 15:08:13', '0000-00-00 00:00:00'),
(4756, '', '', 'getallproducts', '2020-05-22 15:08:31', '0000-00-00 00:00:00'),
(4757, '', '', 'getfilters', '2020-05-22 15:10:18', '2000-01-07 00:00:00'),
(4758, '', '', 'getfilters', '2020-05-22 15:11:02', '0000-00-00 00:00:00'),
(4759, '', '', 'getfilters', '2020-05-22 15:11:31', '0000-00-00 00:00:00'),
(4760, '', '', 'homePage', '2020-05-22 15:11:52', '0000-00-00 00:00:00'),
(4761, '', '', 'getallproducts', '2020-05-22 15:12:17', '0000-00-00 00:00:00'),
(4762, '', '', 'getfilters', '2020-05-22 15:12:22', '0000-00-00 00:00:00'),
(4763, '', '', 'getfilters', '2020-05-22 15:12:27', '0000-00-00 00:00:00'),
(4764, '', '', 'getfilters', '2020-05-22 15:13:46', '0000-00-00 00:00:00'),
(4765, '', '', 'getfilters', '2020-05-22 15:13:50', '0000-00-00 00:00:00'),
(4766, '', '', 'homePage', '2020-05-22 15:18:30', '0000-00-00 00:00:00'),
(4767, '', '', 'getallproducts', '2020-05-22 15:18:37', '0000-00-00 00:00:00'),
(4768, '', '', 'getfilters', '2020-05-22 15:18:41', '0000-00-00 00:00:00'),
(4769, '', '', 'getfilters', '2020-05-22 15:18:46', '0000-00-00 00:00:00'),
(4770, '', '', 'getfilters', '2020-05-22 15:19:54', '0000-00-00 00:00:00'),
(4771, '', '', 'getfilters', '2020-05-22 15:19:58', '0000-00-00 00:00:00'),
(4772, '', '', 'getfilters', '2020-05-22 15:20:13', '0000-00-00 00:00:00'),
(4773, '', '', 'getfilters', '2020-05-22 15:22:02', '2000-01-09 00:00:00'),
(4774, '', '', 'getfilters', '2020-05-22 15:22:43', '0000-00-00 00:00:00'),
(4775, '', '', 'homePage', '2020-05-22 15:47:56', '0000-00-00 00:00:00'),
(4776, '', '', 'homePage', '2020-05-22 15:50:02', '2000-01-26 00:00:00'),
(4777, '', '', 'getallproducts', '2020-05-22 15:50:25', '0000-00-00 00:00:00'),
(4778, '', '', 'getfilters', '2020-05-22 15:50:29', '0000-00-00 00:00:00'),
(4779, '', '', 'homePage', '2020-05-22 15:51:26', '0000-00-00 00:00:00'),
(4780, '', '', 'getallproducts', '2020-05-22 15:51:58', '0000-00-00 00:00:00'),
(4781, '', '', 'getfilters', '2020-05-22 15:52:00', '0000-00-00 00:00:00'),
(4782, '', '', 'getfilters', '2020-05-22 15:52:37', '0000-00-00 00:00:00'),
(4783, '', '', 'getfilters', '2020-05-22 15:53:23', '0000-00-00 00:00:00'),
(4784, '', '', 'getfilters', '2020-05-22 15:53:59', '0000-00-00 00:00:00'),
(4785, '', '', 'getfilters', '2020-05-22 15:56:49', '0000-00-00 00:00:00'),
(4786, '', '', 'getfilters', '2020-05-22 15:57:12', '0000-00-00 00:00:00'),
(4787, '', '', 'getfilters', '2020-05-22 15:58:15', '0000-00-00 00:00:00'),
(4788, '', '', 'getfilters', '2020-05-22 15:58:42', '0000-00-00 00:00:00'),
(4789, '', '', 'getfilters', '2020-05-22 16:00:17', '0000-00-00 00:00:00'),
(4790, '', '', 'getallproducts', '2020-05-22 16:16:12', '0000-00-00 00:00:00'),
(4791, '', '', 'getfilters', '2020-05-22 16:16:13', '0000-00-00 00:00:00'),
(4792, '', '', 'getfilters', '2020-05-22 16:16:40', '0000-00-00 00:00:00'),
(4793, '', '', 'getfilters', '2020-05-22 16:17:38', '0000-00-00 00:00:00'),
(4794, '', '', 'getfilters', '2020-05-22 16:19:23', '2000-01-05 00:00:00'),
(4795, '', '', 'getfilters', '2020-05-22 16:20:18', '0000-00-00 00:00:00'),
(4796, '', '', 'getfilters', '2020-05-22 16:20:23', '0000-00-00 00:00:00'),
(4797, '', '', 'getfilters', '2020-05-22 16:20:29', '0000-00-00 00:00:00'),
(4798, '', '', 'getfilters', '2020-05-22 16:20:33', '0000-00-00 00:00:00'),
(4799, '', '', 'getfilters', '2020-05-22 16:20:58', '0000-00-00 00:00:00'),
(4800, '', '', 'getfilters', '2020-05-22 16:21:02', '0000-00-00 00:00:00'),
(4801, '', '', 'getfilters', '2020-05-22 16:21:27', '0000-00-00 00:00:00'),
(4802, '', '', 'getfilters', '2020-05-22 16:21:31', '0000-00-00 00:00:00'),
(4803, '', '', 'getfilters', '2020-05-22 16:21:57', '0000-00-00 00:00:00'),
(4804, '', '', 'getfilters', '2020-05-22 16:22:02', '0000-00-00 00:00:00'),
(4805, '', '', 'getfilters', '2020-05-22 16:22:16', '0000-00-00 00:00:00'),
(4806, '', '', 'getfilters', '2020-05-22 16:24:03', '2000-01-07 00:00:00'),
(4807, '', '', 'getfilters', '2020-05-22 16:35:11', '0000-00-00 00:00:00'),
(4808, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-23 07:44:43', '0000-00-00 00:00:00'),
(4809, '', '', 'getfilters', '2020-05-23 07:48:19', '0000-00-00 00:00:00'),
(4810, '', '', 'homePage', '2020-05-23 07:52:43', '0000-00-00 00:00:00'),
(4811, '', '', 'getallproducts', '2020-05-23 07:54:26', '2000-01-03 00:00:00'),
(4812, '', '', 'getfilters', '2020-05-23 07:54:29', '0000-00-00 00:00:00'),
(4813, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-23 07:58:10', '2000-08-07 00:00:00'),
(4814, '', '', 'homePage', '2020-05-23 08:12:27', '0000-00-00 00:00:00'),
(4815, '', '', 'homePage', '2020-05-23 08:17:50', '2000-03-23 00:00:00'),
(4816, '', '', 'homePage', '2020-05-23 08:22:02', '0000-00-00 00:00:00'),
(4817, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:22:23', '0000-00-00 00:00:00'),
(4818, '', '', 'getallproducts', '2020-05-23 08:23:27', '0000-00-00 00:00:00'),
(4819, '', '', 'getfilters', '2020-05-23 08:23:29', '0000-00-00 00:00:00'),
(4820, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:26:29', '0000-00-00 00:00:00'),
(4821, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:27:22', '0000-00-00 00:00:00'),
(4822, '', '', 'getfilters', '2020-05-23 08:28:26', '0000-00-00 00:00:00'),
(4823, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:30:14', '0000-00-00 00:00:00'),
(4824, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:31:08', '0000-00-00 00:00:00'),
(4825, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:31:11', '0000-00-00 00:00:00'),
(4826, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:32:01', '0000-00-00 00:00:00'),
(4827, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:32:30', '0000-00-00 00:00:00'),
(4828, '', '', 'getfilters', '2020-05-23 08:32:31', '0000-00-00 00:00:00'),
(4829, '', '', 'getfilters', '2020-05-23 08:32:36', '0000-00-00 00:00:00'),
(4830, '', '', 'getfilters', '2020-05-23 08:32:48', '0000-00-00 00:00:00'),
(4831, '', '', 'getfilters', '2020-05-23 08:32:53', '0000-00-00 00:00:00'),
(4832, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:32:58', '0000-00-00 00:00:00'),
(4833, '', '', 'getfilters', '2020-05-23 08:33:11', '0000-00-00 00:00:00'),
(4834, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:33:14', '0000-00-00 00:00:00'),
(4835, '', '', 'getfilters', '2020-05-23 08:33:14', '0000-00-00 00:00:00'),
(4836, '', '', 'getfilters', '2020-05-23 08:33:30', '0000-00-00 00:00:00'),
(4837, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:34:10', '0000-00-00 00:00:00'),
(4838, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:34:51', '0000-00-00 00:00:00'),
(4839, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:36:21', '0000-00-00 00:00:00'),
(4840, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:39:35', '0000-00-00 00:00:00'),
(4841, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:41:55', '0000-00-00 00:00:00'),
(4842, 'ABCDEF', '192.168.1.11', 'getProductAttribute', '2020-05-23 08:43:08', '0000-00-00 00:00:00'),
(4843, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:45:41', '0000-00-00 00:00:00'),
(4844, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:46:28', '0000-00-00 00:00:00'),
(4845, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:47:10', '0000-00-00 00:00:00'),
(4846, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:47:38', '0000-00-00 00:00:00'),
(4847, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:48:30', '0000-00-00 00:00:00'),
(4848, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:49:25', '0000-00-00 00:00:00'),
(4849, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:49:47', '0000-00-00 00:00:00'),
(4850, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:50:10', '0000-00-00 00:00:00'),
(4851, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:50:36', '0000-00-00 00:00:00'),
(4852, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:51:17', '0000-00-00 00:00:00'),
(4853, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:51:39', '0000-00-00 00:00:00'),
(4854, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 08:54:34', '0000-00-00 00:00:00'),
(4855, '', '', 'getfilters', '2020-05-23 08:57:53', '0000-00-00 00:00:00'),
(4856, '', '', 'getfilters', '2020-05-23 08:57:53', '0000-00-00 00:00:00'),
(4857, '', '', 'getfilters', '2020-05-23 09:06:26', '2000-05-13 00:00:00'),
(4858, '', '', 'getfilters', '2020-05-23 09:06:48', '0000-00-00 00:00:00'),
(4859, '', '', 'getfilters', '2020-05-23 09:06:57', '0000-00-00 00:00:00'),
(4860, '', '', 'getfilters', '2020-05-23 09:08:06', '0000-00-00 00:00:00'),
(4861, '', '', 'getfilters', '2020-05-23 09:10:36', '0000-00-00 00:00:00'),
(4862, '', '', 'getfilters', '2020-05-23 09:12:21', '2000-01-05 00:00:00'),
(4863, '', '', 'getallproducts', '2020-05-23 09:14:02', '2000-01-01 00:00:00'),
(4864, '', '', 'getfilters', '2020-05-23 09:14:03', '0000-00-00 00:00:00'),
(4865, '', '', 'getfilters', '2020-05-23 09:15:30', '0000-00-00 00:00:00'),
(4866, '', '', 'homePage', '2020-05-23 09:30:40', '2000-09-10 00:00:00'),
(4867, '', '', 'getallproducts', '2020-05-23 09:30:49', '0000-00-00 00:00:00'),
(4868, '', '', 'getallproducts', '2020-05-23 09:30:55', '0000-00-00 00:00:00'),
(4869, '', '', 'getallproducts', '2020-05-23 09:30:58', '0000-00-00 00:00:00'),
(4870, '', '', 'homePage', '2020-05-23 09:34:45', '2000-02-27 00:00:00'),
(4871, '', '', 'getallproducts', '2020-05-23 09:34:52', '0000-00-00 00:00:00'),
(4872, '', '', 'getfilters', '2020-05-23 09:34:54', '0000-00-00 00:00:00'),
(4873, '', '', 'getfilters', '2020-05-23 09:35:44', '0000-00-00 00:00:00'),
(4874, '', '', 'getfilters', '2020-05-23 09:36:57', '0000-00-00 00:00:00'),
(4875, '', '', 'getfilters', '2020-05-23 09:39:01', '2000-01-24 00:00:00'),
(4876, '', '', 'homePage', '2020-05-23 10:35:57', '0000-00-00 00:00:00'),
(4877, '', '', 'getallproducts', '2020-05-23 10:39:04', '0000-00-00 00:00:00'),
(4878, '', '', 'getfilters', '2020-05-23 10:39:05', '0000-00-00 00:00:00'),
(4879, '', '', 'getfilters', '2020-05-23 10:48:57', '0000-00-00 00:00:00'),
(4880, '', '', 'getfilters', '2020-05-23 10:55:24', '0000-00-00 00:00:00'),
(4881, '', '', 'homePage', '2020-05-23 10:55:37', '0000-00-00 00:00:00'),
(4882, '', '', 'getallproducts', '2020-05-23 10:55:52', '0000-00-00 00:00:00'),
(4883, '', '', 'getfilters', '2020-05-23 10:55:53', '0000-00-00 00:00:00'),
(4884, '', '', 'getfilters', '2020-05-23 11:42:34', '0000-00-00 00:00:00'),
(4885, '', '', 'getfilters', '2020-05-23 11:42:39', '0000-00-00 00:00:00'),
(4886, '', '', 'getfilters', '2020-05-23 11:51:20', '2000-05-21 00:00:00'),
(4887, '', '', 'getfilters', '2020-05-23 11:52:33', '0000-00-00 00:00:00'),
(4888, '', '', 'getfilters', '2020-05-23 11:53:16', '0000-00-00 00:00:00'),
(4889, '', '', 'getallproducts', '2020-05-23 11:53:36', '0000-00-00 00:00:00'),
(4890, '', '', 'getfilters', '2020-05-23 11:53:37', '0000-00-00 00:00:00'),
(4891, '', '', 'getfilters', '2020-05-23 12:03:30', '0000-00-00 00:00:00'),
(4892, '', '', 'getfilters', '2020-05-23 12:05:23', '2000-01-13 00:00:00'),
(4893, '', '', 'getfilters', '2020-05-23 12:12:13', '2000-04-10 00:00:00'),
(4894, '', '', 'getfilters', '2020-05-23 12:12:21', '0000-00-00 00:00:00'),
(4895, '', '', 'getfilters', '2020-05-23 12:13:11', '0000-00-00 00:00:00'),
(4896, '', '', 'getfilters', '2020-05-23 12:13:17', '0000-00-00 00:00:00'),
(4897, '', '', 'getfilters', '2020-05-23 12:17:09', '0000-00-00 00:00:00'),
(4898, '', '', 'homePage', '2020-05-23 12:19:59', '0000-00-00 00:00:00'),
(4899, '', '', 'getallproducts', '2020-05-23 12:20:03', '0000-00-00 00:00:00'),
(4900, '', '', 'getfilters', '2020-05-23 12:20:07', '0000-00-00 00:00:00'),
(4901, '', '', 'getfilters', '2020-05-23 12:20:23', '0000-00-00 00:00:00'),
(4902, '', '', 'getfilters', '2020-05-23 12:23:40', '0000-00-00 00:00:00'),
(4903, '', '', 'getfilters', '2020-05-23 12:23:46', '0000-00-00 00:00:00'),
(4904, '', '', 'homePage', '2020-05-23 12:23:57', '0000-00-00 00:00:00'),
(4905, '', '', 'homePage', '2020-05-23 12:24:01', '0000-00-00 00:00:00'),
(4906, '', '', 'homePage', '2020-05-23 12:24:17', '0000-00-00 00:00:00'),
(4907, '', '', 'getallproducts', '2020-05-23 12:24:21', '0000-00-00 00:00:00'),
(4908, '', '', 'getfilters', '2020-05-23 12:24:22', '0000-00-00 00:00:00'),
(4909, '', '', 'getfilters', '2020-05-23 12:52:30', '0000-00-00 00:00:00'),
(4910, '', '', 'getfilters', '2020-05-23 12:52:43', '0000-00-00 00:00:00'),
(4911, '', '', 'getfilters', '2020-05-23 12:53:24', '0000-00-00 00:00:00'),
(4912, '', '', 'getfilters', '2020-05-23 12:53:34', '0000-00-00 00:00:00'),
(4913, '', '', 'getfilters', '2020-05-23 13:23:44', '0000-00-00 00:00:00');
INSERT INTO `http_call_record` (`id`, `device_id`, `ip`, `url`, `ping_time`, `difference_from_previous`) VALUES
(4914, '', '', 'getfilters', '2020-05-23 13:31:04', '0000-00-00 00:00:00'),
(4915, '', '', 'getfilters', '2020-05-23 13:31:38', '0000-00-00 00:00:00'),
(4916, '', '', 'getfilters', '2020-05-23 13:32:15', '0000-00-00 00:00:00'),
(4917, '', '', 'getfilters', '2020-05-23 13:41:48', '0000-00-00 00:00:00'),
(4918, '', '', 'getfilters', '2020-05-23 13:41:53', '0000-00-00 00:00:00'),
(4919, '', '', 'getfilters', '2020-05-23 13:41:58', '0000-00-00 00:00:00'),
(4920, '', '', 'getfilters', '2020-05-23 13:42:04', '0000-00-00 00:00:00'),
(4921, '', '', 'getfilters', '2020-05-23 13:50:05', '0000-00-00 00:00:00'),
(4922, '', '', 'getfilters', '2020-05-23 13:50:10', '0000-00-00 00:00:00'),
(4923, '', '', 'getfilters', '2020-05-23 13:52:30', '0000-00-00 00:00:00'),
(4924, '', '', 'getfilters', '2020-05-23 13:52:35', '0000-00-00 00:00:00'),
(4925, '', '', 'getallproducts', '2020-05-23 13:56:55', '0000-00-00 00:00:00'),
(4926, '', '', 'getfilters', '2020-05-23 14:07:14', '2000-06-19 00:00:00'),
(4927, '', '', 'getfilters', '2020-05-23 14:07:19', '0000-00-00 00:00:00'),
(4928, '', '', 'getfilters', '2020-05-23 14:08:28', '0000-00-00 00:00:00'),
(4929, '', '', 'getfilters', '2020-05-23 14:08:33', '0000-00-00 00:00:00'),
(4930, '', '', 'getfilters', '2020-05-23 14:10:44', '2000-01-31 00:00:00'),
(4931, '', '', 'getfilters', '2020-05-23 14:10:49', '0000-00-00 00:00:00'),
(4932, '', '', 'getfilters', '2020-05-23 14:11:57', '0000-00-00 00:00:00'),
(4933, '', '', 'getfilters', '2020-05-23 14:12:02', '0000-00-00 00:00:00'),
(4934, '', '', 'getfilters', '2020-05-23 14:13:03', '0000-00-00 00:00:00'),
(4935, '', '', 'getfilters', '2020-05-23 14:13:08', '0000-00-00 00:00:00'),
(4936, '', '', 'getfilters', '2020-05-23 14:13:24', '0000-00-00 00:00:00'),
(4937, '', '', 'getfilters', '2020-05-23 14:13:29', '0000-00-00 00:00:00'),
(4938, '', '', 'getfilters', '2020-05-23 14:14:11', '0000-00-00 00:00:00'),
(4939, '', '', 'getfilters', '2020-05-23 14:14:25', '0000-00-00 00:00:00'),
(4940, '', '', 'getfilters', '2020-05-23 14:14:30', '0000-00-00 00:00:00'),
(4941, '', '', 'getfilters', '2020-05-23 14:14:53', '0000-00-00 00:00:00'),
(4942, '', '', 'homePage', '2020-05-23 14:15:47', '0000-00-00 00:00:00'),
(4943, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 14:15:51', '0000-00-00 00:00:00'),
(4944, '', '', 'getallproducts', '2020-05-23 14:17:24', '0000-00-00 00:00:00'),
(4945, '', '', 'getfilters', '2020-05-23 14:17:32', '0000-00-00 00:00:00'),
(4946, '', '', 'getfilters', '2020-05-23 14:18:13', '0000-00-00 00:00:00'),
(4947, '', '', 'getfilters', '2020-05-23 14:19:31', '0000-00-00 00:00:00'),
(4948, '', '', 'getfilters', '2020-05-23 14:20:21', '0000-00-00 00:00:00'),
(4949, '', '', 'getfilters', '2020-05-23 14:20:25', '0000-00-00 00:00:00'),
(4950, '', '', 'getfilters', '2020-05-23 14:20:51', '0000-00-00 00:00:00'),
(4951, '', '', 'getfilters', '2020-05-23 14:21:11', '0000-00-00 00:00:00'),
(4952, '', '', 'getfilters', '2020-05-23 14:22:24', '0000-00-00 00:00:00'),
(4953, '', '', 'getallproducts', '2020-05-23 14:22:34', '0000-00-00 00:00:00'),
(4954, '', '', 'getfilters', '2020-05-23 14:22:53', '0000-00-00 00:00:00'),
(4955, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-23 14:25:34', '0000-00-00 00:00:00'),
(4956, '', '', 'getfilters', '2020-05-23 14:31:32', '2000-05-19 00:00:00'),
(4957, '', '', 'getfilters', '2020-05-23 14:31:43', '0000-00-00 00:00:00'),
(4958, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-23 14:36:15', '0000-00-00 00:00:00'),
(4959, '', '', 'getfilters', '2020-05-23 14:53:51', '0000-00-00 00:00:00'),
(4960, '', '', 'getfilters', '2020-05-23 14:53:56', '0000-00-00 00:00:00'),
(4961, '', '', 'homePage', '2020-05-23 15:04:27', '0000-00-00 00:00:00'),
(4962, '', '', 'homePage', '2020-05-23 15:09:52', '2000-03-25 00:00:00'),
(4963, '', '', 'homePage', '2020-05-23 15:09:56', '0000-00-00 00:00:00'),
(4964, '', '', 'homePage', '2020-05-23 15:09:58', '0000-00-00 00:00:00'),
(4965, '', '', 'homePage', '2020-05-23 15:10:00', '0000-00-00 00:00:00'),
(4966, '', '', 'homePage', '2020-05-23 15:10:14', '0000-00-00 00:00:00'),
(4967, '', '', 'homePage', '2020-05-23 15:10:17', '0000-00-00 00:00:00'),
(4968, '', '', 'homePage', '2020-05-23 15:29:52', '0000-00-00 00:00:00'),
(4969, '', '', 'homePage', '2020-05-23 15:29:53', '0000-00-00 00:00:00'),
(4970, '', '', 'homePage', '2020-05-23 15:29:59', '0000-00-00 00:00:00'),
(4971, '', '', 'getallproducts', '2020-05-23 15:30:17', '0000-00-00 00:00:00'),
(4972, '', '', 'likeproduct', '2020-05-23 15:32:13', '2000-01-16 00:00:00'),
(4973, '', '', 'getallproducts', '2020-05-23 15:32:18', '0000-00-00 00:00:00'),
(4974, '', '', 'likeproduct', '2020-05-23 15:32:21', '0000-00-00 00:00:00'),
(4975, '', '', 'getallproducts', '2020-05-23 15:32:25', '0000-00-00 00:00:00'),
(4976, '', '', 'unlikeproduct', '2020-05-23 15:32:38', '0000-00-00 00:00:00'),
(4977, '', '', 'getallproducts', '2020-05-23 15:32:47', '0000-00-00 00:00:00'),
(4978, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-23 15:33:37', '0000-00-00 00:00:00'),
(4979, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-23 15:33:45', '0000-00-00 00:00:00'),
(4980, '', '', 'homePage', '2020-05-23 15:33:59', '0000-00-00 00:00:00'),
(4981, '', '', 'getallproducts', '2020-05-23 15:34:02', '0000-00-00 00:00:00'),
(4982, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-23 15:34:14', '0000-00-00 00:00:00'),
(4983, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-23 15:34:34', '0000-00-00 00:00:00'),
(4984, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-23 15:34:39', '0000-00-00 00:00:00'),
(4985, 'ABCDEF', '192.168.1.11', 'deleteAlert', '2020-05-23 15:35:15', '0000-00-00 00:00:00'),
(4986, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-23 15:35:21', '0000-00-00 00:00:00'),
(4987, 'ABCDEF', '192.168.1.11', 'alertMe', '2020-05-23 15:35:32', '0000-00-00 00:00:00'),
(4988, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 15:42:44', '0000-00-00 00:00:00'),
(4989, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 15:43:06', '0000-00-00 00:00:00'),
(4990, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 15:43:30', '0000-00-00 00:00:00'),
(4991, '', '', 'getfilters', '2020-05-23 15:49:37', '0000-00-00 00:00:00'),
(4992, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-23 15:49:52', '0000-00-00 00:00:00'),
(4993, '', '', 'getfilters', '2020-05-23 15:58:12', '2000-05-15 00:00:00'),
(4994, '', '', 'getfilters', '2020-05-23 15:58:13', '0000-00-00 00:00:00'),
(4995, '', '', 'getfilters', '2020-05-23 15:58:13', '0000-00-00 00:00:00'),
(4996, '', '', 'getfilters', '2020-05-23 15:58:14', '0000-00-00 00:00:00'),
(4997, '', '', 'getfilters', '2020-05-23 15:58:15', '0000-00-00 00:00:00'),
(4998, '', '', 'getfilters', '2020-05-23 15:58:16', '0000-00-00 00:00:00'),
(4999, '', '', 'getfilters', '2020-05-23 15:58:17', '0000-00-00 00:00:00'),
(5000, '', '', 'getfilters', '2020-05-23 15:58:18', '0000-00-00 00:00:00'),
(5001, '', '', 'getfilters', '2020-05-23 15:58:19', '0000-00-00 00:00:00'),
(5002, '', '', 'getfilters', '2020-05-23 15:58:19', '0000-00-00 00:00:00'),
(5003, '', '', 'getfilters', '2020-05-23 15:58:20', '0000-00-00 00:00:00'),
(5004, '', '', 'getfilters', '2020-05-23 15:58:21', '0000-00-00 00:00:00'),
(5005, '', '', 'getfilters', '2020-05-23 15:58:22', '0000-00-00 00:00:00'),
(5006, '', '', 'getfilters', '2020-05-23 15:58:22', '0000-00-00 00:00:00'),
(5007, '', '', 'getfilters', '2020-05-23 15:58:23', '0000-00-00 00:00:00'),
(5008, '', '', 'getfilters', '2020-05-23 15:58:24', '0000-00-00 00:00:00'),
(5009, '', '', 'getfilters', '2020-05-23 15:58:25', '0000-00-00 00:00:00'),
(5010, '', '', 'getfilters', '2020-05-23 15:58:25', '0000-00-00 00:00:00'),
(5011, '', '', 'getfilters', '2020-05-23 15:58:31', '0000-00-00 00:00:00'),
(5012, '', '', 'getfilters', '2020-05-23 15:58:37', '0000-00-00 00:00:00'),
(5013, '', '', 'homePage', '2020-05-23 15:59:25', '0000-00-00 00:00:00'),
(5014, '', '', 'homePage', '2020-05-23 15:59:29', '0000-00-00 00:00:00'),
(5015, '', '', 'homePage', '2020-05-23 15:59:42', '0000-00-00 00:00:00'),
(5016, '', '', 'homePage', '2020-05-23 15:59:46', '0000-00-00 00:00:00'),
(5017, '', '', 'homePage', '2020-05-23 15:59:54', '0000-00-00 00:00:00'),
(5018, '', '', 'homePage', '2020-05-23 16:00:51', '0000-00-00 00:00:00'),
(5019, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:03:59', '0000-00-00 00:00:00'),
(5020, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:04:55', '0000-00-00 00:00:00'),
(5021, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:05:03', '0000-00-00 00:00:00'),
(5022, '', '', 'homePage', '2020-05-23 16:05:33', '0000-00-00 00:00:00'),
(5023, '', '', 'getallproducts', '2020-05-23 16:05:36', '0000-00-00 00:00:00'),
(5024, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:06:15', '0000-00-00 00:00:00'),
(5025, '', '', 'alertMe', '2020-05-23 16:08:44', '0000-00-00 00:00:00'),
(5026, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-23 16:09:06', '0000-00-00 00:00:00'),
(5027, 'ABCDEF', '192.168.1.11', 'deleteAlert', '2020-05-23 16:09:20', '0000-00-00 00:00:00'),
(5028, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-23 16:09:54', '0000-00-00 00:00:00'),
(5029, 'ABCDEF', '192.168.1.11', 'myAlert', '2020-05-23 16:09:58', '0000-00-00 00:00:00'),
(5030, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:11:13', '0000-00-00 00:00:00'),
(5031, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:11:17', '0000-00-00 00:00:00'),
(5032, '', '', 'homePage', '2020-05-23 16:11:22', '0000-00-00 00:00:00'),
(5033, '', '', 'getallproducts', '2020-05-23 16:11:26', '0000-00-00 00:00:00'),
(5034, '', '', 'getallproducts', '2020-05-23 16:13:47', '0000-00-00 00:00:00'),
(5035, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:20:30', '0000-00-00 00:00:00'),
(5036, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:20:55', '0000-00-00 00:00:00'),
(5037, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:22:28', '0000-00-00 00:00:00'),
(5038, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:23:14', '0000-00-00 00:00:00'),
(5039, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:26:22', '0000-00-00 00:00:00'),
(5040, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:26:29', '0000-00-00 00:00:00'),
(5041, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:27:46', '0000-00-00 00:00:00'),
(5042, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:30:04', '0000-00-00 00:00:00'),
(5043, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:30:48', '0000-00-00 00:00:00'),
(5044, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:31:33', '0000-00-00 00:00:00'),
(5045, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:33:23', '2000-01-10 00:00:00'),
(5046, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-23 16:33:37', '0000-00-00 00:00:00'),
(5047, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:44:12', '0000-00-00 00:00:00'),
(5048, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:44:19', '0000-00-00 00:00:00'),
(5049, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:44:29', '0000-00-00 00:00:00'),
(5050, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:44:56', '0000-00-00 00:00:00'),
(5051, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-24 18:45:22', '0000-00-00 00:00:00'),
(5052, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-24 18:45:28', '0000-00-00 00:00:00'),
(5053, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:45:54', '0000-00-00 00:00:00'),
(5054, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-24 18:46:30', '0000-00-00 00:00:00'),
(5055, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-24 18:46:38', '0000-00-00 00:00:00'),
(5056, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-24 18:46:41', '0000-00-00 00:00:00'),
(5057, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-24 18:46:58', '0000-00-00 00:00:00'),
(5058, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-24 18:47:03', '0000-00-00 00:00:00'),
(5059, 'ABCDEF', '192.168.1.11', 'getfilterproducts', '2020-05-24 18:48:05', '0000-00-00 00:00:00'),
(5060, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:48:19', '0000-00-00 00:00:00'),
(5061, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:48:27', '0000-00-00 00:00:00'),
(5062, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:48:30', '0000-00-00 00:00:00'),
(5063, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:49:20', '0000-00-00 00:00:00'),
(5064, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:49:50', '0000-00-00 00:00:00'),
(5065, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:49:58', '0000-00-00 00:00:00'),
(5066, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:50:32', '0000-00-00 00:00:00'),
(5067, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:51:04', '0000-00-00 00:00:00'),
(5068, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 18:51:16', '0000-00-00 00:00:00'),
(5069, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:00:49', '0000-00-00 00:00:00'),
(5070, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:01:03', '0000-00-00 00:00:00'),
(5071, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:06:58', '0000-00-00 00:00:00'),
(5072, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:11:10', '0000-00-00 00:00:00'),
(5073, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:11:44', '0000-00-00 00:00:00'),
(5074, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:15:28', '2000-02-24 00:00:00'),
(5075, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:15:51', '0000-00-00 00:00:00'),
(5076, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:16:15', '0000-00-00 00:00:00'),
(5077, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:16:47', '0000-00-00 00:00:00'),
(5078, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:16:57', '0000-00-00 00:00:00'),
(5079, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:18:15', '0000-00-00 00:00:00'),
(5080, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 19:18:37', '0000-00-00 00:00:00'),
(5081, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 22:39:15', '0000-00-00 00:00:00'),
(5082, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 22:39:39', '0000-00-00 00:00:00'),
(5083, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 22:39:58', '0000-00-00 00:00:00'),
(5084, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-24 22:40:23', '0000-00-00 00:00:00'),
(5085, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-24 23:20:25', '0000-00-00 00:00:00'),
(5086, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-24 23:20:29', '0000-00-00 00:00:00'),
(5087, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-24 23:20:33', '0000-00-00 00:00:00'),
(5088, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-24 23:20:38', '0000-00-00 00:00:00'),
(5089, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-24 23:21:04', '0000-00-00 00:00:00'),
(5090, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-24 23:23:03', '2000-01-19 00:00:00'),
(5091, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-24 23:23:07', '0000-00-00 00:00:00'),
(5092, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-24 23:24:17', '0000-00-00 00:00:00'),
(5093, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-24 23:24:48', '0000-00-00 00:00:00'),
(5094, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-24 23:25:40', '0000-00-00 00:00:00'),
(5095, '', '', 'homePage', '2020-05-25 00:09:45', '0000-00-00 00:00:00'),
(5096, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-26 09:40:53', '0000-00-00 00:00:00'),
(5097, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-26 09:43:25', '0000-00-00 00:00:00'),
(5098, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-26 09:46:54', '2000-02-09 00:00:00'),
(5099, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-26 09:47:16', '0000-00-00 00:00:00'),
(5100, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-26 09:54:57', '0000-00-00 00:00:00'),
(5101, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-26 09:56:10', '0000-00-00 00:00:00'),
(5102, 'ABCDEF', '192.168.1.11', 'productDetail', '2020-05-26 09:56:43', '0000-00-00 00:00:00'),
(5103, 'ABCDEF', '192.168.1.11', 'updatecustomerinfo', '2020-05-26 12:33:38', '0000-00-00 00:00:00'),
(5104, '', '', 'homePage', '2020-05-28 11:21:57', '0000-00-00 00:00:00'),
(5105, '', '', 'getallproducts', '2020-05-28 11:22:08', '0000-00-00 00:00:00'),
(5106, '', '', 'getfilters', '2020-05-28 11:22:11', '0000-00-00 00:00:00'),
(5107, '', '', 'getallproducts', '2020-05-28 11:23:02', '0000-00-00 00:00:00'),
(5108, '', '', 'alertMe', '2020-05-28 11:23:05', '0000-00-00 00:00:00'),
(5109, '', '', 'getallproducts', '2020-05-28 11:23:09', '0000-00-00 00:00:00'),
(5110, '', '', 'getallproducts', '2020-05-28 11:24:12', '0000-00-00 00:00:00'),
(5111, '', '', 'getallproducts', '2020-05-28 11:24:14', '0000-00-00 00:00:00'),
(5112, '', '', 'getfilters', '2020-05-28 11:24:24', '0000-00-00 00:00:00'),
(5113, 'ABCDEF', '192.168.1.11', 'getfilters', '2020-05-28 11:25:50', '0000-00-00 00:00:00'),
(5114, '', '', 'getfilters', '2020-05-28 11:27:58', '2000-02-14 00:00:00'),
(5115, '', '', 'getfilters', '2020-05-28 11:34:12', '0000-00-00 00:00:00'),
(5116, '', '', 'getfilters', '2020-05-28 12:13:37', '0000-00-00 00:00:00'),
(5117, '', '', 'getfilters', '2020-05-28 12:24:18', '0000-00-00 00:00:00'),
(5118, '', '', 'getfilters', '2020-05-28 12:27:04', '0000-00-00 00:00:00'),
(5119, '', '', 'getfilters', '2020-05-28 12:28:25', '0000-00-00 00:00:00'),
(5120, '', '', 'getfilters', '2020-05-28 13:04:13', '0000-00-00 00:00:00'),
(5121, '', '', 'getfilters', '2020-05-28 13:04:15', '0000-00-00 00:00:00'),
(5122, '', '', 'getfilters', '2020-05-28 13:04:41', '0000-00-00 00:00:00'),
(5123, '', '', 'getfilters', '2020-05-28 13:04:44', '0000-00-00 00:00:00'),
(5124, '', '', 'getfilters', '2020-05-28 13:10:37', '0000-00-00 00:00:00'),
(5125, '', '', 'homePage', '2020-05-28 13:10:46', '0000-00-00 00:00:00'),
(5126, '', '', 'getallproducts', '2020-05-28 13:10:54', '0000-00-00 00:00:00'),
(5127, '', '', 'getfilters', '2020-05-28 13:10:56', '0000-00-00 00:00:00'),
(5128, '', '', 'getfilters', '2020-05-28 13:15:57', '2000-03-01 00:00:00'),
(5129, '', '', 'getfilters', '2020-05-28 13:30:59', '2000-09-02 00:00:00'),
(5130, '', '', 'getallproducts', '2020-05-28 13:31:27', '0000-00-00 00:00:00'),
(5131, '', '', 'getfilters', '2020-05-28 13:31:30', '0000-00-00 00:00:00'),
(5132, '', '', 'getallproducts', '2020-05-28 13:31:50', '0000-00-00 00:00:00'),
(5133, '', '', 'getfilters', '2020-05-28 13:32:40', '0000-00-00 00:00:00'),
(5134, '', '', 'getallproducts', '2020-05-28 13:32:54', '0000-00-00 00:00:00'),
(5135, '', '', 'getfilters', '2020-05-28 13:33:07', '0000-00-00 00:00:00'),
(5136, '', '', 'getallproducts', '2020-05-28 13:33:16', '0000-00-00 00:00:00'),
(5137, '', '', 'homePage', '2020-05-28 13:40:25', '2000-04-29 00:00:00'),
(5138, '', '', 'homePage', '2020-05-28 13:44:14', '2000-02-29 00:00:00'),
(5139, '', '', 'homePage', '2020-05-28 17:08:23', '0000-00-00 00:00:00'),
(5140, '', '', 'getallproducts', '2020-05-28 17:08:27', '0000-00-00 00:00:00'),
(5141, '', '', 'getfilters', '2020-05-28 17:08:31', '0000-00-00 00:00:00'),
(5142, '', '', 'getallproducts', '2020-05-28 17:09:09', '0000-00-00 00:00:00'),
(5143, '', '', 'getallproducts', '2020-05-28 17:09:14', '0000-00-00 00:00:00'),
(5144, '', '', 'getfilters', '2020-05-28 17:09:21', '0000-00-00 00:00:00'),
(5145, '', '', 'getfilters', '2020-05-28 17:14:14', '0000-00-00 00:00:00'),
(5146, '', '', 'getallproducts', '2020-05-28 17:14:19', '0000-00-00 00:00:00'),
(5147, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:16:53', '0000-00-00 00:00:00'),
(5148, '', '', 'homePage', '2020-05-28 17:28:50', '0000-00-00 00:00:00'),
(5149, '', '', 'getallproducts', '2020-05-28 17:29:02', '0000-00-00 00:00:00'),
(5150, '', '', 'getfilters', '2020-05-28 17:29:03', '0000-00-00 00:00:00'),
(5151, '', '', 'getallproducts', '2020-05-28 17:29:15', '0000-00-00 00:00:00'),
(5152, '', '', 'getallproducts', '2020-05-28 17:29:57', '0000-00-00 00:00:00'),
(5153, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:34:35', '0000-00-00 00:00:00'),
(5154, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:34:55', '0000-00-00 00:00:00'),
(5155, '', '', 'unlikeproduct', '2020-05-28 17:35:34', '0000-00-00 00:00:00'),
(5156, '', '', 'getallproducts', '2020-05-28 17:35:37', '0000-00-00 00:00:00'),
(5157, '', '', 'unlikeproduct', '2020-05-28 17:35:40', '0000-00-00 00:00:00'),
(5158, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:36:08', '0000-00-00 00:00:00'),
(5159, '', '', 'getfilters', '2020-05-28 17:36:57', '0000-00-00 00:00:00'),
(5160, '', '', 'getallproducts', '2020-05-28 17:37:36', '0000-00-00 00:00:00'),
(5161, '', '', 'getallproducts', '2020-05-28 17:37:48', '0000-00-00 00:00:00'),
(5162, '', '', 'getallproducts', '2020-05-28 17:37:51', '0000-00-00 00:00:00'),
(5163, '', '', 'getfilters', '2020-05-28 17:37:54', '0000-00-00 00:00:00'),
(5164, '', '', 'getallproducts', '2020-05-28 17:38:04', '0000-00-00 00:00:00'),
(5165, '', '', 'getfilters', '2020-05-28 17:38:08', '0000-00-00 00:00:00'),
(5166, '', '', 'getallproducts', '2020-05-28 17:38:27', '0000-00-00 00:00:00'),
(5167, '', '', 'getallproducts', '2020-05-28 17:39:22', '0000-00-00 00:00:00'),
(5168, '', '', 'getfilters', '2020-05-28 17:39:30', '0000-00-00 00:00:00'),
(5169, '', '', 'getallproducts', '2020-05-28 17:39:45', '0000-00-00 00:00:00'),
(5170, '', '', 'getallproducts', '2020-05-28 17:40:05', '0000-00-00 00:00:00'),
(5171, '', '', 'likeproduct', '2020-05-28 17:40:55', '0000-00-00 00:00:00'),
(5172, '', '', 'getallproducts', '2020-05-28 17:40:58', '0000-00-00 00:00:00'),
(5173, '', '', 'getallproducts', '2020-05-28 17:42:45', '2000-01-07 00:00:00'),
(5174, '', '', 'likeproduct', '2020-05-28 17:42:52', '0000-00-00 00:00:00'),
(5175, '', '', 'getallproducts', '2020-05-28 17:42:56', '0000-00-00 00:00:00'),
(5176, '', '', 'unlikeproduct', '2020-05-28 17:43:08', '0000-00-00 00:00:00'),
(5177, '', '', 'getallproducts', '2020-05-28 17:43:12', '0000-00-00 00:00:00'),
(5178, '', '', 'unlikeproduct', '2020-05-28 17:43:16', '0000-00-00 00:00:00'),
(5179, '', '', 'getallproducts', '2020-05-28 17:43:20', '0000-00-00 00:00:00'),
(5180, '', '', 'unlikeproduct', '2020-05-28 17:43:23', '0000-00-00 00:00:00'),
(5181, '', '', 'likeproduct', '2020-05-28 17:43:25', '0000-00-00 00:00:00'),
(5182, '', '', 'getallproducts', '2020-05-28 17:43:29', '0000-00-00 00:00:00'),
(5183, '', '', 'getallproducts', '2020-05-28 17:44:39', '0000-00-00 00:00:00'),
(5184, '', '', 'getallproducts', '2020-05-28 17:44:46', '0000-00-00 00:00:00'),
(5185, '', '', 'unlikeproduct', '2020-05-28 17:44:52', '0000-00-00 00:00:00'),
(5186, '', '', 'getallproducts', '2020-05-28 17:44:55', '0000-00-00 00:00:00'),
(5187, '', '', 'unlikeproduct', '2020-05-28 17:44:59', '0000-00-00 00:00:00'),
(5188, '', '', 'getallproducts', '2020-05-28 17:45:05', '0000-00-00 00:00:00'),
(5189, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:46:00', '0000-00-00 00:00:00'),
(5190, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:46:16', '0000-00-00 00:00:00'),
(5191, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:46:33', '0000-00-00 00:00:00'),
(5192, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:47:36', '0000-00-00 00:00:00'),
(5193, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:48:15', '0000-00-00 00:00:00'),
(5194, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:48:18', '0000-00-00 00:00:00'),
(5195, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:48:44', '0000-00-00 00:00:00'),
(5196, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:51:26', '0000-00-00 00:00:00'),
(5197, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:53:21', '2000-01-15 00:00:00'),
(5198, '', '', 'getallproducts', '2020-05-28 17:53:41', '2000-05-16 00:00:00'),
(5199, '', '', 'getallproducts', '2020-05-28 17:53:45', '0000-00-00 00:00:00'),
(5200, '', '', 'homePage', '2020-05-28 17:54:02', '0000-00-00 00:00:00'),
(5201, '', '', 'getallproducts', '2020-05-28 17:54:05', '0000-00-00 00:00:00'),
(5202, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:54:06', '0000-00-00 00:00:00'),
(5203, '', '', 'getallproducts', '2020-05-28 17:54:11', '0000-00-00 00:00:00'),
(5204, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 17:54:23', '0000-00-00 00:00:00'),
(5205, '', '', 'homePage', '2020-05-28 17:54:39', '0000-00-00 00:00:00'),
(5206, '', '', 'getallproducts', '2020-05-28 17:54:42', '0000-00-00 00:00:00'),
(5207, '', '', 'likeproduct', '2020-05-28 17:54:47', '0000-00-00 00:00:00'),
(5208, '', '', 'getallproducts', '2020-05-28 17:54:51', '0000-00-00 00:00:00'),
(5209, '', '', 'unlikeproduct', '2020-05-28 17:54:55', '0000-00-00 00:00:00'),
(5210, '', '', 'getallproducts', '2020-05-28 17:54:58', '0000-00-00 00:00:00'),
(5211, '', '', 'getallproducts', '2020-05-28 17:56:34', '0000-00-00 00:00:00'),
(5212, '', '', 'getallproducts', '2020-05-28 17:56:39', '0000-00-00 00:00:00'),
(5213, '', '', 'getfilters', '2020-05-28 17:58:08', '0000-00-00 00:00:00'),
(5214, '', '', 'getallproducts', '2020-05-28 17:58:28', '0000-00-00 00:00:00'),
(5215, '', '', 'getallproducts', '2020-05-28 17:58:57', '0000-00-00 00:00:00'),
(5216, '', '', 'getallproducts', '2020-05-28 17:59:43', '0000-00-00 00:00:00'),
(5217, '', '', 'getallproducts', '2020-05-28 17:59:48', '0000-00-00 00:00:00'),
(5218, '', '', 'getallproducts', '2020-05-28 18:00:00', '0000-00-00 00:00:00'),
(5219, '', '', 'getallproducts', '2020-05-28 18:00:18', '0000-00-00 00:00:00'),
(5220, '', '', 'getallproducts', '2020-05-28 18:00:23', '0000-00-00 00:00:00'),
(5221, '', '', 'getallproducts', '2020-05-28 18:00:29', '0000-00-00 00:00:00'),
(5222, '', '', 'getallproducts', '2020-05-28 18:00:49', '0000-00-00 00:00:00'),
(5223, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 18:01:38', '0000-00-00 00:00:00'),
(5224, '', '', 'homePage', '2020-05-28 18:11:09', '2000-06-20 00:00:00'),
(5225, '', '', 'getallproducts', '2020-05-28 18:11:11', '0000-00-00 00:00:00'),
(5226, '', '', 'getfilters', '2020-05-28 18:11:20', '0000-00-00 00:00:00'),
(5227, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 18:11:35', '0000-00-00 00:00:00'),
(5228, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 18:11:43', '0000-00-00 00:00:00'),
(5229, '', '', 'getallproducts', '2020-05-28 18:11:46', '0000-00-00 00:00:00'),
(5230, '', '', 'homePage', '2020-05-28 18:11:56', '0000-00-00 00:00:00'),
(5231, '', '', 'getallproducts', '2020-05-28 18:12:00', '0000-00-00 00:00:00'),
(5232, '', '', 'getfilters', '2020-05-28 18:12:02', '0000-00-00 00:00:00'),
(5233, '', '', 'getallproducts', '2020-05-28 18:12:20', '0000-00-00 00:00:00'),
(5234, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 18:12:20', '0000-00-00 00:00:00'),
(5235, 'ABCDEF', '192.168.1.11', 'getallproducts', '2020-05-28 18:12:52', '0000-00-00 00:00:00'),
(5236, '', '', 'getallproducts', '2020-05-28 18:13:30', '0000-00-00 00:00:00'),
(5237, '', '', 'getallproducts', '2020-05-28 18:14:01', '0000-00-00 00:00:00'),
(5238, '', '', 'getfilters', '2020-05-28 18:14:14', '0000-00-00 00:00:00'),
(5239, '', '', 'homePage', '2020-05-28 18:14:34', '0000-00-00 00:00:00'),
(5240, '', '', 'getallproducts', '2020-05-28 18:14:44', '0000-00-00 00:00:00'),
(5241, '', '', 'getfilters', '2020-05-28 18:14:46', '0000-00-00 00:00:00'),
(5242, '', '', 'getallproducts', '2020-05-28 18:14:55', '0000-00-00 00:00:00'),
(5243, '', '', 'getfilters', '2020-05-28 18:16:02', '0000-00-00 00:00:00'),
(5244, '', '', 'getallproducts', '2020-05-28 18:16:11', '0000-00-00 00:00:00'),
(5245, '', '', 'getfilters', '2020-05-28 18:16:21', '0000-00-00 00:00:00'),
(5246, '', '', 'getallproducts', '2020-05-28 18:16:29', '0000-00-00 00:00:00'),
(5247, '', '', 'getfilters', '2020-05-28 18:16:42', '0000-00-00 00:00:00'),
(5248, '', '', 'getallproducts', '2020-05-28 18:16:50', '0000-00-00 00:00:00'),
(5249, '', '', 'getfilters', '2020-05-28 18:17:18', '0000-00-00 00:00:00'),
(5250, '', '', 'getallproducts', '2020-05-28 18:17:21', '0000-00-00 00:00:00'),
(5251, '', '', 'getfilters', '2020-05-28 18:17:35', '0000-00-00 00:00:00'),
(5252, '', '', 'getallproducts', '2020-05-28 18:17:40', '0000-00-00 00:00:00'),
(5253, '', '', 'getfilters', '2020-05-28 18:17:50', '0000-00-00 00:00:00'),
(5254, '', '', 'homePage', '2020-05-28 18:19:16', '0000-00-00 00:00:00'),
(5255, '', '', 'homePage', '2020-05-28 18:21:36', '0000-00-00 00:00:00'),
(5256, '', '', 'homePage', '2020-05-28 18:23:16', '0000-00-00 00:00:00'),
(5257, '', '', 'homePage', '2020-05-28 18:23:19', '0000-00-00 00:00:00'),
(5258, '', '', 'homePage', '2020-05-28 18:25:17', '2000-01-18 00:00:00'),
(5259, '', '', 'getallproducts', '2020-05-28 18:25:43', '0000-00-00 00:00:00'),
(5260, '', '', 'getfilters', '2020-05-28 18:25:48', '0000-00-00 00:00:00'),
(5261, '', '', 'getallproducts', '2020-05-28 18:25:52', '0000-00-00 00:00:00'),
(5262, '', '', 'getallproducts', '2020-05-28 18:25:59', '0000-00-00 00:00:00'),
(5263, '', '', 'getallproducts', '2020-05-28 18:26:02', '0000-00-00 00:00:00'),
(5264, '', '', 'getallproducts', '2020-05-28 18:26:05', '0000-00-00 00:00:00'),
(5265, '', '', 'getfilters', '2020-05-28 18:26:08', '0000-00-00 00:00:00'),
(5266, '', '', 'getallproducts', '2020-05-28 18:26:13', '0000-00-00 00:00:00'),
(5267, '', '', 'getfilters', '2020-05-28 18:26:22', '0000-00-00 00:00:00'),
(5268, '', '', 'getfilters', '2020-05-28 18:26:25', '0000-00-00 00:00:00'),
(5269, '', '', 'getallproducts', '2020-05-28 18:26:32', '0000-00-00 00:00:00'),
(5270, '', '', 'getfilters', '2020-05-28 18:26:35', '0000-00-00 00:00:00'),
(5271, '', '', 'getallproducts', '2020-05-28 18:26:45', '0000-00-00 00:00:00'),
(5272, '', '', 'getfilters', '2020-05-28 18:26:51', '0000-00-00 00:00:00'),
(5273, '', '', 'getallproducts', '2020-05-28 18:26:57', '0000-00-00 00:00:00'),
(5274, '', '', 'getfilters', '2020-05-28 18:27:00', '0000-00-00 00:00:00'),
(5275, '', '', 'getallproducts', '2020-05-28 18:27:03', '0000-00-00 00:00:00'),
(5276, '', '', 'getfilters', '2020-05-28 18:27:05', '0000-00-00 00:00:00'),
(5277, '', '', 'getallproducts', '2020-05-28 18:27:33', '0000-00-00 00:00:00'),
(5278, '', '', 'getallproducts', '2020-05-28 18:27:35', '0000-00-00 00:00:00'),
(5279, '', '', 'getfilters', '2020-05-28 18:27:38', '0000-00-00 00:00:00'),
(5280, '', '', 'getallproducts', '2020-05-28 18:27:51', '0000-00-00 00:00:00'),
(5281, '', '', 'getfilters', '2020-05-28 18:27:54', '0000-00-00 00:00:00'),
(5282, '', '', 'getfilters', '2020-05-28 18:31:15', '2000-02-01 00:00:00'),
(5283, '', '', 'getfilters', '2020-05-28 18:31:34', '0000-00-00 00:00:00'),
(5284, '', '', 'getallproducts', '2020-05-28 18:31:38', '0000-00-00 00:00:00'),
(5285, '', '', 'getfilters', '2020-05-28 18:31:45', '0000-00-00 00:00:00'),
(5286, '', '', 'getallproducts', '2020-05-28 18:32:53', '0000-00-00 00:00:00'),
(5287, '', '', 'getfilters', '2020-05-28 18:32:59', '0000-00-00 00:00:00'),
(5288, '', '', 'getallproducts', '2020-05-28 18:33:09', '0000-00-00 00:00:00'),
(5289, '', '', 'getfilters', '2020-05-28 18:34:01', '0000-00-00 00:00:00'),
(5290, '', '', 'getfilters', '2020-05-28 18:34:21', '0000-00-00 00:00:00'),
(5291, '', '', 'getallproducts', '2020-05-28 18:34:22', '0000-00-00 00:00:00'),
(5292, '', '', 'getallproducts', '2020-05-28 18:34:27', '0000-00-00 00:00:00'),
(5293, '', '', 'getfilters', '2020-05-28 18:34:33', '0000-00-00 00:00:00'),
(5294, '', '', 'getallproducts', '2020-05-28 18:36:12', '0000-00-00 00:00:00'),
(5295, '', '', 'getfilters', '2020-05-28 18:36:16', '0000-00-00 00:00:00'),
(5296, '', '', 'homePage', '2020-05-28 18:41:23', '2000-03-07 00:00:00'),
(5297, '', '', 'getallproducts', '2020-05-28 18:41:25', '0000-00-00 00:00:00'),
(5298, '', '', 'getfilters', '2020-05-28 18:41:26', '0000-00-00 00:00:00'),
(5299, '', '', 'getallproducts', '2020-05-28 18:42:49', '0000-00-00 00:00:00'),
(5300, '', '', 'getfilters', '2020-05-28 18:42:57', '0000-00-00 00:00:00'),
(5301, '', '', 'getallproducts', '2020-05-28 18:43:06', '0000-00-00 00:00:00'),
(5302, '', '', 'getfilters', '2020-05-28 18:43:07', '0000-00-00 00:00:00'),
(5303, '', '', 'getallproducts', '2020-05-28 18:43:10', '0000-00-00 00:00:00'),
(5304, '', '', 'getfilters', '2020-05-28 18:43:13', '0000-00-00 00:00:00'),
(5305, '', '', 'homePage', '2020-05-29 01:36:03', '0000-00-00 00:00:00'),
(5306, '', '', 'getallproducts', '2020-05-29 01:36:19', '0000-00-00 00:00:00'),
(5307, '', '', 'homePage', '2020-05-29 02:08:41', '0000-00-00 00:00:00'),
(5308, '', '', 'homePage', '2020-05-29 02:08:42', '0000-00-00 00:00:00'),
(5309, '', '', 'getallproducts', '2020-05-29 02:08:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hula_our_infos`
--

CREATE TABLE `hula_our_infos` (
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'XUF1110211.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '0S9Uj10711.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '49YbL10411.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'JqYfZ11207.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '6Q4Qy11507.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'jOVnc11207.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Ake4A11107.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'nDQtA11407.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'ueyod11407.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'xD6MF11207.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'YZyoU11507.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'RLshK11309.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'pTZdI11309.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '2t7BU11909.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'O0cLp11909.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'ncXhn11709.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '3876V11310.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '80IGj11510.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'ueeqM11410.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'UrgVW11410.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'a18kN11510.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'qQM0R11310.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'VrhhT11510.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'gSkR011310.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'DXoxt11610.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'N4WSZ11310.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'z9MLR11610.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'YNVyV11410.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'YinE411810.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, '97VNC11210.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'zZZ2n11710.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'vMNsa11710.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'qujIz11610.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'PJG0C11511.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'SKOMJ11512.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Vel4Y18201.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'pcucQ18201.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'oPrtp10207.png', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_categories`
--

CREATE TABLE `image_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `image_type` enum('ACTUAL','THUMBNAIL','LARGE','MEDIUM') COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_categories`
--

INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(84, 83, 'ACTUAL', 277, 370, 'images/media/2019/10/JqYfZ11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 83, 'THUMBNAIL', 112, 150, 'images/media/2019/10/thumbnail1570778231JqYfZ11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 84, 'ACTUAL', 301, 770, 'images/media/2019/10/6Q4Qy11507.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 85, 'ACTUAL', 550, 368, 'images/media/2019/10/jOVnc11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 85, 'THUMBNAIL', 150, 100, 'images/media/2019/10/thumbnail1570778446jOVnc11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 85, 'MEDIUM', 400, 268, 'images/media/2019/10/medium1570778446jOVnc11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 86, 'ACTUAL', 220, 370, 'images/media/2019/10/Ake4A11107.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 86, 'THUMBNAIL', 89, 150, 'images/media/2019/10/thumbnail1570778447Ake4A11107.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 89, 'ACTUAL', 229, 270, 'images/media/2019/10/nDQtA11407.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 89, 'THUMBNAIL', 127, 150, 'images/media/2019/10/thumbnail1570778680nDQtA11407.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 90, 'ACTUAL', 298, 568, 'images/media/2019/10/ueyod11407.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 90, 'THUMBNAIL', 79, 150, 'images/media/2019/10/thumbnail1570778749ueyod11407.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 90, 'MEDIUM', 210, 400, 'images/media/2019/10/medium1570778749ueyod11407.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 91, 'ACTUAL', 490, 570, 'images/media/2019/10/xD6MF11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 91, 'THUMBNAIL', 129, 150, 'images/media/2019/10/thumbnail1570778967xD6MF11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 91, 'MEDIUM', 344, 400, 'images/media/2019/10/medium1570778967xD6MF11207.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 92, 'ACTUAL', 229, 270, 'images/media/2019/10/YZyoU11507.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 92, 'THUMBNAIL', 127, 150, 'images/media/2019/10/thumbnail1570778968YZyoU11507.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 93, 'ACTUAL', 301, 770, 'images/media/2019/10/RLshK11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 93, 'THUMBNAIL', 59, 150, 'images/media/2019/10/thumbnail1570787475RLshK11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 93, 'MEDIUM', 156, 400, 'images/media/2019/10/medium1570787476RLshK11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 94, 'ACTUAL', 211, 570, 'images/media/2019/10/pTZdI11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 94, 'THUMBNAIL', 56, 150, 'images/media/2019/10/thumbnail1570787731pTZdI11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 94, 'MEDIUM', 148, 400, 'images/media/2019/10/medium1570787731pTZdI11309.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 95, 'ACTUAL', 451, 570, 'images/media/2019/10/2t7BU11909.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 95, 'THUMBNAIL', 119, 150, 'images/media/2019/10/thumbnail15707877532t7BU11909.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 95, 'MEDIUM', 316, 400, 'images/media/2019/10/medium15707877542t7BU11909.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 96, 'ACTUAL', 211, 270, 'images/media/2019/10/O0cLp11909.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 96, 'THUMBNAIL', 117, 150, 'images/media/2019/10/thumbnail1570787792O0cLp11909.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 97, 'ACTUAL', 298, 568, 'images/media/2019/10/ncXhn11709.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 97, 'THUMBNAIL', 79, 150, 'images/media/2019/10/thumbnail1570787936ncXhn11709.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 97, 'MEDIUM', 210, 400, 'images/media/2019/10/medium1570787936ncXhn11709.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 98, 'ACTUAL', 452, 569, 'images/media/2019/10/3876V11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 98, 'THUMBNAIL', 119, 150, 'images/media/2019/10/thumbnail15707880203876V11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 98, 'MEDIUM', 318, 400, 'images/media/2019/10/medium15707880213876V11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 99, 'ACTUAL', 451, 271, 'images/media/2019/10/80IGj11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 99, 'THUMBNAIL', 150, 90, 'images/media/2019/10/thumbnail157078802180IGj11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 99, 'MEDIUM', 400, 240, 'images/media/2019/10/medium157078802180IGj11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 100, 'ACTUAL', 493, 370, 'images/media/2019/10/ueeqM11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 100, 'THUMBNAIL', 150, 113, 'images/media/2019/10/thumbnail1570788170ueeqM11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 100, 'MEDIUM', 400, 300, 'images/media/2019/10/medium1570788171ueeqM11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 101, 'ACTUAL', 230, 370, 'images/media/2019/10/UrgVW11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 101, 'THUMBNAIL', 93, 150, 'images/media/2019/10/thumbnail1570788171UrgVW11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 102, 'ACTUAL', 230, 370, 'images/media/2019/10/a18kN11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 102, 'THUMBNAIL', 93, 150, 'images/media/2019/10/thumbnail1570788301a18kN11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 103, 'ACTUAL', 493, 370, 'images/media/2019/10/qQM0R11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 103, 'THUMBNAIL', 150, 113, 'images/media/2019/10/thumbnail1570788302qQM0R11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 103, 'MEDIUM', 400, 300, 'images/media/2019/10/medium1570788302qQM0R11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 104, 'ACTUAL', 259, 770, 'images/media/2019/10/VrhhT11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 104, 'THUMBNAIL', 50, 150, 'images/media/2019/10/thumbnail1570788382VrhhT11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 104, 'MEDIUM', 135, 400, 'images/media/2019/10/medium1570788382VrhhT11510.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 105, 'ACTUAL', 546, 372, 'images/media/2019/10/gSkR011310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 105, 'THUMBNAIL', 150, 102, 'images/media/2019/10/thumbnail1570788383gSkR011310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 105, 'MEDIUM', 400, 273, 'images/media/2019/10/medium1570788383gSkR011310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 106, 'ACTUAL', 430, 1599, 'images/media/2019/10/DXoxt11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 106, 'THUMBNAIL', 40, 150, 'images/media/2019/10/thumbnail1570789393DXoxt11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 106, 'MEDIUM', 108, 400, 'images/media/2019/10/medium1570789394DXoxt11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 106, 'LARGE', 242, 900, 'images/media/2019/10/large1570789394DXoxt11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 107, 'ACTUAL', 236, 1169, 'images/media/2019/10/N4WSZ11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 107, 'THUMBNAIL', 30, 150, 'images/media/2019/10/thumbnail1570789395N4WSZ11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 107, 'MEDIUM', 81, 400, 'images/media/2019/10/medium1570789395N4WSZ11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 107, 'LARGE', 182, 900, 'images/media/2019/10/large1570789395N4WSZ11310.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 108, 'ACTUAL', 421, 1170, 'images/media/2019/10/z9MLR11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 108, 'THUMBNAIL', 54, 150, 'images/media/2019/10/thumbnail1570789643z9MLR11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 108, 'MEDIUM', 144, 400, 'images/media/2019/10/medium1570789643z9MLR11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 108, 'LARGE', 324, 900, 'images/media/2019/10/large1570789644z9MLR11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 109, 'ACTUAL', 418, 885, 'images/media/2019/10/YNVyV11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 109, 'THUMBNAIL', 71, 150, 'images/media/2019/10/thumbnail1570789935YNVyV11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 109, 'MEDIUM', 189, 400, 'images/media/2019/10/medium1570789935YNVyV11410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 110, 'ACTUAL', 387, 770, 'images/media/2019/10/YinE411810.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 110, 'THUMBNAIL', 75, 150, 'images/media/2019/10/thumbnail1570790072YinE411810.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 110, 'MEDIUM', 201, 400, 'images/media/2019/10/medium1570790072YinE411810.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 111, 'ACTUAL', 421, 1600, 'images/media/2019/10/97VNC11210.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 111, 'THUMBNAIL', 39, 150, 'images/media/2019/10/thumbnail157079031897VNC11210.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 111, 'MEDIUM', 105, 400, 'images/media/2019/10/medium157079031997VNC11210.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 111, 'LARGE', 237, 900, 'images/media/2019/10/large157079031997VNC11210.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 114, 'ACTUAL', 179, 370, 'images/media/2019/10/zZZ2n11710.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 114, 'THUMBNAIL', 73, 150, 'images/media/2019/10/thumbnail1570790472zZZ2n11710.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 115, 'ACTUAL', 211, 370, 'images/media/2019/10/vMNsa11710.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 115, 'THUMBNAIL', 86, 150, 'images/media/2019/10/thumbnail1570790553vMNsa11710.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 116, 'ACTUAL', 208, 465, 'images/media/2019/10/qujIz11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 116, 'THUMBNAIL', 67, 150, 'images/media/2019/10/thumbnail1570790554qujIz11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 116, 'MEDIUM', 179, 400, 'images/media/2019/10/medium1570790554qujIz11610.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 118, 'ACTUAL', 20, 30, 'images/media/2019/10/PJG0C11511.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 119, 'ACTUAL', 20, 30, 'images/media/2019/10/SKOMJ11512.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 120, 'ACTUAL', 144, 144, 'images/media/2019/10/Vel4Y18201.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 121, 'ACTUAL', 4218, 3033, 'images/media/2019/10/pcucQ18201.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 122, 'ACTUAL', 1737, 2737, 'images/media/2020/02/oPrtp10207.png', NULL, NULL),
(181, 122, 'THUMBNAIL', 95, 150, 'images/media/2020/02/thumbnail1581320993oPrtp10207.png', NULL, NULL),
(182, 122, 'MEDIUM', 254, 400, 'images/media/2020/02/medium1581320993oPrtp10207.png', NULL, NULL),
(183, 122, 'LARGE', 571, 900, 'images/media/2020/02/large1581320994oPrtp10207.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_ref_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `added_date` int(11) NOT NULL,
  `reference_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `stock_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_ref_id`, `admin_id`, `added_date`, `reference_code`, `stock`, `products_id`, `purchase_price`, `stock_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '123', 10, 1, '122.00', 'in', '2019-10-18 06:06:16', '0000-00-00 00:00:00'),
(2, 1, 0, 'sadsad', 100, 2, '150.00', 'in', '2019-10-23 14:10:53', '0000-00-00 00:00:00'),
(3, 1, 0, 'sfsdf', 12, 3, '123.00', 'in', '2019-10-23 14:25:46', '0000-00-00 00:00:00'),
(4, 1, 0, 'sdsad', 123, 3, '1232.00', 'in', '2019-10-23 14:26:00', '0000-00-00 00:00:00'),
(5, 1, 0, 'dsfds', 123, 3, '123.00', 'in', '2019-10-23 14:26:11', '0000-00-00 00:00:00'),
(6, 1, 0, '0123', 10, 4, '100.00', 'in', '2019-10-23 15:05:29', '0000-00-00 00:00:00'),
(7, 0, 1572339750, '', 1, 2, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 0, 1574061685, '', 1, 2, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 0, 1574062794, '', 3, 2, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 0, 1574063976, '', 1, 2, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 0, 1574079214, '', 1, 117, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 0, 1574079280, '', 1, 117, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 0, 1574079289, '', 1, 117, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 0, 1574079383, '', 1, 117, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 0, 'cxx', 1, 3, '111.00', 'in', '2019-11-25 11:49:23', '0000-00-00 00:00:00'),
(16, 1, 0, 'cxx', 1, 3, '111.00', 'in', '2019-11-25 11:50:00', '0000-00-00 00:00:00'),
(17, 1, 0, 's33', 433, 3, '11.00', 'in', '2019-11-25 11:50:23', '0000-00-00 00:00:00'),
(18, 0, 1574664929, '', 6, 1, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 0, 1574667048, '', 9, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1, 0, 's33', 5, 4, '333.00', 'in', '2019-11-25 12:43:03', '0000-00-00 00:00:00'),
(21, 0, 1574668261, '', 5, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 1, 0, 's33', 5, 4, '5435.00', 'in', '2019-11-25 12:51:37', '0000-00-00 00:00:00'),
(23, 0, 1574668412, '', 5, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 1, 0, 's33', 5, 4, '44.00', 'in', '2019-11-25 13:02:46', '0000-00-00 00:00:00'),
(25, 0, 1574669017, '', 5, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 1, 0, 's33', 5, 4, '323.00', 'in', '2019-11-25 13:04:13', '0000-00-00 00:00:00'),
(27, 0, 1574669109, '', 5, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 1, 0, 's33', 5, 4, '11.00', 'in', '2019-11-25 13:08:02', '0000-00-00 00:00:00'),
(29, 0, 1574669352, '', 5, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 0, 1574669352, '', 1, 1, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 1, 0, 's33', 5, 4, '342.00', 'in', '2019-11-25 13:28:18', '0000-00-00 00:00:00'),
(32, 0, 1574670645, '', 5, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 1, 0, 't', 5, 4, '555.00', 'in', '2019-11-25 13:31:50', '0000-00-00 00:00:00'),
(34, 0, 1574670754, '', 5, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 1, 0, 's33', 5, 4, '11.00', 'in', '2019-11-25 13:32:58', '0000-00-00 00:00:00'),
(36, 0, 1574670830, '', 5, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 1, 0, 'h', 5, 4, '342.00', 'in', '2019-11-25 13:39:42', '0000-00-00 00:00:00'),
(38, 0, 1574671232, '', 5, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 1, 0, 'd', 5, 4, '44.00', 'in', '2019-11-25 13:43:57', '0000-00-00 00:00:00'),
(40, 0, 1574671504, '', 5, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 1, 0, 'h', 5, 4, '234.00', 'in', '2019-11-25 13:46:56', '0000-00-00 00:00:00'),
(42, 1, 0, 's33', 5, 4, '11.00', 'in', '2019-11-25 13:53:46', '0000-00-00 00:00:00'),
(43, 0, 1574672108, '', 10, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 1, 0, 'v', 5, 4, '11.00', 'in', '2019-11-25 14:42:33', '0000-00-00 00:00:00'),
(45, 0, 1574675076, '', 5, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 1, 0, 's33', 4, 4, '11.00', 'in', '2019-11-25 14:50:28', '0000-00-00 00:00:00'),
(47, 0, 1574675622, '', 4, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 1, 0, 'rr', 4, 4, '11.00', 'in', '2019-11-25 16:00:10', '0000-00-00 00:00:00'),
(49, 0, 1574680146, '', 4, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 1, 0, 'd', 4, 4, '234.00', 'in', '2019-11-25 16:09:48', '0000-00-00 00:00:00'),
(51, 0, 1574680275, '', 4, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 0, 1574749165, '', 1, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 1, 0, '123', 5, 4, '234.00', 'in', '2019-11-26 13:14:26', '0000-00-00 00:00:00'),
(54, 0, 1574756190, '', 1, 2, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 0, 1574756190, '', 4, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 1, 0, 's33', 3, 4, '11.00', 'in', '2019-11-26 13:17:55', '0000-00-00 00:00:00'),
(57, 1, 0, 's33', 1, 4, '11.00', 'in', '2019-11-26 13:18:33', '0000-00-00 00:00:00'),
(58, 0, 1574756617, '', 4, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 1, 0, 'd', 5, 4, '11.00', 'in', '2019-11-26 15:22:03', '0000-00-00 00:00:00'),
(60, 0, 1574763832, '', 4, 4, '0.00', 'out', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 0, 1580121527, '', 1, 4, '0.00', 'out', NULL, NULL),
(62, 0, 1580223556, '', 1, 2, '0.00', 'out', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_ref_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_ref_id`, `products_id`, `attribute_id`) VALUES
(3, 3, 1),
(3, 3, 2),
(4, 3, 1),
(4, 3, 4),
(5, 3, 3),
(5, 3, 2),
(16, 3, 1),
(16, 3, 2),
(17, 3, 3),
(17, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(1, 'I\'ve forgotten my password?'),
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(872, 'Login with'),
(873, 'or'),
(874, 'Email'),
(875, 'Password'),
(876, 'Register'),
(877, 'Forgot Password'),
(878, 'Send'),
(879, 'About Us'),
(880, 'Categories'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(884, 'Please connect to the internet'),
(885, 'Recently Viewed'),
(886, 'Products are available.'),
(887, 'Top Seller'),
(888, 'Special Deals'),
(889, 'Most Liked'),
(890, 'All Categories'),
(891, 'Deals'),
(892, 'REMOVE'),
(893, 'Intro'),
(894, 'Skip Intro'),
(895, 'Got It!'),
(896, 'Order Detail'),
(897, 'Price Detail'),
(898, 'Total'),
(899, 'Sub Total'),
(900, 'Shipping'),
(901, 'Product Details'),
(902, 'New'),
(903, 'Out of Stock'),
(904, 'In Stock'),
(905, 'Add to Cart'),
(906, 'ADD TO CART'),
(907, 'Product Description'),
(908, 'Techincal details'),
(909, 'OFF'),
(910, 'No Products Found'),
(911, 'Reset Filters'),
(912, 'Search'),
(913, 'Main Categories'),
(914, 'Sub Categories'),
(915, 'Shipping method'),
(916, 'Thank You'),
(917, 'Thank you for shopping with us.'),
(918, 'My Orders'),
(919, 'Continue Shopping'),
(920, 'Favourite'),
(921, 'Your wish List is empty'),
(922, 'Continue Adding'),
(923, 'Explore'),
(924, 'Word Press Post Detail'),
(925, 'Go Back'),
(926, 'Top Sellers'),
(927, 'News'),
(928, 'Enter keyword'),
(929, 'Settings'),
(930, 'Shop'),
(931, 'Reset'),
(932, 'Select Language'),
(933, 'OUT OF STOCK'),
(934, 'Newest'),
(935, 'Refund Policy'),
(936, 'Privacy Policy'),
(937, 'Term and Services'),
(938, 'Skip'),
(939, 'Top Dishes'),
(940, 'Recipe of Day'),
(941, 'Food Categories'),
(942, 'Coupon Code'),
(943, 'Coupon Amount'),
(944, 'coupon code'),
(945, 'Coupon'),
(946, 'Note to the buyer'),
(947, 'Explore More'),
(948, 'All'),
(949, 'A - Z'),
(950, 'Z - A'),
(951, 'Price : high - low'),
(952, 'Price : low - high'),
(953, 'Special Products'),
(954, 'Sort Products'),
(955, 'Cancel'),
(956, 'most liked'),
(957, 'special'),
(958, 'top seller'),
(959, 'newest'),
(960, 'Likes'),
(961, 'My Account'),
(962, 'Mobile'),
(963, 'Date of Birth'),
(964, 'Update'),
(965, 'Current Password'),
(966, 'New Password'),
(967, 'Change Password'),
(968, 'Customer Orders'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(976, 'Add new Address'),
(977, 'Create an Account'),
(978, 'First Name'),
(979, 'Last Name'),
(980, 'Already Memeber?'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(984, 'Same as Shipping Address'),
(985, 'Next'),
(986, 'Order'),
(987, 'Billing Address'),
(988, 'Shipping Method'),
(989, 'Products'),
(990, 'SubTotal'),
(991, 'Products Price'),
(992, 'Tax'),
(993, 'Shipping Cost'),
(994, 'Order Notes'),
(995, 'Payment'),
(996, 'Card Number'),
(997, 'Expiration Date'),
(998, 'Expiration'),
(999, 'Error: invalid card number!'),
(1000, 'Error: invalid expiry date!'),
(1001, 'Error: invalid cvc number!'),
(1002, 'Continue'),
(1003, 'My Cart'),
(1004, 'Your cart is empty'),
(1005, 'continue shopping'),
(1006, 'Price'),
(1007, 'Quantity'),
(1008, 'by'),
(1009, 'View'),
(1010, 'Remove'),
(1011, 'Proceed'),
(1012, 'Shipping Address'),
(1013, 'Country'),
(1014, 'other'),
(1015, 'Zone'),
(1016, 'City'),
(1017, 'Post code'),
(1018, 'State'),
(1019, 'Update Address'),
(1020, 'Save Address'),
(1021, 'Login & Register'),
(1022, 'Please login or create an account for free'),
(1023, 'Log Out'),
(1024, 'My Wish List'),
(1025, 'Filters'),
(1026, 'Price Range'),
(1027, 'Close'),
(1028, 'Apply'),
(1029, 'Clear'),
(1030, 'Menu'),
(1031, 'Home'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login'),
(1035, 'Turn on/off Local Notifications'),
(1036, 'Turn on/off Notifications'),
(1037, 'Change Language'),
(1038, 'Official Website'),
(1039, 'Rate Us'),
(1040, 'Share'),
(1041, 'Edit Profile'),
(1042, 'A percentage discount for the entire cart'),
(1043, 'A fixed total discount for the entire cart'),
(1044, 'A fixed total discount for selected products only'),
(1045, 'A percentage discount for selected products only'),
(1047, 'Network Connected Reloading Data'),
(1048, 'Sort by'),
(1049, 'Flash Sale'),
(1050, 'ok'),
(1051, 'Number'),
(1052, 'Expire Month'),
(1053, 'Expire Year'),
(1054, 'Payment Method'),
(1055, 'Status'),
(1056, 'And'),
(1057, 'cccc'),
(1058, 'All Products'),
(1059, 'Coupon Codes List'),
(1060, 'Custom Orders'),
(1061, 'DETAILS'),
(1062, 'Deals Products'),
(1063, 'Discount ends in'),
(1064, 'Featured Products'),
(1065, 'Most Liked Products'),
(1066, 'Newest Products'),
(1067, 'On Sale Products'),
(1068, 'Posts'),
(1069, 'Safe Payment'),
(1070, 'Secure Online Paymen'),
(1071, 'Select Currency'),
(1072, 'Terms and Services'),
(1073, 'Top Seller Products'),
(1074, 'Wish List'),
(1075, 'Product Quantity is Limited!'),
(1076, 'Error server not reponding'),
(1077, 'Please Enter Your New Password!'),
(1078, 'Please Enter Your Current Password!'),
(1079, 'Current Password is Wrong!'),
(1080, 'Product Not Available With these Attributes!'),
(1081, 'Please enter something'),
(1082, 'Disconnected'),
(1083, 'Connected'),
(1084, 'Error logging into Facebook'),
(1085, 'Error Check Login Status Facebook'),
(1086, 'Please enter coupon code!'),
(1087, 'Error or render dialog closed without being successful'),
(1088, 'Error in configuration'),
(1089, 'Error in initialization, maybe PayPal isnt supported or something else'),
(1090, 'Sorry Coupon is Expired'),
(1091, 'Sorry your Cart total is low than coupon min limit!'),
(1092, 'Sorry your Cart total is Higher than coupon Max limit!'),
(1093, 'Sorry, this coupon is not valid for this email address!'),
(1094, 'Sorry, this coupon is not valid for sale items.'),
(1095, 'Coupon code already applied!'),
(1096, 'Sorry Individual Use Coupon is already applied any other coupon cannot be applied with it !'),
(1097, 'Coupon usage limit has been reached.'),
(1098, 'Account');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

CREATE TABLE `label_value` (
  `label_value_id` int(11) NOT NULL,
  `label_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1297, 'Home', 1, 1031),
(1298, 'Menu', 1, 1030),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1301, 'Close', 1, 1027),
(1302, 'Price Range', 1, 1026),
(1303, 'Filters', 1, 1025),
(1304, 'My Wish List', 1, 1024),
(1305, 'Log Out', 1, 1023),
(1306, 'Please login or create an account for free', 1, 1022),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1317, 'Proceed', 1, 1011),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1322, 'Price', 1, 1006),
(1323, 'continue shopping', 1, 1005),
(1324, 'Your cart is empty', 1, 1004),
(1325, 'My Cart', 1, 1003),
(1326, 'Continue', 1, 1002),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1329, 'Error: invalid card number!', 1, 999),
(1330, 'Expiration', 1, 998),
(1331, 'Expiration Date', 1, 997),
(1332, 'Card Number', 1, 996),
(1333, 'Payment', 1, 995),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1348, 'Already Memeber?', 1, 980),
(1349, 'Last Name', 1, 979),
(1350, 'First Name', 1, 978),
(1351, 'Create an Account', 1, 977),
(1352, 'Add new Address', 1, 976),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1354, 'Order Status', 1, 969),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1364, 'Update', 1, 964),
(1365, 'Date of Birth', 1, 963),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1368, 'Likes', 1, 960),
(1369, 'Newest', 1, 959),
(1370, 'Top Seller', 1, 958),
(1371, 'Special', 1, 957),
(1372, 'Most Liked', 1, 956),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1),
(1459, '', 1, 0),
(1462, 'Creating an account means you’re okay with our', 1, 1033),
(1465, 'Login', 1, 1034),
(1468, 'Turn on/off Local Notifications', 1, 1035),
(1471, 'Turn on/off Notifications', 1, 1036),
(1474, 'Change Language', 1, 1037),
(1477, 'Official Website', 1, 1038),
(1480, 'Rate Us', 1, 1039),
(1483, 'Share', 1, 1040),
(1486, 'Edit Profile', 1, 1041),
(1489, 'A percentage discount for the entire cart', 1, 1042),
(1492, 'A fixed total discount for the entire cart', 1, 1043),
(1495, 'A fixed total discount for selected products only', 1, 1044),
(1498, 'A percentage discount for selected products only', 1, 1045),
(1501, 'Network Connected Reloading Data', 1, 1047),
(1503, 'Sort by', 1, 1048),
(1505, 'Flash Sale', 1, 1049),
(1507, 'ok', 1, 1050),
(1509, 'Number', 1, 1051),
(1511, 'Expire Month', 1, 1052),
(1513, 'Expire Year', 1, 1053),
(1515, 'Payment Method', 1, 1054),
(1517, 'Status', 1, 1055),
(1519, 'And', 1, 1056),
(1520, '', 2, 0),
(1521, '', 1, 1072),
(1522, '', 2, 1072),
(1523, '', 1, 1073),
(1524, '', 2, 1073),
(1525, '', 1, 1074),
(1526, '', 2, 1074),
(1527, '', 1, 1075),
(1528, '', 2, 1075),
(1529, '', 1, 1076),
(1530, '', 2, 1076),
(1531, '', 1, 1077),
(1532, '', 2, 1077),
(1533, '', 1, 1078),
(1534, '', 2, 1078),
(1535, '', 1, 1079),
(1536, '', 2, 1079),
(1537, '', 1, 1080),
(1538, '', 2, 1080),
(1539, '', 1, 1081),
(1540, '', 2, 1081),
(1541, '', 1, 1082),
(1542, '', 2, 1082),
(1543, '', 1, 1083),
(1544, '', 2, 1083),
(1545, '', 1, 1084),
(1546, '', 2, 1084),
(1547, '', 1, 1085),
(1548, '', 2, 1085),
(1549, '', 1, 1086),
(1550, '', 2, 1086),
(1551, '', 1, 1087),
(1552, '', 2, 1087),
(1553, '', 1, 1088),
(1554, '', 2, 1088),
(1555, '', 1, 1089),
(1556, '', 2, 1089),
(1557, '', 1, 1090),
(1558, '', 2, 1090),
(1559, '', 1, 1091),
(1560, '', 2, 1091),
(1561, '', 1, 1092),
(1562, '', 2, 1092),
(1563, '', 1, 1093),
(1564, '', 2, 1093),
(1565, '', 1, 1094),
(1566, '', 2, 1094),
(1567, '', 1, 1095),
(1568, '', 2, 1095),
(1569, '', 1, 1096),
(1570, '', 2, 1096),
(1571, '', 1, 1097),
(1572, '', 2, 1097),
(1573, 'Account', 1, 1098),
(1574, '', 2, 1098),
(1575, '', 2, 1020),
(1576, '', 2, 1021),
(1577, '', 2, 1022),
(1578, '', 2, 1023),
(1579, '', 2, 1024),
(1580, '', 2, 1025),
(1581, '', 2, 1026),
(1582, '', 2, 1027),
(1583, '', 2, 1028),
(1584, '', 2, 1029),
(1585, '', 2, 1030),
(1586, '', 2, 1031),
(1587, '', 2, 1033),
(1588, '', 2, 1034),
(1589, '', 2, 1035),
(1590, '', 2, 1036),
(1591, '', 2, 1037),
(1592, '', 2, 1038),
(1593, '', 2, 1039),
(1594, '', 2, 1040),
(1595, '', 2, 1041),
(1596, '', 2, 1042),
(1597, '', 2, 1043),
(1598, '', 2, 1044),
(1599, '', 2, 1045),
(1600, '', 2, 1047),
(1601, '', 2, 1048),
(1602, '', 2, 1049),
(1603, '', 2, 1050),
(1604, '', 2, 1051),
(1605, '', 2, 1052),
(1606, '', 2, 1053),
(1607, '', 2, 1054),
(1608, '', 2, 1055),
(1609, '', 2, 1056),
(1610, '', 1, 1057),
(1611, '', 2, 1057),
(1612, 'All Products', 1, 1058),
(1613, '', 2, 1058),
(1614, 'Coupon Codes List', 1, 1059),
(1615, '', 2, 1059),
(1616, 'Custom Orders', 1, 1060),
(1617, '', 2, 1060),
(1618, 'DETAILS', 1, 1061),
(1619, '', 2, 1061),
(1620, 'Deals Products', 1, 1062),
(1621, '', 2, 1062),
(1622, 'Discount ends in', 1, 1063),
(1623, '', 2, 1063),
(1624, 'Featured Products', 1, 1064),
(1625, '', 2, 1064),
(1626, 'Most Liked Products', 1, 1065),
(1627, '', 2, 1065),
(1628, 'Newest Products', 1, 1066),
(1629, '', 2, 1066),
(1630, 'On Sale Products', 1, 1067),
(1631, '', 2, 1067),
(1632, 'Posts', 1, 1068),
(1633, '', 2, 1068),
(1634, 'Safe Payment', 1, 1069),
(1635, '', 2, 1069),
(1636, 'Secure Online Paymen', 1, 1070),
(1637, '', 2, 1070),
(1638, 'Select Currency', 1, 1071),
(1639, '', 2, 1071);

-- --------------------------------------------------------

--
-- Table structure for table `label_values`
--

CREATE TABLE `label_values` (
  `label_value_id` int(10) UNSIGNED NOT NULL,
  `label_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `label_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `directory` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `status`, `is_default`) VALUES
(1, 'English', 'en', '118', NULL, 1, 'ltr', 1, 1),
(2, 'Arabic', 'ar', '119', NULL, 2, 'rtl', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_description`
--

CREATE TABLE `language_description` (
  `language_description_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language_description`
--

INSERT INTO `language_description` (`language_description_id`, `name`, `languages_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'English', 1, 1, '2020-03-04 08:39:13', NULL),
(2, 'انجليزى', 1, 2, '2020-03-04 08:39:13', NULL),
(3, 'Arabic', 2, 1, '2020-03-04 08:39:13', NULL),
(4, 'عربي', 2, 2, '2020-03-04 08:39:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `like_id` int(11) NOT NULL,
  `liked_products_id` int(11) NOT NULL,
  `liked_customers_id` int(11) NOT NULL,
  `date_liked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `liked_products`
--

INSERT INTO `liked_products` (`like_id`, `liked_products_id`, `liked_customers_id`, `date_liked`) VALUES
(2, 12, 15, '2020-01-30 14:51:52'),
(29, 4, 15, '2020-05-17 18:13:31'),
(175, 24, 38, '2020-05-28 17:43:25'),
(176, 4, 38, '2020-05-28 17:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `manage_min_max`
--

CREATE TABLE `manage_min_max` (
  `min_max_id` int(11) NOT NULL,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `inventory_ref_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_role`
--

CREATE TABLE `manage_role` (
  `manage_role_id` int(11) NOT NULL,
  `user_types_id` tinyint(1) NOT NULL DEFAULT '0',
  `dashboard_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_create` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_update` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_delete` tinyint(1) NOT NULL DEFAULT '0',
  `categories_view` tinyint(1) NOT NULL DEFAULT '0',
  `categories_create` tinyint(1) NOT NULL DEFAULT '0',
  `categories_update` tinyint(1) NOT NULL DEFAULT '0',
  `categories_delete` tinyint(1) NOT NULL DEFAULT '0',
  `products_view` tinyint(1) NOT NULL DEFAULT '0',
  `products_create` tinyint(1) NOT NULL DEFAULT '0',
  `products_update` tinyint(1) NOT NULL DEFAULT '0',
  `products_delete` tinyint(1) NOT NULL DEFAULT '0',
  `news_view` tinyint(1) NOT NULL DEFAULT '0',
  `news_create` tinyint(1) NOT NULL DEFAULT '0',
  `news_update` tinyint(1) NOT NULL DEFAULT '0',
  `news_delete` tinyint(1) NOT NULL DEFAULT '0',
  `customers_view` tinyint(1) NOT NULL DEFAULT '0',
  `customers_create` tinyint(1) NOT NULL DEFAULT '0',
  `customers_update` tinyint(1) NOT NULL DEFAULT '0',
  `customers_delete` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_view` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_create` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_update` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_delete` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_view` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_create` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_update` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_delete` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_view` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_send` tinyint(1) NOT NULL DEFAULT '0',
  `orders_view` tinyint(1) NOT NULL DEFAULT '0',
  `orders_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `reports_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_view` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_create` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_delete` tinyint(1) NOT NULL DEFAULT '0',
  `language_view` tinyint(1) NOT NULL DEFAULT '0',
  `language_create` tinyint(1) NOT NULL DEFAULT '0',
  `language_update` tinyint(1) NOT NULL DEFAULT '0',
  `language_delete` tinyint(1) NOT NULL DEFAULT '0',
  `profile_view` tinyint(1) NOT NULL DEFAULT '0',
  `profile_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_view` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_create` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_delete` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_role` tinyint(1) NOT NULL DEFAULT '0',
  `add_media` tinyint(1) NOT NULL DEFAULT '0',
  `edit_media` tinyint(1) NOT NULL DEFAULT '0',
  `view_media` tinyint(1) NOT NULL DEFAULT '0',
  `delete_media` tinyint(1) NOT NULL DEFAULT '0',
  `edit_management` tinyint(1) NOT NULL DEFAULT '0',
  `brand_view` tinyint(1) NOT NULL DEFAULT '0',
  `brand_create` tinyint(1) NOT NULL DEFAULT '0',
  `brand_update` tinyint(1) NOT NULL DEFAULT '0',
  `brand_delete` tinyint(1) NOT NULL DEFAULT '0',
  `view_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `add_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `edit_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `delete_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `category_view` tinyint(1) NOT NULL DEFAULT '0',
  `category_create` tinyint(1) NOT NULL DEFAULT '0',
  `category_update` tinyint(1) NOT NULL DEFAULT '0',
  `category_delete` tinyint(1) NOT NULL DEFAULT '0',
  `designer_view` tinyint(1) NOT NULL DEFAULT '0',
  `designer_create` tinyint(1) NOT NULL DEFAULT '0',
  `designer_update` tinyint(1) NOT NULL DEFAULT '0',
  `designer_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_role`
--

INSERT INTO `manage_role` (`manage_role_id`, `user_types_id`, `dashboard_view`, `manufacturer_view`, `manufacturer_create`, `manufacturer_update`, `manufacturer_delete`, `categories_view`, `categories_create`, `categories_update`, `categories_delete`, `products_view`, `products_create`, `products_update`, `products_delete`, `news_view`, `news_create`, `news_update`, `news_delete`, `customers_view`, `customers_create`, `customers_update`, `customers_delete`, `tax_location_view`, `tax_location_create`, `tax_location_update`, `tax_location_delete`, `coupons_view`, `coupons_create`, `coupons_update`, `coupons_delete`, `notifications_view`, `notifications_send`, `orders_view`, `orders_confirm`, `shipping_methods_view`, `shipping_methods_update`, `payment_methods_view`, `payment_methods_update`, `reports_view`, `website_setting_view`, `website_setting_update`, `application_setting_view`, `application_setting_update`, `general_setting_view`, `general_setting_update`, `manage_admins_view`, `manage_admins_create`, `manage_admins_update`, `manage_admins_delete`, `language_view`, `language_create`, `language_update`, `language_delete`, `profile_view`, `profile_update`, `admintype_view`, `admintype_create`, `admintype_update`, `admintype_delete`, `manage_admins_role`, `add_media`, `edit_media`, `view_media`, `delete_media`, `edit_management`, `brand_view`, `brand_create`, `brand_update`, `brand_delete`, `view_shipping`, `add_shipping`, `edit_shipping`, `delete_shipping`, `category_view`, `category_create`, `category_update`, `category_delete`, `designer_view`, `designer_create`, `designer_update`, `designer_delete`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(10) UNSIGNED NOT NULL,
  `manufacturer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturers_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturers_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_clicked` int(11) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `sub_sort_order` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `sort_order`, `sub_sort_order`, `parent_id`, `type`, `external_link`, `link`, `page_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 1, NULL, '/', NULL, 1, NULL, NULL),
(2, 2, NULL, 0, 1, NULL, 'shop', NULL, 1, NULL, NULL),
(3, 4, NULL, 0, 1, NULL, '#', NULL, 1, NULL, NULL),
(18, NULL, 4, 3, 1, NULL, '/page?name=about-us', 1, 1, NULL, NULL),
(19, NULL, 2, 3, 1, NULL, '/page?name=privacy-policy', 1, 1, NULL, NULL),
(20, 5, NULL, 0, 1, NULL, '#', NULL, 1, NULL, NULL),
(22, 6, NULL, 0, 1, NULL, 'contact', 1, 1, NULL, NULL),
(24, NULL, 3, 3, 1, NULL, 'page?name=about-us', 1, 1, NULL, NULL),
(25, NULL, 1, 3, 1, NULL, 'page?name=privacy-policy', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translation`
--

CREATE TABLE `menu_translation` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translation`
--

INSERT INTO `menu_translation` (`id`, `menu_id`, `language_id`, `menu_name`) VALUES
(2, 1, 1, 'Home'),
(3, 1, 2, 'Homee'),
(11, 2, 1, 'SHOP'),
(12, 2, 2, 'SHOP'),
(25, 3, 1, 'INFO PAGES'),
(26, 3, 2, 'INFO PAGES'),
(33, 18, 1, 'About Us'),
(34, 18, 2, 'About Us'),
(35, 19, 1, 'Privacy Policy'),
(36, 19, 2, 'Privacy Policy'),
(37, 20, 1, 'News'),
(38, 20, 2, 'News'),
(39, 21, 1, 'Demo'),
(40, 21, 2, 'Demo'),
(41, 22, 1, 'Contact Us'),
(42, 22, 2, 'Contact Us'),
(45, 24, 1, 'Sub Menu 1'),
(46, 24, 2, 'Sub Menu 1'),
(47, 25, 1, 'Sub Menu 12'),
(48, 25, 2, 'Sub Menu 12');

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
(1, '2019_09_24_122557_create_action_recorder_table', 1),
(2, '2019_09_24_122557_create_address_book_table', 1),
(3, '2019_09_24_122557_create_address_format_table', 1),
(4, '2019_09_24_122557_create_alert_settings_table', 1),
(5, '2019_09_24_122557_create_api_calls_list_table', 1),
(6, '2019_09_24_122557_create_banners_history_table', 1),
(7, '2019_09_24_122557_create_banners_table', 1),
(8, '2019_09_24_122557_create_block_ips_table', 1),
(9, '2019_09_24_122557_create_categories_description_table', 1),
(10, '2019_09_24_122557_create_categories_role_table', 1),
(11, '2019_09_24_122557_create_categories_table', 1),
(12, '2019_09_24_122557_create_compare_table', 1),
(13, '2019_09_24_122557_create_constant_banners_table', 1),
(14, '2019_09_24_122557_create_countries_table', 1),
(15, '2019_09_24_122557_create_coupons_table', 1),
(16, '2019_09_24_122557_create_currencies_table', 1),
(17, '2019_09_24_122557_create_currency_record_table', 1),
(18, '2019_09_24_122557_create_current_theme_table', 1),
(19, '2019_09_24_122557_create_customers_basket_attributes_table', 1),
(20, '2019_09_24_122557_create_customers_basket_table', 1),
(21, '2019_09_24_122557_create_customers_info_table', 1),
(22, '2019_09_24_122557_create_customers_table', 1),
(23, '2019_09_24_122557_create_devices_table', 1),
(24, '2019_09_24_122557_create_fedex_shipping_table', 1),
(25, '2019_09_24_122557_create_flash_sale_table', 1),
(26, '2019_09_24_122557_create_flate_rate_table', 1),
(27, '2019_09_24_122557_create_front_end_theme_content_table', 1),
(28, '2019_09_24_122557_create_geo_zones_table', 1),
(29, '2019_09_24_122557_create_http_call_record_table', 1),
(30, '2019_09_24_122557_create_hula_our_infos_table', 1),
(31, '2019_09_24_122557_create_image_categories_table', 1),
(32, '2019_09_24_122557_create_images_table', 1),
(33, '2019_09_24_122557_create_inventory_detail_table', 1),
(34, '2019_09_24_122557_create_inventory_table', 1),
(35, '2019_09_24_122557_create_label_value_table', 1),
(36, '2019_09_24_122557_create_label_values_table', 1),
(37, '2019_09_24_122557_create_labels_table', 1),
(38, '2019_09_24_122557_create_languages_table', 1),
(39, '2019_09_24_122557_create_liked_products_table', 1),
(40, '2019_09_24_122557_create_manage_min_max_table', 1),
(41, '2019_09_24_122557_create_manage_role_table', 1),
(42, '2019_09_24_122557_create_manufacturers_info_table', 1),
(43, '2019_09_24_122557_create_manufacturers_table', 1),
(44, '2019_09_24_122557_create_news_categories_description_table', 1),
(45, '2019_09_24_122557_create_news_categories_table', 1),
(46, '2019_09_24_122557_create_news_description_table', 1),
(47, '2019_09_24_122557_create_news_table', 1),
(48, '2019_09_24_122557_create_news_to_news_categories_table', 1),
(49, '2019_09_24_122557_create_newsletters_table', 1),
(50, '2019_09_24_122557_create_orders_products_attributes_table', 1),
(51, '2019_09_24_122557_create_orders_products_download_table', 1),
(52, '2019_09_24_122557_create_orders_products_table', 1),
(53, '2019_09_24_122557_create_orders_status_description_table', 1),
(54, '2019_09_24_122557_create_orders_status_history_table', 1),
(55, '2019_09_24_122557_create_orders_status_table', 1),
(56, '2019_09_24_122557_create_orders_table', 1),
(57, '2019_09_24_122557_create_orders_total_table', 1),
(58, '2019_09_24_122557_create_pages_description_table', 1),
(59, '2019_09_24_122557_create_pages_table', 1),
(60, '2019_09_24_122557_create_payment_description_table', 1),
(61, '2019_09_24_122557_create_payment_methods_detail_table', 1),
(62, '2019_09_24_122557_create_payment_methods_table', 1),
(63, '2019_09_24_122557_create_permissions_table', 1),
(64, '2019_09_24_122557_create_products_attributes_download_table', 1),
(65, '2019_09_24_122557_create_products_attributes_table', 1),
(66, '2019_09_24_122557_create_products_description_table', 1),
(67, '2019_09_24_122557_create_products_images_table', 1),
(68, '2019_09_24_122557_create_products_notifications_table', 1),
(69, '2019_09_24_122557_create_products_options_descriptions_table', 1),
(70, '2019_09_24_122557_create_products_options_table', 1),
(71, '2019_09_24_122557_create_products_options_values_descriptions_table', 1),
(72, '2019_09_24_122557_create_products_options_values_table', 1),
(73, '2019_09_24_122557_create_products_shipping_rates_table', 1),
(74, '2019_09_24_122557_create_products_table', 1),
(75, '2019_09_24_122557_create_products_to_categories_table', 1),
(76, '2019_09_24_122557_create_reviews_description_table', 1),
(77, '2019_09_24_122557_create_reviews_table', 1),
(78, '2019_09_24_122557_create_sec_directory_whitelist_table', 1),
(79, '2019_09_24_122557_create_sessions_table', 1),
(80, '2019_09_24_122557_create_settings_table', 1),
(81, '2019_09_24_122557_create_shipping_description_table', 1),
(82, '2019_09_24_122557_create_shipping_methods_table', 1),
(83, '2019_09_24_122557_create_sliders_images_table', 1),
(84, '2019_09_24_122557_create_specials_table', 1),
(85, '2019_09_24_122557_create_tax_class_table', 1),
(86, '2019_09_24_122557_create_tax_rates_table', 1),
(87, '2019_09_24_122557_create_units_descriptions_table', 1),
(88, '2019_09_24_122557_create_units_table', 1),
(89, '2019_09_24_122557_create_ups_shipping_table', 1),
(90, '2019_09_24_122557_create_user_to_address_table', 1),
(91, '2019_09_24_122557_create_user_types_table', 1),
(92, '2019_09_24_122557_create_users_table', 1),
(93, '2019_09_24_122557_create_whos_online_table', 1),
(94, '2019_09_24_122557_create_zones_table', 1),
(95, '2019_09_24_122557_create_zones_to_geo_zones_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_image` text COLLATE utf8mb4_unicode_ci,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `news_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `locked` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text COLLATE utf8mb4_unicode_ci,
  `categories_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `news_categories_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

CREATE TABLE `news_categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

CREATE TABLE `news_description` (
  `language_id` int(11) NOT NULL DEFAULT '1',
  `news_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL,
  `news_description` text COLLATE utf8mb4_unicode_ci,
  `news_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_viewed` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

CREATE TABLE `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `notification_image` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification_description`
--

CREATE TABLE `notification_description` (
  `notification_description_id` int(11) NOT NULL,
  `notification_name` varchar(80) NOT NULL,
  `notification_content` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `total_tax` decimal(7,2) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_address_format_id` int(11) DEFAULT NULL,
  `delivery_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address_format_id` int(11) DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_format_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_duration` int(11) DEFAULT NULL,
  `order_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` int(11) NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordered_source` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Website, 2: App',
  `delivery_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `total_tax`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `email`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_date_finished`, `currency`, `currency_value`, `order_price`, `shipping_cost`, `shipping_method`, `shipping_duration`, `order_information`, `is_seen`, `coupon_code`, `coupon_amount`, `exclude_product_ids`, `product_categories`, `excluded_product_categories`, `free_shipping`, `product_ids`, `ordered_source`, `delivery_phone`, `billing_phone`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, '0.00', 15, 'Hassaaaan Gamallll', NULL, 'San', NULL, 'Alexandria', '0000', 'AL', '4', '01200000001', 'hsssS.gsssS@yahoo.com', NULL, 'Hassaaaan Gamallll', NULL, 'San', NULL, 'Alexandria', '0000', 'AL', '4', NULL, 'Hassaaaan Gamallll', NULL, 'San', NULL, 'Alexandria', '0000', 'AL', '4', 0, 'Hyperpay', NULL, NULL, NULL, NULL, '2020-05-16 21:57:37', '2020-05-16 21:57:37', NULL, 'SAR', '2020.000000', '250.00', '13.00', '1', NULL, '[]', 1, '[{\"code\":\"www\",\"amount\":50,\"discount_type\":\"percent\"}]', 50, '', '', '', 0, '', 2, '01200000001', '01200000001', NULL, '2020-05-16 21:57:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(1, 1, 4, NULL, 'watch', '120.00', '60.00', '14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_download`
--

CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `download_maxdays` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL,
  `public_flag` int(11) DEFAULT '0',
  `downloads_flag` int(11) DEFAULT '0',
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `public_flag`, `downloads_flag`, `role_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 2),
(4, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_description`
--

CREATE TABLE `orders_status_description` (
  `orders_status_description_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `orders_status_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_status_description`
--

INSERT INTO `orders_status_description` (`orders_status_description_id`, `orders_status_id`, `orders_status_name`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pending', 1, '2020-02-24 12:07:35', NULL),
(2, 2, 'Completed', 1, '2020-02-24 12:07:35', NULL),
(3, 3, 'Cancel', 1, '2020-02-24 12:07:35', NULL),
(4, 4, 'Return', 1, '2020-02-24 12:07:35', NULL),
(5, 1, 'قيد الانتظار', 2, '2020-02-24 12:08:33', NULL),
(6, 2, 'الانتهاء', 2, '2020-02-24 12:08:33', NULL),
(7, 3, 'إلغاء', 2, '2020-02-24 12:08:33', NULL),
(8, 4, 'إرجاع', 2, '2020-02-24 12:08:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(11) DEFAULT '0',
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-05-16 09:57:37', 1, NULL, '2020-05-16 21:57:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`, `type`, `created_at`, `updated_at`) VALUES
(2, '', 1, 2, '2020-02-27 09:35:24', NULL),
(3, '', 1, 2, '2020-02-27 09:35:24', NULL),
(4, NULL, 1, 2, '2020-03-18 11:31:12', NULL),
(5, NULL, 1, 2, '2020-05-14 14:51:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

CREATE TABLE `pages_description` (
  `page_description_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `language_id`, `page_id`, `created_at`, `updated_at`) VALUES
(4, 'Term & Condition', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 2, '2020-02-27 09:35:48', NULL),
(7, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 3, '2020-02-27 09:35:48', NULL),
(16, 'الشروط و الأحكام', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 2, 2, '2020-02-27 09:35:48', NULL),
(19, 'سياسة الاسترجاع', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 2, 3, '2020-02-27 09:35:48', NULL),
(20, 'How Do We Work?', '<p>how do we work</p>', 1, 4, '2020-03-18 11:32:41', NULL),
(21, 'كيف نعمل ؟', '<p>كيف نعمل</p>', 2, 4, '2020-03-18 11:32:41', NULL),
(22, 'about us', '<p>about about about about about about about about about about about about</p>', 1, 5, '2020-05-14 14:52:38', NULL),
(23, 'من نحن', '<p>حول عنا حول عنا حول عنا حول عنا حول عناحول عنا</p>', 2, 5, '2020-05-14 14:52:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `partner_id` int(11) NOT NULL,
  `partner_image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`partner_id`, `partner_image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'images/partners/Vp7wc9F82Y20ZK2A6i1ULJHTq3kESMespb4HdHvu.png', 1, '2020-03-05 09:35:22', NULL),
(4, 'images/partners/13xsZa9pswHARyd9B8MjUuOjul6lkVoHQeS2R4zu.jpeg', 1, '2020-03-23 13:25:43', NULL),
(5, 'images/partners/sLoQyfI8tF8QRhMV0aOdTCtfRF1gUA6jJfH2ZW8S.jpeg', 1, '2020-03-23 13:43:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

CREATE TABLE `payment_description` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `sub_name_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name_2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `payment_methods_id`, `name`, `language_id`, `sub_name_1`, `sub_name_2`) VALUES
(1, 1, 'Braintree', 1, 'Credit Card', 'Paypal'),
(4, 2, 'Stripe', 1, '', ''),
(5, 3, 'Paypal', 1, '', ''),
(6, 4, 'Cash on Delivery', 1, '', ''),
(7, 5, 'Instamojo', 1, '', ''),
(8, 0, 'Cybersoure', 1, '', ''),
(9, 6, 'Hyperpay', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_methods_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `environment` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_methods_id`, `payment_method`, `status`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'braintree', 0, 0, '2019-09-18 20:40:13', '0000-00-00 00:00:00'),
(2, 'stripe', 1, 0, '2019-09-18 20:56:17', '0000-00-00 00:00:00'),
(3, 'paypal', 0, 0, '2019-09-18 20:56:04', '0000-00-00 00:00:00'),
(4, 'cash_on_delivery', 1, 0, '2019-09-18 20:56:37', '0000-00-00 00:00:00'),
(5, 'instamojo', 0, 0, '2019-09-18 20:57:23', '0000-00-00 00:00:00'),
(6, 'hyperpay', 0, 0, '2019-09-18 20:56:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods_detail`
--

CREATE TABLE `payment_methods_detail` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods_detail`
--

INSERT INTO `payment_methods_detail` (`id`, `payment_methods_id`, `key`, `value`) VALUES
(3, 1, 'merchant_id', 'wrv3cwbft6n3bg5g'),
(4, 1, 'public_key', '2bz5kxcj2gs3hdbx'),
(5, 1, 'private_key', '55ae08cb061e36dca59aaf2a883190bf'),
(9, 2, 'secret_key', 'sk_test_Gsz7jL4wRikI8YFaNzbwxKOF'),
(10, 2, 'publishable_key', 'pk_test_cCAEC6EejawuAvsvR9bhKrGR'),
(15, 3, 'id', 'AULJ0Q_kdXwEbi7PCBunUBJc4Kkg2vvdazF8kJoywAV9_i7iJMQphB9NLwdR0v2BAUlLF974iTrynbys'),
(18, 3, 'payment_currency', 'USD'),
(21, 5, 'api_key', 'c5a348bd5fcb4c866074c48e9c77c6c4'),
(22, 5, 'auth_token', '99448897defb4423b921fe47e0851b86'),
(23, 5, 'client_id', 'test_9l7MW8I7c2bwIw7q0koc6B1j5NrvzyhasQh'),
(24, 5, 'client_secret', 'test_m9Ey3Jqp9AfmyWKmUMktt4K3g1uMIdapledVRRYJha7WinxOsBVV5900QMlwvv3l2zRmzcYDEOKPh1cvnVedkAKtHOFFpJbqcoNCNrjx1FtZhtDMkEJFv9MJuXD'),
(32, 6, 'userid', '8a82941865340dc8016537cdac1e0841'),
(33, 6, 'password', 'sXrYy8pnsf'),
(34, 6, 'entityid', '8a82941865340dc8016537ce08db0845');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `role_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_image` text COLLATE utf8mb4_unicode_ci,
  `products_price` decimal(15,2) NOT NULL,
  `products_size` float DEFAULT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_weight_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_status` tinyint(1) NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) DEFAULT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_liked` int(11) NOT NULL,
  `low_limit` int(11) NOT NULL,
  `is_feature` tinyint(1) DEFAULT '0',
  `products_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_type` int(11) NOT NULL DEFAULT '0',
  `products_min_order` int(11) NOT NULL DEFAULT '1',
  `products_max_stock` int(11) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `designer_id` int(11) NOT NULL,
  `purchase_type` tinyint(1) NOT NULL,
  `for_whom` tinyint(1) NOT NULL,
  `condition_id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `is_seller` tinyint(1) NOT NULL DEFAULT '0',
  `customer_seller` int(11) DEFAULT NULL,
  `sku_code` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_status` int(11) DEFAULT NULL,
  `rental_start` date DEFAULT NULL,
  `rental_end` date DEFAULT NULL,
  `invoice_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sold` tinyint(1) NOT NULL DEFAULT '0',
  `products_price_insurance` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_size`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `is_current`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `products_type`, `products_min_order`, `products_max_stock`, `brand_id`, `designer_id`, `purchase_type`, `for_whom`, `condition_id`, `city_id`, `is_seller`, `customer_seller`, `sku_code`, `request_status`, `rental_start`, `rental_end`, `invoice_image`, `is_sold`, `products_price_insurance`, `created_at`, `updated_at`) VALUES
(4, 1, NULL, 'products/tvR6gZ0VqvjNs8ilJ6ORPlcCs2ZsZA3aZ93aNthy.jpeg', '100.00', NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 1, 0, 0, '', 0, 1, NULL, 7, 2, 1, 1, 3, 182, 0, NULL, '446803928', NULL, NULL, NULL, NULL, 1, '50.00', '2020-02-03 09:16:48', '2020-05-18 17:36:33'),
(13, 1, NULL, 'images/products/gT2csE2rXONyyvj9VvfwfXQ3m0cRU9DYzkJqeVF8.jpeg', '25.00', NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 2, 0, 0, '', 0, 1, NULL, 7, 1, 0, 1, 4, 183, 0, NULL, '429026594', NULL, NULL, NULL, NULL, 0, '0.00', '2020-03-23 17:01:54', '2020-05-18 17:36:11'),
(22, 1, NULL, 'images/products/xaU0oqRHxURHijemkYGtuqmgRh2GeMfscfX7BKzI.jpeg', '250.00', NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 5, 0, 0, '', 0, 1, NULL, 7, 2, 0, 1, 3, 182, 0, NULL, '309477467', NULL, NULL, NULL, NULL, 0, '0.00', '2020-05-17 18:47:48', '2020-05-18 17:35:54'),
(23, 1, NULL, 'images/products/5oWK3xkOcptqoW0acbQDkj3kGyMEEC99OwVuxwVA.jpeg', '100.00', NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, -1, 0, 0, '', 0, 1, NULL, 7, 2, 1, 1, 3, 183, 0, NULL, '690589211', NULL, NULL, NULL, NULL, 0, '20.00', '2020-05-17 12:53:04', '2020-05-18 17:35:29'),
(24, 1, NULL, 'images/products/XCh9DpMyhBE6gHrnX0bZBlunmSLwnWSJc1QBPEzs.jpeg', '150.00', NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, 0, 0, '', 0, 1, NULL, 11, 1, 1, 0, 4, 182, 1, 30, '260543922', NULL, NULL, NULL, NULL, 0, '20.00', '2020-05-17 13:23:29', '2020-05-19 10:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`, `is_default`) VALUES
(1, 4, 4, 16, '0.00', '+', 1),
(2, 4, 1, 1, '0.00', '+', 1),
(9, 13, 4, 11, '0.00', '+', 1),
(10, 13, 1, 7, '0.00', '+', 1),
(19, 24, 1, 12, '0.00', '+', 1),
(20, 24, 4, 16, '0.00', '+', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes_download`
--

CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(11) DEFAULT '0',
  `products_attributes_maxcount` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8mb4_unicode_ci,
  `products_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_viewed` int(11) DEFAULT '0',
  `products_left_banner` text COLLATE utf8mb4_unicode_ci,
  `products_left_banner_start_date` int(11) DEFAULT NULL,
  `products_left_banner_expire_date` int(11) DEFAULT NULL,
  `products_right_banner` text COLLATE utf8mb4_unicode_ci,
  `products_right_banner_start_date` int(11) DEFAULT NULL,
  `products_right_banner_expire_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(1, 1, 1, 'shaome', '<p>shaomeshaomeshaome</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(2, 1, 2, 'شاومى', '<p>شاومى&nbsp;شاومى&nbsp;شاومى&nbsp;شاومى&nbsp;</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(3, 2, 1, 'tedsdsa', '<p>dasdsadsadsa</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(4, 2, 2, 'شاومى', '<p>رببيسبيسبيس</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(5, 3, 1, 'clothes', '<p>clothesclothesclothesclothesclothes</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(6, 3, 2, 'جذمه', '<p>جذمهجذمهجذمهجذمه</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(7, 4, 1, 'Cartier Silver', 'A luxurious appearance awaits you with the Cartier wristwatch that has been designed keeping your needs for a stylish look in mind. The watch is comprised of a silver dial with Arabic numerals and baton hour-markers. The scratch-resistant sapphire glass imparts strength while the date window at the 12th-hour aperture and day-night indicator is an exquisite elevation to the whole look. The elegant timepiece is constructed with an automatic chronograph movement and features a luxe leather bracelet that imparts an extraordinary feel.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(8, 4, 2, 'ساعات كارتييه', 'ينتظرك المظهر الفاخر مع ساعة اليد كارتييه التي تم تصميمها للحفاظ على احتياجاتك لإلقاء نظرة أنيقة في الاعتبار. تتكون الساعة من قرص فضي بأرقام عربية وعلامات ساعة عصا. يضفي زجاج الياقوت المقاوم للخدش قوة في حين أن نافذة التاريخ عند الفتحة في الساعة 12 ومؤشر الليل والنهار هو ارتفاع رائع للمظهر بأكمله. تم تصميم الساعة الأنيقة بحركة كرونوغراف أوتوماتيكية وتتميز بسوار جلدي فاخر يضفي شعوراً غير عادي.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(25, 13, 1, 'asadasd', 'asdsadsadasdas', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(26, 13, 2, 'اتا', 'سشبسيلالننتكت', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(43, 22, 1, 'Khorshid Fika', 'Snowboarder Caroline Degardh has put her passion for coffee to use for her very own Fika watch. The ritual of Fika is more Swedish than Swedish meatballs and IKEA furniture combined. At 3 o&rsquo;clock every weekday we gather for a fresh cup of coffee and some pastry', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(44, 22, 2, 'خورشيد فيكا', 'وضعت Snowboarder Caroline Degardh شغفها بالقهوة لاستخدامها في ساعة Fika الخاصة بها. طقوس Fika أكثر سويدية من كرات اللحم السويدية وأثاث ايكيا مجتمعًا. في الساعة الثالثة من كل أسبوع ، نجتمع لتناول فنجان من القهوة وبعض المعجنات.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(45, 23, 1, 'Samsung Galaxy Watch smartwatch', 'Live a stronger, smarter life with Galaxy Watch at your wrist. Rest well and stay active with built-in health tracking and a bluetooth connection that keeps everything at your wrist. Plus, go for days without charging.\r\nGo nonstop for days on a single charge. The wireless charger lets you power up without slowing down. (Average expected performance based on typical use. Results may vary.)\r\n Available in two sizes and three colors, the Galaxy Watch offers stylish watch faces so realistic they hardly look digital. Plus, choose from a collection of interchangeable bands.\r\nPairs with both Android and iOS smartphones via bluetooth connection.\r\n Included in Box: Galaxy Watch, Additional Strap(Large and Small included), Wireless charging Dock, Travel Adaptor, Quick Start Guide, User Manual (Warranty: 1 Year Standard Parts and Labor)', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(46, 23, 2, 'ساعة سامسونج جالكسي واتش الذكية', 'عش حياة أقوى وأكثر ذكاءً مع ساعة Galaxy Watch على معصمك. استرخِ جيدًا وحافظ على نشاطك من خلال التتبع الصحي المدمج واتصال البلوتوث الذي يبقي كل شيء في معصمك. بالإضافة إلى ذلك ، اذهب لأيام دون شحن.\r\n استمر بدون توقف لأيام بتهمة واحدة. يتيح لك الشاحن اللاسلكي التشغيل دون إبطاء. (متوسط الأداء المتوقع بناءً على الاستخدام المعتاد. قد تختلف النتائج.)\r\n تتوافر ساعة Galaxy Watch بحجمين وثلاثة ألوان ، وهي توفر وجوهًا أنيقة للساعة بحيث تبدو بالكاد تبدو رقمية. بالإضافة إلى ذلك ، اختر من بين مجموعة من الأحزمة القابلة للتبديل.\r\n أزواج مع كل من هواتف Android و iOS الذكية عبر اتصال بلوتوث.\r\nمضمن في الصندوق: ساعة Galaxy ، حزام إضافي (متضمن كبير وصغير) ، قاعدة شحن لاسلكية ، محول السفر ، دليل البدء السريع ، دليل المستخدم (الضمان: عام قياسي لقطع الغيار والعمالة)', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(47, 24, 1, 'KAYALI ELIXIR', 'Designed to be layered with other beguiling scents from the KAYALI COLLECTION | 01, Huda and Mona Kattan worked with world-renowned French perfume house, Firmenich to create this lavish Eau de Parfum, which can be layered and combined to create a truly unique scent, perfect for the modern woman. ELIXIR | 11 is a delicious blend of red apple, rose de mai absolute, jasmine sambac absolute, amber, patchouli and vanilla. Worn alone or layered, this perfectly marries sweet, juicy notes with aromatic florals to create a truly complex and distracting aroma. Housed in an elegant and eye-catching jet-black bottle &ndash; available in travel and full sizes &ndash; with brushed gold detailing, the ebony ELIXIR | 11 sits as beautifully on the pulse points as it does on your dressing table. Inspired by KAYALI and Middle Eastern fragrance layering? Why not try layering {ELIXIR | 11} on top of {Vanilla | 28} and {MUSK | 12}', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(48, 24, 2, 'كيالي إكسير', 'مصممة لتكون مع طبقات أخرى من عطور الخدع من مجموعة KAYALI | 01 ، عملت هدى ومنى قطان مع دار العطور الفرنسية ذات الشهرة العالمية ، Firmenich لإنشاء عطر Eau de Parfum الفخم ، والذي يمكن وضعه في طبقات وجمعه لخلق رائحة فريدة حقًا ، مثالية للمرأة العصرية. إكسير | 11 هو مزيج لذيذ من التفاح الأحمر ، الورد دي ماي المطلق ، الياسمين السامباك المطلق ، العنبر ، الباتشولي والفانيليا. يتم ارتداؤه بمفرده أو بطبقات ، ويتزوج تمامًا بملاحظات حلوة وعصرية مع أزهار عطرية لخلق رائحة معقدة ومشتتة للانتباه. يأتي في زجاجة سوداء نفاثة أنيقة وملفتة للنظر - متوفرة في السفر وأحجام كاملة - مع تفاصيل ذهبية مصقولة ، خشب الأبنوس ELIXIR | 11 يجلس بشكل جميل على نقاط النبض كما هو الحال على منضدة الزينة. مستوحاة من طبقات كيالي والعطور الشرق أوسطية؟ لماذا لا تحاول وضع طبقات {ELIXIR | 11} فوق {Vanilla | 28} و {MUSK | 12}', NULL, 0, NULL, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `htmlcontent` text COLLATE utf8mb4_unicode_ci,
  `sort_order` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`, `type`, `created_at`, `updated_at`) VALUES
(1, 4, 'images/products/images/7g1poQktTdKqkRTmKyri9u6UapLzaIYtSwIhD6wf.png', NULL, 1, 2, '2020-03-09 13:47:42', NULL),
(2, 4, 'images/products/images/Pytsohqkg6Rbb8O4u0jjjZ2UlDKQQFfC6G6fRQiQ.png', NULL, 2, 2, '2020-03-09 13:47:48', NULL),
(3, 8, 'images/products/seller/images/product_wBfjAlWM2NWqlJFBCBUXq8sb2fxnL7mcCxrqDul6CJkOzF5l5KF7D5IqjuOS.jpg', NULL, 1, 2, '2020-03-19 03:19:58', NULL),
(4, 8, 'images/products/seller/images/product_LzHkajKJHMhWcTYEN5u1tDxojofdXtfzZRBs8NhDaAkZt32G7FjupXTFSlca.jpg', NULL, 2, 2, '2020-03-19 03:19:58', NULL),
(9, 11, 'images/products/seller/images/product_0scfmbKZThcTwRRuHfVjLoPL2Wb4LKACvqaKs5J2jVsqd0DsBims9DDQTNPa.jpg', NULL, 1, 2, '2020-03-19 04:30:52', NULL),
(10, 11, 'images/products/seller/images/product_SR8uTX7rTte4c7lvzdUSjR2XSNRvEfs4eO6wZ13VyeN4GDvNkg1fK8TlDvIF.jpg', NULL, 2, 2, '2020-03-19 04:30:52', NULL),
(11, 12, 'images/products/seller/images/product_opZzsdLpi3mm4E67D0V8sVG3kFoLfJNAwXov8elxo2BFizvuN3O8V43vrcae.jpg', NULL, 1, 2, '2020-03-19 04:31:28', NULL),
(12, 12, 'images/products/seller/images/product_guB60KyxOiNMfsbpEFUqrDmsAFztl2m33YdXzcMlqTIH1zVNn5tLSesXFFET.jpg', NULL, 2, 2, '2020-03-19 04:31:28', NULL),
(13, 13, 'images/products/images/WTUB3ZBxT7X7A4D0USfB8fl8gyKZhrqgmgekAahr.jpeg', 'قبلقبل', 1, 2, '2020-03-23 11:46:04', NULL),
(14, 14, 'images/products/seller/images/product_LG55ogCVFEyGnLhIyGXyunN739iJokko3bEKbQbcxrVS5MoXIoC8Ci5zcovx.jpg', NULL, 1, 2, '2020-03-30 10:29:24', NULL),
(15, 14, 'images/products/seller/images/product_0lebFJtkE9dsVYeT8z5JLqOZXSkul3FK4oQHVwpQ4SCbzN2chnAy38juOrok.jpg', NULL, 2, 2, '2020-03-30 10:29:24', NULL),
(16, 15, 'images/products/seller/images/product_gGSTKgahUzH9ZZfrc0rjB9S3yotoXfZ9q52t9djxaIj1u9vKfcoOAgLfBxzD.jpg', NULL, 1, 2, '2020-03-30 10:30:15', NULL),
(17, 15, 'images/products/seller/images/product_TACMeOnk5Oj5Tki0ZA1wP9dqLLpKgf7A6XuusQuFXzwYaBnAXYJSzeUO6noE.jpg', NULL, 2, 2, '2020-03-30 10:30:15', NULL),
(18, 16, 'images/products/seller/images/product_u2yNrYarp5f8NDVppgib40h55C0Y6YR9S8hrMmMZIenoVitPVtEGEAs6AaiI.jpg', NULL, 1, 2, '2020-03-30 10:30:25', NULL),
(19, 16, 'images/products/seller/images/product_cPQYTG05Bf0YHrJXV6QNTrNyIALK0WClUO0OQK08ddBi5kTLtmEmFDRdNMUY.jpg', NULL, 2, 2, '2020-03-30 10:30:25', NULL),
(20, 17, 'images/products/seller/images/product_aFiOwQYXYX0y13SoPbhQ37MmSjG8cbTUqORja8KCugrUQVHKXQ62GF3RjWdv.jpg', NULL, 1, 2, '2020-03-30 10:30:46', NULL),
(21, 17, 'images/products/seller/images/product_c2YOPC2unFXBPLxyNWjCgzG8SZdrV7vn6eCXeyGkf39P4wezpn32EbSCWZmI.jpg', NULL, 2, 2, '2020-03-30 10:30:46', NULL),
(22, 18, 'images/products/seller/images/product_IkJ5l5RGB9TE9Z97tbCWNa9oB6coGWuuRPOEtdQxtXC7cdtPSd3AN93fY4wC.jpg', NULL, 1, 2, '2020-05-13 08:13:21', NULL),
(23, 18, 'images/products/seller/images/product_kkK4V3dmSGqJMeT0GOlI4WNEaVM8yejLOSoxBO0VOOkFJOtc3rSxaGTp4FtQ.jpg', NULL, 2, 2, '2020-05-13 08:13:21', NULL),
(24, 19, 'images/products/seller/images/product_rXzTdCKk8yWSaDZPbI9l2sBEpfjS7pRAVqiIg2tDMnBGMMiJhU9Ip6UWJLwz.jpg', NULL, 1, 2, '2020-05-13 08:15:12', NULL),
(25, 19, 'images/products/seller/images/product_BsHKBJIpz76dyjYWbfBA9QmeCx8ApnpQa7YzwqkgSUGob686aSpqwyZ1n0Fg.jpg', NULL, 2, 2, '2020-05-13 08:15:12', NULL),
(30, 22, 'images/products/images/yLHejcgdSZd8scvZ8AXnhxPvLKSZh5rJFweHFmfb.jpeg', NULL, 1, 2, '2020-05-17 12:48:42', NULL),
(31, 22, 'images/products/images/CV36FwJZtdBun2CQ4MaNPQvpHUyJ91QcDEoop4I6.jpeg', NULL, 2, 2, '2020-05-17 12:48:50', NULL),
(32, 22, 'images/products/images/om709UJhEBLWcRKN6mOvjpG8hATmNPrGIvjYvKxn.jpeg', NULL, 3, 2, '2020-05-17 12:49:23', NULL),
(33, 22, 'images/products/images/ATnE3sk2kztvsv6LTLt9BKWNIwySN86jaQVh9y8T.jpeg', NULL, 4, 1, '2020-05-17 12:50:03', NULL),
(34, 22, 'images/products/images/pE6wDDnOh8e49MYU0H0A3FnPtTbfRDkP2Kmf6MmB.jpeg', NULL, 5, 1, '2020-05-17 12:50:11', NULL),
(35, 23, 'images/products/images/n7YWeZJ823mBi80wjQQejnBj4yZKo8qD2LdnW95V.jpeg', NULL, 1, 2, '2020-05-17 18:54:34', NULL),
(36, 23, 'images/products/images/iMOAazL2mDqv0c8Lq0hQlrVlZA51URnTQYsS4Vkb.jpeg', NULL, 2, 2, '2020-05-17 18:55:15', NULL),
(37, 23, 'images/products/images/028S50xS4yicuhGAfLzUzQ3FsGPg2wNwjuXAcczo.jpeg', NULL, 3, 2, '2020-05-17 18:55:37', NULL),
(38, 23, 'images/products/images/Yf3CyQJPUO2waTO4mUMTr77VHKPIEMpZ1MR30CFV.jpeg', NULL, 4, 2, '2020-05-17 18:55:52', NULL),
(39, 23, 'images/products/images/7enJmt9T8uf0Jvcy1f8xlrywP7d9GmxuLZm65de1.jpeg', NULL, 5, 2, '2020-05-17 18:56:06', NULL),
(40, 23, 'images/products/images/SJoRpctclEN4QXwPuP6Zms8WgaigjdpSbPvFPI32.jpeg', NULL, 6, 1, '2020-05-17 18:56:16', NULL),
(41, 23, 'images/products/images/81YsWbLxenAqGR6CXh2ZCI6gxywPJ1F9H5mQnLQM.jpeg', NULL, 7, 1, '2020-05-17 18:56:25', NULL),
(42, 23, 'images/products/images/GevdlnBSKLGSt5bQyU4GioqqNybOtzHh0niMb9T6.jpeg', NULL, 8, 1, '2020-05-17 18:56:30', NULL),
(43, 23, 'images/products/images/5ikeZouebPwCER1Rq3QFmGYn6AWSsM5XMqWBF1fg.jpeg', NULL, 9, 1, '2020-05-17 18:56:36', NULL),
(44, 24, 'images/products/images/VEI0HpCU1FB4XD4ubAgLlXr8HYxD6x6dO6Rm91fs.jpeg', NULL, 1, 2, '2020-05-17 19:25:13', NULL),
(45, 24, 'images/products/images/mEae1GjdjTXAp3wBKLg7NFgkAbjZ7VLxQGE7H2yH.jpeg', NULL, 2, 2, '2020-05-17 19:25:24', NULL),
(46, 24, 'images/products/images/mb0SdGUI2Wkka9vU1Nu953n72zi2Nf0aGinBMteI.jpeg', NULL, 3, 2, '2020-05-17 19:25:37', NULL),
(47, 24, 'images/products/images/QeSJXXBLvS92HagKYWQNsPodlQlvLJDTPd8O4G8A.jpeg', NULL, 4, 1, '2020-05-17 19:25:51', NULL),
(48, 24, 'images/products/images/PO8nhX2UDCYJ0k3PdVAGMNI4bpuSs03dU3M0g6lz.jpeg', NULL, 5, 1, '2020-05-17 19:26:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_notifications`
--

CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL,
  `products_options_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `products_options_name`) VALUES
(1, 'Color'),
(4, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_descriptions`
--

CREATE TABLE `products_options_descriptions` (
  `products_options_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_options_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_descriptions`
--

INSERT INTO `products_options_descriptions` (`products_options_descriptions_id`, `language_id`, `options_name`, `products_options_id`) VALUES
(1, 1, 'Color', 1),
(2, 2, 'اللون', 1),
(7, 1, 'Size', 4),
(8, 2, 'الحجم', 4);

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `products_options_values_color` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_options_values_size` float(15,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `products_options_id`, `products_options_values_name`, `products_options_values_color`, `products_options_values_size`, `created_at`, `updated_at`) VALUES
(1, 1, 'red', '#fd0000', NULL, '2020-02-19 08:05:42', NULL),
(7, 1, 'blue', '#3504fb', NULL, '2020-02-19 09:12:54', NULL),
(11, 4, 'small', NULL, 3.50, '2020-02-19 12:49:25', NULL),
(12, 1, 'green', '#22bd83', NULL, '2020-03-23 12:28:59', NULL),
(15, 4, 'متوسط', NULL, 4.00, '2020-03-23 12:40:10', NULL),
(16, 4, 'كبير', NULL, 4.50, '2020-03-23 12:40:34', NULL),
(17, 1, 'ىنن', '#000000', NULL, '2020-03-23 14:55:16', NULL),
(18, 4, '5', NULL, 5.00, '2020-05-23 08:35:53', NULL),
(19, 4, '5.5', NULL, 5.50, '2020-05-23 08:42:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_descriptions`
--

CREATE TABLE `products_options_values_descriptions` (
  `products_options_values_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_values_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_values_descriptions`
--

INSERT INTO `products_options_values_descriptions` (`products_options_values_descriptions_id`, `language_id`, `options_values_name`, `products_options_values_id`) VALUES
(1, 1, 'red', 1),
(2, 2, 'احمر', 1),
(13, 1, 'blue', 7),
(14, 2, 'ازرق', 7),
(19, 1, '3.5', 11),
(20, 2, '3.5', 11),
(21, 1, 'green', 12),
(22, 2, 'اخضر', 12),
(27, 1, '4', 15),
(28, 2, '4', 15),
(29, 1, '4.5', 16),
(30, 2, '4.5', 16),
(31, 1, 'ىنن', 17),
(32, 2, 'ن', 17),
(33, 1, '5', 18),
(34, 2, '5', 18),
(35, 1, '5.5', 19),
(36, 2, '5.5', 19);

-- --------------------------------------------------------

--
-- Table structure for table `products_shipping_rates`
--

CREATE TABLE `products_shipping_rates` (
  `products_shipping_rates_id` int(11) NOT NULL,
  `weight_from` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_to` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_price` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `products_shipping_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_shipping_rates`
--

INSERT INTO `products_shipping_rates` (`products_shipping_rates_id`, `weight_from`, `weight_to`, `weight_price`, `unit_id`, `products_shipping_status`) VALUES
(1, '0', '10', 10, 1, 1),
(2, '10', '20', 10, 1, 1),
(3, '20', '30', 10, 1, 1),
(4, '30', '50', 50, 1, 1),
(5, '50', '100000', 70, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_to_categories_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_to_categories_id`, `products_id`, `categories_id`) VALUES
(72, 23, 11),
(73, 22, 11),
(74, 13, 11),
(75, 4, 11),
(77, 24, 14);

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `return_id` int(11) NOT NULL,
  `return_reason` text NOT NULL,
  `return_image` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews_rating` int(11) DEFAULT NULL,
  `reviews_text` text COLLATE utf8mb4_unicode_ci,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(11) NOT NULL DEFAULT '0',
  `vendors_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviews_id`, `products_id`, `customers_id`, `customers_name`, `reviews_rating`, `reviews_text`, `reviews_status`, `reviews_read`, `vendors_id`, `created_at`, `updated_at`) VALUES
(4, 4, 15, 'Hassan', 4, 'sfdasdasdasdasdas', 1, 1, NULL, '2020-03-10 12:57:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `reviews_text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_images`
--

CREATE TABLE `review_images` (
  `review_image_id` int(11) NOT NULL,
  `review_image` text NOT NULL,
  `review_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_images`
--

INSERT INTO `review_images` (`review_image_id`, `review_image`, `review_id`, `created_at`, `updated_at`) VALUES
(1, 'images/reviews/review_niBtuyX3bFzWgEyWPX9rhw2Dy8e5e0pmdxnBCGq7ekCjLfTzkiudvRDUbwDS.jpg', 4, '2020-03-10 14:57:15', NULL),
(2, 'images/reviews/review_WOM3RZbhuYs62Vte7L0Tdwg73184EOdqxvQT1shJYQGyvKNWRQ4pwahF4nex.jpg', 4, '2020-03-10 14:57:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sec_directory_whitelist`
--

CREATE TABLE `sec_directory_whitelist` (
  `id` int(11) NOT NULL,
  `directory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_app_id', 'FB_CLIENT_ID', '2018-04-27 04:00:00', '2019-11-01 10:58:53'),
(2, 'facebook_secret_id', 'FB_SECRET_KEY', '2018-04-27 04:00:00', '2019-11-01 10:58:53'),
(3, 'facebook_login', '1', '2018-04-27 04:00:00', '2019-11-01 10:58:53'),
(4, 'contact_us_email', 'vectorcoder@gmail.com', '2018-04-27 04:00:00', '2020-02-28 02:42:21'),
(5, 'address', 'address', '2018-04-27 04:00:00', '2020-02-28 02:42:21'),
(6, 'city', 'City', '2018-04-27 04:00:00', '2020-02-28 02:42:21'),
(7, 'state', 'State', '2018-04-27 04:00:00', '2020-02-28 02:42:21'),
(8, 'zip', 'Zip', '2018-04-27 04:00:00', '2020-02-28 02:42:21'),
(9, 'country', 'Country', '2018-04-27 04:00:00', '2020-02-28 02:42:22'),
(10, 'latitude', 'Latitude', '2018-04-27 04:00:00', '2020-02-28 02:42:22'),
(11, 'longitude', 'Longitude', '2018-04-27 04:00:00', '2020-02-28 02:42:22'),
(12, 'phone_no', '+92 312 1234567', '2018-04-27 04:00:00', '2020-02-28 02:42:21'),
(13, 'fcm_android', '', '2018-04-27 04:00:00', '2019-02-05 16:42:15'),
(14, 'fcm_ios', '', '2018-04-27 04:00:00', '0000-00-00 00:00:00'),
(15, 'fcm_desktop', '', '2018-04-27 04:00:00', '0000-00-00 00:00:00'),
(16, 'website_logo', '', '2018-04-27 04:00:00', '2020-02-24 07:40:03'),
(17, 'fcm_android_sender_id', '', '2018-04-27 04:00:00', '0000-00-00 00:00:00'),
(18, 'fcm_ios_sender_id', '', '2018-04-27 04:00:00', '2019-02-05 16:42:15'),
(19, 'app_name', 'Diva', '2018-04-27 04:00:00', '2020-02-28 02:42:21'),
(20, 'currency_symbol', 'SAR', '2018-04-27 04:00:00', '2018-11-19 12:26:01'),
(21, 'new_product_duration', '20', '2018-04-27 04:00:00', '2020-02-26 08:10:33'),
(22, 'notification_title', 'Ionic Ecommerce', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(23, 'notification_text', 'A bundle of products waiting for you!', '2018-04-27 04:00:00', '0000-00-00 00:00:00'),
(24, 'lazzy_loading_effect', 'Detail', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(25, 'footer_button', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(26, 'cart_button', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(27, 'featured_category', '', '2018-04-27 04:00:00', '0000-00-00 00:00:00'),
(28, 'notification_duration', 'year', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(29, 'home_style', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(30, 'wish_list_page', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(31, 'edit_profile_page', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(32, 'shipping_address_page', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(33, 'my_orders_page', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(34, 'contact_us_page', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(35, 'about_us_page', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(36, 'news_page', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(37, 'intro_page', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(38, 'setting_page', '1', '2018-04-27 04:00:00', '0000-00-00 00:00:00'),
(39, 'share_app', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(40, 'rate_app', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(41, 'site_url', 'URL', '2018-04-27 04:00:00', '2018-11-19 12:26:01'),
(42, 'admob', '0', '2018-04-27 04:00:00', '2019-05-15 14:58:05'),
(43, 'admob_id', 'ID', '2018-04-27 04:00:00', '2019-05-15 14:58:05'),
(44, 'ad_unit_id_banner', 'Unit ID', '2018-04-27 04:00:00', '2019-05-15 14:58:05'),
(45, 'ad_unit_id_interstitial', 'Indestrial', '2018-04-27 04:00:00', '2019-05-15 14:58:05'),
(46, 'category_style', '4', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(47, 'package_name', 'package name', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(48, 'google_analytic_id', 'test', '2018-04-27 04:00:00', '2019-05-15 14:58:30'),
(49, 'themes', 'themeone', '2018-04-27 04:00:00', '0000-00-00 00:00:00'),
(50, 'company_name', '#', '2018-04-27 04:00:00', '2019-10-07 13:52:24'),
(51, 'facebook_url', '#fb', '2018-04-27 04:00:00', '2020-03-01 18:51:35'),
(52, 'google_url', '#g', '2018-04-27 04:00:00', '2020-03-01 18:51:35'),
(53, 'twitter_url', '#tw', '2018-04-27 04:00:00', '2020-03-01 18:51:35'),
(54, 'linked_in', '#li', '2018-04-27 04:00:00', '2020-03-01 18:51:35'),
(55, 'default_notification', 'onesignal', '2018-04-27 04:00:00', '2019-02-05 16:42:15'),
(56, 'onesignal_app_id', '6053d948-b8f6-472a-87e4-379fa89f78d8', '2018-04-27 04:00:00', '2019-02-05 16:42:15'),
(57, 'onesignal_sender_id', '50877237723', '2018-04-27 04:00:00', '2019-02-05 16:42:15'),
(58, 'ios_admob', '1', '2018-04-27 04:00:00', '2019-05-15 14:58:05'),
(59, 'ios_admob_id', 'AdMob ID', '2018-04-27 04:00:00', '2019-05-15 14:58:05'),
(60, 'ios_ad_unit_id_banner', 'Unit ID Banner', '2018-04-27 04:00:00', '2019-05-15 14:58:05'),
(61, 'ios_ad_unit_id_interstitial', 'ID Interstitial', '2018-04-27 04:00:00', '2019-05-15 14:58:05'),
(62, 'google_login', '1', '0000-00-00 00:00:00', '2019-11-01 10:58:36'),
(63, 'google_app_id', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'google_secret_id', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'google_callback_url', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'facebook_callback_url', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'is_app_purchased', '1', '0000-00-00 00:00:00', '2018-05-04 07:24:44'),
(68, 'is_web_purchased', '1', '0000-00-00 00:00:00', '2018-05-04 07:24:44'),
(69, 'consumer_key', 'dadb7a7c1557917902724bbbf5', '0000-00-00 00:00:00', '2019-05-15 14:58:22'),
(70, 'consumer_secret', '3ba77f821557917902b1d57373', '0000-00-00 00:00:00', '2019-05-15 14:58:22'),
(71, 'order_email', 'orders@gmail.com', '0000-00-00 00:00:00', '2020-02-26 08:10:33'),
(72, 'website_themes', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'seo_title', '', '0000-00-00 00:00:00', '2018-11-19 12:21:57'),
(74, 'seo_metatag', '', '0000-00-00 00:00:00', '2018-11-19 12:21:57'),
(75, 'seo_keyword', '', '0000-00-00 00:00:00', '2018-11-19 12:21:57'),
(76, 'seo_description', '', '0000-00-00 00:00:00', '2018-11-19 12:21:57'),
(77, 'before_head_tag', '', '0000-00-00 00:00:00', '2018-11-19 12:22:15'),
(78, 'end_body_tag', 'name', '0000-00-00 00:00:00', '2020-02-24 07:40:03'),
(79, 'sitename_logo', 'Diva', '0000-00-00 00:00:00', '2020-02-24 07:40:03'),
(80, 'website_name', '<strong>E</strong>COMMERCE', '0000-00-00 00:00:00', '2018-11-19 12:22:25'),
(81, 'web_home_pages_style', 'two', '0000-00-00 00:00:00', '2018-11-19 12:22:25'),
(82, 'web_color_style', 'app', '0000-00-00 00:00:00', '2018-11-19 12:22:25'),
(83, 'free_shipping_limit', '400', '0000-00-00 00:00:00', '2020-02-26 08:10:33'),
(84, 'app_icon_image', 'icon', '0000-00-00 00:00:00', '2019-02-05 15:12:59'),
(85, 'twilio_status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'twilio_authy_api_id', '1213213', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'favicon', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Thumbnail_height', '150', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Thumbnail_width', '150', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Medium_height', '400', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Medium_width', '400', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Large_height', '900', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Large_width', '900', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'environment', 'local', '0000-00-00 00:00:00', '2019-10-21 11:36:53'),
(95, 'maintenance_text', 'https://example.com', '0000-00-00 00:00:00', '2019-10-21 11:36:53'),
(96, 'package_charge_taxt', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'order_commission', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'all_items_price_included_tax', 'yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'all_items_price_included_tax_value', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'driver_accept_multiple_order', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'min_order_price', '100', '0000-00-00 00:00:00', '2020-02-26 08:10:33'),
(102, 'youtube_link', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'external_website_link', 'www.diva.com', '0000-00-00 00:00:00', '2020-02-28 02:42:21'),
(104, 'google_map_api', '', '0000-00-00 00:00:00', '2020-02-26 09:06:29'),
(105, 'is_pos_purchased', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'admin_version', '4.0.6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'app_version', '4.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'web_version', '4.0.6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'pos_version', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'android_app_link', '#an', '0000-00-00 00:00:00', '2020-03-01 18:51:35'),
(111, 'iphone_app_link', '#ios', '0000-00-00 00:00:00', '2020-03-01 18:51:35'),
(112, 'about_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', '0000-00-00 00:00:00', '2020-02-26 10:04:14'),
(113, 'contact_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', '0000-00-00 00:00:00', '2020-02-26 10:04:14'),
(114, 'testkh', '2654', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'fb_redirect_url', 'http://YOUR_DOMAIN_NAME/login/facebook/callback', '0000-00-00 00:00:00', '2019-11-01 10:58:53'),
(116, 'google_client_id', 'GOOGLE_CLIENT_ID', '0000-00-00 00:00:00', '2019-11-01 10:58:36'),
(117, 'google_client_secret', 'GOOGLE_SECRET_KEY', '0000-00-00 00:00:00', '2019-11-01 10:58:36'),
(118, 'google_redirect_url', 'http://YOUR_DOMAIN_NAME/login/google/callback', '0000-00-00 00:00:00', '2019-11-01 10:58:36'),
(119, 'start_day', 'Monday', NULL, '2020-03-01 18:51:35'),
(120, 'end_day', 'Thursday', NULL, '2020-03-01 18:51:35'),
(121, 'start_hour', '21:00', NULL, '2020-03-01 18:51:35'),
(122, 'end_hour', '22:00', NULL, '2020-03-01 18:51:35'),
(123, 'Instgram_url', '#', NULL, NULL),
(124, 'phone_show_app', '1', NULL, '2020-05-26 15:47:37'),
(125, 'phone_num_app', '01272252219', NULL, '2020-05-26 15:47:37'),
(126, 'whatsapp_num_app', '01066365287', NULL, '2020-05-26 15:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

CREATE TABLE `shipping_description` (
  `shipping_description_id` int(11) NOT NULL,
  `shipping_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`shipping_description_id`, `shipping_name`, `shipping_method_id`, `language_id`, `created_at`, `updated_at`) VALUES
(16, 'free', 7, 1, '2020-02-17 07:49:13', NULL),
(17, 'مجانا', 7, 2, '2020-02-17 07:49:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `shipping_methods_id` int(11) NOT NULL,
  `shipping_price` float NOT NULL,
  `shipping_phone` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `shipping_price`, `shipping_phone`, `shipping_email`, `status`, `isDefault`, `created_at`, `updated_at`) VALUES
(7, 5, '01200000000', 't@t.com', 1, 0, '2020-02-17 05:49:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders_images`
--

CREATE TABLE `sliders_images` (
  `sliders_id` int(11) NOT NULL,
  `sliders_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carousel_id` int(11) DEFAULT NULL,
  `sliders_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_group` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_html_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_date` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `languages_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `carousel_id`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`) VALUES
(1, 'ewgrege', 'test-product', 5, '110', '', '', '2020-07-08 00:00:00', '2019-10-21 08:10:52', 1, 'product', '2019-10-21 08:10:52', 1),
(2, 'frgergege', 'test-product', 5, '110', '', '', '2020-10-14 00:00:00', '2019-10-21 08:11:16', 1, 'product', '2019-10-21 08:11:16', 1),
(3, 'dgdthrh', 'test-product', 5, '110', '', '', '2019-09-18 00:00:00', '2019-10-21 08:11:37', 1, 'product', '2019-10-21 08:11:37', 1),
(4, 'sdasdasdass', '', 1, '111', '', '', '2020-07-15 00:00:00', '2019-09-10 08:26:49', 1, 'product', '0000-00-00 00:00:00', 1),
(5, 'fdsfds', '', 1, '111', '', '', '2020-08-14 00:00:00', '2019-09-10 08:27:04', 1, 'product', '0000-00-00 00:00:00', 1),
(6, 'fsfsfsfss', '', 1, '111', '', '', '2030-01-30 00:00:00', '2019-09-10 08:27:21', 1, 'product', '0000-00-00 00:00:00', 1),
(7, 'fdssdfsf', '', 2, '108', '', '', '2020-11-19 00:00:00', '2019-09-10 08:28:18', 1, 'product', '0000-00-00 00:00:00', 1),
(8, 'dasdada', '', 2, '108', '', '', '2021-07-14 00:00:00', '2019-09-10 08:28:31', 1, 'product', '0000-00-00 00:00:00', 1),
(9, 'dad', '', 2, '108', '', '', '2020-06-24 00:00:00', '2019-09-10 08:28:49', 1, 'product', '0000-00-00 00:00:00', 1),
(10, 'daadsd', '', 3, '110', '', '', '2021-10-20 00:00:00', '2019-09-10 08:29:41', 1, 'product', '0000-00-00 00:00:00', 1),
(11, 'sasdasd', '', 3, '110', '', '', '2020-07-15 00:00:00', '2019-09-10 08:29:58', 1, 'product', '0000-00-00 00:00:00', 1),
(12, 'ewef', '', 3, '110', '', '', '2021-07-15 00:00:00', '2019-09-10 08:30:13', 1, 'product', '0000-00-00 00:00:00', 1),
(13, 'fvtrgr', '', 4, '109', '', '', '2021-06-15 00:00:00', '2019-09-10 12:29:16', 1, 'product', '0000-00-00 00:00:00', 1),
(14, 't4tt', '', 4, '109', '', '', '2021-10-25 00:00:00', '2019-09-10 12:29:33', 1, 'product', '0000-00-00 00:00:00', 1),
(15, '4t4t4', '', 4, '109', '', '', '2022-07-07 00:00:00', '2019-09-10 12:29:50', 1, 'product', '0000-00-00 00:00:00', 1),
(19, 'sdasdasdass', '', 1, '111', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2),
(20, 'fdsfds', '', 1, '111', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2),
(21, 'fsfsfsfss', '', 1, '111', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2),
(22, 'fdssdfsf', '', 2, '108', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2),
(23, 'dasdada', '', 2, '108', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2),
(24, 'dad', '', 2, '108', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2),
(25, 'daadsd', '', 3, '110', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2),
(26, 'sasdasd', '', 3, '110', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2),
(27, 'ewef', '', 3, '110', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2),
(28, 'fvtrgr', '', 4, '109', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2),
(29, 't4tt', '', 4, '109', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2),
(30, '4t4t4', '', 4, '109', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(11) NOT NULL,
  `specials_last_modified` int(11) NOT NULL,
  `expires_date` int(11) NOT NULL,
  `date_status_change` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `subscribes_id` int(11) NOT NULL,
  `subscribe_email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`subscribes_id`, `subscribe_email`, `created_at`, `updated_at`) VALUES
(8, 'mohammed@hefny.me', '2020-02-29 16:02:52', NULL),
(9, 'df@d.c', '2020-02-29 23:36:34', NULL),
(10, 'adsd@dsd.fdf', '2020-03-22 14:35:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_class_description` text COLLATE utf8mb4_unicode_ci,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test test', NULL, '0000-00-00 00:00:00', '2020-02-10 11:25:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(11) DEFAULT '1',
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `team_professional` varchar(100) NOT NULL,
  `team_image` varchar(255) NOT NULL,
  `team_facebook` varchar(100) NOT NULL,
  `team_google` varchar(100) NOT NULL,
  `team_instagram` varchar(100) NOT NULL,
  `team_twitter` varchar(100) NOT NULL,
  `team_linkedin` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `team_professional`, `team_image`, `team_facebook`, `team_google`, `team_instagram`, `team_twitter`, `team_linkedin`, `status`, `created_at`, `updated_at`) VALUES
(4, 'test', 'test', 'images/teams/3dgKwgzaweIC2WzS4p4FrKfgeetlNw2yCd9l8L1y.png', 'test test', 'test', 'test', 'test', 'test test', 1, '2020-03-05 09:30:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `is_active`, `date_added`, `last_modified`, `created_at`, `updated_at`) VALUES
(1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-01-01 13:04:18', '2019-01-01 13:04:18'),
(2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-01-01 13:04:18', '2019-01-01 13:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `units_descriptions`
--

CREATE TABLE `units_descriptions` (
  `units_description_id` int(10) UNSIGNED NOT NULL,
  `units_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units_descriptions`
--

INSERT INTO `units_descriptions` (`units_description_id`, `units_name`, `languages_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 'Gram', 1, 1, '2019-01-01 13:04:18', '2019-01-01 13:04:18'),
(2, 'غرام', 2, 1, '2019-01-01 13:04:18', '2019-01-01 13:04:18'),
(3, 'Kilogram', 1, 2, '2019-01-01 13:04:18', '2019-01-01 13:04:18'),
(4, 'كيلوغرام', 2, 2, '2019-01-01 13:04:18', '2019-01-01 13:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

CREATE TABLE `ups_shipping` (
  `ups_id` int(11) NOT NULL,
  `pickup_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDisplayCal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_width` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ups_shipping`
--

INSERT INTO `ups_shipping` (`ups_id`, `pickup_method`, `isDisplayCal`, `serviceType`, `shippingEnvironment`, `user_name`, `access_key`, `password`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`, `parcel_height`, `parcel_width`, `title`) VALUES
(1, '07', '', 'US_01,US_02,US_03,US_12,US_13,US_14,US_59', '0', 'nyblueprint', 'FCD7C8F94CB5EF46', 'delfia11', '', '', '', 'D Ground', '', 'US', 'NY', '10312', 'New York City', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_address_id` int(11) NOT NULL DEFAULT '0',
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `phone_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(33) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invite_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_seller` tinyint(1) NOT NULL DEFAULT '0',
  `image` text COLLATE utf8mb4_unicode_ci,
  `wallet` float DEFAULT '0',
  `default_language` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_name`, `first_name`, `last_name`, `gender`, `default_address_id`, `country_code`, `phone`, `whatsapp_number`, `email`, `password`, `avatar`, `status`, `is_seen`, `phone_verified`, `remember_token`, `auth_id_tiwilo`, `dob`, `invite_code`, `is_seller`, `image`, `wallet`, `default_language`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, 'tech', 'irondot', '', 0, '', '01000922720', NULL, 'admin@irondot.com', '$2y$10$dSk9d/wmBzmOiug7u4cXCu2zLGJrBFeyedf2r6ov5vujeqP7F7x4C', NULL, '1', 0, '', '', '', '', NULL, 0, NULL, 0, 1, '2019-10-18 16:07:41', '2020-02-28 23:25:40'),
(3, 11, 'Admin_Diva1582939921', 'Admin', 'Diva', NULL, 0, NULL, '+966555835938', NULL, 'admin@diva.com', '$2y$10$wbeVYlbfCq4nOfrRvgZcpeD3b3QD.nNfP/w/bb/ge.qTdtVxnsg26', '', '1', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2020-02-29 01:32:02', NULL),
(14, NULL, NULL, 'Hassan', 'Gamal', 'male', 0, NULL, '01272252219', NULL, 'h@g.com', '$2y$10$vHOEiZCvJUMwB5UrCkI49.b45IPApQ5hc9XHXRkZSWzOpfhSVLGnu', '', '1', 1, NULL, NULL, NULL, NULL, '123456', 0, 'images/users/avatar_user.png', 0, 1, '2020-03-04 09:19:48', NULL),
(15, NULL, NULL, 'Hassaaaan', 'Gamallll', 'male', 0, NULL, '01200000001', '012586985743', 'hsssS18@yahoo.com', '$2y$10$4esaMccAwpE1Gelj0/hIP.2ZBQHWxD2dutY5eYUmuLwD2IZXKWHUe', NULL, '1', 1, NULL, NULL, NULL, NULL, '123456', 0, 'images/users/user_rbWkTUNbPROFCyJ74tAgJrll15KyMGR41H7a9qoM7biTtjvCWnV3S0q7eAff.jpg', 0, 2, '2020-03-08 10:09:04', NULL),
(16, NULL, NULL, 'Hassaaaan', 'Gamallll', 'male', 0, NULL, '01200000000', NULL, 'hss.gss@yahoo.com', '$2y$10$.HSoEuRnOgNnHauXgbpyBO0CLERsCfJkvpCZ5UqHIEAmr.qbdGpMi', NULL, '1', 0, NULL, NULL, NULL, NULL, '123456', 0, NULL, 0, 1, '2020-03-08 10:14:46', NULL),
(17, NULL, NULL, 'Hassaaaan', 'Gamallll', 'male', 0, NULL, '01200000000', NULL, 'hssS.gssS@yahoo.com', '$2y$10$1N4gKHLmvr63OOIM5WBkt.gsMb3fsqZ.9UJY3JA/8Co2oaeMFSQu6', NULL, '1', 1, NULL, NULL, NULL, NULL, '123456', 0, NULL, 0, 1, '2020-03-07 23:02:47', NULL),
(20, NULL, NULL, 'Hassaaaan', 'Gamallll', 'male', 0, NULL, '01200000011', NULL, 'hssssS.gssssS@yahoo.com', '$2y$10$OMGfk/TMN3ORZPAWpIo/DeV8Vk.oPgJVdJvsirsgG2AuwMVV1ic/y', NULL, '1', 1, NULL, NULL, NULL, NULL, '123456', 0, NULL, 0, 1, '2020-03-09 06:38:35', NULL),
(21, NULL, NULL, 'm', 'm', 'male', 0, NULL, '03017232211', NULL, 'm@m.com', '$2y$10$HSHfTvoxS5.sWDNwT4K3be4qLnHGNKm3WAWtvANp03REXyfxg94HC', '', '1', 1, NULL, NULL, NULL, NULL, '123456', 0, 'images/users/4lsntJGDUkL8BaJH9dWoDAtuK9WN5J7qHvEZ0Koy.png', NULL, 1, '2020-03-11 08:26:24', '2020-03-23 21:18:28'),
(22, NULL, NULL, 'jjj', 'jj', 'male', 0, NULL, '555555', NULL, 'hjh@ggt.jhuh', '$2y$10$3jk5mYvOc9bTLUjvi1CaieFOXbELwZIPJkCKG7fSd2YBlCVnjwfIi', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/avatar_user.png', 0, 1, '2020-03-22 18:21:01', NULL),
(23, NULL, NULL, 'jjj', 'jj', 'male', 0, NULL, '555555', NULL, 'hjh@ggt.jhuh', '$2y$10$yLWcgF4Yk4tQQ/0RaVmnRul25LNezS2g5nQfbmQKj22dOk1cUBpJm', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/avatar_user.png', 0, 1, '2020-03-22 18:21:01', NULL),
(24, NULL, NULL, 'amal', 'elrefaey', 'male', 0, NULL, '1111111221', NULL, 'amal@irondot.com', '$2y$10$OYHoFTHJcS6uTxwavKkCMe5aVcOI6ba1OWqYDrBAaKCgBs1LdnAUe', '', '1', 1, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/zTapQptA5RNaXA4nBhyzA2b1A9Od4EMNouAuL9yU.jpeg', NULL, 1, '2020-03-22 18:29:20', '2020-03-23 20:16:38'),
(25, NULL, NULL, 'amal', 'elrefaey', 'male', 0, NULL, '1111111111', NULL, 'amal@iron.com', '$2y$10$lYfQ0RHKh.1XBhnpdwEBiuONO4SInNZJKw24TrzzorA1/zzKZxY4K', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/avatar_user.png', 0, 1, '2020-03-22 18:33:39', NULL),
(27, NULL, NULL, 'j', 'm', 'male', 0, NULL, '01225892522', NULL, 'j@m.com', '$2y$10$iXBxVC3dTHkKmdA2Femoue7EhJGcZkEmx3NZsPQK.qWyY89ZdP6ty', '', '1', 1, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/KqNuXTYOsKLNv5VWuvMZx5urbbUr7Y0OTptxUWbQ.png', 0, 1, '2020-03-23 07:42:45', '2020-03-23 14:05:58'),
(28, NULL, NULL, 'amal', 'elrefaey', 'male', 0, NULL, '1111111111', NULL, 'irondot@iron.dot', '$2y$10$AW5mdp4dhsz.qNd6mzgvyOoGNwUyIZBcI9ti0xVEMXbNIiMixH3q2', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/avatar_user.png', 0, 1, '2020-03-23 08:05:09', NULL),
(29, NULL, NULL, 'amal', 'refaey', 'female', 0, NULL, '4548484', NULL, 'amgal@3iron.com', '$2y$10$zRoVB./fEBJiQoO7QBOb6Oz1LLMRNdVIXSzieNdhzy.QrDAnk61eO', '', '1', 1, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/ifBD7cQDgehpvliFjpQemBUYTebZbswHzWeAflIa.png', NULL, 1, '2020-03-23 08:21:32', '2020-03-23 21:20:50'),
(30, NULL, NULL, 'Hassan', 'Gamal', 'male', 0, NULL, '01225892525', NULL, 'hassan.alex26@yahoo.com', '$2y$10$6lzHBm4Rxj9LZFvBogJqJ.yrVcLbGPUzaYfDJ6J44P.NnH3PmVjPi', '', '1', 1, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/pNU0my6SLo8gEBKAjg39ZoqCEtc9M9K0ettzd1lo.jpeg', NULL, 1, '2020-03-23 09:07:41', '2020-03-23 18:10:02'),
(31, NULL, NULL, 'االااات', 'ةىتىت', 'male', 0, NULL, '01225892525', NULL, 'dfdf@fdf.ftgf', '$2y$10$eJkMOdv5Q6Oeh52XounAEOujVIqp.y3i3AMuIuKS/RUnAKOpyJSTy', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/avatar_user.png', 0, 1, '2020-03-23 13:49:26', NULL),
(32, NULL, NULL, 'mfldfm', 'kgdnkg', 'male', 0, NULL, '01225892525', NULL, 'vdsv@fdf.fdf', '$2y$10$ruFYKF0fURnobSEbAtckneeE4lu5ap8cP.j6AIqoSM3dCNolt2vqq', NULL, '1', 1, NULL, NULL, NULL, NULL, 'fdfds', 0, 'images/users/avatar_user.png', 0, 1, '2020-03-23 13:50:03', NULL),
(33, NULL, NULL, 'fgf', 'gfdg', 'male', 0, NULL, '01225892525', NULL, 'fgfd@gfgdf.gdgfd', '$2y$10$EmMMfOvGOl5M7m7QAHZeLeFPYZIqwUMqaCcgs7sJ7S7Ex.ieDAci2', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/avatar_user.png', 0, 1, '2020-03-23 13:50:47', NULL),
(34, NULL, NULL, 'ريري', 'يبلب', 'male', 0, NULL, '434343435456', NULL, 'dsf@fdsf.gfdg', '$2y$10$LmzrCTJl6bFwj3zNnMuPiOaoxpmv0ha8Xb79Rk0G3K6jc8ld3.vMy', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/avatar_user.png', 0, 1, '2020-03-23 13:52:51', NULL),
(35, NULL, NULL, 'muhmmed', 'abd', 'male', 0, NULL, '01552427312', NULL, 'mm@m.com', '$2y$10$kWGEAAQTCzEBLnk2XXAk2O/mJ1AKimj6Z7FT0y2/O3KL81MLjxJ92', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/7cjrP57skvaw0IrLRPtoyYz3jM4l1Et5bBgwZ8rI.jpeg', 0, 1, '2020-03-23 17:28:30', NULL),
(36, NULL, NULL, 'samar', 'ahmed', 'male', 0, NULL, '01284300546', NULL, 'samar.abdelhamed95@gmail.com', '$2y$10$NtoUQPCcdSVwtcUKGVjIVuiwq3dj4XsEHCBtvm.r18R5VmU.96Rg2', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/avatar_user.png', 0, 1, '2020-03-26 09:36:20', NULL),
(37, NULL, NULL, 'muhmmed', 'elabd', 'male', 0, NULL, '01552427313', NULL, 'm2@m.com', '$2y$10$LNAQ7kvMZGPf03MrT.iKHuxeMMaRYMVTcPRcyZlahaW/DwAGgwsPW', NULL, '1', 0, NULL, NULL, NULL, NULL, '123456', 0, NULL, 0, 1, '2020-05-09 10:13:08', NULL),
(38, NULL, NULL, 'Muhammed', 'Abd-Elkhalik', 'Female', 0, NULL, '0500576772', NULL, 'midorock2020@gmail.com', '$2y$10$0KX4.SP/1LrEW7OEQkYJZOiDN0VRFQQqfX1qPZgWf/BqtmHGP68am', NULL, '1', 0, NULL, NULL, NULL, NULL, '123456', 0, 'images/users/user_pYSQdqfWB2ezxsbfKDrJn9oCF0QFWmKTl1CY1ZkWyvLKbMjwvDqrMLdeBqFP.jpg', 0, 1, '2020-05-09 16:24:19', NULL),
(39, NULL, NULL, 'French', 'team', 'Male', 0, NULL, '0500576774', NULL, 'Midorock2020@gmail.com', '$2y$10$qrMm1HmZQaeiFXJqygo2r.BRNhHP99FxkJhTeCf2V0CdXi/ybWomm', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2020-05-12 07:01:46', NULL),
(40, NULL, NULL, 'team', 'team', 'Male', 0, NULL, '0500576777', NULL, 'team@and.com', '$2y$10$gsPHpN3m6lTCRIdDLIPY5.JkkhrgALlNuryVYpbp2MOFmz6a/AP2W', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2020-05-12 07:04:46', NULL),
(41, NULL, NULL, 'tditx', 'xitxriz', 'Male', 0, NULL, '0500576778', NULL, 'm34@m.com', '$2y$10$1JN3E/guAAgG.M0.1SxaMO4t1ISY2QHe61rerzKz21PiX6j6z6w.6', NULL, '1', 0, NULL, NULL, NULL, NULL, '159753', 0, NULL, 0, 1, '2020-05-12 07:23:51', NULL),
(42, NULL, NULL, 'ruxuezue', 'jrrzuezeuz', 'Male', 0, NULL, '0500576775', NULL, 'Midorock2009i@gmail.com', '$2y$10$W3sXLGY9N2EYPieh3OqDr.aANJSF9jACW2RHKRzk7nBxvGOqtM2Nu', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2020-05-12 07:54:57', NULL),
(43, NULL, NULL, 'team', 'team and', 'Male', 0, NULL, '0500576779', NULL, 'wm@m.com', '$2y$10$S9sumhuesdX.6r7Pau5HZu/hB9jpbh21Q1vC4QhFLq2p6JarMmeTi', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2020-05-12 14:26:03', NULL),
(44, NULL, NULL, 'team', 'dhsusu', 'Female', 0, NULL, '0500573780', NULL, 'Midorock2309@gmail.com', '$2y$10$dBt90ooeY3MJrbQtjk1Y5.lJ7nOKDowLsR0u/WEXwGgS8Y0AvRKhG', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2020-05-12 16:46:04', NULL),
(45, NULL, NULL, 'team', 'dhsusu', 'Male', 0, NULL, '0500573781', NULL, 'Midorock23809@gmail.com', '$2y$10$8d7r7ScHJxoP4t95IuXVj.ylgxPwFPELGHOZm1SH2bOhrz3GomYQC', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2020-05-12 16:49:06', NULL),
(46, NULL, NULL, 'Hassaaaanmmm', 'Gamamm', 'male', 0, NULL, '01200005555', NULL, 'haSssss.gaSssss@yahoo.com', '$2y$10$wctsKbOC7n80M6gT96BXQuQXmfkqzRs2wWwkHVbkxnGjFqVKAAv5S', NULL, '1', 1, NULL, NULL, NULL, NULL, '123456', 0, 'images/users/user.png', 0, 1, '2020-05-13 15:29:47', NULL),
(47, NULL, NULL, 'muhmmed', 'ahmed', 'Female', 0, NULL, '0500576781', NULL, 'm@mm.com', '$2y$10$55nRPfDqToGNRQKubZQKk.xpEkd2hu7Yl1fRcIoZPXRdjD7wrV9LO', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/user.png', 0, 1, '2020-05-13 15:34:46', NULL),
(48, NULL, NULL, 'ndndbd', 'djidjd', 'Female', 0, NULL, '0500576782', NULL, 'n@n.com', '$2y$10$7ac.Ju3EG79zQl/Ao3VB7uModxDci/X6UloCgzrP3b8Ige.99JCb6', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/user.png', 0, 1, '2020-05-13 15:47:38', NULL),
(49, NULL, NULL, 'jdd', 'hdjdj', 'Female', 0, NULL, '0500576881', NULL, 'b@b.com', '$2y$10$A47nc5utAYSyPAm0c.yrNuELNIeRNMxvOc1/eBp/MsAgUoIsdeDRu', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/user.png', 0, 1, '2020-05-13 16:01:15', NULL),
(50, NULL, NULL, 'muhmmed', 'ahmed', 'Male', 0, NULL, '0500576771', NULL, 'mm@mm.com', '$2y$10$9E4mrxQjiBf4z22TadhLLeHM0DPjhyfXgRKzQX/cuNxwB6036guMW', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/user.png', 0, 1, '2020-05-14 13:17:41', NULL),
(51, NULL, NULL, 'hgde', 'jj', 'Female', 0, NULL, '0500576750', NULL, 'j@j.com', '$2y$10$SEwcEl4sR2Z08Ghk7JPII.yJGI7uvbGmxNgSfBD/on6XF9pzHIvJ2', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/user.png', 0, 1, '2020-05-14 13:18:56', NULL),
(52, NULL, NULL, 'team', 'team and', 'Male', 0, NULL, '0500576994', NULL, 'm@ism.com', '$2y$10$/7h7hYpWl2yPAV3eEzfYBOWeWXKnmIUnl3vk2BJmmCFzpkP6unUfy', NULL, '1', 0, NULL, NULL, NULL, NULL, '59875', 0, 'images/users/user.png', 0, 1, '2020-05-15 11:24:40', NULL),
(53, NULL, NULL, 'محمد', 'اليامي', 'ذكر', 0, NULL, '0544494894', NULL, 'mm.ss.alyami@hotmail.com', '$2y$10$ofIIelYbIwdB9tzKlR/rjugwtGZF/KtBRGF6Ncrka86fA1n0Yy9YW', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/user.png', 0, 1, '2020-05-15 10:16:40', NULL),
(54, NULL, NULL, 'ججج', 'ججج', 'ذكر', 0, NULL, '0544494899', NULL, 'mm.ss.aluu@hotmail.com', '$2y$10$RrbAipEYFLqJhFArNBUZCOJLtzFoZEtXNgbo5ETXn2mLBBKh3Iobi', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/user.png', 0, 1, '2020-05-15 11:37:59', NULL),
(55, NULL, NULL, 'Hassan', 'Gamal', 'Male', 0, NULL, '0512722522', NULL, 'hassan.alex266@yahoo.com', '$2y$10$54GFgOVzXRDiY3aOkfz9A.N6obzkt9Vf224LNuqGzsXKaw9RqTgDK', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/user_mtRu3z9bAjtkc6mQ4u9lK22qm6tWVJrMvYI7fca090xaNtBDWZ2QmXgUio6B.jpg', 0, 1, '2020-05-16 07:50:39', NULL),
(56, NULL, NULL, 'amal', 'elrefaey', 'Female', 0, NULL, '0105555555', NULL, 'amal@elrefaey.com', '$2y$10$rHUTpX65UgN2Yx2Ix663CeNNK2lv23S7y/rtz8foMvDNdQuoNMbMG', NULL, '1', 0, NULL, NULL, NULL, NULL, 'hello', 0, 'images/users/user.png', 0, 1, '2020-05-17 14:05:09', NULL),
(57, NULL, NULL, 'يتبتب', 'بتبنب', 'Male', 0, NULL, '0111111112', NULL, 'amal@test.com', '$2y$10$jjCYc14vucPrK/CGvYX2LOabp2Eub.3iEbfIX6324BvZraYCze5mm', NULL, '1', 0, NULL, NULL, NULL, NULL, '555', 0, 'images/users/user_e9EQM7fYkqXByVuatgg5HRtmiEzTHZMa275GiQirYgikUNZ9p2aOBSBCDr9p.jpg', 0, 1, '2020-05-17 15:29:03', NULL),
(58, NULL, NULL, 'بتبتبيبتا', 'ذتبنذعع', 'أنثي', 0, NULL, '0111111113', NULL, 'dbdh@hh.ddh', '$2y$10$wB9JQi4F2Z12BPyiCAdRSe8Wim5AA0MbQBKq.kCN/kDW5w8c0WYfG', NULL, '1', 0, NULL, NULL, NULL, NULL, NULL, 0, 'images/users/user_zguBDH4cEF5OLMpyf89K9DH2GF81g2XyIbsCh8qRKI3lTgOYhi3geVV2WNyW.jpg', 0, 1, '2020-05-17 15:58:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_to_address`
--

CREATE TABLE `user_to_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_book_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_to_address`
--

INSERT INTO `user_to_address` (`id`, `user_id`, `address_book_id`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2020-02-20 10:52:00', NULL),
(2, 15, 2, 0, '2020-02-20 10:52:00', NULL),
(5, 17, 5, 0, '2020-02-23 07:35:46', NULL),
(10, 30, 11, 0, '2020-03-23 09:22:55', NULL),
(12, 29, 13, 1, '2020-03-23 09:45:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_types_id` int(11) NOT NULL,
  `user_types_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_types_id`, `user_types_name`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Super Admin', 1534774230, 0, 1),
(2, 'Customers', 1534777027, 0, 1),
(3, 'Vendors', 1538390209, 0, 1),
(4, 'Delivery Guy', 1542965906, 0, 1),
(5, 'Test 1', 1542965906, 0, 1),
(6, 'Test 2', 1542965906, 0, 1),
(7, 'Test 3', 1542965906, 0, 1),
(8, 'Test 4', 1542965906, 0, 1),
(9, 'Test 5', 1542965906, 0, 1),
(10, 'Test 6', 1542965906, 0, 1),
(11, 'admin', 1574051544, 1582939341, 1);

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `verification_id` int(11) NOT NULL,
  `phone` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `pin_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `verification`
--

INSERT INTO `verification` (`verification_id`, `phone`, `pin_code`, `is_used`, `created_at`, `updated_at`) VALUES
(4, '01225892523', '8465', 0, '2020-03-02 11:03:07', NULL),
(5, '01200000000', '9469', 0, '2020-03-02 14:44:56', NULL),
(6, '01200000011', '2476', 0, '2020-03-09 08:22:32', NULL),
(7, '03017232211', '1234', 1, '2020-03-11 08:22:38', NULL),
(8, '555555', '1234', 1, '2020-03-22 18:02:39', NULL),
(9, '1111111111', '1234', 0, '2020-03-22 18:29:14', NULL),
(10, '12542', '1234', 1, '2020-03-22 18:45:10', NULL),
(11, '01225892522', '1234', 1, '2020-03-23 07:42:39', NULL),
(12, '1234567890', '1234', 1, '2020-03-23 08:21:24', NULL),
(13, '123654789', '1234', 0, '2020-03-23 08:51:14', NULL),
(14, '455658', '1234', 0, '2020-03-23 08:56:41', NULL),
(15, '01225892525', '1234', 1, '2020-03-23 09:07:24', NULL),
(16, '434343435456', '1234', 1, '2020-03-23 13:52:45', NULL),
(17, '01', '1234', 0, '2020-03-23 17:24:25', NULL),
(18, '01552427312', '1234', 1, '2020-03-23 17:28:22', NULL),
(19, '7185538740', '1234', 0, '2020-03-24 16:55:36', NULL),
(20, '01284300546', '1234', 1, '2020-03-26 09:36:08', NULL),
(21, '01200000003', '3821', 0, '2020-03-26 09:45:40', NULL),
(22, '01200000004', '6648', 0, '2020-05-09 03:58:26', NULL),
(23, '01552427313', '7175', 1, '2020-05-09 04:07:13', NULL),
(24, '0500576772', '4199', 1, '2020-05-09 22:21:01', NULL),
(25, '0500576773', '1393', 0, '2020-05-12 11:54:30', NULL),
(26, '0500576774', '1880', 1, '2020-05-12 12:58:44', NULL),
(27, '0500576777', '3534', 1, '2020-05-12 13:03:20', NULL),
(28, '0500576778', '4325', 1, '2020-05-12 13:16:53', NULL),
(29, '0500576775', '3372', 0, '2020-05-12 13:53:19', NULL),
(30, '0500576779', '6308', 0, '2020-05-12 20:25:34', NULL),
(31, '0500573780', '1644', 0, '2020-05-12 22:45:04', NULL),
(32, '0500573781', '9786', 1, '2020-05-12 22:48:51', NULL),
(33, '01200005555', '8977', 1, '2020-05-13 09:28:35', NULL),
(34, '0500576781', '2558', 1, '2020-05-13 09:33:04', NULL),
(35, '0500576782', '7688', 1, '2020-05-13 09:47:22', NULL),
(36, '0500576881', '8478', 1, '2020-05-13 10:01:04', NULL),
(37, '012000055555', '6737', 0, '2020-05-13 13:07:15', NULL),
(38, '0500576771', '3614', 1, '2020-05-14 07:15:07', NULL),
(39, '0500576750', '5753', 1, '2020-05-14 07:18:45', NULL),
(40, '012000055556', '1151', 0, '2020-05-14 13:57:39', NULL),
(41, '012000055557', '7575', 0, '2020-05-14 14:00:49', NULL),
(42, '0500057678', '6584', 0, '2020-05-14 14:42:55', NULL),
(43, '0500576994', '9655', 1, '2020-05-15 05:24:34', NULL),
(44, '0500579794', '8858', 0, '2020-05-15 05:25:17', NULL),
(45, '0544494894', '6327', 1, '2020-05-15 16:05:21', NULL),
(46, '0505076779', '9908', 0, '2020-05-15 16:17:30', NULL),
(47, '0544494899', '5327', 1, '2020-05-15 17:36:26', NULL),
(48, '0566666666', '8322', 0, '2020-05-16 12:14:40', NULL),
(49, '0512722522', '8380', 0, '2020-05-16 13:50:00', NULL),
(50, '0105555555', '8577', 1, '2020-05-17 08:02:07', NULL),
(51, '0111111112', '1668', 1, '2020-05-17 09:28:37', NULL),
(52, '0111111113', '2683', 1, '2020-05-17 09:58:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_page_url` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(1, 'Rehan Tariq', '', '', '2019-11-01 05:', '', ''),
(2, 'new test', '', '', '2019-11-01 05:', '', ''),
(3, 'Rehan Tariq', '', '', '2019-11-01 06:', '', ''),
(4, 'Rehan Tariq', '', '', '2019-11-01 06:', '', ''),
(5, 'Rehan Tariq', '', '', '2019-11-01 05:', '', ''),
(7, 'Rehan Tariq', '', '', '2019-11-01 06:', '', ''),
(8, 'Rehan Tariq', '', '', '2019-11-01 06:', '', ''),
(15, 'Hassaaaan Gamallll', '', '', '2020-05-12 10:', '', ''),
(18, 'Hassaaaan Gamallll', '', '', '2020-03-08 14:', '', ''),
(35, 'muhmmed abd', '', '', '2020-05-09 09:', '', ''),
(37, 'muhmmed elabd', '', '', '2020-05-09 09:', '', ''),
(38, 'Muhammed Abd-Elkhalik', '', '', '2020-05-20 13:', '', ''),
(40, 'team team', '', '', '2020-05-12 13:', '', ''),
(53, 'محمد اليامي', '', '', '2020-05-16 12:', '', ''),
(55, 'Hassan Gamal', '', '', '2020-05-16 13:', '', ''),
(57, 'يتبتب بتبنب', '', '', '2020-05-17 09:', '', ''),
(58, 'بتبتبيبتا ذتبنذعع', '', '', '2020-05-17 10:', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_name2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name2`, `status`, `created_at`, `updated_at`) VALUES
(182, 184, 'jeddah', 'jeddah', 0, '2020-05-23 13:31:46', NULL),
(183, 184, 'Mekkah\r\n', 'Mekkah', 0, '2020-05-23 13:31:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zone_description`
--

CREATE TABLE `zone_description` (
  `zone_description_id` int(11) NOT NULL,
  `zone_name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `zone_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zone_description`
--

INSERT INTO `zone_description` (`zone_description_id`, `zone_name`, `zone_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'jeddah', 182, 1, '2020-05-23 13:58:21', NULL),
(2, 'جدة', 182, 2, '2020-05-23 13:58:21', NULL),
(3, 'Mekkah', 183, 1, '2020-05-23 13:59:10', NULL),
(4, 'مكة', 183, 2, '2020-05-23 13:59:10', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_us_id`);

--
-- Indexes for table `about_us_description`
--
ALTER TABLE `about_us_description`
  ADD PRIMARY KEY (`about_us_description_id`);

--
-- Indexes for table `action_recorder`
--
ALTER TABLE `action_recorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_action_recorder_module` (`module`),
  ADD KEY `idx_action_recorder_user_id` (`user_id`),
  ADD KEY `idx_action_recorder_identifier` (`identifier`),
  ADD KEY `idx_action_recorder_date_added` (`date_added`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`user_id`);

--
-- Indexes for table `address_format`
--
ALTER TABLE `address_format`
  ADD PRIMARY KEY (`address_format_id`);

--
-- Indexes for table `alert_categories`
--
ALTER TABLE `alert_categories`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Indexes for table `banner_description`
--
ALTER TABLE `banner_description`
  ADD PRIMARY KEY (`banner_description_id`);

--
-- Indexes for table `block_ips`
--
ALTER TABLE `block_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_description`
--
ALTER TABLE `blog_description`
  ADD PRIMARY KEY (`blog_description_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `brand_description`
--
ALTER TABLE `brand_description`
  ADD PRIMARY KEY (`brand_description_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `categories_role`
--
ALTER TABLE `categories_role`
  ADD PRIMARY KEY (`categories_role_id`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `compare`
--
ALTER TABLE `compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`condition_id`);

--
-- Indexes for table `condition_description`
--
ALTER TABLE `condition_description`
  ADD PRIMARY KEY (`condition_description_id`);

--
-- Indexes for table `constant_banners`
--
ALTER TABLE `constant_banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name2`);

--
-- Indexes for table `country_description`
--
ALTER TABLE `country_description`
  ADD PRIMARY KEY (`country_description_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `currency_record`
--
ALTER TABLE `currency_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_theme`
--
ALTER TABLE `current_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Indexes for table `customer_seller`
--
ALTER TABLE `customer_seller`
  ADD PRIMARY KEY (`customer_seller_id`);

--
-- Indexes for table `designers`
--
ALTER TABLE `designers`
  ADD PRIMARY KEY (`designer_id`);

--
-- Indexes for table `designer_description`
--
ALTER TABLE `designer_description`
  ADD PRIMARY KEY (`designer_description_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `faq_description`
--
ALTER TABLE `faq_description`
  ADD PRIMARY KEY (`faq_description_id`);

--
-- Indexes for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  ADD PRIMARY KEY (`fedex_id`);

--
-- Indexes for table `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD PRIMARY KEY (`flash_sale_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `flate_rate`
--
ALTER TABLE `flate_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `http_call_record`
--
ALTER TABLE `http_call_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_categories`
--
ALTER TABLE `image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_ref_id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `label_value`
--
ALTER TABLE `label_value`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `label_values`
--
ALTER TABLE `label_values`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `language_description`
--
ALTER TABLE `language_description`
  ADD PRIMARY KEY (`language_description_id`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  ADD PRIMARY KEY (`min_max_id`);

--
-- Indexes for table `manage_role`
--
ALTER TABLE `manage_role`
  ADD PRIMARY KEY (`manage_role_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_translation`
--
ALTER TABLE `menu_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `idx_products_date_added` (`news_date_added`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`newsletters_id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `news_description`
--
ALTER TABLE `news_description`
  ADD KEY `products_name` (`news_name`);

--
-- Indexes for table `news_to_news_categories`
--
ALTER TABLE `news_to_news_categories`
  ADD PRIMARY KEY (`news_id`,`categories_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_description`
--
ALTER TABLE `notification_description`
  ADD PRIMARY KEY (`notification_description_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Indexes for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  ADD PRIMARY KEY (`orders_products_download_id`),
  ADD KEY `idx_orders_products_download_orders_id` (`orders_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`);

--
-- Indexes for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  ADD PRIMARY KEY (`orders_status_description_id`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_description`
--
ALTER TABLE `pages_description`
  ADD PRIMARY KEY (`page_description_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`partner_id`);

--
-- Indexes for table `payment_description`
--
ALTER TABLE `payment_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_methods_id`);

--
-- Indexes for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Indexes for table `products_attributes_download`
--
ALTER TABLE `products_attributes_download`
  ADD PRIMARY KEY (`products_attributes_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_name` (`products_name`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Indexes for table `products_notifications`
--
ALTER TABLE `products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`);

--
-- Indexes for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  ADD PRIMARY KEY (`products_options_descriptions_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`);

--
-- Indexes for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  ADD PRIMARY KEY (`products_options_values_descriptions_id`);

--
-- Indexes for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  ADD PRIMARY KEY (`products_shipping_rates_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_to_categories_id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_images`
--
ALTER TABLE `review_images`
  ADD PRIMARY KEY (`review_image_id`);

--
-- Indexes for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `shipping_description`
--
ALTER TABLE `shipping_description`
  ADD PRIMARY KEY (`shipping_description_id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`shipping_methods_id`);

--
-- Indexes for table `sliders_images`
--
ALTER TABLE `sliders_images`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`subscribes_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  ADD PRIMARY KEY (`units_description_id`);

--
-- Indexes for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  ADD PRIMARY KEY (`ups_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_to_address`
--
ALTER TABLE `user_to_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_types_id`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`verification_id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- Indexes for table `zone_description`
--
ALTER TABLE `zone_description`
  ADD PRIMARY KEY (`zone_description_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_us_description`
--
ALTER TABLE `about_us_description`
  MODIFY `about_us_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `action_recorder`
--
ALTER TABLE `action_recorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `address_format`
--
ALTER TABLE `address_format`
  MODIFY `address_format_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alert_categories`
--
ALTER TABLE `alert_categories`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1966;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_description`
--
ALTER TABLE `banner_description`
  MODIFY `banner_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `block_ips`
--
ALTER TABLE `block_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_description`
--
ALTER TABLE `blog_description`
  MODIFY `blog_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `brand_description`
--
ALTER TABLE `brand_description`
  MODIFY `brand_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories_description`
--
ALTER TABLE `categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories_role`
--
ALTER TABLE `categories_role`
  MODIFY `categories_role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `compare`
--
ALTER TABLE `compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `condition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `condition_description`
--
ALTER TABLE `condition_description`
  MODIFY `condition_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `constant_banners`
--
ALTER TABLE `constant_banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `country_description`
--
ALTER TABLE `country_description`
  MODIFY `country_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency_record`
--
ALTER TABLE `currency_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `current_theme`
--
ALTER TABLE `current_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_seller`
--
ALTER TABLE `customer_seller`
  MODIFY `customer_seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `designers`
--
ALTER TABLE `designers`
  MODIFY `designer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `designer_description`
--
ALTER TABLE `designer_description`
  MODIFY `designer_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faq_description`
--
ALTER TABLE `faq_description`
  MODIFY `faq_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  MODIFY `fedex_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sale`
--
ALTER TABLE `flash_sale`
  MODIFY `flash_sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `flate_rate`
--
ALTER TABLE `flate_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `http_call_record`
--
ALTER TABLE `http_call_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5310;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `image_categories`
--
ALTER TABLE `image_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1099;

--
-- AUTO_INCREMENT for table `label_value`
--
ALTER TABLE `label_value`
  MODIFY `label_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1640;

--
-- AUTO_INCREMENT for table `label_values`
--
ALTER TABLE `label_values`
  MODIFY `label_value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_description`
--
ALTER TABLE `language_description`
  MODIFY `language_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  MODIFY `min_max_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_role`
--
ALTER TABLE `manage_role`
  MODIFY `manage_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `menu_translation`
--
ALTER TABLE `menu_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `newsletters_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_description`
--
ALTER TABLE `notification_description`
  MODIFY `notification_description_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  MODIFY `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `orders_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  MODIFY `orders_status_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages_description`
--
ALTER TABLE `pages_description`
  MODIFY `page_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `partner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_description`
--
ALTER TABLE `payment_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products_description`
--
ALTER TABLE `products_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  MODIFY `products_options_descriptions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_options_values`
--
ALTER TABLE `products_options_values`
  MODIFY `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  MODIFY `products_options_values_descriptions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  MODIFY `products_shipping_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  MODIFY `products_to_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews_description`
--
ALTER TABLE `reviews_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_images`
--
ALTER TABLE `review_images`
  MODIFY `review_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `shipping_description`
--
ALTER TABLE `shipping_description`
  MODIFY `shipping_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `shipping_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders_images`
--
ALTER TABLE `sliders_images`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `subscribes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  MODIFY `units_description_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `user_to_address`
--
ALTER TABLE `user_to_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `verification`
--
ALTER TABLE `verification`
  MODIFY `verification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `zone_description`
--
ALTER TABLE `zone_description`
  MODIFY `zone_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
