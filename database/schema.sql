-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 08:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_maza_game_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-05-03 17:39:15', '2023-05-03 17:39:15'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-05-03 17:39:15', '2023-05-03 17:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 9, 'api_subject_id', 'text', 'Api Subject Id', 0, 1, 1, 1, 0, 1, '{}', 3),
(59, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(60, 9, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 0, 1, '{}', 5),
(61, 9, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 11, 'level', 'text', 'Nivel', 1, 1, 1, 1, 1, 1, '{}', 2),
(64, 11, 'description', 'rich_text_box', 'Pergunta', 1, 1, 1, 1, 1, 1, '{}', 3),
(65, 11, 'correct_answer', 'text', 'Resposta Correcta', 1, 1, 1, 1, 1, 1, '{}', 4),
(66, 11, 'wrong_answer_01', 'text', 'Resposta Errada 1', 1, 1, 1, 1, 1, 1, '{}', 5),
(67, 11, 'wrong_answer_02', 'text', 'Resposta Errada 2', 1, 1, 1, 1, 1, 1, '{}', 6),
(68, 11, 'wrong_answer_03', 'text', 'Resposta Errada 3', 1, 1, 1, 1, 1, 1, '{}', 7),
(69, 11, 'user_id', 'number', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(70, 11, 'from_exam_details', 'text', 'From Exam Details', 0, 1, 1, 1, 1, 1, '{}', 9),
(71, 11, 'subject_id', 'number', 'Subject Id', 1, 1, 1, 1, 1, 1, '{}', 10),
(72, 11, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 11),
(73, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(74, 11, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 13),
(75, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 0, '{}', 14),
(76, 11, 'question_belongsto_user_relationship', 'relationship', 'utilizador', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(77, 11, 'question_belongsto_subject_relationship', 'relationship', 'Disciplina', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Subject\",\"table\":\"subjects\",\"type\":\"belongsTo\",\"column\":\"subject_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(78, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(79, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 7),
(89, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 13, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 2),
(91, 13, 'client_id', 'text', 'Client Id', 1, 0, 0, 0, 0, 0, '{}', 3),
(92, 13, 'name', 'text', 'Nome', 0, 1, 1, 1, 1, 1, '{}', 4),
(93, 13, 'scopes', 'text', 'Scopes', 0, 0, 0, 0, 0, 0, '{}', 5),
(94, 13, 'revoked', 'text', 'Revoked', 1, 0, 0, 0, 0, 0, '{}', 6),
(95, 13, 'created_at', 'timestamp', 'Criado aos', 0, 1, 1, 0, 0, 0, '{}', 7),
(96, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(97, 13, 'expires_at', 'text', 'Expira aos', 0, 1, 1, 0, 0, 0, '{}', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Utilizador', 'Utilizadores', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-05-03 14:24:35', '2023-05-05 19:48:50'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-05-03 17:39:15', '2023-05-03 17:39:15'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(9, 'subjects', 'subjects', 'Subject', 'Subjects', 'voyager-study', 'App\\Models\\Subject', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"name\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-03 21:01:52', '2023-05-06 09:02:30'),
(11, 'questions', 'questions', 'Question', 'Questions', 'voyager-question', 'App\\Models\\Question', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"subject_id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-05 19:10:11', '2023-05-06 09:04:44'),
(13, 'oauth_access_tokens', 'oauth-access-tokens', 'Oauth Access Token', 'Oauth Access Tokens', 'voyager-key', 'App\\Models\\OauthAccessToken', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-05-06 15:22:18', '2023-05-06 15:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-05-03 14:24:35', '2023-05-03 14:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-05-03 14:24:35', '2023-05-03 14:24:35', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 18, 1, '2023-05-03 14:24:35', '2023-05-05 19:52:13', 'voyager.media.index', NULL),
(3, 1, 'Utilizador', '', '_self', 'voyager-person', '#000000', NULL, 4, '2023-05-03 14:24:35', '2023-05-05 19:54:44', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 5, '2023-05-03 14:24:35', '2023-05-06 15:33:03', 'voyager.roles.index', NULL),
(5, 1, 'Gerir Site', '', '_self', 'voyager-tools', '#000000', NULL, 7, '2023-05-03 14:24:35', '2023-05-06 15:32:47', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 2, '2023-05-03 14:24:35', '2023-05-05 19:53:59', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 3, '2023-05-03 14:24:35', '2023-05-05 19:53:59', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 4, '2023-05-03 14:24:35', '2023-05-06 15:32:47', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 5, '2023-05-03 14:24:35', '2023-05-06 15:32:47', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 1, '2023-05-03 14:24:35', '2023-05-05 19:53:59', 'voyager.settings.index', NULL),
(11, 1, 'Categorias', '', '_self', 'voyager-categories', '#000000', NULL, 8, '2023-05-03 17:39:15', '2023-05-06 15:32:47', 'voyager.categories.index', 'null'),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 18, 2, '2023-05-03 17:39:16', '2023-05-05 19:52:40', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 18, 3, '2023-05-03 17:39:16', '2023-05-05 19:52:40', 'voyager.pages.index', NULL),
(16, 1, 'Disciplinas', '', '_self', 'voyager-study', '#000000', NULL, 2, '2023-05-03 21:01:52', '2023-05-05 19:55:43', 'voyager.subjects.index', 'null'),
(17, 1, 'Perguntas', '', '_self', 'voyager-question', '#000000', NULL, 3, '2023-05-05 19:10:11', '2023-05-05 19:55:56', 'voyager.questions.index', 'null'),
(18, 1, 'Outros Dados', '', '_self', 'voyager-list', '#000000', NULL, 6, '2023-05-05 19:51:25', '2023-05-06 15:33:03', NULL, ''),
(20, 1, 'Oauth Access Tokens', '', '_self', 'voyager-key', '#000000', NULL, 9, '2023-05-06 15:22:18', '2023-05-06 15:32:47', 'voyager.oauth-access-tokens.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(30, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(31, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(32, '2016_06_01_000004_create_oauth_clients_table', 3),
(33, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1fcc03cbdc607aaae1c675765238b07f9c336dd258ac26dc1ab14a4b55b46223d9aa5f7a9d860ade', 1, 3, 'Meu Token', '[]', 0, '2023-05-07 09:08:37', '2023-05-07 09:08:37', '2024-05-07 11:08:37'),
('24134e2513978ac6719e2ab19eac5b707d9c4d1b10f70376f791c797dbd3adfc67853da223bf206f', 1, 3, 'Manuela da Chadreque', '[]', 0, '2023-05-08 14:45:28', '2023-05-08 14:45:28', '2024-05-08 16:45:28'),
('278d8705e3d93c1d3a14a07c06e1063e495703ac2ee2540a3db05a4423106fde2755cca0f62fbd77', 1, 3, 'Meu Token', '[]', 0, '2023-05-07 08:55:47', '2023-05-07 08:55:47', '2024-05-07 10:55:47'),
('4064564a584ae6e5b70d2cd7aa741ea0b159b4d98c22f8605a4d96cbeadaa46a8d1a76e495df1902', 1, 3, 'Meu Token', '[]', 0, '2023-05-07 08:59:04', '2023-05-07 08:59:04', '2024-05-07 10:59:04'),
('4f1962bd785aaeff26757b5a159c1d079d5a1b28b98b55c7551096094c011055ff2bf2e5fcd28492', 1, 3, 'Manuela da Chadreque', '[]', 0, '2023-05-08 16:26:15', '2023-05-08 16:26:15', '2024-05-08 18:26:15'),
('623fc19caf3212779e80cf552594cac6f3624b380b777b601931dda8c1ecfc65e6a2cd6c69336558', 1, 3, 'Meu Token', '[]', 0, '2023-05-07 08:57:55', '2023-05-07 08:57:55', '2024-05-07 10:57:55'),
('63c94355935bb3f114dea600a94c18fbd1ad5d5906b978a0bd387c95932575e63f2407e353f0f5b1', 1, 3, 'Manuela da Chadreque', '[]', 0, '2023-05-08 14:45:31', '2023-05-08 14:45:31', '2024-05-08 16:45:31'),
('814031bd50415c6ac3ac6802b343f9e4297f0e967c48d41874c4e81c1de855d1f2ce0d8eb309cff0', 1, 3, 'Meu Token', '[]', 0, '2023-05-07 08:29:09', '2023-05-07 08:29:09', '2024-05-07 10:29:09'),
('9c78c6b871b713ff00551bd9250dd1989a5696d27f999aa374383fd83a3952063732db68ed402d41', 1, 3, 'Manuela da Chadreque TOKEN', '[]', 0, '2023-05-08 11:45:52', '2023-05-08 11:45:52', '2024-05-08 13:45:52'),
('ad415fdc149bdf3641dbc82067a4d8e5d51fb9544230ffd65ef7e3e27c2d9c6bd24ecf04f7839054', 1, 3, 'Manu Admin\'s Token', '[]', 0, '2023-05-06 12:20:33', '2023-05-06 12:20:33', '2024-05-06 14:20:33'),
('aeddc2614e119edaade90ef1d1f09e656d790b5d306b00d77ea7eb899049fe73934700d6b0aade89', 1, 3, 'Manu Admin\'s Token', '[]', 0, '2023-05-06 14:26:15', '2023-05-06 14:26:15', '2024-05-06 16:26:15'),
('c64cabc642078079fe56447709838c6873d41fc8b1d60c5a685b22cf3884237284778af9cf58f54f', 1, 3, 'Meu Token', '[]', 0, '2023-05-07 08:58:03', '2023-05-07 08:58:03', '2024-05-07 10:58:03'),
('c68649f756ab0a68874aebe16a7803c00a2161a386a5cec43c20076440c1852f7804f8e1a060bcb7', 1, 3, 'Meu Token', '[]', 0, '2023-05-07 09:09:36', '2023-05-07 09:09:36', '2024-05-07 11:09:36'),
('c90bac2220d85b03781f9c0f63a4b35902fc69a4607cc04b7d69d10d8dae62b63121fbc26a7a3f3a', 1, 3, 'Meu Token', '[]', 0, '2023-05-07 08:58:52', '2023-05-07 08:58:52', '2024-05-07 10:58:52'),
('f12af6e3c24d1359bd792ff647c78617b4eeaee4982b5b8d110a0acdad7dcf8f267aca5adbe6495e', 1, 3, 'Manuela da Chadreque', '[]', 0, '2023-05-08 15:59:14', '2023-05-08 15:59:14', '2024-05-08 17:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'eMazaGame Server Personal Access Client', 'lT44DrFPWsyTZhAkJ4F3IxI6PHqfOo0ljDuMkLML', NULL, 'http://localhost', 1, 0, 0, '2023-05-06 11:54:14', '2023-05-06 11:54:14'),
(2, NULL, 'eMazaGame Server Password Grant Client', 'LCTB5bK3qHFNjQoJXXokv2j1Ob0TwUOvKGMhkBvA', 'users', 'http://localhost', 0, 1, 0, '2023-05-06 11:54:14', '2023-05-06 11:54:14'),
(3, NULL, 'eMazaGame Server Personal Access Client', 'LcBJOB0JQiEe25Mm7DmcGo3qiAZ5GcllEFNJzBhh', NULL, 'http://localhost', 1, 0, 0, '2023-05-06 11:57:51', '2023-05-06 11:57:51'),
(4, NULL, 'eMazaGame Server Password Grant Client', '1vguIPe9M57S4CNy6i2qGXZK1xHwAGTFmEt0IaqT', 'users', 'http://localhost', 0, 1, 0, '2023-05-06 11:57:51', '2023-05-06 11:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-05-06 11:54:14', '2023-05-06 11:54:14'),
(2, 3, '2023-05-06 11:57:51', '2023-05-06 11:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-05-03 17:39:16', '2023-05-03 17:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(2, 'browse_bread', NULL, '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(3, 'browse_database', NULL, '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(4, 'browse_media', NULL, '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(5, 'browse_compass', NULL, '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(6, 'browse_menus', 'menus', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(7, 'read_menus', 'menus', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(8, 'edit_menus', 'menus', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(9, 'add_menus', 'menus', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(10, 'delete_menus', 'menus', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(11, 'browse_roles', 'roles', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(12, 'read_roles', 'roles', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(13, 'edit_roles', 'roles', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(14, 'add_roles', 'roles', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(15, 'delete_roles', 'roles', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(16, 'browse_users', 'users', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(17, 'read_users', 'users', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(18, 'edit_users', 'users', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(19, 'add_users', 'users', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(20, 'delete_users', 'users', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(21, 'browse_settings', 'settings', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(22, 'read_settings', 'settings', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(23, 'edit_settings', 'settings', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(24, 'add_settings', 'settings', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(25, 'delete_settings', 'settings', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(26, 'browse_categories', 'categories', '2023-05-03 17:39:15', '2023-05-03 17:39:15'),
(27, 'read_categories', 'categories', '2023-05-03 17:39:15', '2023-05-03 17:39:15'),
(28, 'edit_categories', 'categories', '2023-05-03 17:39:15', '2023-05-03 17:39:15'),
(29, 'add_categories', 'categories', '2023-05-03 17:39:15', '2023-05-03 17:39:15'),
(30, 'delete_categories', 'categories', '2023-05-03 17:39:15', '2023-05-03 17:39:15'),
(31, 'browse_posts', 'posts', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(32, 'read_posts', 'posts', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(33, 'edit_posts', 'posts', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(34, 'add_posts', 'posts', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(35, 'delete_posts', 'posts', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(36, 'browse_pages', 'pages', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(37, 'read_pages', 'pages', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(38, 'edit_pages', 'pages', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(39, 'add_pages', 'pages', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(40, 'delete_pages', 'pages', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(51, 'browse_subjects', 'subjects', '2023-05-03 21:01:52', '2023-05-03 21:01:52'),
(52, 'read_subjects', 'subjects', '2023-05-03 21:01:52', '2023-05-03 21:01:52'),
(53, 'edit_subjects', 'subjects', '2023-05-03 21:01:52', '2023-05-03 21:01:52'),
(54, 'add_subjects', 'subjects', '2023-05-03 21:01:52', '2023-05-03 21:01:52'),
(55, 'delete_subjects', 'subjects', '2023-05-03 21:01:52', '2023-05-03 21:01:52'),
(56, 'browse_questions', 'questions', '2023-05-05 19:10:11', '2023-05-05 19:10:11'),
(57, 'read_questions', 'questions', '2023-05-05 19:10:11', '2023-05-05 19:10:11'),
(58, 'edit_questions', 'questions', '2023-05-05 19:10:11', '2023-05-05 19:10:11'),
(59, 'add_questions', 'questions', '2023-05-05 19:10:11', '2023-05-05 19:10:11'),
(60, 'delete_questions', 'questions', '2023-05-05 19:10:11', '2023-05-05 19:10:11'),
(66, 'browse_oauth_access_tokens', 'oauth_access_tokens', '2023-05-06 15:22:18', '2023-05-06 15:22:18'),
(67, 'read_oauth_access_tokens', 'oauth_access_tokens', '2023-05-06 15:22:18', '2023-05-06 15:22:18'),
(68, 'edit_oauth_access_tokens', 'oauth_access_tokens', '2023-05-06 15:22:18', '2023-05-06 15:22:18'),
(69, 'add_oauth_access_tokens', 'oauth_access_tokens', '2023-05-06 15:22:18', '2023-05-06 15:22:18'),
(70, 'delete_oauth_access_tokens', 'oauth_access_tokens', '2023-05-06 15:22:18', '2023-05-06 15:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(66, 1),
(69, 1),
(70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Manu Admin\'s Token', 'c79485d19b53d314c8c854e4b0c4b45143089a95b10e45f80ad10aeaad1a66ea', '[\"*\"]', NULL, '2023-05-06 11:11:41', '2023-05-06 11:11:41'),
(2, 'App\\Models\\User', 1, 'Manu Admin\'s Token', 'cb193ba2786ae5428c61b48b568a5e9804d7173a229950d82a533a80af0feee4', '[\"*\"]', NULL, '2023-05-06 11:15:53', '2023-05-06 11:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-05-03 17:39:16', '2023-05-03 17:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL,
  `description` text NOT NULL,
  `correct_answer` varchar(150) NOT NULL,
  `wrong_answer_01` varchar(255) NOT NULL,
  `wrong_answer_02` varchar(255) NOT NULL,
  `wrong_answer_03` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `from_exam_details` varchar(150) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `level`, `description`, `correct_answer`, `wrong_answer_01`, `wrong_answer_02`, `wrong_answer_03`, `user_id`, `from_exam_details`, `subject_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '<p>O que e python? selectione a resposta mais correcta.</p>', 'Linguagem de programacao', 'linguagem de formatacao de texto', 'servidor', 'css', 2, NULL, 1, NULL, '2023-05-05 19:47:03', '2023-05-05 19:47:03', '2023-05-05 19:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(2, 'user', 'Normal User', '2023-05-03 14:24:35', '2023-05-03 14:24:35'),
(3, 'professor', 'professor', '2023-05-03 19:35:49', '2023-05-03 19:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\May2023\\sk7hfn4Asn8ssxk0az55.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'eMazaGame', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Bem vind a a area admininstrtiva do eMazaGame', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\May2023\\lqBSnfpHySqJeBze01eS.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\May2023\\YjunNWc2uAHVPT9Tz7iS.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `api_subject_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `api_subject_id`, `created_at`, `updated_at`, `user_id`, `deleted_at`) VALUES
(4, 'Python', NULL, '2023-05-06 09:03:43', '2023-05-06 09:03:43', NULL, NULL),
(5, 'HPH', NULL, '2023-05-06 09:05:02', '2023-05-06 09:05:02', NULL, NULL),
(6, 'Laravel', NULL, '2023-05-06 09:05:10', '2023-05-06 09:05:10', NULL, NULL),
(7, 'Matematica', NULL, '2023-05-06 09:05:19', '2023-05-06 09:05:19', NULL, NULL),
(8, 'Scala', NULL, '2023-05-06 09:05:28', '2023-05-06 09:05:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test1` int(11) NOT NULL,
  `test4` int(11) NOT NULL,
  `tes2` int(11) NOT NULL,
  `tes3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-05-03 17:39:16', '2023-05-03 17:39:16'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-05-03 17:39:16', '2023-05-03 17:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Manu Admin', 'admin@admin.com', 'users\\May2023\\6rAUjJZDADAKzth1mgem.webp', NULL, '$2y$10$hOAOAg7M0F595fFRi91fFOI37TWR9sXeynLlDtwFNXi2eOVeMbTQG', 'w12HEV3Vej4hu58K2sDFRi7mVgrArjvqIFOdEQJoBYlA6M0zpev8omZQma1z', '{\"locale\":\"pt\"}', '2023-05-03 17:39:15', '2023-05-03 18:42:07'),
(2, 3, 'stello', 'stello0902@gmail.com', 'users/default.png', NULL, '$2y$10$et4ISNrIaK5W7aLiVV.DSetUR1/Iu16ljsZ3VLjhgvuSTPC2eStu2', 'q5tmn6xxuHnu2RdAVBzTlWtDTolS0SeU1VjrEMY5adZR9qc1pGhYv3SNFLOw', '{\"locale\":\"pt\"}', '2023-05-03 19:36:59', '2023-05-03 19:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
