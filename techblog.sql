-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: mysql:3306
-- Thời gian đã tạo: Th5 19, 2022 lúc 03:27 PM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `techblog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00ae7289848ce91d87e982ea16c722d509ca5ff4e8d820aea8a13de96791e7c08b00cdf0aed6f2db', 1, 3, 'authToken', '[]', 0, '2022-03-20 16:30:56', '2022-03-20 16:30:56', '2022-09-20 16:30:56'),
('0b7ceb490e96db9e14c96d391525a639c5fb9b76aeaca4d8bb50ddab7d5c27ee10f46f31cf38ca9c', 1, 3, 'authToken', '[]', 0, '2022-03-20 10:48:09', '2022-03-20 10:48:09', '2022-09-20 10:48:09'),
('0dec92398f7891709df8e839c03ec34d66dc5f46a820954ed90cd3020f0becef7627355592534f5b', 1, 3, 'authToken', '[]', 0, '2022-03-19 19:13:25', '2022-03-19 19:13:25', '2023-03-19 19:13:25'),
('1b63ed3a076b09b83dc6cb547723913bd0a551494a30a8f08303f3dbf893d85293355d182a1a7c2d', 1, 3, 'authToken', '[]', 0, '2022-03-20 16:29:32', '2022-03-20 16:29:32', '2022-09-20 16:29:32'),
('1c673677fc2c6fbc3b969bee20844c3bda90e8085f7c8f7d7ad5c4915ee21b51258734806280c7d3', 1, 3, 'authToken', '[]', 0, '2022-03-27 11:08:18', '2022-03-27 11:08:18', '2022-09-27 11:08:18'),
('1ee875d4952fed0987076da2c4b02952800d22d56f12789b085c316acf608f8ad437aec6b8a3c144', 1, 3, 'authToken', '[]', 0, '2022-05-19 15:17:09', '2022-05-19 15:17:09', '2022-11-19 15:17:09'),
('301f1a303db28b93f11ff0c58e6c11b51fa58be3d4878e76f27e2fd6046171424a741256b5575a14', 1, 3, 'authToken', '[]', 0, '2022-03-19 19:09:30', '2022-03-19 19:09:30', '2023-03-19 19:09:30'),
('317347814728afb9c1856f9de61edcd5bcf2739ad558a24a01ec3b861ca30e4d8aca7127662195c8', 1, 3, 'authToken', '[]', 0, '2022-03-20 10:48:07', '2022-03-20 10:48:07', '2022-09-20 10:48:07'),
('3848c94b8cd54afa3db0b87f7b59082a6730283c0eb5696478a164c98a49a5e75176e1664ed13bcf', 1, 3, 'authToken', '[]', 0, '2022-03-21 13:39:19', '2022-03-21 13:39:19', '2022-09-21 13:39:19'),
('478d4fe7bacb8ca1a394445748722ec6c5ee853126d00ed6b8c2d4fc210c0d3085ca926b1e0fb945', 1, 3, 'authToken', '[]', 0, '2022-03-20 16:29:23', '2022-03-20 16:29:23', '2022-09-20 16:29:23'),
('492d9df8a17962f81ccfe8af86888311731fbd35ca16a8680d323520336de4e0c1368841187caa97', 1, 3, 'authToken', '[]', 0, '2022-03-27 14:25:47', '2022-03-27 14:25:47', '2022-09-27 14:25:47'),
('5053f915c34c26a14f0c8526d4c39d00c2bc742c943203d4173e6b8fd06ee72e83369f1d3124d91d', 1, 3, 'authToken', '[]', 0, '2022-03-20 16:31:05', '2022-03-20 16:31:05', '2022-09-20 16:31:05'),
('600cff5eafe488074b8a92c5528e3f1f82fca80b4a61aa0c3fb1d27ef3aa488789d11291630581e3', 1, 3, 'authToken', '[]', 0, '2022-03-20 16:33:37', '2022-03-20 16:33:37', '2022-09-20 16:33:37'),
('72d7297d2449008ada6e2bfeb7c21385eaa6e4e70e04fa807e2f7d76aed385489fb7b6dfb746bb98', 1, 3, 'authToken', '[]', 0, '2022-03-27 16:02:03', '2022-03-27 16:02:03', '2022-09-27 16:02:03'),
('74ce854e63ebd47b9b8399f5bf9e09886426ff3f72796b0f701a0ac0851aec5d398156adc23b0aaa', 1, 3, 'authToken', '[]', 0, '2022-03-20 16:29:31', '2022-03-20 16:29:31', '2022-09-20 16:29:31'),
('7502c371fbd3cfe6e28e0c69b40e22876a98f572cf32dd56230d91f6f9cab17b777d8e71ad89b119', 1, 3, 'authToken', '[]', 0, '2022-03-27 16:17:14', '2022-03-27 16:17:14', '2022-09-27 16:17:14'),
('7dffc18bbf1be93854007af562d48ae94b6cf07fb4fe61d4db7b01fb14cbfa82c3d7605e2ea50c25', 1, 3, 'authToken', '[]', 0, '2022-03-23 15:57:21', '2022-03-23 15:57:21', '2022-09-23 15:57:21'),
('841195345b32bc958621ac21f8326a0f4a086ed437c0703c25660ad7c5fd786390ac533b655603da', 1, 3, 'authToken', '[]', 0, '2022-03-20 10:48:40', '2022-03-20 10:48:40', '2022-09-20 10:48:40'),
('8c6425033803a294a1da7d22edd131d862339f96fba6fca274408c9c19c85eda3b530928bf43f249', 1, 3, 'authToken', '[]', 0, '2022-03-20 10:48:42', '2022-03-20 10:48:42', '2022-09-20 10:48:42'),
('97f120f8810950ef826f27c8f18c2df64bb4f0bbde8a5d50560c289e1fec20a061b6c9c48450a60b', 1, 3, 'authToken', '[]', 0, '2022-03-27 10:58:10', '2022-03-27 10:58:10', '2022-09-27 10:58:10'),
('981a87622758bc3470c8cfe513e41541922664dc44759d867fa7c6e3e68a3813250b7d5b0c3a50ce', 1, 3, 'authToken', '[]', 0, '2022-03-27 08:58:27', '2022-03-27 08:58:27', '2022-09-27 08:58:27'),
('a02e3531a75b24be4df4fac6f997ad36399892f194df0dc8da94a0ff38d8a3848f4e45a16dc4a01e', 1, 3, 'authToken', '[]', 0, '2022-03-20 10:48:08', '2022-03-20 10:48:08', '2022-09-20 10:48:08'),
('b65183256d008f51e18fd0cd58f6234bd85060b71af8a9c9fa93a042b71414138d28729ee08c1b73', 1, 3, 'authToken', '[]', 0, '2022-03-20 11:42:01', '2022-03-20 11:42:01', '2022-09-20 11:42:01'),
('b7b934268915363be806dceec86636d7fa803f4f0d4e7869a0a3b5b151f364c37bfebe8540b768f0', 1, 3, 'authToken', '[]', 0, '2022-03-27 16:11:47', '2022-03-27 16:11:47', '2022-09-27 16:11:47'),
('b7d6b8c97bc090131c6cb153f26dff3a8ab5d1fd837ff8751174514ebdbf16504a99af96b33511dd', 1, 3, 'authToken', '[]', 0, '2022-03-27 15:12:17', '2022-03-27 15:12:17', '2022-09-27 15:12:17'),
('bb6c82e88fd87ef0ea2ac8f9e0fc38dd5aee5b27ca1285b617ff8540cd11285db1dc02b735b964e6', 1, 3, 'authToken', '[]', 0, '2022-03-20 10:48:41', '2022-03-20 10:48:41', '2022-09-20 10:48:41'),
('c1aedffc3ee5adda93213a37e7c48d68f812669e0261133d14b95ec4ca4cab102597f6cf65122fe5', 1, 3, 'authToken', '[]', 0, '2022-03-27 11:04:44', '2022-03-27 11:04:44', '2022-09-27 11:04:44'),
('c69165534e5495747b9a8fa225556d6c96dcc355fe3f5c3aa092a42eb39afc45a014ed850970ac16', 1, 3, 'authToken', '[]', 0, '2022-03-27 16:02:35', '2022-03-27 16:02:35', '2022-09-27 16:02:35'),
('c6f15784a982b365fc2019312115f1ade830b981542821261c3a297f05053e36d16675aa83945b59', 1, 3, 'authToken', '[]', 0, '2022-03-27 08:57:14', '2022-03-27 08:57:14', '2022-09-27 08:57:14'),
('cc3f60fe88439a0b81d564a9d3d99c1454c1fb9044319d678ad75e0ec2ab17ac1d91fd39a9179fb1', 1, 3, 'authToken', '[]', 0, '2022-03-20 10:48:06', '2022-03-20 10:48:06', '2022-09-20 10:48:06'),
('d5438607befa4e0ffeda8598011f0e9a711c92ca51e57f569303555b37f4a9c5b30ae2236c84034a', 1, 3, 'authToken', '[]', 0, '2022-03-23 15:57:20', '2022-03-23 15:57:20', '2022-09-23 15:57:20'),
('dafec7d87870fd0b5cb7f8fd0e957b62843c928fb2114ca76cc9ef1b5edc5bd472b0719f6d01959c', 1, 3, 'authToken', '[]', 0, '2022-03-27 10:57:36', '2022-03-27 10:57:36', '2022-09-27 10:57:36'),
('fa89a804b4ab1018e307bdca921d3662a4732477407e9269e6ff107b5181718bb2a4ab0340622598', 1, 3, 'authToken', '[]', 0, '2022-03-23 15:56:30', '2022-03-23 15:56:30', '2022-09-23 15:56:30'),
('fbdc13b176b3baf4d871f1eb0b3d454eb23359e9330f8d4d30332e1124a4dbb17fe3f0a1f8f996eb', 1, 3, 'authToken', '[]', 0, '2022-03-20 16:29:32', '2022-03-20 16:29:32', '2022-09-20 16:29:32'),
('fe5361e05898aec70935b93437fa7568133af607da56de568c2661b1d76d9946f51904bb87207dd3', 1, 3, 'authToken', '[]', 0, '2022-03-20 16:31:06', '2022-03-20 16:31:06', '2022-09-20 16:31:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'T0p0ktFnz8ug4bNDW9oPdAw8FuwMvI9JrbiX9FuX', NULL, 'http://localhost', 1, 0, 0, '2022-03-19 15:55:48', '2022-03-19 15:55:48'),
(2, NULL, 'Laravel Password Grant Client', 'yDTlpXN6awRY8yOrZsoKEf9O2oGAVRMWF1jvqtco', 'users', 'http://localhost', 0, 1, 0, '2022-03-19 15:55:48', '2022-03-19 15:55:48'),
(3, NULL, 'Laravel Personal Access Client', 'OxxsvwY38vrgbHwuW9Xe4XAJhzuZ7KBQVk7cu88t', NULL, 'http://localhost', 1, 0, 0, '2022-03-19 18:58:13', '2022-03-19 18:58:13'),
(4, NULL, 'Laravel Password Grant Client', 'ztXrOFPIO7ksriap5RfMn7SHGCXk72MSJ2FBF4Lg', 'users', 'http://localhost', 0, 1, 0, '2022-03-19 18:58:13', '2022-03-19 18:58:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-03-19 15:55:48', '2022-03-19 15:55:48'),
(2, 3, '2022-03-19 18:58:13', '2022-03-19 18:58:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', 'a66891e26137fec04fbfcb006527c612defc57d68aaa89f4e6348e9c4785f461', '[\"*\"]', NULL, '2022-03-19 19:03:26', '2022-03-19 19:03:26'),
(2, 'App\\Models\\User', 1, 'authToken', 'd4ff12a36cb840b8979a7e89a1c12f4cfa857be942e65bae9c73b72dfbecb476', '[\"*\"]', NULL, '2022-03-19 19:06:00', '2022-03-19 19:06:00'),
(3, 'App\\Models\\User', 1, 'authToken', '7abffd30443b88d11709a5e4b3c95c1e07da3ee0ab42a8b6bb564883da486e0e', '[\"*\"]', NULL, '2022-03-19 19:06:01', '2022-03-19 19:06:01'),
(4, 'App\\Models\\User', 1, 'authToken', '484ce71084cebabf68fd975d549ca11cf7117362dc281173f7c1c900c5f35c05', '[\"*\"]', NULL, '2022-03-19 19:06:02', '2022-03-19 19:06:02'),
(5, 'App\\Models\\User', 1, 'authToken', '81de0167b5bb69a2276af54127a270cc44c3bf4bf3da1ff006ecc56443612952', '[\"*\"]', NULL, '2022-03-19 19:06:02', '2022-03-19 19:06:02'),
(6, 'App\\Models\\User', 1, 'authToken', '0f8f24a1f1f052ff03bac1fbb695f281a78eaf260d9a4e13a5cf73c83dca7c65', '[\"*\"]', NULL, '2022-03-19 19:08:08', '2022-03-19 19:08:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'https://gravatar.com/avatar/4c0aeb7f4f93157d6af7792bbf4ef0fa?s=400&d=robohash&r=x',
  `status` tinyint(1) DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'khai', 'abc@gmail.com', 'gfdsafád', 1, NULL, '$2a$10$VVO47GX84qBPyjgZgYIPF.lcAw9yR4DOeSueSTqYqu7smd33RqmCO', NULL, NULL, NULL),
(3, 'daskdjsak', 'absc@gmail.com', 'https://gravatar.com/avatar/4c0aeb7f4f93157d6af7792bbf4ef0fa?s=400&d=robohash&r=x', 1, NULL, 'abc', NULL, '2022-03-23 16:14:57', '2022-03-23 16:14:57'),
(6, 'daskdjsak', 'sda@gmail.com', 'https://gravatar.com/avatar/4c0aeb7f4f93157d6af7792bbf4ef0fa?s=400&d=robohash&r=x', 1, NULL, 'abc', NULL, '2022-03-23 16:16:23', '2022-03-23 16:16:23'),
(7, 'daskdjsak', 'sdd@gmail.com', 'https://gravatar.com/avatar/4c0aeb7f4f93157d6af7792bbf4ef0fa?s=400&d=robohash&r=x', 1, NULL, '$2y$10$FgLVBktNBxnKTV0WHJgJI.y2AhEi8UpuzgCfdkOJQo43g16LaNUK2', NULL, '2022-03-23 16:20:44', '2022-03-23 16:20:44'),
(9, 'daskdjsak', 'fdas@gmail.com', 'https://gravatar.com/avatar/4c0aeb7f4f93157d6af7792bbf4ef0fa?s=400&d=robohash&r=x', 1, NULL, '$2y$10$bZelujUbSCJMkcmqYfWoAOAz8tCQHI8/9BR7rBlkUhyvHLedPQ4Xa', NULL, '2022-03-24 14:08:28', '2022-03-24 14:08:28'),
(10, 'daskdjsak', 'dasdf@gmail.com', 'https://gravatar.com/avatar/4c0aeb7f4f93157d6af7792bbf4ef0fa?s=400&d=robohash&r=x', 1, NULL, '$2y$10$O3Tqi77Jj0jlIcQNYSMCvOlZYgnY9q/2f9r3KsTjBgZe4CT58vLC.', NULL, '2022-03-27 07:14:37', '2022-03-27 07:14:37'),
(11, 'dfasdfaf', 'asfdad', NULL, NULL, NULL, '$2y$10$OKWgGk28/HITHznP.qCvke.S5x4fdu.wRZHdPKJAGtRKwDSqEH1hq', NULL, '2022-03-27 07:48:13', '2022-03-27 07:48:13'),
(12, 'khailee', 'abcsd@mail.com', NULL, NULL, NULL, '$2y$10$xTblUrY6Y2sTMsdt7.RgKutNu.sMhwMCTNosuyZAHMvUQ1rQawRkS', NULL, '2022-03-27 07:52:23', '2022-03-27 07:52:23'),
(13, 'khailee', 'abcvdv@gmail.com', NULL, NULL, NULL, '$2y$10$XboquC3/Weln4.Xvg.6GAumcI4c4fcCT2vHmB8U3mBgNPlzjhVp/m', NULL, '2022-03-27 07:56:06', '2022-03-27 07:56:06'),
(14, 'sddkfdas', 'vbcavsb@gmail.comn', NULL, NULL, NULL, '$2y$10$GS72rRTsAVD4gpTj4oGM9uDXAdhlUq8WRU641oV9tH8r5lMbuotFu', NULL, '2022-03-27 08:52:31', '2022-03-27 08:52:31'),
(16, 'daskdjsak', 'gfdghg@gmail.com', NULL, NULL, NULL, '$2y$10$HrLKorb/3.ffh3MhoWwRhu9Xv4clhQo7jwpVpMDRB9bqfn805o39y', NULL, '2022-03-27 08:53:58', '2022-03-27 08:53:58'),
(17, 'hai', 'bla@gmail.com', 'https://gravatar.com/avatar/4c0aeb7f4f93157d6af7792bbf4ef0fa?s=400&d=robohash&r=x', NULL, NULL, '$2y$10$p76a4C5eWlf.13wtQHCO7uFfkNhXNug46H6qOGPaWV6fUAQZHiKc.', NULL, '2022-03-27 12:58:40', '2022-03-27 12:58:40'),
(18, 'hai', 'ds@gmail.com', 'https://gravatar.com/avatar/4c0aeb7f4f93157d6af7792bbf4ef0fa?s=400&d=robohash&r=x', NULL, NULL, '$2y$10$WjgENvbgSQRBNfUAAKVp0ePPsQJJMJA31A.D/IzAryVwaPf5xbbYi', NULL, '2022-03-27 12:58:46', '2022-03-27 12:58:46'),
(21, 'hai', 'dsafsda@gmail.com', 'avatars/iDLcM2kBZyQ8V7ijXz4A7ALGTMvvrJU4Fft6RFIt.jpg', NULL, NULL, '$2y$10$bHaSvyjCmmU1pgrddgXqIu2m4dwCSxOxtUfrQzpbM2mWIFdh.QsWG', NULL, '2022-03-27 12:59:17', '2022-03-27 12:59:17'),
(22, 'hai', 'erw@gmail.com', 'public/avatars/XOB7oRbeQlAzmhvvWfoIQrCdGJik1s89new3Swrg.jpg', NULL, NULL, '$2y$10$TucfrC7/sY/0W6hc0Vtd4uPrHDMLuyrlNDKI6ZuJrsAQl0pna.Ywa', NULL, '2022-03-27 13:02:31', '2022-03-27 13:02:31'),
(23, 'hai', 'asdfdsa@gmail.com', 'avatars/xZbMEqwPD88ETFh1C4xErUcRayZsOUkNz6LfBkvC.jpg', NULL, NULL, '$2y$10$ea/hpZ0UmgG51F25Xv4..exYRAhwq1tPdfow/QMzhvmZkTnG./.cy', NULL, '2022-03-27 13:17:03', '2022-03-27 13:17:03'),
(24, 'hai', 'aasdff@gmail.comdsdsaf', 'avatars/T8GzQ66R8uxogAtDMlZ4RgOAvzwSm40blTMeWG7l.jpg', NULL, NULL, '$2y$10$wZy3p9lggKaOCmVrdlgBsOtpTg.XHFpJybTiBDCRE7DXJ4MS5z2s.', NULL, '2022-03-27 13:19:00', '2022-03-27 13:19:00'),
(26, 'hai', 'aretwsdff@gmail.comdsdsaf', 'avatars/oCBwGT2FZtrm2id0DoLsgd6W4xHfCRTAeBFrOj6R.jpg', NULL, NULL, '$2y$10$826P0rrKhastX4fFwBrkROst6207IdGXoASLrP5J9RF.i8ZcXOcWe', NULL, '2022-03-27 13:51:38', '2022-03-27 13:51:38'),
(27, 'hai', 'sdfvcb@gmail.comdsdsaf', 'avatars/yPOFZjM2nKCDLI7mIHhmfIWROJgD7Got2iyvwATG.jpg', NULL, NULL, '$2y$10$Eemamj8lXEMTovlONU.Kp.A0Kt6RNMwoGIoUzTOXWFjlec0lYI51S', NULL, '2022-03-27 14:06:34', '2022-03-27 14:06:34'),
(29, 'hai', 'sdaf@gmail.comdsdsaf', 'avatars/TCRiUBPeDI68V4wf8PJovlxtpbOSJyr7WiSsve2U.jpg', NULL, NULL, '$2y$10$ZumBZbwHhjBFDgnnKz8nmOXrcNojkyX.cxzellGA0Bl74iPn1rMT.', NULL, '2022-03-27 14:57:47', '2022-03-27 14:57:47'),
(31, 'hai', 'sdaf@gmail.comdsdsaff', 'avatars/oqOB5z2Wi9BwZ7hhewuJ1Og4WIZNYGIgDNORkG2l.jpg', NULL, NULL, '$2y$10$felrvLIBScY.Q4OTbCXXg.kLAmD8b495umqoFpRGo1sM9jOKbrbcG', NULL, '2022-03-27 15:42:30', '2022-03-27 15:42:30'),
(32, 'ss', 's', 'avatars/CKooOxeb79IrASJA0s8QrGDmU19KepPtRg2aXPkC.jpg', NULL, NULL, '$2y$10$CT2vyxsYDj212g/YOuweAu.c4VEh/5IJdgmEj5jiYf2sr1J5NO.LO', NULL, '2022-03-27 15:46:40', '2022-03-27 15:46:40'),
(35, 'ss', 'ssdfa', 'avatars/YYc6ft16QxQxCEINvzedevFQNXaUTNaXsyEBS9zl.jpg', NULL, NULL, '$2y$10$RAgg/UIhxJ6I7ctkFmjgPOpS875EBhWiYhBBareiFKVRqT66KwY4m', NULL, '2022-03-27 15:51:50', '2022-03-27 15:51:50'),
(41, 'ss', 'sdg', 'avatars/4G05y05uOzxkiuwjdbTXNiqCAMNDAmq8dQz4Xfyf.jpg', NULL, NULL, '$2y$10$/bFnzs0LvZVFslNGENx68.mmx3W3jpvHsafspG8WylzTSqDbTSal6', NULL, '2022-03-27 16:04:54', '2022-03-27 16:04:54'),
(42, 'fasd', 'fdsa', 'avatars/sw5g3Lbwwigrfdxun6aHpA07wlK6A9HHBABLHvZW.jpg', NULL, NULL, '$2y$10$XVzzjp7wpP8XnRKVMRGvQeyqr2zvQ7.6PzHEGNmPJsQAGTbE0oshe', NULL, '2022-03-27 16:05:21', '2022-03-27 16:05:21'),
(43, 'adfs', 'dsaf', 'avatars/hbDN1R8LsxwuKGqdvLLxZqozAERhzln3Fk0daw0t.jpg', NULL, NULL, '$2y$10$ddEywlcflabWXQQkc9XL/uM776Kk/35oH7s9S8NGjwGWgFd0d5WVC', NULL, '2022-03-27 16:06:47', '2022-03-27 16:06:47'),
(44, 'dsafasfd', 'fasd', 'avatars/oUoxHdhEwznONY7UMYi8SVNoCl7bULZuEf2HhU6q.xlsx', NULL, NULL, '$2y$10$Mcl8a5fUD9du7yftgfX01.DNMV7CS/fD.wVxLzQkbfqI5//bticqy', NULL, '2022-03-27 16:11:56', '2022-03-27 16:11:56'),
(45, 'fgghdf', 'dfhg', 'avatars/DppR2T6ZFLsVj5qtCgvbQ9QrJRfdVMOyz0PtJw4G.xlsx', NULL, NULL, '$2y$10$.WPS.OSVOFSDKfIHrFKhN.zi/PBBuVzkpvxZjFi3hX56SlShAeEoK', NULL, '2022-03-27 16:14:06', '2022-03-27 16:14:06'),
(48, 'fgghdf', 'fsdadfhg', 'avatars/IBcL06HIDhuAdnXWFJLWRs4B3iQViX19pdO52cMR.xlsx', NULL, NULL, '$2y$10$89v85SLAUbvc53Zn9pexlOMX6GT3HPSLl4JsghkCako02MtZOOta.', NULL, '2022-03-27 16:14:44', '2022-03-27 16:14:44'),
(49, 'sfad', 'fsda', 'avatars/cknKUgiEDMiEGhZkOeMIxxifMT7YY2S37pRVC5OM.xlsx', NULL, NULL, '$2y$10$eqDGPc0nLAFKMODsjvRSRegWFyA9JtJ8sjLS3vPcxLcYWIErPEfFa', NULL, '2022-03-27 16:15:22', '2022-03-27 16:15:22'),
(50, 'fads', 'asdffsa', 'avatars/QbuaL1pBOcEgKEoziYoFX3a1faSIkybosSBVdfUC.xlsx', NULL, NULL, '$2y$10$mF88gkMV8o8rH7OFBloTIeOvifY5rlxaaJSxl0SoG5YMR0TSqf0ki', NULL, '2022-03-27 16:18:20', '2022-03-27 16:18:20'),
(51, 'fdasf', 'asdfasdfas', 'avatars/BZNCFQMKJphQvIlc11Ip24fTIqQVJ4Ojr0OKFT4h.json', NULL, NULL, '$2y$10$Vu1PXlYQcgFco.zrmQ.p6.yhXfRIpfSADlTdYYnTXE5HS4HkD8QK6', NULL, '2022-03-27 16:20:14', '2022-03-27 16:20:14'),
(52, 'sdfa', 'asdfasdasdf', 'avatars/Oq2F9ym5fEcp7zYGq9nhYFPsnqmzOntvkdTrqvVW.xml', NULL, NULL, '$2y$10$/GzFOCuw6jR9w2gbk2DQrOnpp4WM7XOHvd8sE.ipT7aBHxDZg82Pm', NULL, '2022-03-27 16:28:10', '2022-03-27 16:28:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
