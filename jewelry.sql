-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 10:44 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewelry`
--

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(1023) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'created', 'App\\Models\\Group', 2, '[]', '{\"name\":\"1\",\"created_by\":1,\"id\":2}', 'http://localhost/jewelry/group/create?_token=eyJpdiI6InFvcnJ5K3VZdXNyNFY0dFhQVnh3Nmc9PSIsInZhbHVlIjoiTUVxWFJKSm5TQnRqYmVxM1dSdXlDTDlqdmliVy8vbmVscm5sTHlYUjRhaklJcjY4Qk5aVklaWWhDcjNNMS90VmY1K3ZZeEVJU0VjR1JDT21RNnRTNGRvUUZXaVdRaGV3dlRHYnJ1QUNobjZobDlLZmRteFllZkQxanA1S0JzbUwiLCJtYWMiOiIwMGU1Y2YxOWZmYzYyNDlkNmMxMTdlNjIyODlmODBkNDBkZmU2ZTE5OWE2ZDk5NWMxZmUyMGIxMDYwYmQ1ZTUyIiwidGFnIjoiIn0%3D&name=1', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-29 22:58:53', '2022-03-29 22:58:53'),
(2, NULL, NULL, 'created', 'App\\Models\\Group', 3, '[]', '{\"name\":\"12\",\"created_by\":1,\"id\":3}', 'http://localhost/jewelry/group/create?_token=eyJpdiI6InFvcnJ5K3VZdXNyNFY0dFhQVnh3Nmc9PSIsInZhbHVlIjoiTUVxWFJKSm5TQnRqYmVxM1dSdXlDTDlqdmliVy8vbmVscm5sTHlYUjRhaklJcjY4Qk5aVklaWWhDcjNNMS90VmY1K3ZZeEVJU0VjR1JDT21RNnRTNGRvUUZXaVdRaGV3dlRHYnJ1QUNobjZobDlLZmRteFllZkQxanA1S0JzbUwiLCJtYWMiOiIwMGU1Y2YxOWZmYzYyNDlkNmMxMTdlNjIyODlmODBkNDBkZmU2ZTE5OWE2ZDk5NWMxZmUyMGIxMDYwYmQ1ZTUyIiwidGFnIjoiIn0%3D&name=12', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-29 23:00:32', '2022-03-29 23:00:32'),
(3, NULL, NULL, 'created', 'App\\Models\\Group', 5, '[]', '{\"name\":\"123\",\"created_by\":1,\"id\":5}', 'http://localhost/jewelry/group/create?_token=eyJpdiI6InFvcnJ5K3VZdXNyNFY0dFhQVnh3Nmc9PSIsInZhbHVlIjoiTUVxWFJKSm5TQnRqYmVxM1dSdXlDTDlqdmliVy8vbmVscm5sTHlYUjRhaklJcjY4Qk5aVklaWWhDcjNNMS90VmY1K3ZZeEVJU0VjR1JDT21RNnRTNGRvUUZXaVdRaGV3dlRHYnJ1QUNobjZobDlLZmRteFllZkQxanA1S0JzbUwiLCJtYWMiOiIwMGU1Y2YxOWZmYzYyNDlkNmMxMTdlNjIyODlmODBkNDBkZmU2ZTE5OWE2ZDk5NWMxZmUyMGIxMDYwYmQ1ZTUyIiwidGFnIjoiIn0%3D&name=123', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-29 23:04:25', '2022-03-29 23:04:25'),
(4, NULL, NULL, 'created', 'App\\Models\\Group', 7, '[]', '{\"name\":\"1234\",\"created_by\":1,\"id\":7}', 'http://localhost/jewelry/group/create?_token=eyJpdiI6InFvcnJ5K3VZdXNyNFY0dFhQVnh3Nmc9PSIsInZhbHVlIjoiTUVxWFJKSm5TQnRqYmVxM1dSdXlDTDlqdmliVy8vbmVscm5sTHlYUjRhaklJcjY4Qk5aVklaWWhDcjNNMS90VmY1K3ZZeEVJU0VjR1JDT21RNnRTNGRvUUZXaVdRaGV3dlRHYnJ1QUNobjZobDlLZmRteFllZkQxanA1S0JzbUwiLCJtYWMiOiIwMGU1Y2YxOWZmYzYyNDlkNmMxMTdlNjIyODlmODBkNDBkZmU2ZTE5OWE2ZDk5NWMxZmUyMGIxMDYwYmQ1ZTUyIiwidGFnIjoiIn0%3D&name=1234', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-29 23:32:12', '2022-03-29 23:32:12'),
(5, NULL, NULL, 'created', 'App\\Models\\Group', 8, '[]', '{\"name\":\"234\",\"created_by\":1,\"id\":8}', 'http://localhost/jewelry/group/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 00:09:45', '2022-03-30 00:09:45'),
(6, NULL, NULL, 'created', 'App\\Models\\Group', 9, '[]', '{\"name\":\"234s\",\"created_by\":1,\"id\":9}', 'http://localhost/jewelry/group/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 00:09:59', '2022-03-30 00:09:59'),
(7, NULL, NULL, 'created', 'App\\Models\\Group', 10, '[]', '{\"name\":\"1222\",\"created_by\":1,\"id\":10}', 'http://localhost/jewelry/group/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 00:15:40', '2022-03-30 00:15:40'),
(8, NULL, NULL, 'created', 'App\\Models\\Group', 13, '[]', '{\"name\":\"1222xs\",\"created_by\":1,\"id\":13}', 'http://localhost/jewelry/group/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 00:19:49', '2022-03-30 00:19:49'),
(9, NULL, NULL, 'created', 'App\\Models\\Group', 3, '[]', '{\"name\":\"1222xss\",\"created_by\":1,\"id\":3}', 'http://localhost/jewelry/group/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 00:24:32', '2022-03-30 00:24:32'),
(10, NULL, NULL, 'updated', 'App\\Models\\Group', 3, '{\"name\":\"1222xss\",\"updated_by\":null}', '{\"name\":\"Silver\",\"updated_by\":1}', 'http://localhost/jewelry/group/edit/3', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 00:27:06', '2022-03-30 00:27:06'),
(11, NULL, NULL, 'deleted', 'App\\Models\\Group', 3, '{\"id\":3,\"name\":\"Silver\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"deleted_at\":null}', '[]', 'http://localhost/jewelry/group/delete/3?id%20=3', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 00:30:18', '2022-03-30 00:30:18'),
(12, NULL, NULL, 'created', 'App\\Models\\GoldRates', 1, '[]', '{\"group_id\":\"1\",\"current_rate\":\"2300\",\"current_date\":\"2022-03-30\",\"notes\":\"notes\",\"created_by\":1,\"id\":1}', 'http://localhost/jewelry/goldrate/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 01:46:32', '2022-03-30 01:46:32'),
(13, NULL, NULL, 'updated', 'App\\Models\\GoldRates', 1, '{\"current_rate\":\"2300.00\",\"updated_by\":null}', '{\"current_rate\":\"2500\",\"updated_by\":1}', 'http://localhost/jewelry/goldrate/edit/1', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 01:49:30', '2022-03-30 01:49:30'),
(14, NULL, NULL, 'created', 'App\\Models\\GoldRates', 2, '[]', '{\"group_id\":\"2\",\"current_rate\":\"2500\",\"current_date\":\"2022-03-30\",\"notes\":\"notes\",\"created_by\":1,\"id\":2}', 'http://localhost/jewelry/goldrate/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 01:52:12', '2022-03-30 01:52:12'),
(15, NULL, NULL, 'updated', 'App\\Models\\GoldRates', 2, '{\"current_rate\":\"2500.00\",\"updated_by\":null}', '{\"current_rate\":\"2600\",\"updated_by\":1}', 'http://localhost/jewelry/goldrate/edit/2', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 01:52:41', '2022-03-30 01:52:41'),
(16, NULL, NULL, 'deleted', 'App\\Models\\GoldRates', 2, '{\"id\":2,\"group_id\":2,\"current_rate\":\"2600.00\",\"current_date\":\"2022-03-30\",\"notes\":\"notes\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"deleted_at\":null}', '[]', 'http://localhost/jewelry/goldrate/delete/2?id=2', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 01:55:16', '2022-03-30 01:55:16'),
(17, NULL, NULL, 'created', 'App\\Models\\Items', 1, '[]', '{\"group_id\":\"2\",\"name\":\"Item1\",\"item_code\":\"001\",\"description\":\"description\",\"created_by\":1,\"id\":1}', 'http://localhost/jewelry/item/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 03:35:24', '2022-03-30 03:35:24'),
(18, NULL, NULL, 'updated', 'App\\Models\\Items', 1, '{\"group_id\":2,\"name\":\"Item1\",\"item_code\":\"001\",\"description\":\"description\",\"updated_by\":null}', '{\"group_id\":\"1\",\"name\":\"Silver\",\"item_code\":\"0045\",\"description\":\"description1\",\"updated_by\":1}', 'http://localhost/jewelry/item/edit/1', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 03:40:05', '2022-03-30 03:40:05'),
(19, NULL, NULL, 'created', 'App\\Models\\Items', 2, '[]', '{\"group_id\":\"2\",\"name\":\"Item3\",\"item_code\":\"005\",\"description\":\"description\",\"created_by\":1,\"id\":2}', 'http://localhost/jewelry/item/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 03:53:39', '2022-03-30 03:53:39'),
(20, NULL, NULL, 'deleted', 'App\\Models\\Items', 2, '{\"id\":2,\"group_id\":2,\"name\":\"Item3\",\"item_code\":\"005\",\"description\":\"description\",\"status\":\"active\",\"created_by\":1,\"updated_by\":null,\"deleted_by\":null,\"deleted_at\":null}', '[]', 'http://localhost/jewelry/item/delete/2?id=2', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 03:53:49', '2022-03-30 03:53:49'),
(21, NULL, NULL, 'created', 'App\\Models\\Items', 3, '[]', '{\"group_id\":\"2\",\"name\":\"Item3\",\"item_code\":\"005\",\"description\":\"description\",\"created_by\":1,\"id\":3}', 'http://localhost/jewelry/item/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 03:53:54', '2022-03-30 03:53:54'),
(22, NULL, NULL, 'created', 'App\\Models\\Scheme', 1, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":1}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 04:44:34', '2022-03-30 04:44:34'),
(23, NULL, NULL, 'created', 'App\\Models\\Scheme', 2, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":2}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 05:02:17', '2022-03-30 05:02:17'),
(24, NULL, NULL, 'created', 'App\\Models\\Scheme', 3, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":3}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 05:03:29', '2022-03-30 05:03:29'),
(25, NULL, NULL, 'created', 'App\\Models\\InterestRates', 1, '[]', '{\"scheme_id\":3,\"from\":3,\"to\":3,\"type\":\"days\",\"interest_value\":3,\"id\":1}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 05:03:29', '2022-03-30 05:03:29'),
(26, NULL, NULL, 'created', 'App\\Models\\Scheme', 4, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":4}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 05:04:29', '2022-03-30 05:04:29'),
(27, NULL, NULL, 'created', 'App\\Models\\InterestRates', 2, '[]', '{\"scheme_id\":4,\"from\":1,\"to\":30,\"type\":\"days\",\"interest_value\":12,\"id\":2}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 05:04:29', '2022-03-30 05:04:29'),
(28, NULL, NULL, 'created', 'App\\Models\\InterestRates', 3, '[]', '{\"scheme_id\":3,\"from\":1,\"to\":30,\"type\":\"days\",\"interest_value\":12,\"id\":3}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 05:58:30', '2022-03-30 05:58:30'),
(29, NULL, NULL, 'created', 'App\\Models\\Scheme', 5, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":5}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:13:38', '2022-03-30 06:13:38'),
(30, NULL, NULL, 'created', 'App\\Models\\InterestRates', 4, '[]', '{\"scheme_id\":3,\"from\":1,\"to\":30,\"type\":\"days\",\"interest_value\":12,\"id\":4}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:13:38', '2022-03-30 06:13:38'),
(31, NULL, NULL, 'created', 'App\\Models\\Scheme', 6, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":6}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:15:32', '2022-03-30 06:15:32'),
(32, NULL, NULL, 'created', 'App\\Models\\InterestRates', 5, '[]', '{\"scheme_id\":3,\"from\":1,\"to\":30,\"type\":\"days\",\"interest_value\":12,\"id\":5}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:15:32', '2022-03-30 06:15:32'),
(33, NULL, NULL, 'created', 'App\\Models\\Scheme', 7, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":7}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:16:23', '2022-03-30 06:16:23'),
(34, NULL, NULL, 'created', 'App\\Models\\InterestRates', 6, '[]', '{\"scheme_id\":7,\"from\":1,\"to\":30,\"type\":\"days\",\"interest_value\":12,\"id\":6}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:16:23', '2022-03-30 06:16:23'),
(35, NULL, NULL, 'created', 'App\\Models\\Scheme', 8, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":8}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:17:59', '2022-03-30 06:17:59'),
(36, NULL, NULL, 'created', 'App\\Models\\Scheme', 9, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":9}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:18:32', '2022-03-30 06:18:32'),
(37, NULL, NULL, 'created', 'App\\Models\\InterestRates', 7, '[]', '{\"scheme_id\":9,\"from\":1,\"to\":30,\"type\":\"days\",\"interest_value\":12,\"id\":7}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:18:32', '2022-03-30 06:18:32'),
(38, NULL, NULL, 'created', 'App\\Models\\Scheme', 10, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":10}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:18:43', '2022-03-30 06:18:43'),
(39, NULL, NULL, 'created', 'App\\Models\\Scheme', 11, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":11}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:23:04', '2022-03-30 06:23:04'),
(40, NULL, NULL, 'created', 'App\\Models\\InterestRates', 8, '[]', '{\"scheme_id\":11,\"from\":1,\"to\":30,\"type\":\"days\",\"interest_value\":12,\"id\":8}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:23:04', '2022-03-30 06:23:04'),
(41, NULL, NULL, 'created', 'App\\Models\\Scheme', 12, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":12}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:23:20', '2022-03-30 06:23:20'),
(43, NULL, NULL, 'created', 'App\\Models\\Scheme', 14, '[]', '{\"scheme_type_id\":\"2\",\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":\"1\",\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":\"1\",\"subscheme\":\"0\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"25\",\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":\"12\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000\",\"maximum_loan_amount\":\"100000\",\"processing_fess\":\"100\",\"created_by\":1,\"id\":14}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:25:10', '2022-03-30 06:25:10'),
(44, NULL, NULL, 'created', 'App\\Models\\InterestRates', 9, '[]', '{\"scheme_id\":14,\"from\":1,\"to\":30,\"type\":\"days\",\"interest_value\":12,\"id\":9}', 'http://localhost/jewelry/scheme/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-30 06:25:10', '2022-03-30 06:25:10'),
(46, NULL, NULL, 'created', 'App\\Models\\Customer', 1, '[]', '{\"customer_code\":\"001\",\"name\":\"kar\",\"gender\":\"1\",\"phone_no\":\"9888888\",\"email\":\"test@gmail.com\",\"address\":\"address\",\"city_id\":\"1\",\"state_id\":\"1\",\"country_id\":\"1\",\"postal_code\":\"600001\",\"created_by\":1,\"id\":1}', 'http://localhost/jewelry/customer/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-31 01:24:42', '2022-03-31 01:24:42'),
(47, NULL, NULL, 'deleted', 'App\\Models\\Customer', 1, '{\"id\":1,\"customer_code\":\"001\",\"name\":\"kar\",\"gender\":1,\"phone_no\":9888888,\"email\":\"test@gmail.com\",\"address\":\"address\",\"city_id\":1,\"state_id\":1,\"country_id\":1,\"postal_code\":\"600001\",\"status\":\"active\",\"created_by\":1,\"updated_by\":null,\"deleted_by\":null,\"deleted_at\":null}', '[]', 'http://localhost/jewelry/customer/delete/1', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-31 03:09:46', '2022-03-31 03:09:46'),
(48, NULL, NULL, 'created', 'App\\Models\\Customer', 9, '[]', '{\"customer_code\":\"001\",\"name\":\"kar\",\"gender\":\"1\",\"phone_no\":\"9888888\",\"email\":\"test@gmail.com1\",\"address\":\"address\",\"city_id\":\"1\",\"state_id\":\"1\",\"country_id\":\"1\",\"postal_code\":\"600001\",\"created_by\":1,\"id\":9}', 'http://localhost/jewelry/customer/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-31 03:10:01', '2022-03-31 03:10:01'),
(49, NULL, NULL, 'created', 'App\\Models\\GoldLoans', 1, '[]', '{\"customer_id\":\"1\",\"loan_no\":\"001\",\"coapplicant_id\":\"1\",\"nominee_name\":\"kar\",\"nominee_relation\":\"fathar\",\"nominee_dob\":\"2000-03-21\",\"nominee_age\":\"22\",\"scheme_ref_id\":\"1\",\"payment_ref_id\":\"1\",\"tenure\":\"12\",\"interest_rate\":\"1\",\"frequency\":\"1\",\"loan_date\":\"2022-3-31\",\"loan_amount\":\"199998\",\"created_by\":1,\"id\":1}', 'http://localhost/jewelry/goldloan/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-31 04:10:54', '2022-03-31 04:10:54'),
(51, NULL, NULL, 'created', 'App\\Models\\GoldLoans', 3, '[]', '{\"customer_id\":\"1\",\"loan_no\":\"001\",\"coapplicant_id\":\"1\",\"nominee_name\":\"kar\",\"nominee_relation\":\"fathar\",\"nominee_dob\":\"2000-03-21\",\"nominee_age\":\"22\",\"scheme_ref_id\":\"1\",\"payment_ref_id\":\"1\",\"tenure\":\"12\",\"interest_rate\":\"1\",\"frequency\":\"1\",\"loan_date\":\"2022-3-31\",\"loan_amount\":\"199998\",\"created_by\":1,\"id\":3}', 'http://localhost/jewelry/goldloan/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-31 04:27:39', '2022-03-31 04:27:39'),
(52, NULL, NULL, 'created', 'App\\Models\\GoldLoanItems', 1, '[]', '{\"gold_loan_id\":3,\"group_id\":1,\"item_id\":1,\"noof_items\":2,\"gold_type\":1,\"purity_in_karrot\":22,\"gross_weight\":12,\"stone_weight\":2,\"net_weight\":10,\"current_gold_rate\":2800,\"lending_gold_rate\":1500,\"net_weight_value\":15,\"remarks\":\"test\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":1}', 'http://localhost/jewelry/goldloan/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-31 04:27:39', '2022-03-31 04:27:39'),
(54, NULL, NULL, 'created', 'App\\Models\\GoldLoans', 5, '[]', '{\"customer_id\":\"1\",\"loan_no\":\"001\",\"coapplicant_id\":\"1\",\"nominee_name\":\"kar\",\"nominee_relation\":\"fathar\",\"nominee_dob\":\"2000-03-21\",\"nominee_age\":\"22\",\"scheme_ref_id\":\"1\",\"payment_ref_id\":\"1\",\"tenure\":\"12\",\"interest_rate\":\"1\",\"frequency\":\"1\",\"loan_date\":\"2022-3-31\",\"loan_amount\":\"199998\",\"created_by\":1,\"id\":5}', 'http://localhost/jewelry/goldloan/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-31 04:28:23', '2022-03-31 04:28:23'),
(55, NULL, NULL, 'created', 'App\\Models\\GoldLoanItems', 2, '[]', '{\"gold_loan_id\":5,\"group_id\":1,\"item_id\":1,\"noof_items\":2,\"gold_type\":1,\"purity_in_karrot\":22,\"gross_weight\":12,\"stone_weight\":2,\"net_weight\":10,\"current_gold_rate\":2800,\"lending_gold_rate\":1500,\"net_weight_value\":15,\"remarks\":\"test\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":2}', 'http://localhost/jewelry/goldloan/create', '::1', 'PostmanRuntime/7.29.0', NULL, '2022-03-31 04:28:23', '2022-03-31 04:28:23'),
(56, NULL, NULL, 'created', 'App\\Models\\Group', 3, '[]', '{\"name\":\"Silver\",\"created_by\":1,\"id\":3}', 'http://localhost/jewelry/group/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 00:53:19', '2022-04-04 00:53:19'),
(57, NULL, NULL, 'updated', 'App\\Models\\Group', 3, '{\"name\":\"Silver\",\"updated_by\":null}', '{\"name\":\"Silver1\",\"updated_by\":1}', 'http://localhost/jewelry/group/edit/3', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 00:55:43', '2022-04-04 00:55:43'),
(58, NULL, NULL, 'updated', 'App\\Models\\Group', 3, '{\"name\":\"Silver1\"}', '{\"name\":\"Silver\"}', 'http://localhost/jewelry/group/edit/3', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 00:58:28', '2022-04-04 00:58:28'),
(59, NULL, NULL, 'deleted', 'App\\Models\\Group', 3, '{\"id\":3,\"name\":\"Silver\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null,\"deleted_at\":null}', '[]', 'http://localhost/jewelry/group/delete/3?_token=4S7BrSukbbHdGkTnYDlZWbigdmpSAXRV64UVfjr5', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 01:36:21', '2022-04-04 01:36:21'),
(60, NULL, NULL, 'created', 'App\\Models\\Group', 4, '[]', '{\"name\":\"Silver\",\"created_by\":1,\"id\":4}', 'http://localhost/jewelry/group/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 01:37:52', '2022-04-04 01:37:52'),
(61, NULL, NULL, 'deleted', 'App\\Models\\Group', 4, '{\"id\":4,\"name\":\"Silver\",\"created_by\":1,\"updated_by\":null,\"deleted_by\":null}', '[]', 'http://localhost/jewelry/group/delete/4?_token=4S7BrSukbbHdGkTnYDlZWbigdmpSAXRV64UVfjr5', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 01:43:55', '2022-04-04 01:43:55'),
(62, NULL, NULL, 'updated', 'App\\Models\\Group', 2, '{\"name\":\"Diamond\",\"updated_by\":null}', '{\"name\":\"Diamond1\",\"updated_by\":1}', 'http://localhost/jewelry/group/edit/2', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 01:45:26', '2022-04-04 01:45:26'),
(63, NULL, NULL, 'updated', 'App\\Models\\Group', 2, '{\"name\":\"Diamond1\"}', '{\"name\":\"Diamond\"}', 'http://localhost/jewelry/group/edit/2', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 01:45:37', '2022-04-04 01:45:37'),
(64, NULL, NULL, 'deleted', 'App\\Models\\Group', 2, '{\"id\":2,\"name\":\"Diamond\",\"created_by\":1,\"updated_by\":1,\"deleted_by\":null}', '[]', 'http://localhost/jewelry/group/delete/2?_token=4S7BrSukbbHdGkTnYDlZWbigdmpSAXRV64UVfjr5', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 01:45:43', '2022-04-04 01:45:43'),
(65, NULL, NULL, 'deleted', 'App\\Models\\Group', 1, '{\"id\":1,\"name\":\"Gold\",\"created_by\":1,\"updated_by\":null,\"deleted_by\":null}', '[]', 'http://localhost/jewelry/group/delete/1?_token=4S7BrSukbbHdGkTnYDlZWbigdmpSAXRV64UVfjr5', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 01:45:50', '2022-04-04 01:45:50'),
(66, NULL, NULL, 'deleted', 'App\\Models\\Group', 2, '{\"id\":2,\"name\":\"Diamond\",\"status\":0,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null}', '[]', 'http://localhost/jewelry/group/delete/2?_token=4S7BrSukbbHdGkTnYDlZWbigdmpSAXRV64UVfjr5', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 04:55:39', '2022-04-04 04:55:39'),
(67, NULL, NULL, 'updated', 'App\\Models\\Group', 2, '{\"status\":0}', '{\"status\":1}', 'http://localhost/jewelry/group/change/2/0', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 05:02:44', '2022-04-04 05:02:44'),
(68, NULL, NULL, 'updated', 'App\\Models\\Group', 1, '{\"status\":1,\"updated_by\":null}', '{\"status\":0,\"updated_by\":1}', 'http://localhost/jewelry/group/change/1/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 05:02:51', '2022-04-04 05:02:51'),
(69, NULL, NULL, 'updated', 'App\\Models\\Group', 2, '{\"status\":1}', '{\"status\":0}', 'http://localhost/jewelry/group/change/2/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 05:02:57', '2022-04-04 05:02:57'),
(70, NULL, NULL, 'updated', 'App\\Models\\Group', 2, '{\"status\":0}', '{\"status\":1}', 'http://localhost/jewelry/group/change/2/0', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 05:03:04', '2022-04-04 05:03:04'),
(71, NULL, NULL, 'updated', 'App\\Models\\Group', 2, '{\"status\":1}', '{\"status\":0}', 'http://localhost/jewelry/group/change/2/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 05:26:54', '2022-04-04 05:26:54'),
(72, NULL, NULL, 'updated', 'App\\Models\\Group', 2, '{\"status\":0}', '{\"status\":1}', 'http://localhost/jewelry/group/change/2/0', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 05:26:59', '2022-04-04 05:26:59'),
(73, NULL, NULL, 'updated', 'App\\Models\\Group', 2, '{\"name\":\"Diamond\"}', '{\"name\":\"Diamond1\"}', 'http://localhost/jewelry/group/edit/2', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 05:27:12', '2022-04-04 05:27:12'),
(74, NULL, NULL, 'deleted', 'App\\Models\\Group', 2, '{\"id\":2,\"name\":\"Diamond1\",\"status\":1,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null}', '[]', 'http://localhost/jewelry/group/delete/2?_token=4S7BrSukbbHdGkTnYDlZWbigdmpSAXRV64UVfjr5', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 05:27:20', '2022-04-04 05:27:20'),
(75, NULL, NULL, 'updated', 'App\\Models\\GoldRates', 1, '{\"current_rate\":\"2500.00\"}', '{\"current_rate\":\"2501.00\"}', 'http://localhost/jewelry/goldrate/edit/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 06:59:09', '2022-04-04 06:59:09'),
(76, NULL, NULL, 'updated', 'App\\Models\\GoldRates', 1, '{\"current_rate\":\"2501.00\"}', '{\"current_rate\":\"2511.00\"}', 'http://localhost/jewelry/goldrate/edit/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 06:59:25', '2022-04-04 06:59:25'),
(77, NULL, NULL, 'created', 'App\\Models\\GoldRates', 3, '[]', '{\"group_id\":\"1\",\"current_rate\":\"2300\",\"current_date\":\"2022-03-21\",\"notes\":\"test\",\"created_by\":1,\"id\":3}', 'http://localhost/jewelry/goldrate/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 07:12:20', '2022-04-04 07:12:20'),
(78, NULL, NULL, 'updated', 'App\\Models\\GoldRates', 3, '{\"group_id\":1,\"current_rate\":\"2300.00\",\"updated_by\":null}', '{\"group_id\":\"3\",\"current_rate\":\"23120.00\",\"updated_by\":1}', 'http://localhost/jewelry/goldrate/edit/3', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 07:12:35', '2022-04-04 07:12:35'),
(79, NULL, NULL, 'deleted', 'App\\Models\\GoldRates', 3, '{\"id\":3,\"group_id\":1,\"current_rate\":\"23120.00\",\"current_date\":\"2022-03-21\",\"notes\":\"test\",\"status\":1,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null}', '[]', 'http://localhost/jewelry/goldrate/delete/3?_token=4S7BrSukbbHdGkTnYDlZWbigdmpSAXRV64UVfjr5', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 07:14:44', '2022-04-04 07:14:44'),
(80, NULL, NULL, 'updated', 'App\\Models\\GoldRates', 1, '{\"status\":1}', '{\"status\":0}', 'http://localhost/jewelry/goldrate/change/1/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 07:20:43', '2022-04-04 07:20:43'),
(81, NULL, NULL, 'updated', 'App\\Models\\GoldRates', 1, '{\"status\":0}', '{\"status\":1}', 'http://localhost/jewelry/goldrate/change/1/0', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 07:20:53', '2022-04-04 07:20:53'),
(82, NULL, NULL, 'updated', 'App\\Models\\Group', 1, '{\"status\":0}', '{\"status\":1}', 'http://localhost/jewelry/group/change/1/0', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-04 23:54:40', '2022-04-04 23:54:40'),
(83, NULL, NULL, 'created', 'App\\Models\\GoldRates', 4, '[]', '{\"group_id\":\"2\",\"current_rate\":\"50000\",\"current_date\":\"2022-04-06\",\"notes\":\"test\",\"created_by\":1,\"id\":4}', 'http://localhost/jewelry/goldrate/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 00:53:54', '2022-04-05 00:53:54'),
(84, NULL, NULL, 'updated', 'App\\Models\\GoldRates', 4, '{\"group_id\":2,\"current_date\":\"2022-04-06\",\"updated_by\":null}', '{\"group_id\":\"4\",\"current_date\":\"2022-04-07\",\"updated_by\":1}', 'http://localhost/jewelry/goldrate/edit/4', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 00:54:12', '2022-04-05 00:54:12'),
(85, NULL, NULL, 'updated', 'App\\Models\\GoldRates', 4, '{\"group_id\":4}', '{\"group_id\":\"2\"}', 'http://localhost/jewelry/goldrate/edit/4', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 01:05:59', '2022-04-05 01:05:59'),
(86, NULL, NULL, 'updated', 'App\\Models\\GoldRates', 4, '{\"group_id\":2,\"current_date\":\"2022-04-07\"}', '{\"group_id\":\"4\",\"current_date\":\"2022-04-08\"}', 'http://localhost/jewelry/goldrate/edit/4', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 01:06:17', '2022-04-05 01:06:17'),
(87, NULL, NULL, 'updated', 'App\\Models\\GoldRates', 4, '{\"status\":1}', '{\"status\":0}', 'http://localhost/jewelry/goldrate/change/4/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 01:12:14', '2022-04-05 01:12:14'),
(88, NULL, NULL, 'updated', 'App\\Models\\Group', 2, '{\"name\":\"Diamond1\"}', '{\"name\":\"Diamond\"}', 'http://localhost/jewelry/group/edit/2', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 01:12:40', '2022-04-05 01:12:40'),
(89, NULL, NULL, 'updated', 'App\\Models\\Items', 3, '{\"status\":1,\"updated_by\":null}', '{\"status\":0,\"updated_by\":1}', 'http://localhost/jewelry/item/change/3/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 02:01:15', '2022-04-05 02:01:15'),
(90, NULL, NULL, 'updated', 'App\\Models\\Items', 3, '{\"status\":0}', '{\"status\":1}', 'http://localhost/jewelry/item/change/3/0', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 02:01:21', '2022-04-05 02:01:21'),
(91, NULL, NULL, 'deleted', 'App\\Models\\Items', 3, '{\"id\":3,\"group_id\":2,\"name\":\"Item3\",\"item_code\":\"005\",\"description\":\"description\",\"status\":1,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null}', '[]', 'http://localhost/jewelry/item/delete/3?_token=TMPjNGS9SLZCA7onmpgxfVrvfpjjmO9qopmlXXdt', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 02:01:39', '2022-04-05 02:01:39'),
(92, NULL, NULL, 'updated', 'App\\Models\\Items', 3, '{\"status\":1}', '{\"status\":0}', 'http://localhost/jewelry/item/change/3/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 02:03:30', '2022-04-05 02:03:30'),
(93, NULL, NULL, 'updated', 'App\\Models\\Items', 3, '{\"group_id\":2}', '{\"group_id\":\"3\"}', 'http://localhost/jewelry/item/edit/3', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 03:19:44', '2022-04-05 03:19:44'),
(94, NULL, NULL, 'created', 'App\\Models\\Items', 4, '[]', '{\"group_id\":\"2\",\"name\":\"tttrew\",\"description\":\"12333\",\"created_by\":1,\"id\":4}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 03:21:32', '2022-04-05 03:21:32'),
(95, NULL, NULL, 'created', 'App\\Models\\Items', 5, '[]', '{\"group_id\":\"2\",\"name\":\"tttrew\",\"description\":\"12333\",\"created_by\":1,\"id\":5}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 03:23:17', '2022-04-05 03:23:17'),
(96, NULL, NULL, 'created', 'App\\Models\\Items', 6, '[]', '{\"group_id\":\"2\",\"name\":\"tttrew\",\"description\":\"12333\",\"created_by\":1,\"id\":6}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 03:23:45', '2022-04-05 03:23:45'),
(97, NULL, NULL, 'updated', 'App\\Models\\Items', 6, '{\"item_code\":null}', '{\"item_code\":\"000006\"}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 03:23:45', '2022-04-05 03:23:45'),
(98, NULL, NULL, 'updated', 'App\\Models\\Items', 5, '{\"group_id\":2,\"updated_by\":null}', '{\"group_id\":\"5\",\"updated_by\":1}', 'http://localhost/jewelry/item/edit/5', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 03:24:02', '2022-04-05 03:24:02'),
(99, NULL, NULL, 'created', 'App\\Models\\Items', 7, '[]', '{\"group_id\":\"0\",\"name\":\"1\",\"description\":\"segment description\",\"created_by\":1,\"id\":7}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 03:31:52', '2022-04-05 03:31:52'),
(100, NULL, NULL, 'updated', 'App\\Models\\Items', 7, '{\"item_code\":null}', '{\"item_code\":\"000007\"}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 03:31:52', '2022-04-05 03:31:52'),
(101, NULL, NULL, 'deleted', 'App\\Models\\Items', 7, '{\"id\":7,\"group_id\":0,\"name\":\"1\",\"item_code\":\"000007\",\"description\":\"segment description\",\"status\":1,\"created_by\":1,\"updated_by\":null,\"deleted_by\":null}', '[]', 'http://localhost/jewelry/item/delete/7?_token=TMPjNGS9SLZCA7onmpgxfVrvfpjjmO9qopmlXXdt', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 03:32:05', '2022-04-05 03:32:05'),
(102, NULL, NULL, 'deleted', 'App\\Models\\Items', 5, '{\"id\":5,\"group_id\":5,\"name\":\"tttrew\",\"item_code\":null,\"description\":\"12333\",\"status\":1,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null}', '[]', 'http://localhost/jewelry/item/delete/5?_token=TMPjNGS9SLZCA7onmpgxfVrvfpjjmO9qopmlXXdt', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 03:32:35', '2022-04-05 03:32:35'),
(103, NULL, NULL, 'deleted', 'App\\Models\\Items', 3, '{\"id\":3,\"group_id\":3,\"name\":\"Item3\",\"item_code\":\"005\",\"description\":\"description\",\"status\":0,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null}', '[]', 'http://localhost/jewelry/item/delete/3?_token=TMPjNGS9SLZCA7onmpgxfVrvfpjjmO9qopmlXXdt', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 03:33:01', '2022-04-05 03:33:01'),
(104, NULL, NULL, 'created', 'App\\Models\\Items', 8, '[]', '{\"group_id\":\"2\",\"name\":\"product1\",\"description\":\"description\",\"created_by\":1,\"id\":8}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 05:39:34', '2022-04-05 05:39:34'),
(105, NULL, NULL, 'updated', 'App\\Models\\Items', 8, '{\"item_code\":null}', '{\"item_code\":\"000008\"}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 05:39:34', '2022-04-05 05:39:34'),
(106, NULL, NULL, 'updated', 'App\\Models\\Items', 8, '{\"group_id\":2,\"name\":\"product1\",\"updated_by\":null}', '{\"group_id\":\"1\",\"name\":\"product2\",\"updated_by\":1}', 'http://localhost/jewelry/item/edit/8', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 05:39:59', '2022-04-05 05:39:59'),
(107, NULL, NULL, 'updated', 'App\\Models\\Scheme', 14, '{\"status\":1,\"updated_by\":null}', '{\"status\":0,\"updated_by\":1}', 'http://localhost/jewelry/scheme/change/14/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 05:47:04', '2022-04-05 05:47:04'),
(108, NULL, NULL, 'deleted', 'App\\Models\\Scheme', 14, '{\"id\":14,\"scheme_type_id\":2,\"name\":\"Scheme\",\"description\":\"description\",\"item_ref_id\":1,\"start_date\":\"2022-03-21\",\"end_date\":\"2022-03-23\",\"loan_basis\":1,\"subscheme\":0,\"payment_in_advance\":\"1\",\"preclosure_time\":25,\"penalty_type\":\"1\",\"penalty\":\"38\",\"payment_basis_on\":\"1\",\"loan_period\":12,\"gold_approval\":\"80\",\"minimum_loan_amount\":\"10000.00\",\"maximum_loan_amount\":\"100000.00\",\"processing_fess\":\"100.00\",\"status\":0,\"created_by\":1,\"updated_by\":1,\"deleted_by\":null}', '[]', 'http://localhost/jewelry/scheme/delete/14?_token=TMPjNGS9SLZCA7onmpgxfVrvfpjjmO9qopmlXXdt', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-05 05:55:38', '2022-04-05 05:55:38'),
(138, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 44, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"schemename\",\"description\":\"des1233\",\"item_ref_id\":\"0\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-16\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"12\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":44}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 06:54:53', '2022-04-06 06:54:53'),
(139, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 10, '[]', '{\"scheme_id\":44,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":10}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 06:54:53', '2022-04-06 06:54:53'),
(147, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 48, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Testproduct\",\"description\":\"test122\",\"item_ref_id\":\"2\",\"start_date\":\"2022-04-07\",\"end_date\":\"2022-04-09\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":48}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 06:59:48', '2022-04-06 06:59:48'),
(148, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 13, '[]', '{\"scheme_id\":48,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":13}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 06:59:48', '2022-04-06 06:59:48'),
(149, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 49, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz\",\"description\":\"twess\",\"item_ref_id\":\"2\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-23\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":49}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:02:00', '2022-04-06 07:02:00'),
(150, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 14, '[]', '{\"scheme_id\":49,\"from\":\"1\",\"to\":\"30\",\"type\":\"daily\",\"interest_value\":\"13\",\"id\":14}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:02:00', '2022-04-06 07:02:00'),
(151, 'App\\Models\\User', 1, 'updated', 'App\\Models\\InterestRates', 14, '{\"from\":\"1\",\"to\":\"30\",\"type\":\"daily\",\"interest_value\":\"13\"}', '{\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14\"}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:02:00', '2022-04-06 07:02:00'),
(152, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 50, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz1\",\"description\":\"test\",\"item_ref_id\":\"1\",\"start_date\":\"2022-04-07\",\"end_date\":\"2022-04-19\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":50}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:05:21', '2022-04-06 07:05:21'),
(153, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 15, '[]', '{\"scheme_id\":50,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":15}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:05:21', '2022-04-06 07:05:21'),
(154, 'App\\Models\\User', 1, 'updated', 'App\\Models\\InterestRates', 15, '{\"from\":\"1\",\"to\":\"30\",\"interest_value\":\"13\"}', '{\"from\":\"31\",\"to\":\"60\",\"interest_value\":\"14\"}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:05:21', '2022-04-06 07:05:21'),
(163, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 57, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz11\",\"description\":\"23332\",\"item_ref_id\":\"2\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-07\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":57}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:15:57', '2022-04-06 07:15:57'),
(164, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 17, '[]', '{\"scheme_id\":57,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":17}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:15:57', '2022-04-06 07:15:57');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(165, 'App\\Models\\User', 1, 'updated', 'App\\Models\\InterestRates', 17, '{\"from\":\"1\",\"to\":\"30\",\"interest_value\":\"13\"}', '{\"from\":\"31\",\"to\":\"60\",\"interest_value\":\"14\"}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:15:57', '2022-04-06 07:15:57'),
(170, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 60, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderzq\",\"description\":\"qwee\",\"item_ref_id\":\"2\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-07\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":60}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:20:51', '2022-04-06 07:20:51'),
(171, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 19, '[]', '{\"scheme_id\":60,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":19}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:20:51', '2022-04-06 07:20:51'),
(172, 'App\\Models\\User', 1, 'updated', 'App\\Models\\InterestRates', 19, '{\"from\":\"1\",\"to\":\"30\",\"interest_value\":\"13\"}', '{\"from\":\"31\",\"to\":\"60\",\"interest_value\":\"14\"}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:20:51', '2022-04-06 07:20:51'),
(173, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 61, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz344\",\"description\":\"4errr\",\"item_ref_id\":\"2\",\"start_date\":\"2022-04-14\",\"end_date\":\"2022-04-07\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":61}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:22:04', '2022-04-06 07:22:04'),
(174, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 20, '[]', '{\"scheme_id\":61,\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14\",\"id\":20}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:22:04', '2022-04-06 07:22:04'),
(175, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 62, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz\",\"description\":\"tesst\",\"item_ref_id\":\"2\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-07\",\"loan_basis\":\"1\",\"payment_in_advance\":\"2\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":62}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:23:39', '2022-04-06 07:23:39'),
(176, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 21, '[]', '{\"scheme_id\":62,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":21}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:23:39', '2022-04-06 07:23:39'),
(177, 'App\\Models\\User', 1, 'updated', 'App\\Models\\InterestRates', 21, '{\"from\":\"1\",\"to\":\"30\",\"interest_value\":\"13\"}', '{\"from\":\"31\",\"to\":\"60\",\"interest_value\":\"14\"}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:23:39', '2022-04-06 07:23:39'),
(181, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 66, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderzo\",\"description\":\"ytru\",\"item_ref_id\":\"2\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-07\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":66}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:38:16', '2022-04-06 07:38:16'),
(182, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 22, '[]', '{\"scheme_id\":66,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":22}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:38:16', '2022-04-06 07:38:16'),
(183, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 23, '[]', '{\"scheme_id\":66,\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14\",\"id\":23}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:38:16', '2022-04-06 07:38:16'),
(185, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 68, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz90\",\"description\":\"test\",\"item_ref_id\":\"4\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-07\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":68}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:42:12', '2022-04-06 07:42:12'),
(186, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 24, '[]', '{\"scheme_id\":68,\"from\":\"1\",\"to\":\"35\",\"type\":\"days\",\"interest_value\":\"23\",\"id\":24}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:42:12', '2022-04-06 07:42:12'),
(187, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 25, '[]', '{\"scheme_id\":68,\"from\":\"36\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"24\",\"id\":25}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:42:12', '2022-04-06 07:42:12'),
(188, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 69, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz90\",\"description\":\"test\",\"item_ref_id\":\"4\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-07\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":69}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:43:29', '2022-04-06 07:43:29'),
(189, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 26, '[]', '{\"scheme_id\":69,\"from\":\"1\",\"to\":\"35\",\"type\":\"days\",\"interest_value\":\"23\",\"id\":26}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:43:29', '2022-04-06 07:43:29'),
(190, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 27, '[]', '{\"scheme_id\":69,\"from\":\"36\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"24\",\"id\":27}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:43:29', '2022-04-06 07:43:29'),
(191, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 70, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz11\",\"description\":\"ass\",\"item_ref_id\":\"2\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-06\",\"loan_basis\":\"2\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":70}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:45:18', '2022-04-06 07:45:18'),
(192, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 28, '[]', '{\"scheme_id\":70,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":28}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:45:18', '2022-04-06 07:45:18'),
(193, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 29, '[]', '{\"scheme_id\":70,\"from\":\"36\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14\",\"id\":29}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:45:18', '2022-04-06 07:45:18'),
(194, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 71, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz11\",\"description\":\"ass\",\"item_ref_id\":\"2\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-06\",\"loan_basis\":\"2\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":71}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:46:40', '2022-04-06 07:46:40'),
(195, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 30, '[]', '{\"scheme_id\":71,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":30}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:46:40', '2022-04-06 07:46:40'),
(196, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 31, '[]', '{\"scheme_id\":71,\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14\",\"id\":31}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:46:40', '2022-04-06 07:46:40'),
(197, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 32, '[]', '{\"scheme_id\":71,\"from\":\"91\",\"to\":\"99\",\"type\":\"days\",\"interest_value\":\"25\",\"id\":32}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:46:40', '2022-04-06 07:46:40'),
(198, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 72, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz222\",\"description\":\"eerr\",\"item_ref_id\":\"1\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-08\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":72}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:49:12', '2022-04-06 07:49:12'),
(199, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 33, '[]', '{\"scheme_id\":72,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":33}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:49:12', '2022-04-06 07:49:12'),
(200, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 34, '[]', '{\"scheme_id\":72,\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14\",\"id\":34}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:49:12', '2022-04-06 07:49:12'),
(201, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 35, '[]', '{\"scheme_id\":72,\"from\":\"90\",\"to\":\"180\",\"type\":\"days\",\"interest_value\":\"25\",\"id\":35}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:49:12', '2022-04-06 07:49:12'),
(202, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 73, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderzqqq\",\"description\":\"qqqqq\",\"item_ref_id\":\"2\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-07\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222\",\"maximum_loan_amount\":\"22222\",\"processing_fees\":\"12\",\"created_by\":1,\"id\":73}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:51:13', '2022-04-06 07:51:13'),
(203, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 36, '[]', '{\"scheme_id\":73,\"from\":\"90\",\"to\":\"180\",\"type\":\"days\",\"interest_value\":\"25\",\"id\":36}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-06 07:51:13', '2022-04-06 07:51:13'),
(204, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 74, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz222\",\"description\":\"eerr\",\"item_ref_id\":\"1\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-08\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222.00\",\"maximum_loan_amount\":\"22222.00\",\"processing_fees\":\"12.00\",\"created_by\":1,\"updated_by\":1,\"id\":74}', 'http://localhost/jewelry/scheme/edit/72', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:00:04', '2022-04-07 02:00:04'),
(205, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 37, '[]', '{\"scheme_id\":\"72\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":37}', 'http://localhost/jewelry/scheme/edit/72', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:00:04', '2022-04-07 02:00:04'),
(206, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 38, '[]', '{\"scheme_id\":\"72\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":38}', 'http://localhost/jewelry/scheme/edit/72', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:00:04', '2022-04-07 02:00:04'),
(207, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 39, '[]', '{\"scheme_id\":\"72\",\"from\":\"90\",\"to\":\"180\",\"type\":\"days\",\"interest_value\":\"25.00\",\"id\":39}', 'http://localhost/jewelry/scheme/edit/72', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:00:04', '2022-04-07 02:00:04'),
(209, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 76, '[]', '{\"scheme_type_id\":\"1\",\"name\":\"Coderz222\",\"description\":\"eerr\",\"item_ref_id\":\"1\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-08\",\"loan_basis\":\"1\",\"payment_in_advance\":\"1\",\"preclosure_time\":\"12\",\"penalty_type\":\"2\",\"penalty\":\"2\",\"payment_basis_on\":\"1\",\"loan_period\":\"24\",\"gold_approval\":\"80\",\"minimum_loan_amount\":\"11222.00\",\"maximum_loan_amount\":\"22222.00\",\"processing_fees\":\"12.00\",\"created_by\":1,\"updated_by\":1,\"id\":76}', 'http://localhost/jewelry/scheme/edit/74', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:00:37', '2022-04-07 02:00:37'),
(210, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 40, '[]', '{\"scheme_id\":\"74\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":40}', 'http://localhost/jewelry/scheme/edit/74', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:00:37', '2022-04-07 02:00:37'),
(211, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Scheme', 76, '{\"name\":\"Coderz222\"}', '{\"name\":\"Coderz2kk\"}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:02:26', '2022-04-07 02:02:26'),
(212, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 41, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"23\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":41}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:02:26', '2022-04-07 02:02:26'),
(213, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 42, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"23\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":42}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:03:15', '2022-04-07 02:03:15'),
(214, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 43, '[]', '{\"scheme_id\":\"76\",\"from\":\"24\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14\",\"id\":43}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:03:15', '2022-04-07 02:03:15'),
(216, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 44, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"23\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":44}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:05:09', '2022-04-07 02:05:09'),
(217, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 45, '[]', '{\"scheme_id\":\"76\",\"from\":\"24\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":45}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 02:05:09', '2022-04-07 02:05:09'),
(218, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 46, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"23\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":46}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:07:39', '2022-04-07 03:07:39'),
(219, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 47, '[]', '{\"scheme_id\":\"76\",\"from\":\"24\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":47}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:07:39', '2022-04-07 03:07:39'),
(220, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 48, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"23\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":48}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:07:39', '2022-04-07 03:07:39'),
(221, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 49, '[]', '{\"scheme_id\":\"76\",\"from\":\"24\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":49}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:07:39', '2022-04-07 03:07:39'),
(222, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 50, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"23\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":50}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:10:26', '2022-04-07 03:10:26'),
(223, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 51, '[]', '{\"scheme_id\":\"76\",\"from\":\"24\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":51}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:10:26', '2022-04-07 03:10:26'),
(224, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 52, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"23\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":52}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:10:26', '2022-04-07 03:10:26'),
(225, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 53, '[]', '{\"scheme_id\":\"76\",\"from\":\"24\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":53}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:10:26', '2022-04-07 03:10:26'),
(226, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 54, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13\",\"id\":54}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:13:46', '2022-04-07 03:13:46'),
(227, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 55, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14\",\"id\":55}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:13:46', '2022-04-07 03:13:46'),
(228, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Scheme', 76, '{\"name\":\"Coderz2kk\"}', '{\"name\":\"Coderz2k\"}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:14:37', '2022-04-07 03:14:37'),
(229, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 56, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":56}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:14:37', '2022-04-07 03:14:37'),
(230, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 57, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":57}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:14:37', '2022-04-07 03:14:37'),
(231, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 58, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15\",\"id\":58}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:14:37', '2022-04-07 03:14:37'),
(232, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 59, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":59}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:16:31', '2022-04-07 03:16:31'),
(233, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 60, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":60}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:16:31', '2022-04-07 03:16:31'),
(234, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 61, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15.00\",\"id\":61}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 03:16:31', '2022-04-07 03:16:31'),
(235, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 62, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":62}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 05:23:26', '2022-04-07 05:23:26'),
(236, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 63, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":63}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 05:23:26', '2022-04-07 05:23:26'),
(237, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 64, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15.00\",\"id\":64}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 05:23:26', '2022-04-07 05:23:26'),
(238, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 65, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":65}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 05:56:00', '2022-04-07 05:56:00'),
(239, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 66, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":66}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 05:56:00', '2022-04-07 05:56:00'),
(240, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 67, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15.00\",\"id\":67}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 05:56:00', '2022-04-07 05:56:00'),
(241, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 68, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":68}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 05:57:48', '2022-04-07 05:57:48'),
(242, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 69, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":69}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 05:57:48', '2022-04-07 05:57:48'),
(243, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 70, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15.00\",\"id\":70}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 05:57:48', '2022-04-07 05:57:48'),
(244, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 71, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":71}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:03:32', '2022-04-07 06:03:32'),
(245, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 72, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":72}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:03:32', '2022-04-07 06:03:32'),
(246, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 73, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15.00\",\"id\":73}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:03:32', '2022-04-07 06:03:32'),
(247, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 74, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":74}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:04:08', '2022-04-07 06:04:08'),
(248, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 75, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":75}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:04:08', '2022-04-07 06:04:08'),
(249, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 76, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15.00\",\"id\":76}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:04:08', '2022-04-07 06:04:08'),
(250, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 77, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":77}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:04:18', '2022-04-07 06:04:18'),
(251, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 78, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":78}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:04:18', '2022-04-07 06:04:18'),
(252, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 79, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15.00\",\"id\":79}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:04:18', '2022-04-07 06:04:18'),
(253, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 80, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":80}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:04:34', '2022-04-07 06:04:34'),
(254, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 81, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":81}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:04:34', '2022-04-07 06:04:34'),
(255, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 82, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15.00\",\"id\":82}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:04:34', '2022-04-07 06:04:34'),
(256, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 83, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":83}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:09:26', '2022-04-07 06:09:26'),
(257, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 84, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":84}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:09:26', '2022-04-07 06:09:26'),
(258, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 85, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15.00\",\"id\":85}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:09:26', '2022-04-07 06:09:26'),
(259, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 86, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":86}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:11:44', '2022-04-07 06:11:44'),
(260, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 87, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":87}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:11:44', '2022-04-07 06:11:44'),
(261, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 88, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15.00\",\"id\":88}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', NULL, '2022-04-07 06:11:44', '2022-04-07 06:11:44'),
(262, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Scheme', 76, '{\"updated_by\":2}', '{\"updated_by\":1}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', NULL, '2022-04-07 23:06:50', '2022-04-07 23:06:50'),
(263, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 89, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":89}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', NULL, '2022-04-07 23:06:50', '2022-04-07 23:06:50'),
(264, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 90, '[]', '{\"scheme_id\":\"76\",\"from\":\"31\",\"to\":\"60\",\"type\":\"days\",\"interest_value\":\"14.00\",\"id\":90}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', NULL, '2022-04-07 23:06:50', '2022-04-07 23:06:50'),
(265, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 91, '[]', '{\"scheme_id\":\"76\",\"from\":\"61\",\"to\":\"90\",\"type\":\"days\",\"interest_value\":\"15.00\",\"id\":91}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', NULL, '2022-04-07 23:06:50', '2022-04-07 23:06:50'),
(266, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 92, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":92}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', NULL, '2022-04-08 06:23:41', '2022-04-08 06:23:41'),
(267, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Group', 4, '{\"status\":1,\"updated_by\":null}', '{\"status\":0,\"updated_by\":1}', 'http://localhost/jewelry/group/change/4/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', NULL, '2022-04-08 09:12:59', '2022-04-08 09:12:59'),
(268, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldRates', 4, '{\"current_rate\":\"50000.00\"}', '{\"current_rate\":\"2000.00\"}', 'http://localhost/jewelry/goldrate/edit/4', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', NULL, '2022-04-11 02:01:09', '2022-04-11 02:01:09'),
(269, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldRates', 4, '{\"status\":0}', '{\"status\":1}', 'http://localhost/jewelry/goldrate/change/4/0', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', NULL, '2022-04-11 02:01:16', '2022-04-11 02:01:16'),
(270, 'App\\Models\\User', 1, 'created', 'App\\Models\\Items', 9, '[]', '{\"group_id\":\"1\",\"name\":\"Bangle\",\"description\":\"description12\",\"created_by\":1,\"id\":9}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', NULL, '2022-04-12 23:55:32', '2022-04-12 23:55:32'),
(271, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Items', 9, '{\"item_code\":null}', '{\"item_code\":\"000009\"}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', NULL, '2022-04-12 23:55:32', '2022-04-12 23:55:32'),
(272, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Items', 8, '{\"group_id\":1,\"name\":\"product2\"}', '{\"group_id\":\"8\",\"name\":\"Ring\"}', 'http://localhost/jewelry/item/edit/8', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-19 01:36:58', '2022-04-19 01:36:58'),
(273, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Items', 8, '{\"group_id\":8}', '{\"group_id\":\"1\"}', 'http://localhost/jewelry/item/edit/8', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-19 01:37:30', '2022-04-19 01:37:30'),
(274, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Items', 1, '{\"name\":\"Silver\"}', '{\"name\":\"Chain\"}', 'http://localhost/jewelry/item/edit/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-19 01:37:50', '2022-04-19 01:37:50'),
(275, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Scheme', 76, '{\"lending_rate\":\"80.00\"}', '{\"lending_rate\":\"2000.00\"}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-19 05:18:52', '2022-04-19 05:18:52'),
(276, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 93, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":93}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-19 05:18:52', '2022-04-19 05:18:52'),
(277, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Scheme', 76, '{\"group_ref_id\":1}', '{\"group_ref_id\":\"4\"}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-19 05:45:47', '2022-04-19 05:45:47'),
(278, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 94, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":94}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-19 05:45:47', '2022-04-19 05:45:47'),
(279, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Scheme', 76, '{\"loan_basis\":1}', '{\"loan_basis\":\"3\"}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-19 06:59:43', '2022-04-19 06:59:43'),
(280, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 95, '[]', '{\"scheme_id\":\"76\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"13.00\",\"id\":95}', 'http://localhost/jewelry/scheme/edit/76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-19 06:59:43', '2022-04-19 06:59:43'),
(285, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 8, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-23\",\"loan_amount\":\"10045\",\"sanction_amount\":\"1000 \",\"created_by\":1,\"id\":8}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:28:18', '2022-04-23 07:28:18'),
(286, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 8, '{\"loan_no\":null}', '{\"loan_no\":\"000008\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:28:18', '2022-04-23 07:28:18'),
(287, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 3, '[]', '{\"gold_loan_id\":8,\"group_id\":\"1\",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"1\",\"purity_in_karrot\":\"1\",\"gross_weight\":\"1\",\"net_weight\":\"1\",\"current_gold_rate\":\"2511.00\",\"lending_gold_rate\":\"80.00\",\"net_weight_value\":\"79.92\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":3}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:28:18', '2022-04-23 07:28:18'),
(288, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 9, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-23\",\"loan_amount\":\"10045\",\"sanction_amount\":\"1000 \",\"created_by\":1,\"id\":9}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:28:46', '2022-04-23 07:28:46'),
(289, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 9, '{\"loan_no\":null}', '{\"loan_no\":\"000009\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:28:46', '2022-04-23 07:28:46');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(290, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 4, '[]', '{\"gold_loan_id\":9,\"group_id\":\"1\",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"1\",\"purity_in_karrot\":\"1\",\"gross_weight\":\"1\",\"net_weight\":\"1\",\"current_gold_rate\":\"2511.00\",\"lending_gold_rate\":\"80.00\",\"net_weight_value\":\"79.92\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":4}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:28:46', '2022-04-23 07:28:46'),
(291, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 10, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-23\",\"loan_amount\":\"10045\",\"sanction_amount\":\"1000 \",\"created_by\":1,\"id\":10}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:29:50', '2022-04-23 07:29:50'),
(292, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 10, '{\"loan_no\":null}', '{\"loan_no\":\"000010\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:29:50', '2022-04-23 07:29:50'),
(293, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 5, '[]', '{\"gold_loan_id\":10,\"group_id\":\"1\",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"1\",\"purity_in_karrot\":\"1\",\"gross_weight\":\"1\",\"stone_weight\":\"0.00\",\"net_weight\":\"1\",\"current_gold_rate\":\"2511.00\",\"lending_gold_rate\":\"80.00\",\"net_weight_value\":\"79.92\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":5}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:29:50', '2022-04-23 07:29:50'),
(294, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 11, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-23\",\"loan_amount\":\"10045\",\"sanction_amount\":\"1000 \",\"created_by\":1,\"id\":11}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:39:03', '2022-04-23 07:39:03'),
(295, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 11, '{\"loan_no\":null}', '{\"loan_no\":\"000011\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:39:03', '2022-04-23 07:39:03'),
(296, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 6, '[]', '{\"gold_loan_id\":11,\"group_id\":\"1\",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"1\",\"purity_in_karrot\":\"1\",\"gross_weight\":\"1\",\"stone_weight\":\"0.00\",\"net_weight\":\"1\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"99.90\",\"wo_deduct_value\":\"2511.00\",\"deduct_value\":\"0.00\",\"deduct_gold_value\":\"2.51\",\"lending_gold_rate\":\"80.00\",\"net_weight_value\":\"79.92\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":6}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:39:03', '2022-04-23 07:39:03'),
(297, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 12, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-23\",\"loan_amount\":\"10045\",\"sanction_amount\":\"1000 \",\"loan_status\":\"completed\",\"created_by\":1,\"id\":12}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:42:35', '2022-04-23 07:42:35'),
(298, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 12, '{\"loan_no\":null}', '{\"loan_no\":\"000012\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:42:35', '2022-04-23 07:42:35'),
(299, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 7, '[]', '{\"gold_loan_id\":12,\"group_id\":\"1\",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"1\",\"purity_in_karrot\":\"1\",\"gross_weight\":\"1\",\"stone_weight\":\"0.00\",\"net_weight\":\"1\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"99.90\",\"wo_deduct_value\":\"2511.00\",\"deduct_value\":\"0.00\",\"deduct_gold_value\":\"2.51\",\"lending_gold_rate\":\"80.00\",\"net_weight_value\":\"79.92\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":7}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 07:42:35', '2022-04-23 07:42:35'),
(320, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 22, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-23\",\"loan_amount\":\"10045\",\"sanction_amount\":\"1000 \",\"loan_status\":\"completed\",\"created_by\":1,\"approved_by\":1,\"id\":22}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 08:40:53', '2022-04-23 08:40:53'),
(321, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 22, '{\"loan_no\":null}', '{\"loan_no\":\"000022\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 08:40:53', '2022-04-23 08:40:53'),
(322, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItemTotal', 3, '[]', '{\"loan_type_id\":22,\"total_gross_weight\":\"1.00 \",\"total_stone_weight\":\"0.00 \",\"total_net_weight\":\"1.00 \",\"total_percentage_deduction\":\"0.50 \",\"total_value_for_item\":\"2511.00 \",\"total_value_for_deduction\":\"1255.50 \",\"total_value_for_net_weight\":\"40.00 \",\"id\":3}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 08:40:53', '2022-04-23 08:40:53'),
(323, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanStatusHistory', 1, '[]', '{\"loan_type_id\":22,\"loan_status\":\"completed\",\"created_by\":1,\"id\":1}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 08:40:53', '2022-04-23 08:40:53'),
(324, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 8, '[]', '{\"gold_loan_id\":22,\"group_id\":\"1\",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"2\",\"purity_in_karrot\":\"50\",\"gross_weight\":\"1\",\"stone_weight\":\"0.00\",\"net_weight\":\"1\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"50\",\"wo_deduct_value\":\"2511.00\",\"deduct_value\":\"0.50\",\"deduct_gold_value\":\"1255.50\",\"lending_gold_rate\":\"80.00\",\"net_weight_value\":\"40.00\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":8}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-23 08:40:53', '2022-04-23 08:40:53'),
(325, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 77, '[]', '{\"scheme_type_id\":\"1\",\"group_ref_id\":\"0\",\"name\":\"Scheme 1\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-27\",\"loan_basis\":\"1\",\"calc_method\":\"1\",\"pay_frequency\":\"0\",\"compound_interest\":\"1\",\"payment_in_advance\":\"1\",\"loyal_point\":\"0\",\"auto_round\":\"1\",\"round_to\":\"0\",\"round_mode\":\"1\",\"preclosure_time\":\"20\",\"penalty_type\":\"1\",\"penalty\":\"10\",\"payment_basis_on\":\"1\",\"loan_period\":\"365\",\"minimum_loan_amount\":\"1000\",\"maximum_loan_amount\":\"12000\",\"process_feestype\":\"1\",\"processing_fees\":\"0\",\"lending_rate\":\"2000\",\"loan_approval\":\"100\",\"description\":\"des\",\"subscheme\":0,\"created_by\":1,\"id\":77}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 07:15:07', '2022-04-25 07:15:07'),
(326, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 96, '[]', '{\"scheme_id\":77,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"18\",\"id\":96}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 07:15:07', '2022-04-25 07:15:07'),
(327, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 78, '[]', '{\"scheme_type_id\":\"1\",\"group_ref_id\":\"0\",\"name\":\"Scheme 1\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-27\",\"loan_basis\":\"1\",\"calc_method\":\"1\",\"pay_frequency\":\"0\",\"compound_interest\":\"1\",\"payment_in_advance\":\"1\",\"loyal_point\":\"0\",\"auto_round\":\"1\",\"round_to\":\"0\",\"round_mode\":\"1\",\"preclosure_time\":\"20\",\"penalty_type\":\"1\",\"penalty\":\"10\",\"payment_basis_on\":\"1\",\"loan_period\":\"365\",\"minimum_loan_amount\":\"1000\",\"maximum_loan_amount\":\"12000\",\"process_feestype\":\"1\",\"processing_fees\":\"0\",\"lending_rate\":\"2000\",\"loan_approval\":\"100\",\"description\":\"des\",\"subscheme\":0,\"created_by\":1,\"id\":78}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 07:27:32', '2022-04-25 07:27:32'),
(328, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 97, '[]', '{\"scheme_id\":78,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"18\",\"id\":97}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 07:27:32', '2022-04-25 07:27:32'),
(331, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 81, '[]', '{\"scheme_type_id\":\"1\",\"group_ref_id\":\"0\",\"name\":\"Scheme 1\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-27\",\"loan_basis\":\"1\",\"calc_method\":\"1\",\"pay_frequency\":\"0\",\"compound_interest\":\"1\",\"payment_in_advance\":\"1\",\"loyal_point\":\"0\",\"auto_round\":\"1\",\"round_to\":\"0\",\"round_mode\":\"1\",\"preclosure_time\":\"20\",\"penalty_type\":\"1\",\"penalty\":\"10\",\"payment_basis_on\":\"1\",\"loan_period\":\"365\",\"minimum_loan_amount\":\"1000\",\"maximum_loan_amount\":\"12000\",\"process_feestype\":\"1\",\"processing_fees\":\"0\",\"lending_rate\":\"2000\",\"loan_approval\":\"100\",\"description\":\"des\",\"subscheme\":0,\"created_by\":1,\"id\":81}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 07:32:31', '2022-04-25 07:32:31'),
(332, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 98, '[]', '{\"scheme_id\":81,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"18\",\"id\":98}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 07:32:31', '2022-04-25 07:32:31'),
(333, 'App\\Models\\User', 1, 'created', 'App\\Models\\Scheme', 82, '[]', '{\"scheme_type_id\":\"1\",\"group_ref_id\":\"0\",\"name\":\"Scheme 1\",\"start_date\":\"2022-04-06\",\"end_date\":\"2022-04-27\",\"loan_basis\":\"1\",\"calc_method\":\"1\",\"pay_frequency\":\"0\",\"compound_interest\":\"1\",\"payment_in_advance\":\"1\",\"loyal_point\":\"0\",\"auto_round\":\"1\",\"round_to\":\"0\",\"round_mode\":\"1\",\"preclosure_time\":\"20\",\"penalty_type\":\"1\",\"penalty\":\"10\",\"payment_basis_on\":\"1\",\"loan_period\":\"365\",\"minimum_loan_amount\":\"1000\",\"maximum_loan_amount\":\"12000\",\"process_feestype\":\"1\",\"processing_fees\":\"0\",\"lending_rate\":\"2000\",\"loan_approval\":\"100\",\"description\":\"des\",\"subscheme\":0,\"created_by\":1,\"id\":82}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 07:35:02', '2022-04-25 07:35:02'),
(334, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 99, '[]', '{\"scheme_id\":82,\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"18\",\"id\":99}', 'http://localhost/jewelry/scheme/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 07:35:02', '2022-04-25 07:35:02'),
(335, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Scheme', 82, '{\"group_ref_id\":0,\"updated_by\":null}', '{\"group_ref_id\":\"1\",\"updated_by\":1}', 'http://localhost/jewelry/scheme/edit/82', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 07:36:25', '2022-04-25 07:36:25'),
(336, 'App\\Models\\User', 1, 'created', 'App\\Models\\InterestRates', 100, '[]', '{\"scheme_id\":\"82\",\"from\":\"1\",\"to\":\"30\",\"type\":\"days\",\"interest_value\":\"19.00\",\"id\":100}', 'http://localhost/jewelry/scheme/edit/82', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 07:36:25', '2022-04-25 07:36:25'),
(345, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 25, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-27\",\"loan_amount\":\"100\",\"sanction_amount\":\"1 \",\"loan_status\":\"completed\",\"created_by\":1,\"approved_by\":1,\"id\":25}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:38:07', '2022-04-25 09:38:07'),
(346, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 25, '{\"loan_no\":null}', '{\"loan_no\":\"000025\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:38:07', '2022-04-25 09:38:07'),
(347, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItemTotal', 6, '[]', '{\"loan_type_id\":25,\"total_gross_weight\":\"11.00 \",\"total_stone_weight\":\"1.10 \",\"total_net_weight\":\"9.90 \",\"total_percentage_deduction\":\"9.00 \",\"total_value_for_item\":\"24858.90 \",\"total_value_for_deduction\":\"22601.26 \",\"total_value_for_net_weight\":\"71.93 \",\"id\":6}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:38:07', '2022-04-25 09:38:07'),
(348, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanStatusHistory', 4, '[]', '{\"loan_type_id\":25,\"loan_status\":\"completed\",\"created_by\":1,\"id\":4}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:38:07', '2022-04-25 09:38:07'),
(349, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 9, '[]', '{\"gold_loan_id\":25,\"group_id\":\"2511.00\",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"1\",\"purity_in_karrot\":\"1\",\"gross_weight\":\"1\",\"stone_weight\":\"0.10\",\"net_weight\":\"0.9\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"99.90\",\"wo_deduct_value\":\"2259.90\",\"deduct_value\":\"0.00\",\"deduct_gold_value\":\"2.26\",\"lending_gold_rate\":\"80.00 \",\"net_weight_value\":\"71.93\",\"remarks\":\"test\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":9}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:38:07', '2022-04-25 09:38:07'),
(350, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 26, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-27\",\"loan_amount\":\"100\",\"sanction_amount\":\"1 \",\"loan_status\":\"completed\",\"created_by\":1,\"approved_by\":1,\"id\":26}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:38:54', '2022-04-25 09:38:54'),
(351, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 26, '{\"loan_no\":null}', '{\"loan_no\":\"000026\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:38:54', '2022-04-25 09:38:54'),
(352, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItemTotal', 7, '[]', '{\"loan_type_id\":26,\"total_gross_weight\":\"11.00 \",\"total_stone_weight\":\"1.10 \",\"total_net_weight\":\"9.90 \",\"total_percentage_deduction\":\"9.00 \",\"total_value_for_item\":\"24858.90 \",\"total_value_for_deduction\":\"22601.26 \",\"total_value_for_net_weight\":\"71.93 \",\"id\":7}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:38:54', '2022-04-25 09:38:54'),
(353, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanStatusHistory', 5, '[]', '{\"loan_type_id\":26,\"loan_status\":\"completed\",\"created_by\":1,\"id\":5}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:38:54', '2022-04-25 09:38:54'),
(354, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 10, '[]', '{\"gold_loan_id\":26,\"group_id\":\"2511.00\",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"1\",\"purity_in_karrot\":\"1\",\"gross_weight\":\"1\",\"stone_weight\":\"0.10\",\"net_weight\":\"0.9\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"99.90\",\"wo_deduct_value\":\"2259.90\",\"deduct_value\":\"0.00\",\"deduct_gold_value\":\"2.26\",\"lending_gold_rate\":\"80.00 \",\"net_weight_value\":\"71.93\",\"remarks\":\"test\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":10}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:38:54', '2022-04-25 09:38:54'),
(355, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 27, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-27\",\"loan_amount\":\"100\",\"sanction_amount\":\"1 \",\"loan_status\":\"completed\",\"created_by\":1,\"approved_by\":1,\"id\":27}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:39:12', '2022-04-25 09:39:12'),
(356, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 27, '{\"loan_no\":null}', '{\"loan_no\":\"000027\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:39:12', '2022-04-25 09:39:12'),
(357, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItemTotal', 8, '[]', '{\"loan_type_id\":27,\"total_gross_weight\":\"11.00 \",\"total_stone_weight\":\"1.10 \",\"total_net_weight\":\"9.90 \",\"total_percentage_deduction\":\"9.00 \",\"total_value_for_item\":\"24858.90 \",\"total_value_for_deduction\":\"22601.26 \",\"total_value_for_net_weight\":\"71.93 \",\"id\":8}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:39:12', '2022-04-25 09:39:12'),
(358, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanStatusHistory', 6, '[]', '{\"loan_type_id\":27,\"loan_status\":\"completed\",\"created_by\":1,\"id\":6}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:39:12', '2022-04-25 09:39:12'),
(359, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 11, '[]', '{\"gold_loan_id\":27,\"group_id\":\"2511.00\",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"1\",\"purity_in_karrot\":\"1\",\"gross_weight\":\"1\",\"stone_weight\":\"0.10\",\"net_weight\":\"0.9\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"99.90\",\"wo_deduct_value\":\"2259.90\",\"deduct_value\":\"0.00\",\"deduct_gold_value\":\"2.26\",\"lending_gold_rate\":\"80.00 \",\"net_weight_value\":\"71.93\",\"remarks\":\"test\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":11}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:39:12', '2022-04-25 09:39:12'),
(364, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 29, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-27\",\"loan_amount\":\"100\",\"sanction_amount\":\"1 \",\"loan_status\":\"completed\",\"created_by\":1,\"approved_by\":1,\"id\":29}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:23', '2022-04-25 09:47:23'),
(365, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 29, '{\"loan_no\":null}', '{\"loan_no\":\"000029\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:23', '2022-04-25 09:47:23'),
(366, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItemTotal', 10, '[]', '{\"loan_type_id\":29,\"total_gross_weight\":\"20.00 \",\"total_stone_weight\":\"0.00 \",\"total_net_weight\":\"20.00 \",\"total_percentage_deduction\":\"10.00 \",\"total_value_for_item\":\"50220.00 \",\"total_value_for_deduction\":\"25110.00 \",\"total_value_for_net_weight\":\"800.00 \",\"id\":10}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:23', '2022-04-25 09:47:23'),
(367, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanStatusHistory', 8, '[]', '{\"loan_type_id\":29,\"loan_status\":\"completed\",\"created_by\":1,\"id\":8}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:23', '2022-04-25 09:47:23'),
(368, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 12, '[]', '{\"gold_loan_id\":29,\"group_id\":\"1 \",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"1\",\"purity_in_karrot\":\"8\",\"gross_weight\":\"10\",\"stone_weight\":\"0.00\",\"net_weight\":\"10\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"50.00\",\"wo_deduct_value\":\"25110.00\",\"deduct_value\":\"5.00\",\"deduct_gold_value\":\"12555.00\",\"lending_gold_rate\":\"80.00 \",\"net_weight_value\":\"400.00\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":12}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:23', '2022-04-25 09:47:23'),
(369, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 13, '[]', '{\"gold_loan_id\":29,\"group_id\":\"1 \",\"item_id\":\"8\",\"noof_items\":\"1\",\"gold_type\":\"2\",\"purity_in_karrot\":\"50\",\"gross_weight\":\"10\",\"stone_weight\":\"0.00\",\"net_weight\":\"10\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"50\",\"wo_deduct_value\":\"25110.00\",\"deduct_value\":\"5.00\",\"deduct_gold_value\":\"12555.00\",\"lending_gold_rate\":\"80.00 \",\"net_weight_value\":\"400.00\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":13}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:23', '2022-04-25 09:47:23'),
(370, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 30, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-27\",\"loan_amount\":\"100\",\"sanction_amount\":\"1 \",\"loan_status\":\"completed\",\"created_by\":1,\"approved_by\":1,\"id\":30}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:44', '2022-04-25 09:47:44'),
(371, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 30, '{\"loan_no\":null}', '{\"loan_no\":\"000030\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:44', '2022-04-25 09:47:44'),
(372, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItemTotal', 11, '[]', '{\"loan_type_id\":30,\"total_gross_weight\":\"20.00 \",\"total_stone_weight\":\"0.00 \",\"total_net_weight\":\"20.00 \",\"total_percentage_deduction\":\"10.00 \",\"total_value_for_item\":\"50220.00 \",\"total_value_for_deduction\":\"25110.00 \",\"total_value_for_net_weight\":\"800.00 \",\"id\":11}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:44', '2022-04-25 09:47:44'),
(373, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanStatusHistory', 9, '[]', '{\"loan_type_id\":30,\"loan_status\":\"completed\",\"created_by\":1,\"id\":9}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:44', '2022-04-25 09:47:44'),
(374, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 14, '[]', '{\"gold_loan_id\":30,\"group_id\":\"1 \",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"1\",\"purity_in_karrot\":\"8\",\"gross_weight\":\"10\",\"stone_weight\":\"0.00\",\"net_weight\":\"10\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"50.00\",\"wo_deduct_value\":\"25110.00\",\"deduct_value\":\"5.00\",\"deduct_gold_value\":\"12555.00\",\"lending_gold_rate\":\"80.00 \",\"net_weight_value\":\"400.00\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":14}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:44', '2022-04-25 09:47:44'),
(375, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 15, '[]', '{\"gold_loan_id\":30,\"group_id\":\"1 \",\"item_id\":\"8\",\"noof_items\":\"1\",\"gold_type\":\"2\",\"purity_in_karrot\":\"50\",\"gross_weight\":\"10\",\"stone_weight\":\"0.00\",\"net_weight\":\"10\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"50\",\"wo_deduct_value\":\"25110.00\",\"deduct_value\":\"5.00\",\"deduct_gold_value\":\"12555.00\",\"lending_gold_rate\":\"80.00 \",\"net_weight_value\":\"400.00\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":15}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-25 09:47:44', '2022-04-25 09:47:44'),
(376, 'App\\Models\\User', 1, 'created', 'App\\Models\\Group', 6, '[]', '{\"name\":\"Silver1\",\"created_by\":1,\"id\":6}', 'http://localhost/jewelry/group/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-26 02:07:14', '2022-04-26 02:07:14'),
(377, 'App\\Models\\User', 1, 'created', 'App\\Models\\Items', 10, '[]', '{\"group_id\":\"1\",\"name\":\"necklace\",\"description\":\"test\",\"created_by\":1,\"id\":10}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-26 02:08:46', '2022-04-26 02:08:46'),
(378, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Items', 10, '{\"item_code\":null}', '{\"item_code\":\"000010\"}', 'http://localhost/jewelry/item/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-26 02:08:46', '2022-04-26 02:08:46'),
(379, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoans', 31, '[]', '{\"customer_id\":\"9\",\"scheme_ref_id\":\"3\",\"payment_ref_id\":\"1\",\"loan_date\":\"2022-04-26\",\"loan_amount\":\"10000\",\"sanction_amount\":\"10000 \",\"loan_status\":\"completed\",\"created_by\":1,\"approved_by\":1,\"id\":31}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-26 02:18:01', '2022-04-26 02:18:01'),
(380, 'App\\Models\\User', 1, 'updated', 'App\\Models\\GoldLoans', 31, '{\"loan_no\":null}', '{\"loan_no\":\"000031\"}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-26 02:18:01', '2022-04-26 02:18:01'),
(381, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItemTotal', 12, '[]', '{\"loan_type_id\":31,\"total_gross_weight\":\"11.00 \",\"total_stone_weight\":\"0.10 \",\"total_net_weight\":\"10.90 \",\"total_percentage_deduction\":\"2.12 \",\"total_value_for_item\":\"27369.90 \",\"total_value_for_deduction\":\"5323.32 \",\"total_value_for_net_weight\":\"702.40 \",\"id\":12}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-26 02:18:01', '2022-04-26 02:18:01'),
(382, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanStatusHistory', 10, '[]', '{\"loan_type_id\":31,\"loan_status\":\"completed\",\"created_by\":1,\"id\":10}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-26 02:18:01', '2022-04-26 02:18:01'),
(383, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 16, '[]', '{\"gold_loan_id\":31,\"group_id\":\"1 \",\"item_id\":\"1\",\"noof_items\":\"1\",\"gold_type\":\"2\",\"purity_in_karrot\":\"50\",\"gross_weight\":\"1\",\"stone_weight\":\"0.10\",\"net_weight\":\"0.9\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"50\",\"wo_deduct_value\":\"2259.90\",\"deduct_value\":\"0.45\",\"deduct_gold_value\":\"1129.95\",\"lending_gold_rate\":\"80.00 \",\"net_weight_value\":\"36.00\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":16}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-26 02:18:01', '2022-04-26 02:18:01'),
(384, 'App\\Models\\User', 1, 'created', 'App\\Models\\GoldLoanItems', 17, '[]', '{\"gold_loan_id\":31,\"group_id\":\"1 \",\"item_id\":\"8\",\"noof_items\":\"1\",\"gold_type\":\"1\",\"purity_in_karrot\":\"4\",\"gross_weight\":\"10\",\"stone_weight\":\"0.00\",\"net_weight\":\"10\",\"current_gold_rate\":\"2511.00\",\"purity_karat_value\":\"83.30\",\"wo_deduct_value\":\"25110.00\",\"deduct_value\":\"1.67\",\"deduct_gold_value\":\"4193.37\",\"lending_gold_rate\":\"80.00 \",\"net_weight_value\":\"666.40\",\"remarks\":\"\",\"item_image\":\"profilr.jpeg\",\"item_image_path\":\"http:\\/\\/localhost\\/\",\"created_by\":1,\"id\":17}', 'http://localhost/jewelry/goldloan/create', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-26 02:18:01', '2022-04-26 02:18:01'),
(385, 'App\\Models\\User', 1, 'updated', 'App\\Models\\Scheme', 82, '{\"status\":1}', '{\"status\":0}', 'http://localhost/jewelry/scheme/change/82/1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', NULL, '2022-04-26 02:23:52', '2022-04-26 02:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_id` tinyint(4) DEFAULT NULL,
  `phno` bigint(20) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` tinyint(4) NOT NULL,
  `state_id` tinyint(4) NOT NULL,
  `country_id` int(11) NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `dob` date DEFAULT NULL,
  `age` tinyint(4) NOT NULL DEFAULT 0,
  `phone_no` bigint(20) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` tinyint(4) NOT NULL,
  `state_id` tinyint(4) NOT NULL,
  `country_id` int(11) NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominee_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominee_relation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominee_dob` date DEFAULT NULL,
  `nominee_age` tinyint(4) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_code`, `name`, `gender`, `dob`, `age`, `phone_no`, `email`, `address`, `city_id`, `state_id`, `country_id`, `postal_code`, `nominee_name`, `nominee_relation`, `nominee_dob`, `nominee_age`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'It001', 'kar', 1, NULL, 0, 9888888, 'test@gmail.com1', 'address', 1, 1, 1, '600001', 'Test', 'Father', '1970-04-13', 52, 'active', 1, NULL, NULL, '2022-03-31 03:10:01', '2022-03-31 03:10:01', NULL),
(14, 'It002', 'kart', 1, NULL, 0, 98888882, 'test@gmailt.com1', 'addresst', 1, 1, 1, '600001', 'Test', 'Father', '1970-04-13', 52, 'active', 1, NULL, NULL, '2022-03-31 03:10:01', '2022-03-31 03:10:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MD', 1, NULL, NULL, '2022-03-30 06:24:09', NULL, NULL),
(2, 'Manager', 1, NULL, NULL, '2022-03-30 06:24:09', NULL, NULL),
(3, 'Appraiser', 1, NULL, NULL, '2022-03-30 06:24:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `designation_id` bigint(20) NOT NULL,
  `phno` bigint(20) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` tinyint(4) NOT NULL,
  `state_id` tinyint(4) NOT NULL,
  `country_id` int(11) NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `gold_loans`
--

CREATE TABLE `gold_loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `loan_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheme_ref_id` bigint(20) NOT NULL,
  `payment_ref_id` bigint(20) NOT NULL,
  `frequency` tinyint(4) DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `loan_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `sanction_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `interest_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_chrages` decimal(10,2) NOT NULL DEFAULT 0.00,
  `loan_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_by` bigint(20) NOT NULL,
  `approved_by` bigint(20) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `rejected_by` bigint(20) DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gold_loans`
--

INSERT INTO `gold_loans` (`id`, `customer_id`, `loan_no`, `scheme_ref_id`, `payment_ref_id`, `frequency`, `loan_date`, `loan_amount`, `sanction_amount`, `interest_type`, `document_chrages`, `loan_status`, `created_by`, `approved_by`, `approved_at`, `rejected_by`, `rejected_at`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '001', 1, 1, 1, '2022-03-31', '199998.00', '0.00', NULL, '0.00', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 04:10:54', '2022-03-31 04:10:54', NULL),
(3, 1, '001', 1, 1, 1, '2022-03-31', '199998.00', '0.00', NULL, '0.00', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 04:27:39', '2022-03-31 04:27:39', NULL),
(5, 1, '001', 1, 1, 1, '2022-03-31', '199998.00', '0.00', NULL, '0.00', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31 04:28:23', '2022-03-31 04:28:23', NULL),
(8, 9, '000008', 3, 1, NULL, '2022-04-23', '10045.00', '1000.00', NULL, '0.00', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-23 07:28:18', '2022-04-23 07:28:18', NULL),
(9, 9, '000009', 3, 1, NULL, '2022-04-23', '10045.00', '1000.00', NULL, '0.00', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-23 07:28:46', '2022-04-23 07:28:46', NULL),
(10, 9, '000010', 3, 1, NULL, '2022-04-23', '10045.00', '1000.00', NULL, '0.00', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-23 07:29:50', '2022-04-23 07:29:50', NULL),
(11, 9, '000011', 3, 1, NULL, '2022-04-23', '10045.00', '1000.00', NULL, '0.00', 'pending', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-23 07:39:03', '2022-04-23 07:39:03', NULL),
(12, 9, '000012', 3, 1, NULL, '2022-04-23', '10045.00', '1000.00', NULL, '0.00', 'completed', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-23 07:42:35', '2022-04-23 07:42:35', NULL),
(22, 9, '000022', 3, 1, NULL, '2022-04-23', '10045.00', '1000.00', NULL, '0.00', 'completed', 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-23 08:40:53', '2022-04-23 08:40:53', NULL),
(25, 9, '000025', 3, 1, NULL, '2022-04-27', '100.00', '1.00', NULL, '0.00', 'completed', 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-25 09:38:07', '2022-04-25 09:38:07', NULL),
(26, 9, '000026', 3, 1, NULL, '2022-04-27', '100.00', '1.00', NULL, '0.00', 'completed', 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-25 09:38:54', '2022-04-25 09:38:54', NULL),
(27, 9, '000027', 3, 1, NULL, '2022-04-27', '100.00', '1.00', NULL, '0.00', 'completed', 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-25 09:39:12', '2022-04-25 09:39:12', NULL),
(29, 9, '000029', 3, 1, NULL, '2022-04-27', '100.00', '1.00', NULL, '0.00', 'completed', 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-25 09:47:23', '2022-04-25 09:47:23', NULL),
(30, 9, '000030', 3, 1, NULL, '2022-04-27', '100.00', '1.00', NULL, '0.00', 'completed', 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-25 09:47:44', '2022-04-25 09:47:44', NULL),
(31, 9, '000031', 3, 1, NULL, '2022-04-26', '10000.00', '10000.00', NULL, '0.00', 'completed', 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-04-26 02:18:01', '2022-04-26 02:18:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gold_loan_items`
--

CREATE TABLE `gold_loan_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gold_loan_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `noof_items` tinyint(4) NOT NULL,
  `gold_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purity_in_karrot` tinyint(4) NOT NULL,
  `purity_karat_value` decimal(8,2) NOT NULL DEFAULT 0.00,
  `gross_weight` decimal(8,2) NOT NULL,
  `stone_weight` decimal(8,2) NOT NULL DEFAULT 0.00,
  `net_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `current_gold_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `lending_gold_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `net_weight_value` decimal(10,2) NOT NULL DEFAULT 0.00,
  `wo_deduct_value` decimal(10,2) NOT NULL DEFAULT 0.00,
  `deduct_value` decimal(10,2) NOT NULL DEFAULT 0.00,
  `deduct_gold_value` decimal(10,2) NOT NULL DEFAULT 0.00,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gold_loan_items`
--

INSERT INTO `gold_loan_items` (`id`, `gold_loan_id`, `group_id`, `item_id`, `noof_items`, `gold_type`, `purity_in_karrot`, `purity_karat_value`, `gross_weight`, `stone_weight`, `net_weight`, `current_gold_rate`, `lending_gold_rate`, `net_weight_value`, `wo_deduct_value`, `deduct_value`, `deduct_gold_value`, `remarks`, `item_image`, `item_image_path`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, 1, 2, '1', 22, '0.00', '12.00', '2.00', '10.00', '2800.00', '1500.00', '15.00', '0.00', '0.00', '0.00', 'test', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-03-31 04:27:39', '2022-03-31 04:27:39', NULL),
(2, 5, 1, 1, 2, '1', 22, '0.00', '12.00', '2.00', '10.00', '2800.00', '1500.00', '15.00', '0.00', '0.00', '0.00', 'test', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-03-31 04:28:23', '2022-03-31 04:28:23', NULL),
(3, 8, 1, 1, 1, '1', 1, '0.00', '1.00', '0.00', '1.00', '2511.00', '80.00', '79.92', '0.00', '0.00', '0.00', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-23 07:28:18', '2022-04-23 07:28:18', NULL),
(4, 9, 1, 1, 1, '1', 1, '0.00', '1.00', '0.00', '1.00', '2511.00', '80.00', '79.92', '0.00', '0.00', '0.00', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-23 07:28:46', '2022-04-23 07:28:46', NULL),
(5, 10, 1, 1, 1, '1', 1, '0.00', '1.00', '0.00', '1.00', '2511.00', '80.00', '79.92', '0.00', '0.00', '0.00', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-23 07:29:50', '2022-04-23 07:29:50', NULL),
(6, 11, 1, 1, 1, '1', 1, '99.90', '1.00', '0.00', '1.00', '2511.00', '80.00', '79.92', '2511.00', '0.00', '2.51', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-23 07:39:03', '2022-04-23 07:39:03', NULL),
(7, 12, 1, 1, 1, '1', 1, '99.90', '1.00', '0.00', '1.00', '2511.00', '80.00', '79.92', '2511.00', '0.00', '2.51', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-23 07:42:35', '2022-04-23 07:42:35', NULL),
(8, 22, 1, 1, 1, '2', 50, '50.00', '1.00', '0.00', '1.00', '2511.00', '80.00', '40.00', '2511.00', '0.50', '1255.50', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-23 08:40:53', '2022-04-23 08:40:53', NULL),
(9, 25, 2511, 1, 1, '1', 1, '99.90', '1.00', '0.10', '0.90', '2511.00', '80.00', '71.93', '2259.90', '0.00', '2.26', 'test', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-25 09:38:07', '2022-04-25 09:38:07', NULL),
(10, 26, 2511, 1, 1, '1', 1, '99.90', '1.00', '0.10', '0.90', '2511.00', '80.00', '71.93', '2259.90', '0.00', '2.26', 'test', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-25 09:38:54', '2022-04-25 09:38:54', NULL),
(11, 27, 2511, 1, 1, '1', 1, '99.90', '1.00', '0.10', '0.90', '2511.00', '80.00', '71.93', '2259.90', '0.00', '2.26', 'test', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-25 09:39:12', '2022-04-25 09:39:12', NULL),
(12, 29, 1, 1, 1, '1', 8, '50.00', '10.00', '0.00', '10.00', '2511.00', '80.00', '400.00', '25110.00', '5.00', '12555.00', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-25 09:47:23', '2022-04-25 09:47:23', NULL),
(13, 29, 1, 8, 1, '2', 50, '50.00', '10.00', '0.00', '10.00', '2511.00', '80.00', '400.00', '25110.00', '5.00', '12555.00', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-25 09:47:23', '2022-04-25 09:47:23', NULL),
(14, 30, 1, 1, 1, '1', 8, '50.00', '10.00', '0.00', '10.00', '2511.00', '80.00', '400.00', '25110.00', '5.00', '12555.00', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-25 09:47:44', '2022-04-25 09:47:44', NULL),
(15, 30, 1, 8, 1, '2', 50, '50.00', '10.00', '0.00', '10.00', '2511.00', '80.00', '400.00', '25110.00', '5.00', '12555.00', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-25 09:47:44', '2022-04-25 09:47:44', NULL),
(16, 31, 1, 1, 1, '2', 50, '50.00', '1.00', '0.10', '0.90', '2511.00', '80.00', '36.00', '2259.90', '0.45', '1129.95', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-26 02:18:01', '2022-04-26 02:18:01', NULL),
(17, 31, 1, 8, 1, '1', 4, '83.30', '10.00', '0.00', '10.00', '2511.00', '80.00', '666.40', '25110.00', '1.67', '4193.37', '', 'profilr.jpeg', 'http://localhost/', 1, NULL, NULL, '2022-04-26 02:18:01', '2022-04-26 02:18:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gold_loan_item_totals`
--

CREATE TABLE `gold_loan_item_totals` (
  `id` int(11) NOT NULL,
  `loan_type_id` bigint(20) NOT NULL,
  `total_gross_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_stone_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_net_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_percentage_deduction` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_value_for_item` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_value_for_deduction` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_value_for_net_weight` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gold_loan_item_totals`
--

INSERT INTO `gold_loan_item_totals` (`id`, `loan_type_id`, `total_gross_weight`, `total_stone_weight`, `total_net_weight`, `total_percentage_deduction`, `total_value_for_item`, `total_value_for_deduction`, `total_value_for_net_weight`, `created_at`, `updated_at`) VALUES
(3, 22, '1.00', '0.00', '1.00', '0.50', '2511.00', '1255.50', '40.00', '2022-04-23 14:10:53', '2022-04-23 14:10:53'),
(6, 25, '11.00', '1.10', '9.90', '9.00', '24858.90', '22601.26', '71.93', '2022-04-25 15:08:07', '2022-04-25 15:08:07'),
(7, 26, '11.00', '1.10', '9.90', '9.00', '24858.90', '22601.26', '71.93', '2022-04-25 15:08:54', '2022-04-25 15:08:54'),
(8, 27, '11.00', '1.10', '9.90', '9.00', '24858.90', '22601.26', '71.93', '2022-04-25 15:09:12', '2022-04-25 15:09:12'),
(10, 29, '20.00', '0.00', '20.00', '10.00', '50220.00', '25110.00', '800.00', '2022-04-25 15:17:23', '2022-04-25 15:17:23'),
(11, 30, '20.00', '0.00', '20.00', '10.00', '50220.00', '25110.00', '800.00', '2022-04-25 15:17:44', '2022-04-25 15:17:44'),
(12, 31, '11.00', '0.10', '10.90', '2.12', '27369.90', '5323.32', '702.40', '2022-04-26 07:48:01', '2022-04-26 07:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `gold_loan_status_histories`
--

CREATE TABLE `gold_loan_status_histories` (
  `id` int(11) NOT NULL,
  `loan_type_id` bigint(20) NOT NULL,
  `loan_status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gold_loan_status_histories`
--

INSERT INTO `gold_loan_status_histories` (`id`, `loan_type_id`, `loan_status`, `created_at`, `created_by`, `updated_at`) VALUES
(1, 22, 'completed', '2022-04-23 14:10:53', 1, '2022-04-23 14:10:53'),
(4, 25, 'completed', '2022-04-25 15:08:07', 1, '2022-04-25 15:08:07'),
(5, 26, 'completed', '2022-04-25 15:08:54', 1, '2022-04-25 15:08:54'),
(6, 27, 'completed', '2022-04-25 15:09:12', 1, '2022-04-25 15:09:12'),
(8, 29, 'completed', '2022-04-25 15:17:23', 1, '2022-04-25 15:17:23'),
(9, 30, 'completed', '2022-04-25 15:17:44', 1, '2022-04-25 15:17:44'),
(10, 31, 'completed', '2022-04-26 07:48:01', 1, '2022-04-26 07:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `gold_purities`
--

CREATE TABLE `gold_purities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) NOT NULL,
  `karat_type` tinyint(4) NOT NULL,
  `hallmark` int(11) NOT NULL,
  `purity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gold_purities`
--

INSERT INTO `gold_purities` (`id`, `group_id`, `karat_type`, `hallmark`, `purity`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 24, 999, '99.90', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL),
(2, 1, 22, 916, '91.60', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL),
(3, 1, 21, 875, '87.50', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL),
(4, 1, 20, 833, '83.30', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL),
(5, 1, 18, 750, '75.00', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL),
(6, 1, 15, 625, '62.50', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL),
(7, 1, 14, 583, '58.30', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL),
(8, 1, 12, 500, '50.00', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL),
(9, 1, 10, 417, '41.70', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL),
(10, 1, 9, 375, '37.50', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL),
(11, 1, 8, 333, '33.30', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL),
(12, 1, 6, 250, '25.00', 1, 1, NULL, NULL, '2022-04-20 08:35:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gold_rates`
--

CREATE TABLE `gold_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `current_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `current_date` date DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gold_rates`
--

INSERT INTO `gold_rates` (`id`, `group_id`, `current_rate`, `current_date`, `notes`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2511.00', '2022-03-30', 'notes', 1, 1, 1, NULL, '2022-03-30 01:46:32', '2022-04-04 07:20:53', NULL),
(3, 1, '23120.00', '2022-03-21', 'test', 1, 1, 1, NULL, '2022-04-04 07:12:20', '2022-04-04 07:14:44', '2022-03-30 01:46:32'),
(4, 4, '2000.00', '2022-04-08', 'test', 1, 1, 1, NULL, '2022-04-05 00:53:54', '2022-04-11 02:01:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Gold', 1, 1, 1, NULL, '2022-03-29 12:19:16', '2022-04-04 23:54:40', NULL),
(2, 'Diamond', 1, 1, 1, NULL, '2022-03-29 22:58:53', '2022-04-05 01:12:40', NULL),
(4, 'Silver', 0, 1, 1, NULL, '2022-04-04 01:37:52', '2022-04-08 09:12:59', NULL),
(6, 'Silver1', 1, 1, NULL, NULL, '2022-04-26 02:07:14', '2022-04-26 02:07:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interest_rates`
--

CREATE TABLE `interest_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scheme_id` bigint(20) NOT NULL DEFAULT 2222,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest_value` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_rates`
--

INSERT INTO `interest_rates` (`id`, `scheme_id`, `from`, `to`, `type`, `interest_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 3, 1, 30, 'days', '12.00', '2022-03-30 05:58:30', '2022-03-30 05:58:30', NULL),
(4, 3, 31, 90, 'days', '13.00', '2022-03-30 06:13:38', '2022-03-30 06:13:38', NULL),
(5, 3, 91, 180, 'days', '14.00', '2022-03-30 06:15:32', '2022-03-30 06:15:32', NULL),
(6, 7, 1, 30, 'days', '12.00', '2022-03-30 06:16:23', '2022-03-30 06:16:23', NULL),
(7, 9, 1, 30, 'days', '12.00', '2022-03-30 06:18:32', '2022-03-30 06:18:32', NULL),
(8, 11, 1, 30, 'days', '12.00', '2022-03-30 06:23:04', '2022-03-30 06:23:04', NULL),
(9, 14, 1, 30, 'days', '12.00', '2022-03-30 06:25:10', '2022-03-30 06:25:10', NULL),
(10, 44, 1, 30, 'days', '13.00', '2022-04-06 06:54:53', '2022-04-06 06:54:53', NULL),
(13, 48, 1, 30, 'days', '13.00', '2022-04-06 06:59:48', '2022-04-06 06:59:48', NULL),
(14, 49, 31, 60, 'days', '14.00', '2022-04-06 07:02:00', '2022-04-06 07:02:00', NULL),
(15, 50, 31, 60, 'days', '14.00', '2022-04-06 07:05:21', '2022-04-06 07:05:21', NULL),
(17, 57, 31, 60, 'days', '14.00', '2022-04-06 07:15:57', '2022-04-06 07:15:57', NULL),
(19, 60, 31, 60, 'days', '14.00', '2022-04-06 07:20:51', '2022-04-06 07:20:51', NULL),
(20, 61, 31, 60, 'days', '14.00', '2022-04-06 07:22:04', '2022-04-06 07:22:04', NULL),
(21, 62, 31, 60, 'days', '14.00', '2022-04-06 07:23:39', '2022-04-06 07:23:39', NULL),
(22, 66, 1, 30, 'days', '13.00', '2022-04-06 07:38:16', '2022-04-06 07:38:16', NULL),
(23, 66, 31, 60, 'days', '14.00', '2022-04-06 07:38:16', '2022-04-06 07:38:16', NULL),
(24, 68, 1, 35, 'days', '23.00', '2022-04-06 07:42:12', '2022-04-06 07:42:12', NULL),
(25, 68, 36, 90, 'days', '24.00', '2022-04-06 07:42:12', '2022-04-06 07:42:12', NULL),
(26, 69, 1, 35, 'days', '23.00', '2022-04-06 07:43:29', '2022-04-06 07:43:29', NULL),
(27, 69, 36, 90, 'days', '24.00', '2022-04-06 07:43:29', '2022-04-06 07:43:29', NULL),
(28, 70, 1, 30, 'days', '13.00', '2022-04-06 07:45:18', '2022-04-06 07:45:18', NULL),
(29, 70, 36, 60, 'days', '14.00', '2022-04-06 07:45:18', '2022-04-06 07:45:18', NULL),
(30, 71, 1, 30, 'days', '13.00', '2022-04-06 07:46:40', '2022-04-06 07:46:40', NULL),
(31, 71, 31, 60, 'days', '14.00', '2022-04-06 07:46:40', '2022-04-06 07:46:40', NULL),
(32, 71, 91, 99, 'days', '25.00', '2022-04-06 07:46:40', '2022-04-06 07:46:40', NULL),
(33, 72, 1, 30, 'days', '13.00', '2022-04-06 07:49:12', '2022-04-06 07:49:12', NULL),
(34, 72, 31, 60, 'days', '14.00', '2022-04-06 07:49:12', '2022-04-06 07:49:12', NULL),
(35, 72, 90, 180, 'days', '25.00', '2022-04-06 07:49:12', '2022-04-06 07:49:12', NULL),
(36, 73, 90, 180, 'days', '25.00', '2022-04-06 07:51:13', '2022-04-06 07:51:13', NULL),
(37, 72, 1, 30, 'days', '13.00', '2022-04-07 02:00:04', '2022-04-07 02:00:04', NULL),
(38, 72, 31, 60, 'days', '14.00', '2022-04-07 02:00:04', '2022-04-07 02:00:04', NULL),
(39, 72, 90, 180, 'days', '25.00', '2022-04-07 02:00:04', '2022-04-07 02:00:04', NULL),
(40, 74, 1, 30, 'days', '13.00', '2022-04-07 02:00:37', '2022-04-07 02:00:37', NULL),
(59, 76, 1, 30, 'days', '13.00', '2022-04-07 03:16:31', '2022-04-07 05:23:26', '2022-04-07 05:23:26'),
(60, 76, 31, 60, 'days', '14.00', '2022-04-07 03:16:31', '2022-04-07 05:23:26', '2022-04-07 05:23:26'),
(61, 76, 61, 90, 'days', '15.00', '2022-04-07 03:16:31', '2022-04-07 05:23:26', '2022-04-07 05:23:26'),
(62, 76, 1, 30, 'days', '13.00', '2022-04-07 05:23:26', '2022-04-07 05:56:00', '2022-04-07 05:56:00'),
(63, 76, 31, 60, 'days', '14.00', '2022-04-07 05:23:26', '2022-04-07 05:56:00', '2022-04-07 05:56:00'),
(64, 76, 61, 90, 'days', '15.00', '2022-04-07 05:23:26', '2022-04-07 05:56:00', '2022-04-07 05:56:00'),
(65, 76, 1, 30, 'days', '13.00', '2022-04-07 05:56:00', '2022-04-07 05:57:48', '2022-04-07 05:57:48'),
(66, 76, 31, 60, 'days', '14.00', '2022-04-07 05:56:00', '2022-04-07 05:57:48', '2022-04-07 05:57:48'),
(67, 76, 61, 90, 'days', '15.00', '2022-04-07 05:56:00', '2022-04-07 05:57:48', '2022-04-07 05:57:48'),
(68, 76, 1, 30, 'days', '13.00', '2022-04-07 05:57:48', '2022-04-07 06:03:32', '2022-04-07 06:03:32'),
(69, 76, 31, 60, 'days', '14.00', '2022-04-07 05:57:48', '2022-04-07 06:03:32', '2022-04-07 06:03:32'),
(70, 76, 61, 90, 'days', '15.00', '2022-04-07 05:57:48', '2022-04-07 06:03:32', '2022-04-07 06:03:32'),
(71, 76, 1, 30, 'days', '13.00', '2022-04-07 06:03:32', '2022-04-07 06:04:08', '2022-04-07 06:04:08'),
(72, 76, 31, 60, 'days', '14.00', '2022-04-07 06:03:32', '2022-04-07 06:04:08', '2022-04-07 06:04:08'),
(73, 76, 61, 90, 'days', '15.00', '2022-04-07 06:03:32', '2022-04-07 06:04:08', '2022-04-07 06:04:08'),
(74, 76, 1, 30, 'days', '13.00', '2022-04-07 06:04:08', '2022-04-07 06:04:18', '2022-04-07 06:04:18'),
(75, 76, 31, 60, 'days', '14.00', '2022-04-07 06:04:08', '2022-04-07 06:04:18', '2022-04-07 06:04:18'),
(76, 76, 61, 90, 'days', '15.00', '2022-04-07 06:04:08', '2022-04-07 06:04:18', '2022-04-07 06:04:18'),
(77, 76, 1, 30, 'days', '13.00', '2022-04-07 06:04:18', '2022-04-07 06:04:34', '2022-04-07 06:04:34'),
(78, 76, 31, 60, 'days', '14.00', '2022-04-07 06:04:18', '2022-04-07 06:04:34', '2022-04-07 06:04:34'),
(79, 76, 61, 90, 'days', '15.00', '2022-04-07 06:04:18', '2022-04-07 06:04:34', '2022-04-07 06:04:34'),
(80, 76, 1, 30, 'days', '13.00', '2022-04-07 06:04:34', '2022-04-07 06:09:26', '2022-04-07 06:09:26'),
(81, 76, 31, 60, 'days', '14.00', '2022-04-07 06:04:34', '2022-04-07 06:09:26', '2022-04-07 06:09:26'),
(82, 76, 61, 90, 'days', '15.00', '2022-04-07 06:04:34', '2022-04-07 06:09:26', '2022-04-07 06:09:26'),
(83, 76, 1, 30, 'days', '13.00', '2022-04-07 06:09:26', '2022-04-07 06:11:44', '2022-04-07 06:11:44'),
(84, 76, 31, 60, 'days', '14.00', '2022-04-07 06:09:26', '2022-04-07 06:11:44', '2022-04-07 06:11:44'),
(85, 76, 61, 90, 'days', '15.00', '2022-04-07 06:09:26', '2022-04-07 06:11:44', '2022-04-07 06:11:44'),
(86, 76, 1, 30, 'days', '13.00', '2022-04-07 06:11:44', '2022-04-07 23:06:50', '2022-04-07 23:06:50'),
(87, 76, 31, 60, 'days', '14.00', '2022-04-07 06:11:44', '2022-04-07 23:06:50', '2022-04-07 23:06:50'),
(88, 76, 61, 90, 'days', '15.00', '2022-04-07 06:11:44', '2022-04-07 23:06:50', '2022-04-07 23:06:50'),
(89, 76, 1, 30, 'days', '13.00', '2022-04-07 23:06:50', '2022-04-08 06:23:41', '2022-04-08 06:23:41'),
(90, 76, 31, 60, 'days', '14.00', '2022-04-07 23:06:50', '2022-04-08 06:23:41', '2022-04-08 06:23:41'),
(91, 76, 61, 90, 'days', '15.00', '2022-04-07 23:06:50', '2022-04-08 06:23:41', '2022-04-08 06:23:41'),
(92, 76, 1, 30, 'days', '13.00', '2022-04-08 06:23:41', '2022-04-19 05:18:52', '2022-04-19 05:18:52'),
(93, 76, 1, 30, 'days', '13.00', '2022-04-19 05:18:52', '2022-04-19 05:45:47', '2022-04-19 05:45:47'),
(94, 76, 1, 30, 'days', '13.00', '2022-04-19 05:45:47', '2022-04-19 06:59:43', '2022-04-19 06:59:43'),
(95, 76, 1, 30, 'days', '13.00', '2022-04-19 06:59:43', '2022-04-19 06:59:43', NULL),
(96, 77, 1, 30, 'days', '18.00', '2022-04-25 07:15:07', '2022-04-25 07:15:07', NULL),
(97, 78, 1, 30, 'days', '18.00', '2022-04-25 07:27:32', '2022-04-25 07:27:32', NULL),
(98, 81, 1, 30, 'days', '18.00', '2022-04-25 07:32:31', '2022-04-25 07:32:31', NULL),
(99, 82, 1, 30, 'days', '18.00', '2022-04-25 07:35:02', '2022-04-25 07:36:25', '2022-04-25 07:36:25'),
(100, 82, 1, 30, 'days', '19.00', '2022-04-25 07:36:25', '2022-04-25 07:36:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interest_types`
--

CREATE TABLE `interest_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_types`
--

INSERT INTO `interest_types` (`id`, `name`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Daily', 1, NULL, NULL, '2022-03-30 06:21:24', NULL, NULL),
(2, 'Monthly', 1, NULL, NULL, '2022-03-30 06:21:24', NULL, NULL),
(3, 'Yearly', 1, NULL, NULL, '2022-03-30 06:21:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `group_id`, `name`, `item_code`, `description`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Chain', '0045', 'description1', 1, 1, 1, NULL, '2022-03-30 03:35:24', '2022-04-19 01:37:50', NULL),
(3, 3, 'Item3', '005', 'description', 0, 1, 1, NULL, '2022-03-30 03:53:54', '2022-04-05 03:33:01', '2022-04-05 03:33:01'),
(4, 2, 'tttrew', NULL, '12333', 1, 1, NULL, NULL, '2022-04-05 03:21:32', '2022-04-05 03:21:32', NULL),
(5, 5, 'tttrew', NULL, '12333', 1, 1, 1, NULL, '2022-04-05 03:23:17', '2022-04-05 03:32:35', '2022-04-05 03:32:35'),
(6, 2, 'tttrew', '000006', '12333', 1, 1, NULL, NULL, '2022-04-05 03:23:45', '2022-04-05 03:23:45', NULL),
(7, 0, '1', '000007', 'segment description', 1, 1, NULL, NULL, '2022-04-05 03:31:52', '2022-04-05 03:32:05', '2022-04-05 03:32:05'),
(8, 1, 'Ring', '000008', 'description', 1, 1, 1, NULL, '2022-04-05 05:39:34', '2022-04-19 01:37:30', NULL),
(9, 1, 'Bangle', '000009', 'description12', 1, 1, NULL, NULL, '2022-04-12 23:55:32', '2022-04-12 23:55:32', NULL),
(10, 1, 'necklace', '000010', 'test', 1, 1, NULL, NULL, '2022-04-26 02:08:46', '2022-04-26 02:08:46', NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_28_090551_create_groups_table', 1),
(6, '2022_03_28_090625_create_gold_rates_table', 1),
(7, '2022_03_28_090654_create_schemes_table', 1),
(8, '2022_03_28_091343_create_customers_table', 1),
(9, '2022_03_28_091523_create_branches_table', 1),
(10, '2022_03_28_091543_create_employees_table', 1),
(11, '2022_03_28_122552_create_interest_rates_table', 1),
(12, '2022_03_29_041751_create_gold_loans_table', 1),
(13, '2022_03_29_045122_create_gold_loan_items_table', 1),
(14, '2022_03_29_051624_create_items_table', 1),
(15, '2022_03_29_093813_create_designations_table', 1),
(16, '2022_03_29_093909_create_interest_types_table', 1),
(17, '2022_03_29_093940_create_payment_types_table', 1),
(18, '2022_03_29_101126_create_audits_table', 2),
(19, '2022_04_20_072701_create_gold_purities_table', 3);

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
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Interest', 1, NULL, NULL, '2022-03-30 06:23:14', NULL, NULL),
(2, 'EMI', 1, NULL, NULL, '2022-03-30 06:23:19', NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `schemes`
--

CREATE TABLE `schemes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scheme_type_id` bigint(20) NOT NULL,
  `group_ref_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `loan_basis` tinyint(4) NOT NULL,
  `calc_method` tinyint(4) NOT NULL,
  `pay_frequency` tinyint(4) DEFAULT 0,
  `compound_interest` tinyint(4) NOT NULL DEFAULT 0,
  `payment_in_advance` tinyint(4) NOT NULL DEFAULT 0,
  `loyal_point` tinyint(4) NOT NULL DEFAULT 0,
  `auto_round` int(9) NOT NULL DEFAULT 0,
  `round_to` decimal(5,2) NOT NULL DEFAULT 0.00,
  `round_mode` tinyint(4) NOT NULL DEFAULT 0,
  `preclosure_time` tinyint(4) DEFAULT 0,
  `penalty_type` tinyint(4) DEFAULT 0,
  `penalty` decimal(5,2) DEFAULT NULL,
  `payment_basis_on` tinyint(4) DEFAULT 0,
  `loan_period` int(9) DEFAULT NULL,
  `minimum_loan_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `maximum_loan_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `process_feestype` tinyint(4) NOT NULL DEFAULT 0,
  `processing_fees` decimal(8,2) NOT NULL DEFAULT 0.00,
  `lending_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `loan_approval` int(9) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscheme` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schemes`
--

INSERT INTO `schemes` (`id`, `scheme_type_id`, `group_ref_id`, `name`, `start_date`, `end_date`, `loan_basis`, `calc_method`, `pay_frequency`, `compound_interest`, `payment_in_advance`, `loyal_point`, `auto_round`, `round_to`, `round_mode`, `preclosure_time`, `penalty_type`, `penalty`, `payment_basis_on`, `loan_period`, `minimum_loan_amount`, `maximum_loan_amount`, `process_feestype`, `processing_fees`, `lending_rate`, `loan_approval`, `description`, `subscheme`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'Scheme1', '2022-03-21', '2022-03-23', 2, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '2510.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-29 23:14:34', '2022-03-29 23:14:34', NULL),
(2, 2, 1, 'Scheme2', '2022-03-21', '2022-03-23', 2, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-29 23:32:17', '2022-03-29 23:32:17', NULL),
(3, 2, 1, 'Scheme3', '2022-03-21', '2022-03-23', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-29 23:33:28', '2022-03-29 23:33:28', NULL),
(4, 2, 1, 'Scheme4', '2022-03-21', '2022-03-23', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-29 23:34:29', '2022-03-29 23:34:29', NULL),
(5, 2, 1, 'Scheme5', '2022-03-21', '2022-03-23', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-30 00:43:37', '2022-03-30 00:43:37', NULL),
(6, 2, 1, 'Scheme6', '2022-03-21', '2022-03-23', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-30 00:45:32', '2022-03-30 00:45:32', NULL),
(7, 2, 1, 'Scheme7', '2022-03-21', '2022-03-23', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-30 00:46:23', '2022-03-30 00:46:23', NULL),
(8, 2, 1, 'Scheme8', '2022-03-21', '2022-03-23', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-30 00:47:59', '2022-03-30 00:47:59', NULL),
(9, 2, 1, 'Scheme9', '2022-03-21', '2022-03-23', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-30 00:48:32', '2022-03-30 00:48:32', NULL),
(10, 2, 1, 'Scheme', '2022-03-21', '2022-03-23', 2, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-30 00:48:43', '2022-03-30 00:48:43', NULL),
(11, 2, 1, 'Scheme', '2022-03-21', '2022-03-23', 2, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-30 00:53:04', '2022-03-30 00:53:04', NULL),
(12, 2, 1, 'Scheme', '2022-03-21', '2022-03-23', 2, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 1, 1, NULL, NULL, '2022-03-30 00:53:20', '2022-03-30 00:53:20', NULL),
(14, 2, 1, 'Scheme', '2022-03-21', '2022-03-23', 2, 0, 0, 0, 1, 0, 0, '0.00', 0, 25, 1, '38.00', 1, 12, '10000.00', '100000.00', 0, '100.00', '80.00', 0, 'description', 0, 0, 1, 1, NULL, '2022-03-30 00:55:10', '2022-04-05 00:25:38', '2022-04-05 00:25:38'),
(44, 1, 0, 'schemename', '2022-04-06', '2022-04-16', 2, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '12.00', 0, 'des1233', 0, 1, 1, NULL, NULL, '2022-04-06 06:54:53', '2022-04-06 06:54:53', NULL),
(48, 1, 2, 'Testproduct', '2022-04-07', '2022-04-09', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'test122', 0, 1, 1, NULL, NULL, '2022-04-06 06:59:48', '2022-04-06 06:59:48', NULL),
(49, 1, 2, 'Coderz', '2022-04-06', '2022-04-23', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'twess', 0, 1, 1, NULL, NULL, '2022-04-06 07:02:00', '2022-04-06 07:02:00', NULL),
(50, 1, 1, 'Coderz1', '2022-04-07', '2022-04-19', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'test', 0, 1, 1, NULL, NULL, '2022-04-06 07:05:21', '2022-04-06 07:05:21', NULL),
(57, 1, 2, 'Coderz11', '2022-04-06', '2022-04-07', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, '23332', 0, 1, 1, NULL, NULL, '2022-04-06 07:15:57', '2022-04-06 07:15:57', NULL),
(60, 1, 2, 'Coderzq', '2022-04-06', '2022-04-07', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'qwee', 0, 1, 1, NULL, NULL, '2022-04-06 07:20:51', '2022-04-06 07:20:51', NULL),
(61, 1, 2, 'Coderz344', '2022-04-14', '2022-04-07', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, '4errr', 0, 1, 1, NULL, NULL, '2022-04-06 07:22:04', '2022-04-06 07:22:04', NULL),
(62, 1, 2, 'Coderz', '2022-04-06', '2022-04-07', 1, 0, 0, 0, 2, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'tesst', 0, 1, 1, NULL, NULL, '2022-04-06 07:23:39', '2022-04-06 07:23:39', NULL),
(66, 1, 2, 'Coderzo', '2022-04-06', '2022-04-07', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'ytru', 0, 1, 1, NULL, NULL, '2022-04-06 07:38:16', '2022-04-06 07:38:16', NULL),
(68, 1, 4, 'Coderz90', '2022-04-06', '2022-04-07', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'test', 0, 1, 1, NULL, NULL, '2022-04-06 07:42:12', '2022-04-06 07:42:12', NULL),
(69, 1, 4, 'Coderz90', '2022-04-06', '2022-04-07', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'test', 0, 1, 1, NULL, NULL, '2022-04-06 07:43:29', '2022-04-06 07:43:29', NULL),
(70, 1, 2, 'Coderz11', '2022-04-06', '2022-04-06', 2, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'ass', 0, 1, 1, NULL, NULL, '2022-04-06 07:45:18', '2022-04-06 07:45:18', NULL),
(71, 1, 2, 'Coderz11', '2022-04-06', '2022-04-06', 2, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'ass', 0, 1, 1, NULL, NULL, '2022-04-06 07:46:40', '2022-04-06 07:46:40', NULL),
(72, 1, 1, 'Coderz222', '2022-04-06', '2022-04-08', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'eerr', 0, 1, 1, NULL, NULL, '2022-04-06 07:49:12', '2022-04-06 07:49:12', NULL),
(73, 1, 1, 'Coderzqqq', '2022-04-06', '2022-04-07', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'qqqqq', 0, 1, 1, NULL, NULL, '2022-04-06 07:51:13', '2022-04-06 07:51:13', NULL),
(74, 1, 1, 'Coderz222', '2022-04-06', '2022-04-08', 1, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '80.00', 0, 'eerr', 0, 1, 1, 1, NULL, '2022-04-07 02:00:04', '2022-04-07 02:00:04', NULL),
(76, 1, 4, 'Coderz2k', '2022-04-06', '2022-04-08', 3, 0, 0, 0, 1, 0, 0, '0.00', 0, 12, 2, '2.00', 1, 24, '11222.00', '22222.00', 0, '12.00', '2000.00', 0, 'eerr', 0, 1, 1, 1, NULL, '2022-04-07 02:00:37', '2022-04-19 06:59:43', NULL),
(77, 1, 0, 'Scheme 1', '2022-04-06', '2022-04-27', 1, 1, 0, 1, 1, 0, 1, '0.00', 1, 20, 1, '10.00', 1, 365, '1000.00', '12000.00', 1, '0.00', '2000.00', 100, 'des', 0, 1, 1, NULL, NULL, '2022-04-25 07:15:07', '2022-04-25 07:15:07', NULL),
(78, 1, 0, 'Scheme 1', '2022-04-06', '2022-04-27', 1, 1, 0, 1, 1, 0, 1, '0.00', 1, 20, 1, '10.00', 1, 365, '1000.00', '12000.00', 1, '0.00', '2000.00', 100, 'des', 0, 1, 1, NULL, NULL, '2022-04-25 07:27:32', '2022-04-25 07:27:32', NULL),
(81, 1, 0, 'Scheme 1', '2022-04-06', '2022-04-27', 1, 1, 0, 1, 1, 0, 1, '0.00', 1, 20, 1, '10.00', 1, 365, '1000.00', '12000.00', 1, '0.00', '2000.00', 100, 'des', 0, 1, 1, NULL, NULL, '2022-04-25 07:32:31', '2022-04-25 07:32:31', NULL),
(82, 1, 1, 'Scheme 1', '2022-04-06', '2022-04-27', 1, 1, 0, 1, 1, 0, 1, '0.00', 1, 20, 1, '10.00', 1, 365, '1000.00', '12000.00', 1, '0.00', '2000.00', 100, 'des', 0, 0, 1, 1, NULL, '2022-04-25 07:35:02', '2022-04-26 02:23:52', NULL);

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
  `status` tinyint(4) DEFAULT 0,
  `view_permission` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `role_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `view_permission`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@coderzvision.com', NULL, '$2y$10$xqD3uxBu98gQobC6xCPgo..WmVUW6Mqoa.e15HAkX6a5g.gXBFkmi', 0, 'global', 0, 'OfXQY1ZxxMs8NZDZRjYhmaIGYqfjS1RjWqhKxShb8chrRVqgj51fDeXC9w2H', '2022-04-06 04:42:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branches_phno_unique` (`phno`),
  ADD UNIQUE KEY `branches_email_unique` (`email`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_no_unique` (`phone_no`) USING BTREE;

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_phno_unique` (`phno`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gold_loans`
--
ALTER TABLE `gold_loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gold_loan_items`
--
ALTER TABLE `gold_loan_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gold_loan_item_totals`
--
ALTER TABLE `gold_loan_item_totals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gold_loan_status_histories`
--
ALTER TABLE `gold_loan_status_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gold_purities`
--
ALTER TABLE `gold_purities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gold_rates`
--
ALTER TABLE `gold_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`);

--
-- Indexes for table `interest_rates`
--
ALTER TABLE `interest_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_types`
--
ALTER TABLE `interest_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `interest_types_name_unique` (`name`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
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
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_types_name_unique` (`name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `schemes`
--
ALTER TABLE `schemes`
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
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gold_loans`
--
ALTER TABLE `gold_loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gold_loan_items`
--
ALTER TABLE `gold_loan_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `gold_loan_item_totals`
--
ALTER TABLE `gold_loan_item_totals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gold_loan_status_histories`
--
ALTER TABLE `gold_loan_status_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gold_purities`
--
ALTER TABLE `gold_purities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gold_rates`
--
ALTER TABLE `gold_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `interest_rates`
--
ALTER TABLE `interest_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `interest_types`
--
ALTER TABLE `interest_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schemes`
--
ALTER TABLE `schemes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
