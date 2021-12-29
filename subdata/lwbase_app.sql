-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql:3306
-- 生成日時: 2021 年 12 月 29 日 08:49
-- サーバのバージョン： 8.0.27
-- PHP のバージョン: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `lwbase_app`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- テーブルのデータのダンプ `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress コメントの投稿者', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-12-29 15:27:40', '2021-12-29 06:27:40', 'こんにちは、これはコメントです。\nコメントの承認、編集、削除を始めるにはダッシュボードの「コメント画面」にアクセスしてください。\nコメントのアバターは「<a href=\"https://gravatar.com\">Gravatar</a>」から取得されます。', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- テーブルのデータのダンプ `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:7350/ac', 'yes'),
(2, 'home', 'http://localhost:7350/ac', 'yes'),
(3, 'blogname', 'lwbase', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'user@example.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y年n月j日', 'yes'),
(24, 'time_format', 'g:i A', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日 g:i A', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Asia/Tokyo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1656311259', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'WPLANG', 'ja', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:157:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>最近の投稿</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>最近のコメント</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:153:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>アーカイブ</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:155:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>カテゴリー</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1640770192;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1640802592;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1640845791;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640846187;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640846188;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:48:\"HTTPS のリクエストに失敗しました。\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.8.2.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1640759394;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1640759396;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:13:\"bogo/bogo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:18:\"w.org/plugins/bogo\";s:4:\"slug\";s:4:\"bogo\";s:6:\"plugin\";s:13:\"bogo/bogo.php\";s:11:\"new_version\";s:5:\"3.5.3\";s:3:\"url\";s:35:\"https://wordpress.org/plugins/bogo/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/bogo.3.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:57:\"https://ps.w.org/bogo/assets/icon-256x256.png?rev=1047282\";s:2:\"1x\";s:57:\"https://ps.w.org/bogo/assets/icon-128x128.png?rev=1047282\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/bogo/assets/banner-1544x500.jpg?rev=908124\";s:2:\"1x\";s:58:\"https://ps.w.org/bogo/assets/banner-772x250.jpg?rev=908124\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:35:\"classic-widgets/classic-widgets.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/classic-widgets\";s:4:\"slug\";s:15:\"classic-widgets\";s:6:\"plugin\";s:35:\"classic-widgets/classic-widgets.php\";s:11:\"new_version\";s:3:\"0.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/classic-widgets/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/classic-widgets.0.2.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/classic-widgets.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:21:\"crazy-bone/plugin.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/crazy-bone\";s:4:\"slug\";s:10:\"crazy-bone\";s:6:\"plugin\";s:21:\"crazy-bone/plugin.php\";s:11:\"new_version\";s:5:\"0.6.0\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/crazy-bone/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/crazy-bone.0.6.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/crazy-bone_969696.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/crazy-bone/assets/banner-772x250.png?rev=714215\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:63:\"www-xml-sitemap-generator-org/www-xml-sitemap-generator-org.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:43:\"w.org/plugins/www-xml-sitemap-generator-org\";s:4:\"slug\";s:29:\"www-xml-sitemap-generator-org\";s:6:\"plugin\";s:63:\"www-xml-sitemap-generator-org/www-xml-sitemap-generator-org.php\";s:11:\"new_version\";s:5:\"2.0.2\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/www-xml-sitemap-generator-org/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/www-xml-sitemap-generator-org.2.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/www-xml-sitemap-generator-org/assets/icon-256x256.jpg?rev=2470190\";s:2:\"1x\";s:82:\"https://ps.w.org/www-xml-sitemap-generator-org/assets/icon-128x128.jpg?rev=2470190\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/www-xml-sitemap-generator-org/assets/banner-1544x500.jpg?rev=1207053\";s:2:\"1x\";s:84:\"https://ps.w.org/www-xml-sitemap-generator-org/assets/banner-772x250.jpg?rev=1207053\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"5.1.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.2.1\";s:13:\"bogo/bogo.php\";s:5:\"3.5.3\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:35:\"classic-widgets/classic-widgets.php\";s:3:\"0.2\";s:21:\"crazy-bone/plugin.php\";s:5:\"0.6.0\";s:63:\"www-xml-sitemap-generator-org/www-xml-sitemap-generator-org.php\";s:5:\"2.0.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1640759396;s:7:\"checked\";a:4:{i:208;s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(127, 'theme_mods_twentytwentyone', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(128, '_site_transient_timeout_browser_8ffec38781748c07c6d2e71b451e2e28', '1641364587', 'no'),
(129, '_site_transient_browser_8ffec38781748c07c6d2e71b451e2e28', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"96.0.4664.110\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_3959ae27c599b58e87e38d960e11312b', '1641364588', 'no'),
(131, '_site_transient_php_check_3959ae27c599b58e87e38d960e11312b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, '_site_transient_timeout_community-events-07ab3374255e209a0c6f92b9a53f2653', '1640802990', 'no'),
(134, '_site_transient_community-events-07ab3374255e209a0c6f92b9a53f2653', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.27.0.0\";}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:131:\"八王子WordPressミートアップ2022/1月度「新春・WPおしゃべり会〜WPネタ1品持参でお越しください♪」\";s:3:\"url\";s:62:\"https://www.meetup.com/Tokyo-WordPress-Meetup/events/282877207\";s:6:\"meetup\";s:22:\"Tokyo WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Tokyo-WordPress-Meetup/\";s:4:\"date\";s:19:\"2022-01-08 14:00:00\";s:8:\"end_date\";s:19:\"2022-01-08 16:00:00\";s:20:\"start_unix_timestamp\";i:1641618000;s:18:\"end_unix_timestamp\";i:1641625200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"JP\";s:8:\"latitude\";d:35.67;s:9:\"longitude\";d:139.77;}}}}', 'no'),
(135, '_transient_timeout_feed_992efac292246ae35bf235a03417a202', '1640802991', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(136, '_transient_feed_992efac292246ae35bf235a03417a202', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"ブログ | WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://ja.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 日本語ローカルサイトブログ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 22 Dec 2021 10:09:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.9-beta4-52419\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.9 ベータ 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2021/12/22/wordpress-5-9-beta-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 22 Dec 2021 10:09:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6420\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:228:\"以下は、Jonathan Bossenger が書いた WordPress.org 公式ブログの記事「WordPress 5.9 Beta 4 」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせくだ [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"JOTAKI, Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6646:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/psykro/\">Jonathan Bossenger</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/12/wordpress-5-9-beta-4/\">WordPress 5.9 Beta 4 </a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.9 ベータ 4がテスト用に公開されました!</p>\n\n\n\n<p><strong>この WordPress ソフトウェアのバージョンは開発版です。</strong>このバージョンを本番サイトで実行することはお勧めしません。代わりに、テストサイトでの試用を検討してください。これにより新しいバージョンをテストすることができます。</p>\n\n\n\n<p>WordPress 5.9 ベータ 4をテストするには、次の3つの方法があります。</p>\n\n\n\n<p><strong>オプション1</strong>: <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインをインストールして有効化する (「Bleeding edge」チャンネルと「Beta/RC Only」ストリームを選択)。</p>\n\n\n\n<p><strong>オプション2</strong>: <a href=\"https://wordpress.org/wordpress-5.9-beta4.zip\">ベータ版をこちらから (zip)</a>直接ダウンロードする。</p>\n\n\n\n<p><strong>オプション3</strong>: 大文字小文字を区別しないファイルシステム上で WP-CLI を使用してベータ1からベータ2にアップグレードする場合は、以下の順でコマンドを実行してください。</p>\n\n\n\n<p>コマンド 1:</p>\n\n\n<div class=\"wp-block-syntaxhighlighter-code \"><pre class=\"brush: plain; title: ; notranslate\">\nwp core update --version=5.9-beta3\n</pre></div>\n\n\n<p>コマンド 2:</p>\n\n\n<div class=\"wp-block-syntaxhighlighter-code \"><pre class=\"brush: plain; title: ; notranslate\">\nwp core update --version=5.9-beta4 --force\n</pre></div>\n\n\n<p>いまのところ5.9の正式リリースは2022年1月25日を予定していて、それまであと僅か5週間です。皆さんのテストへのご協力は不可欠です。より多くのテストが行われれば行われるほど、リリースの安定性が高まり、ユーザーや開発者、そして WordPress コミュニティ全体にとってより良いエクスペリエンスになります。</p>\n\n\n\n<h2 id=\"ハイライト\">ハイライト</h2>\n\n\n\n<p><a href=\"https://wordpress.org/news/2021/12/wordpress-5-9-beta-3/\">ベータ3</a>以降、20件のバグが修正されました。ベータ4では、以下のような変更点があります。</p>\n\n\n\n<ul><li>付属テーマ: Twenty Twenty-One テーマの CSS ルールの重複を修正しました (<a href=\"https://core.trac.wordpress.org/ticket/53605\">#53605</a>)。</li><li>カスタマイザー: カスタマイザー内からブロックテーマに切り替えられるようになりました (<a href=\"https://core.trac.wordpress.org/ticket/54549\">#54549</a>)。</li><li>テーマ: WordPress 5.9 未満のバージョンでブロックテーマをプレビューしようとするユーザーへのガイダンスを提供するようにしました (<a href=\"https://core.trac.wordpress.org/ticket/54575\">#54575</a>)。</li><li>REST API: get_theme_item メソッドでフィールドパラメータに反しないようにしました (<a href=\"https://core.trac.wordpress.org/ticket/54595\">#54595</a>)。</li><li>エディター: ブロックパターン: インサーターに &#8220;Featured&#8221; カテゴリとパターンがない問題を修正しました (<a href=\"https://core.trac.wordpress.org/ticket/54623\">#54623</a>)。</li><li>ログインと登録: ログイン画面の言語ドロップダウンを無効にできるフィルターを追加しました– (#54675).</li></ul>\n\n\n\n<h2 id=\"ご協力いただけること\">ご協力いただけること</h2>\n\n\n\n<p><strong>テストをしてください !</strong></p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/handbook/testing/beta-testing/\">バグを見つけるためのテスト</a>は、ベータ版のリリースに磨きをかけるための不可欠な作業です。これはまた、WordPress に協力するための素晴らしい方法でもあります。&nbsp;</p>\n\n\n\n<p>バグを見つけた場合は、サポートフォーラムの <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta エリア</a>に投稿してください。再現可能な<a href=\"https://make.wordpress.org/core/reports/\">バグのレポート</a>が書ける方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac に報告</a>してください。<a href=\"https://core.trac.wordpress.org/tickets/major\">こちらでは既知のバグ</a>も確認できます。</p>\n\n\n\n<h2 id=\"質問がありますか-いくつかの答えはこちらに\">質問がありますか ? いくつかの答えはこちらに。</h2>\n\n\n\n<p>今後数週間、<a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>の情報に注目してください。これらの項目を詳細にカバーする<a href=\"https://make.wordpress.org/core/tag/5-9+dev-notes/\">5.9関連の開発者ノート</a>が公開されます。</p>\n\n\n\n<p>これまでのところ、貢献者の皆さんにより WordPress 5.9にて <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=5.9&amp;resolution=fixed\">326件のチケット修正と108件の新機能、機能強化が行われました</a>。テストを通じた皆さんのご協力により、さらに多くのバグ修正が予定されています。</p>\n\n\n\n<p>この投稿記事を手伝ってくれた <a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a>, <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/psykro/\" target=\"_blank\">@psykro</a>, <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/hellofromtonya/\" target=\"_blank\">@hellofromtonya</a>, <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/marybaum/\" target=\"_blank\">@marybaum</a>, <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/webcommsat/\" target=\"_blank\">@webcommsat</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">@audrasjb</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a>, <a href=\"https://profiles.wordpress.org/costdev/\">@costdev</a> そして <a href=\"https://profiles.wordpress.org/meher/\">@meher</a> に感謝します。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"State of the Word 2021 基調講演の日本語字幕動画とハイライト\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://ja.wordpress.org/2021/12/21/highlights-from-state-of-the-word-2021/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 21 Dec 2021 05:25:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6405\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:193:\"WordPress 共同創設者マット・マレンウェッグによる恒例の基調講演、 ”State of the Word 2021” が今年も行われました。動画と概要をお伝えします。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6646:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/matt/\"></a><a href=\"https://profiles.wordpress.org/chanthaboune/\"></a><a href=\"https://profiles.wordpress.org/cbringmann/\"></a><a href=\"https://profiles.wordpress.org/chanthaboune/\"></a><a href=\"https://profiles.wordpress.org/anjanavasan/\">Anjana Vasan</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\"></a><a href=\"https://wordpress.org/news/2020/03/adderley/\"></a><a href=\"https://wordpress.org/news/2021/02/welcome-to-your-wp-briefing/\"></a><a href=\"https://wordpress.org/news/2021/02/gutenberg-tutorial-reusable-blocks/\"></a><a href=\"https://wordpress.org/news/2021/12/highlights-from-state-of-the-word-2021/\"></a><a href=\"https://wordpress.org/news/2021/12/highlights-from-state-of-the-word-2021/\">Highlights from State of the Word 2021</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\n<iframe class=\"youtube-player\" width=\"612\" height=\"345\" src=\"https://www.youtube.com/embed/OpiH_P9aGhQ?version=3&#038;rel=1&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;fs=1&#038;hl=ja&#038;autohide=2&#038;cc_load_policy=1&#038;wmode=transparent\" allowfullscreen=\"true\" style=\"border:0;\" sandbox=\"allow-scripts allow-same-origin allow-popups allow-presentation\"></iframe>\n</div><figcaption>（字幕が英語の場合、歯車アイコンで日本語に切り替えられます）</figcaption></figure>\n\n\n\n<p>WordPress 共同創設者であるマット・マレンウェッグによる恒例の基調講演 ”State of the Word 2021” が、米国時間12月14日に行われました。このハイブリッド形式イベントは、ワクチン接種の証明を持った少数の観客を招いてニューヨーク市にて行われました。マット氏いわく、「飛行機、電車、車で来場した人がいた」とのことでした。また、ライブイベントまで足を運ばなかった方々も、世界各地からライブ配信を視聴しました。</p>\n\n\n\n<p>このイベントは WordPress コミュニティにとって心躍る時間であり、長らく開催されていなかった対面式の WordCamp がスペインのセビリアで開催されたことも、この場で祝福しました。</p>\n\n\n\n<p>WordPress.tv でも<a href=\"https://wordpress.tv/2021/12/15/matt-mullenweg-2021-state-of-the-word/\">録画をご覧いただけます</a> (訳注: 日本語字幕あり。<a href=\"https://amara.org/en/videos/ATuu7WWa8ESF/ja/3875347/\">字幕書き起こし<a href=\"https://amara.org/en/videos/ATuu7WWa8ESF/ja/3875347/\">テキスト</a>はこちら</a>)。</p>\n\n\n\n<p>多くの Meetup 勉強会主催者が世界中でこの基調講演のウォッチパーティーを開催しました。11カ国で26のウォッチパーティーが開催され、計300人以上の方が参加表明をしました。</p>\n\n\n\n<p><a href=\"https://wordpress.tv/tag/state-of-the-word/\">これまでの &#8220;State of the Word&#8221;</a> と同様、今年もマットは幅広いトピックをカバーしました。WordPress の過去、現在、そして未来にスポットライトを当て、コントリビューターの増加、翻訳、最近のリリースマイルストーン、教育イニシアチブなど、さまざまな話題を取り上げました。</p>\n\n\n\n<p>また、WordPress 5.9 の特徴であるフルサイト編集、ブロックパターン、グローバルスタイルオプション、画像コントロール強化などのデモを皆さんにご覧いただきました。</p>\n\n\n\n<p>マットはこの場を使って、多言語のネイティブサポートやリアルタイムな共同サイト編集など、WordPress のロードマップを再確認しました。また、新機能の開発やテスト、普及や教育など、さまざまな取り組みを通じて、誰もがWordPress の進歩に貢献できることにも注目を促しました。</p>\n\n\n\n<p>さらに、「WordPress のようなプログラムは、より多くの人が使えば使うほど良くなる」と、オープンソースソフトウェアが改良されていく方法を強調しました。</p>\n\n\n\n<p>エネルギッシュなプレゼンテーションの締めとして、Web3、企業の M&amp;A (吸収合併)、オープンソースソフトウェアの成長とサポートなど、幅広いトピックを取り上げました。</p>\n\n\n\n<p>マルチメディアを活用した1時間のプレゼンの後、マットはインタラクティブな<a href=\"https://wordpress.tv/2021/12/15/matt-mullenweg-state-of-the-word-2021-qa/\">質疑応答セッション</a>を行い、事前に寄せられた質問や、ライブストリームやスタジオの視聴者からの質問に答えました。</p>\n\n\n\n<p>イベントの模様は上記の公式録画でご覧いただけます。 また、Twitter で <a href=\"https://twitter.com/hashtag/ILoveWP\">#ILoveWP</a> タグを使ってストーリーを共有したり、<a href=\"https://twitter.com/hashtag/StateoftheWord\">#StateOfTheWord</a> でイベントの反応をチェックすることもできます。</p>\n\n\n\n<p>この記事のレビューと編集に協力してくれた&nbsp;<a href=\"https://profiles.wordpress.org/dansoschin/\">@dansoschin</a> さん、ありがとうございます。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>動画字幕の翻訳にご協力いただいた @miminari <a href=\'https://profiles.wordpress.org/atachibana/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>atachibana</a> <a href=\'https://profiles.wordpress.org/h84m/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>h84m</a> さん、どうもありがとうございました。</p>\n\n\n\n<p>字幕の間違いなどがあった場合は、<a href=\"https://ja.wordpress.org/support/article/slack/#%e6%89%8b%e9%a0%862-wordslack-%e6%97%a5%e6%9c%ac%e8%aa%9e%e7%89%88-%e3%81%ab%e7%99%bb%e9%8c%b2%e3%81%99%e3%82%8b\">WordSlack</a> の <a href=\"https://wpja.slack.com/archives/CRF0HNDS8\">#docs チャンネル</a>でお知らせください。<a href=\"https://amara.org/en/videos/ATuu7WWa8ESF/ja/3875347/\">Amara.org 上で直接編集もできます</a>が、修正を動画に反映するにはご連絡ください。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.9 ベータ 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2021/12/17/wordpress-5-9-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Dec 2021 08:22:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6393\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:228:\"以下は、Jonathan Bossenger が書いた WordPress.org 公式ブログの記事「WordPress 5.9 Beta 3 」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせくだ [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"JOTAKI, Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7334:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/psykro/\">Jonathan Bossenger</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/12/wordpress-5-9-beta-3/\">WordPress 5.9 Beta 3 </a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.9 ベータ 3がテスト用に公開されました!</p>\n\n\n\n<p><strong>この WordPress ソフトウェアのバージョンは開発版です。</strong>このバージョンを本番サイトで実行することはお勧めしません。代わりに、テストサイトでの試用を検討してください。これにより新しいバージョンをテストすることができます。</p>\n\n\n\n<p>WordPress 5.9 ベータ 3をテストするには、次の3つの方法があります。</p>\n\n\n\n<p><strong>オプション1</strong>: <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインをインストールして有効化する (「Bleeding edge」チャンネルと「Beta/RC Only」ストリームを選択)。</p>\n\n\n\n<p><strong>オプション2</strong>: <a href=\"https://wordpress.org/wordpress-5.9-beta3.zip\">ベータ版をこちらから (zip)</a>直接ダウンロードする。</p>\n\n\n\n<p><strong>オプション3</strong>: 大文字小文字を区別しないファイルシステム上で WP-CLI を使用してベータ1からベータ2にアップグレードする場合は、以下の順でコマンドを実行してください。</p>\n\n\n\n<p>コマンド 1:</p>\n\n\n<div class=\"wp-block-syntaxhighlighter-code \"><pre class=\"brush: plain; title: ; notranslate\">\nwp core update --version=5.9-beta2\n</pre></div>\n\n\n<p>コマンド 2:</p>\n\n\n<div class=\"wp-block-syntaxhighlighter-code \"><pre class=\"brush: plain; title: ; notranslate\">\nwp core update --version=5.9-beta3 --force\n</pre></div>\n\n\n<p>いまのところ5.9の正式リリースは2022年1月25日を予定していて、刻一刻と近づいています。皆さんのテストへのご協力は不可欠です。より多くのテストが行われれば行われるほど、リリースの安定性が高まり、ユーザーや開発者、そして WordPress コミュニティ全体にとってより良いエクスペリエンスになります。</p>\n\n\n\n<h2 id=\"ハイライト\">ハイライト</h2>\n\n\n\n<p><a href=\"https://wordpress.org/news/2021/12/wordpress-5-9-beta-2/\">ベータ2</a>以降、<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=12%2F08%2F2021..12%2F14%2F2021&amp;milestone=5.9&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">24</a>件のバグが修正されました。ベータ3では、以下のような変更点があります。</p>\n\n\n\n<ul><li>エディター: FSE インフラを Gutenberg プラグインからコアに追加しました。(<a href=\"https://core.trac.wordpress.org/ticket/54335\">#54335</a>)</li><li>書式設定: PDF をオブジェクトとして埋め込むことができるようになりました。 (<a href=\"https://core.trac.wordpress.org/ticket/54261\">#54261</a>)</li><li>ログイン画面での言語切り替え。 (<a href=\"https://core.trac.wordpress.org/ticket/43700\">#43700</a>)</li><li>REST API: Gutenberg プラグインからナビゲーションエリアの REST API エンドポイントを追加しました。 (<a href=\"https://core.trac.wordpress.org/ticket/54393\">#54393</a>)</li><li>テーマ: ライブプレビューボタンのバグ (<a href=\"https://core.trac.wordpress.org/ticket/54578\">#54578</a>)</li></ul>\n\n\n\n<h2 id=\"ご協力いただけること\">ご協力いただけること</h2>\n\n\n\n<p><strong>テストをしてください !</strong></p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/handbook/testing/beta-testing/\">バグを見つけるためのテスト</a>は、ベータ版のリリースに磨きをかけるための不可欠な作業です。これはまた、WordPress に協力するための素晴らしい方法でもあります。&nbsp;</p>\n\n\n\n<p>バグを見つけた場合は、サポートフォーラムの <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta エリア</a>に投稿してください。再現可能な<a href=\"https://make.wordpress.org/core/reports/\">バグのレポート</a>が書ける方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac に報告</a>してください。<a href=\"https://core.trac.wordpress.org/tickets/major\">こちらでは既知のバグ</a>も確認できます。</p>\n\n\n\n<p>さらに詳しいテスト方法については<a href=\"https://make.wordpress.org/test/2021/11/30/help-test-wordpress-5-9-features/\"> @annezazu によるフルサイト編集に関する公式の投稿記事</a>を参照してください。</p>\n\n\n\n<h2 id=\"質問がありますか-いくつかの答えはこちらに\">質問がありますか ? いくつかの答えはこちらに。</h2>\n\n\n\n<p>今後数週間、<a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>の情報に注目してください。これらの項目を詳細にカバーする<a href=\"https://make.wordpress.org/core/tag/5-9+dev-notes/\">5.9関連の開発者ノート</a>が公開されます。これまでのところ、貢献者の皆さんにより <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=5.9&amp;resolution=fixed\">WordPress 5.9 にて316件のチケット</a>を修正しており、その中には<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;status=reopened&amp;changetime=..12%2F07%2F2021&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.9&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=status&amp;col=milestone&amp;col=changetime&amp;col=owner&amp;col=priority&amp;col=keywords&amp;order=changetime\">100の新機能や改良</a>も含まれています。テストを通じた皆さんのご協力により、さらに多くのバグ修正が予定されています。</p>\n\n\n\n<p><em><em>この投稿記事を手伝ってくれた</em><a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/chanthaboune/\" target=\"_blank\"> </a><a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/psykro/\" target=\"_blank\">@psykro</a>, <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/estelaris/\" target=\"_blank\">@estelaris</a>, <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/hellofromtonya/\" target=\"_blank\">@hellofromtonya</a>, <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/marybaum/\" target=\"_blank\">@marybaum</a>, <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/webcommsat/\" target=\"_blank\">@webcommsat</a>, <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/cbringmann/\" target=\"_blank\">@cbringmann</a>, @costdev,</em> <em>そして <a rel=\"noreferrer noopener\" href=\"https://profiles.wordpress.org/audrasjb/\" target=\"_blank\">@audrasjb</a></em> <em><em>に感謝します</em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.9 ベータ 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2021/12/11/wordpress-5-9-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 11 Dec 2021 06:55:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6382\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:230:\"以下は、Jonathan Bossenger が書いた WordPress.org 公式ブログの記事「WordPress 5.9 Beta 2」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせくださ [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"JOTAKI, Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7464:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/psykro/\">Jonathan Bossenger</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/12/wordpress-5-9-beta-2/\">WordPress 5.9 Beta 2</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.9 ベータ 2がテスト用に公開されました!</p>\n\n\n\n<p><strong>この WordPress ソフトウェアのバージョンは開発版です。</strong>このバージョンを本番サイトで実行することはお勧めしません。代わりに、テストサイトでの試用を検討してください。これにより新しいバージョンをテストすることができます。</p>\n\n\n\n<p>WordPress 5.9 ベータ 2をテストするには、次の3つの方法があります。</p>\n\n\n\n<p><strong>オプション1</strong>: <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインをインストールして有効化する (「Bleeding edge」チャンネルと「Beta/RC Only」ストリームを選択)。</p>\n\n\n\n<p><strong>オプション2</strong>: <a href=\"https://wordpress.org/wordpress-5.9-beta2.zip\">ベータ版をこちらから (zip)</a>直接ダウンロードする。</p>\n\n\n\n<p><strong>オプション3</strong>: 大文字小文字を区別しないファイルシステム上で WP-CLI を使用してベータ1からベータ2にアップグレードする場合は、以下の順でコマンドを実行してください。</p>\n\n\n\n<p>コマンド1:</p>\n\n\n<div class=\"wp-block-syntaxhighlighter-code \"><pre class=\"brush: plain; title: ; notranslate\">\nwp core update --version=5.9-beta1 \n</pre></div>\n\n\n<p>コマンド2:</p>\n\n\n<div class=\"wp-block-syntaxhighlighter-code \"><pre class=\"brush: plain; title: ; notranslate\">\n wp core update --version=5.9-beta2 --force \n</pre></div>\n\n\n<p>いまのところ5.9の正式リリースは2022年1月25日を予定していて、あと残り7週間です。このリリースを可能な限り良いものにするためには、皆さんのテストへのご協力が不可欠です。</p>\n\n\n\n<h2 id=\"ハイライト\">ハイライト</h2>\n\n\n\n<p><a href=\"https://wordpress.org/news/2021/11/wordpress-5-9-beta-1/\">ベータ1</a>以降、<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=11%2F30%2F2021..12%2F07%2F2021&amp;milestone=5.9&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">24</a>件のバグが修正されました。ベータ2では、以下のような変更点があります。</p>\n\n\n\n<ul><li>ブロックエディター: ナビゲーションエリアの削除 (<a href=\"https://core.trac.wordpress.org/ticket/54506\">#54506</a>)</li><li>ブロックエディター: ナビゲーションブロックビューの JavaScript エラー (<a href=\"https://core.trac.wordpress.org/ticket/54456\">#54456</a>)</li><li>ブロックエディター: 子テーマに関連するブロックテンプレートテーマのエラー (<a href=\"https://core.trac.wordpress.org/ticket/54515\">#54515</a>)</li><li>全般: サイトエディターが有効な場合にカスタマイザーへの既存のリンクの修正 (<a href=\"https://core.trac.wordpress.org/ticket/54460\">#54460</a>)</li><li>メディア: メディアライブラリが選択された画像のみを表示する (<a href=\"https://core.trac.wordpress.org/ticket/53765\">#53765</a>)</li><li>メディア: PHP8でのメディアのアップロード時の致命的エラー (<a href=\"https://core.trac.wordpress.org/ticket/54385\">#54385</a>)</li><li>REST API: グローバルスタイル REST API エンドポイントを Gutenberg から Core に追加 (<a href=\"https://core.trac.wordpress.org/ticket/54336\">#54336</a>)</li></ul>\n\n\n\n<p>また、5.9ベータ1をテストしている一部のユーザーがアップグレード時にいくつかの致命的なエラーに直面したことに注意してください。そして、これらのエラーはファイルシステムとアップグレードツールに特別な作業が必要であることを明らかにしました。これらの致命的エラーの問題はなくなりましたが、この件に関する改良はバージョン6.0の一部となる予定です。</p>\n\n\n\n<h2 id=\"ご協力いただけること\">ご協力いただけること</h2>\n\n\n\n<p><strong>テストをしてください !</strong></p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/handbook/testing/beta-testing/\">バグを見つけるためのテスト</a>は、ベータ版のリリースに磨きをかけるための不可欠な作業です。これはまた、WordPress に協力するための素晴らしい方法でもあります。&nbsp;</p>\n\n\n\n<p>バグを見つけた場合は、サポートフォーラムの <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta エリア</a>に投稿してください。再現可能な<a href=\"https://make.wordpress.org/core/reports/\">バグのレポート</a>が書ける方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac に報告</a>してください。<a href=\"https://core.trac.wordpress.org/tickets/major\">こちらでは既知のバグ</a>も確認できます。</p>\n\n\n\n<h2 id=\"さらに詳しい情報はどこで入手できますか\">さらに詳しい情報はどこで入手できますか ?</h2>\n\n\n\n<p>今後数週間、<a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>の情報に注目してください。これらの項目を詳細にカバーする<a href=\"https://make.wordpress.org/core/tag/5-9+dev-notes/\">5.9関連の開発者ノート</a>が公開されます。</p>\n\n\n\n<p>これまでのところ、貢献者の皆さんにより <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=5.9&amp;resolution=fixed\">WordPress 5.9 にて305件のチケット</a>を修正しており、その中には<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;status=reopened&amp;changetime=..12%2F07%2F2021&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.9&amp;group=component&amp;col=id&amp;col=summary&amp;col=type&amp;col=status&amp;col=milestone&amp;col=changetime&amp;col=owner&amp;col=priority&amp;col=keywords&amp;order=changetime\">110の新機能や改良</a>も含まれています。テストを通じた皆さんのご協力により、さらに多くのバグ修正が予定されています。</p>\n\n\n\n<p><em>この投稿記事を手伝ってくれた <a href=\"https://profiles.wordpress.org/psykro/\">@psykro</a>, <a href=\"https://profiles.wordpress.org/estelaris/\">@estelaris</a>, <a href=\"https://profiles.wordpress.org/hellofromtonya/\">@hellofromtonya</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">@marybaum</a>, <a href=\"https://profiles.wordpress.org/webcommsat/\">@webcommsat</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a>, <a href=\"https://profiles.wordpress.org/davidb/\">@davidb</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">@audrasjb</a>, そして <a href=\"https://profiles.wordpress.org/pbiron/\">@pbiron</a> に感謝します。</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.9 ベータ 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2021/12/11/wordpress-5-9-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 11 Dec 2021 02:18:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6374\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:234:\"以下は、Chloe Bringmann が書いた WordPress.org 公式ブログの記事「WordPress 5.9 Beta 1」を訳したものです。 誤字脱字誤訳などありましたらフォーラムまでお知らせください。  [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"JOTAKI, Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:14033:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/jeffpaul/\"><a href=\"https://profiles.wordpress.org/cbringmann/\">Chloe Bringmann</a></a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/11/wordpress-5-9-beta-1/\">WordPress 5.9 Beta 1</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.9 ベータ 1がテスト用に公開されました!</p>\n\n\n\n<p><strong>この WordPress ソフトウェアのバージョンは開発版です。</strong>このバージョンを本番サイトで実行することはお勧めしません。代わりに、テストサイトでの試用を検討してください。これにより新しいバージョンをテストすることができます。</p>\n\n\n\n<p>WordPress 5.9 ベータ 1をテストするには、次の3つの方法があります。</p>\n\n\n\n<ul><li>オプション1: <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインをインストールして有効化する (「Bleeding edge」チャンネルと「Beta/RC Only」ストリームを選択)。</li><li>オプション2: <a href=\"https://wordpress.org/wordpress-5.9-beta1.zip\">ベータ版をこちらから (zip)</a>ベータ版をこちらから直接ダウンロードする。</li><li>オプション3: WP-CLI を使ってテストする: <code>wp core update --version=5.9-beta1</code> <strong>ファイルシステムで大文字と小文字を区別しない場合はこのオプションを使用しないでください。</strong></li></ul>\n\n\n\n<p>正式リリースは2022年1月25日を予定していて、あと残り8週間です。このリリースを可能な限り良いものにするためには、皆さんのテストへのご協力が不可欠です。</p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a>では、今後数週間のうちに<a href=\"https://make.wordpress.org/core/tag/5-9+dev-notes/\">5.9関連の開発者ノート</a>を公開して今後の変更点を詳しく説明しますので、チェックしてみてください。</p>\n\n\n\n<h2 id=\"ご協力いただけること-テスト\">ご協力いただけること &#8211; テスト!</h2>\n\n\n\n<p>バグを見つけるためのテストは、ベータ版でのリリースに磨きをかけるための重要な作業です。これはまた、WordPress に貢献するための素晴らしい方法でもあります。ベータ版のテストをしたことがない方は、<a href=\"https://make.wordpress.org/test/2021/11/30/help-test-wordpress-5-9-features/\">この詳細なガイド</a>を参考に何をどのようにテストすればよいかを確認してください。</p>\n\n\n\n<p>バグを見つけた場合は、サポートフォーラムの <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta エリア</a>に投稿してください。再現可能なバグのレポートが書ける方は <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac に報告</a>してください。<a href=\"https://core.trac.wordpress.org/tickets/major\">こちらでは既知のバグ</a>も確認できます。</p>\n\n\n\n<p>WordPress 5.8 以降にリリースされた Gutenberg のすべての機能を確認するには、What&#8217;s New In Gutenberg の <a href=\"https://make.wordpress.org/core/2021/06/10/whats-new-in-gutenberg-10-8-9-june/\">10.8</a>, <a href=\"https://make.wordpress.org/core/2021/06/24/whats-new-in-gutenberg-10-9-23-june/\">10.9</a>, <a href=\"https://make.wordpress.org/core/2021/07/09/whats-new-in-gutenberg-11-0-0-9-july/\">11.0</a>, <a href=\"https://make.wordpress.org/core/2021/07/21/whats-new-in-gutenberg-11-1-0-21-july/\">11.1</a>, <a href=\"https://make.wordpress.org/core/2021/08/05/whats-new-in-gutenberg-11-2-0-4-august/\">11.2</a>, <a href=\"https://make.wordpress.org/core/2021/08/18/whats-new-in-gutenberg-11-3-18-august/\">11.3</a>, <a href=\"https://make.wordpress.org/core/2021/09/01/whats-new-in-gutenberg-11-4-1-september/\">11.4</a>, <a href=\"https://make.wordpress.org/core/2021/09/17/whats-new-in-gutenberg-11-5-16-september/\">11.5</a>, <a href=\"https://make.wordpress.org/core/2021/10/01/whats-new-in-gutenberg-11-6-29-september/\">11.6</a>, <a href=\"https://make.wordpress.org/core/2021/10/14/whats-new-in-gutenberg-11-7-october-13th/\">11.7</a>, <a href=\"https://make.wordpress.org/core/2021/10/28/whats-new-in-gutenberg-11-8-0-27-october/\">11.8</a>, <a href=\"https://make.wordpress.org/core/2021/11/12/whats-new-in-gutenberg-11-9-0-10-november/\">11.9</a> の投稿をご覧ください。</p>\n\n\n\n<p>580件の改良と約450件のバグ修正を含む前述の変更点に加えて、<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;status=reopened&amp;type=enhancement&amp;type=feature+request&amp;milestone=5.9&amp;col=id&amp;col=summary&amp;col=type&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=priority&amp;col=changetime&amp;col=keywords&amp;order=changetime\">110件の新機能および改良</a>を含む<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.9&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">297件のチケットが WordPress 5.9 </a>のために貢献者の皆さんたちにより修正されました。さらに多くの修正が予定されています。</p>\n\n\n\n<p>では、テストをお楽しみください!</p>\n\n\n\n<p><em>バージョン 5.9 の新機能を知りたいですか？いくつかのハイライトをご紹介します。</em></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2 id=\"フルサイト編集\">フルサイト編集</h2>\n\n\n\n<h3 id=\"スタイルインターフェース\">スタイルインターフェース</h3>\n\n\n\n<p>5.8で搭載された機能と5.9で新たに搭載された機能を組み合わせることにより、「<strong>フルサイト編集</strong>」が実現します。</p>\n\n\n\n<p>以前はグローバルスタイルと呼ばれていたスタイルインターフェースでは、WordPress 管理画面上でブロックや要素を直接操作することができます。タイポグラフィからカラーパレットまで、このまとまったデザインインターフェースを使えば、テーマを切り替えることなくデザインを (それも大幅にも) 変更することができます。<strong>コードは必要ありません</strong>。</p>\n\n\n\n<h3 id=\"theme-json\"><strong>Theme.json</strong></h3>\n\n\n\n<p>WordPress 5.8で導入された theme.json は改良され、サイトとそのブロックのための機能とデフォルトスタイルが利用可能になりました。5.9 では、theme.json は子テーマやデュオトーン処理のサポートが可能になりました。theme.json を使ってスタイルのレイヤーを調整することで、テーマに必要な CSS を減らせます。</p>\n\n\n\n<p>その他、theme.json がサポートする機能は以下の通りです。</p>\n\n\n\n<ul><li><strong>ボーダー</strong> : 色、スタイル、および幅は、5.8で導入されたborder-radiusプロパティを補強します。</li><li><strong>フレックスレイアウト</strong> : spacing.blockGap によるブロックギャップのサポート。</li><li><strong>タイポグラフィ</strong> : フォントファミリー、フォントスタイル、フォントウェイト、テキストデコレーション、テキストトランスフォーム。</li><li><strong>画像</strong> : デュオトーン。</li></ul>\n\n\n\n<h3 id=\"新しいナビゲーションブロック\">新しいナビゲーションブロック</h3>\n\n\n\n<p>ナビゲーションを作成する最も直感的な方法、ナビゲーションブロックへようこそ。</p>\n\n\n\n<p>ここでは、最もテストが必要な機能を紹介します。</p>\n\n\n\n<ul><li>レスポンシブメニューのオプションは、オフにすることも、常にオンにすることも、小さな画面でのみ使用することもできます。</li><li>キーボードアクセシビリティの組み込み。 アクセシビリティ、スピード、またはその両方。</li><li>検索ブロックやサイトアイコンブロックなどの追加ブロック (お好みに合わせてカスタマイズ可能)。</li><li>サブメニューアイテムのスタイリングオプション</li><li>水平または垂直方向の配置。</li><li>再利用可能なナビゲーション ? テーマを変えても ? はい。なぜなら、作成したナビゲーションブロックは、カスタム投稿タイプとして保存されるからです。</li></ul>\n\n\n\n<h3 id=\"より良いギャラリーブロック\">より良いギャラリーブロック</h3>\n\n\n\n<p>ギャラリーブロックの単一の画像を、画像ブロックと同じように扱うことができたらどうでしょう？<strong>それができるようになりました。</strong></p>\n\n\n\n<p>ギャラリー内のすべての画像を、インライントリミングやデュオトーンで他の画像と区別したり、ドラッグ＆ドロップで簡単にレイアウトを変更したりできます。改良されたギャラリーブロックでは、すべての画像がそれぞれの画像ブロックになります。</p>\n\n\n\n<p><strong>ひとつ注意しておいてください</strong>。ギャラリーブロックの機能を利用して、プラグインやテーマを作成したことがありますか？<a href=\"https://make.wordpress.org/core/2021/08/20/gallery-block-refactor-dev-note/\">互換性を確保するために必要なことが詳しく書かれているので、こちらの開発ノートをぜひご覧ください</a>。</p>\n\n\n\n<h3 id=\"集中テンプレートパーツモード\">集中テンプレートパーツモード</h3>\n\n\n\n<p>テンプレートパーツの作成は、サイト全体のことを考えながら行うため、それだけで集中力が必要になります。そこで WordPress 5.9 では、今作業している部分だけを表示するフォーカスモードを追加しました（キー操作で通常の表示に戻すこともできます）。</p>\n\n\n\n<h3 id=\"ブロックパターンディレクトリ\">ブロックパターンディレクトリ</h3>\n\n\n\n<p><a href=\"https://wordpress.org/patterns/\">パターンディレクトリ</a>では、画像とテキストを表示するいくつかのブロックから、列やセクションを含むページ全体のレイアウトまで、さまざまなブロックパターンがあらかじめ用意されています。5.8リリース以降、このディレクトリは、UIやパターンを探求するためのハブとなっており、こうしたパターンの提供を受け付けて、それをコミュニティに提供しています。あなたが作ったものが、他の人の完璧なサイトを作る手助けになるのです。</p>\n\n\n\n<h3 id=\"twenty-twenty-two-デフォルトテーマ\">Twenty Twenty-Two デフォルトテーマ</h3>\n\n\n\n<p><strong>WordPress テーマを構築するまったく新しい方法です。</strong></p>\n\n\n\n<p>WordPress 5.9 では<strong>初のデフォルトブロックテーマ</strong>を含む、フルサイト編集を可能にする機能が導入されました。</p>\n\n\n\n<p>CSS の利用は最小限にしてテーマのスタイルを theme.json に格納することにより、WordPress 管理画面のスタイルインターフェースでスタイルを設定することができます。カラースキーム、タイプの組み合わせ、ページテンプレート、作成済みのコンポーネント (フォーム)、画像処理など、豊富な選択肢により、サイト全体でこのテーマの個性を発揮することができます。</p>\n\n\n\n<h2 id=\"その他の改善とアップデート\"><strong>その他の改善とアップデート</strong></h2>\n\n\n\n<ul><li>ブログを書くのが好きですか? 公開フローに新たな調整が加えられ、最新の記事を公開した数秒後に新しい記事を追加できるようになりました。 </li><li>リストビューでは、コンテンツをドラッグ＆ドロップするだけで、いつものように簡単に見て回ることができ、セクション全体を折りたたむこともできるので、タスクに集中したり、全体像を把握したりすることができます。 </li><li><a href=\"https://github.com/WordPress/gutenberg/pull/33955\">ボタンとソーシャルアイコンブロック</a>は、親ブロックのツールバーコントロールを吸収して表示するようになりました。 </li><li>ログイン画面で<a href=\"https://core.trac.wordpress.org/ticket/43700\">言語を選択</a>できるようになりました。 </li><li>さらなる<a href=\"https://github.com/WordPress/gutenberg/pull/33868\">パフォーマンスの向上</a>（スピードアップ）。</li></ul>\n\n\n\n<p><em>リサーチとコピーをしてくださった <a href=\"https://profiles.wordpress.org/chanthaboune/\">@chanthaboune</a>, <a href=\"https://profiles.wordpress.org/priethor/\">@priethor</a>, <a href=\"https://profiles.wordpress.org/psykro/\">@psykro</a>, <a href=\"https://profiles.wordpress.org/annezazu/\">@annezazu</a>, <a href=\"https://profiles.wordpress.org/webcommsat/\">@webcommsat</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">@marybaum</a>, <a href=\"https://profiles.wordpress.org/hellofromtonya/\">@hellofromtonya</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">@davidbaumwald</a>, <a href=\"https://profiles.wordpress.org/rmartinezduque/\">@rmartinezduque</a> さんに感謝します。</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WordPress 5.8.2 セキュリティとメンテナンスのリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://ja.wordpress.org/2021/11/11/wordpress-5-8-2-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 Nov 2021 21:22:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6367\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:174:\"以下は、Jonathan Desrosiers が書いた WordPress.org 公式ブログの記事「WordPress 5.8.2 Security and Maintenance Release」を訳したものです。 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Seisuke Kuraishi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2576:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/11/wordpress-5-8-2-security-and-maintenance-release/\">WordPress 5.8.2 Security and Maintenance Release</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><strong>WordPress 5.8.2</strong> が公開されました！</p>\n\n\n\n<p>今回のセキュリティとメンテナンスのリリースでは、<a href=\"https://core.trac.wordpress.org/ticket/54207\">1件のセキュリティ</a>修正に加え、<a href=\"https://core.trac.wordpress.org/query?id=54129%2C54323%2C54207&amp;milestone=5.8.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;col=milestone&amp;order=priority\">2件のバグ</a>修正が行われています。<strong>セキュリティリリース</strong>ですので、直ちにサイトを更新することをお勧めします。WordPress 5.2 以降のすべてのバージョンも更新されています。</p>\n\n\n\n<p>WordPress 5.8.2 は、狭い範囲に焦点を当てたセキュリティとメンテナンスのリリースです。次のメジャーバージョンリリースは <a href=\"https://make.wordpress.org/core/5-9/\">5.9</a> となります。</p>\n\n\n\n<p>WordPress 5.8.2 をダウンロードするには、WordPress.org からダウンロード、または、「ダッシュボード」→「更新」にアクセスして「今すぐ更新」をクリックしてください。自動バックグラウンド更新がサポートされているサイトでは、すでに更新プロセスが開始されています。</p>\n\n\n\n<p>詳細については、Trac の<a href=\"https://core.trac.wordpress.org/query?id=54129%2C54323%2C54207&amp;milestone=5.8.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;col=milestone&amp;order=priority\">変更点全リスト</a>を参照するか、<a href=\"https://wordpress.org/support/wordpress-version/version-5-8-2/\">バージョン 5.8.2 の HelpHub ドキュメントページ</a>をご覧ください。</p>\n\n\n\n<p>(訳注: 貢献者セクションは、<a href=\"https://wordpress.org/news/2021/11/wordpress-5-8-2-security-and-maintenance-release/\">原文</a>を参照してください。)</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WordPress 5.8.1 セキュリティとメンテナンスのリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://ja.wordpress.org/2021/09/09/wordpress-5-8-1-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 09 Sep 2021 14:43:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6364\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:174:\"以下は、Jonathan Desrosiers が書いた WordPress.org 公式ブログの記事「WordPress 5.8.1 Security and Maintenance Release」を訳したものです。 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Seisuke Kuraishi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4364:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/09/wordpress-5-8-1-security-and-maintenance-release/\">WordPress 5.8.1 Security and Maintenance Release</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.8.1 が公開されました！</p>\n\n\n\n<p>今回のセキュリティとメンテナンスのリリースでは、3件のセキュリティ修正に加え、<a href=\"https://core.trac.wordpress.org/query?milestone=5.8.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">60件のバグ</a><a href=\"https://github.com/WordPress/gutenberg/pull/34393\">修正</a>が行われています。<strong>セキュリティリリース</strong>ですので、直ちにサイトを更新することをお勧めします。WordPress 5.4 以降のすべてのバージョンも更新されています。</p>\n\n\n\n<p>WordPress 5.8.1 は短いサイクルでのセキュリティとメンテナンスのリリースです。次のメジャーバージョンリリースは <a href=\"https://make.wordpress.org/core/5-9/\">5.9</a> となります。</p>\n\n\n\n<p>WordPress 5.8.1 をダウンロードするには、WordPress.org からダウンロード、または、「ダッシュボード」→「更新」にアクセスして「今すぐ更新」をクリックしてください。</p>\n\n\n\n<p>自動バックグラウンド更新がサポートされたサイトでは、すでに更新プロセスが開始されています。</p>\n\n\n\n<h3 id=\"セキュリティ更新\">セキュリティ更新</h3>\n\n\n\n<p>3つのセキュリティの問題が、5.4 から 5.8 までの WordPress のバージョンに影響を与えています。まだ 5.8 に更新していない場合は、5.4 以降のすべての WordPress バージョンも、以下のセキュリティ問題の修正のために更新されます。</p>\n\n\n\n<ul><li>WordPress セキュリティチームのメンバー <a href=\"https://profiles.wordpress.org/mdawaffe/\">@mdawaffe</a> による REST API におけるデータ漏洩の脆弱性修正に感謝します。</li><li>Securitum の Michał Bentkowski によるブロックエディターの XSS 脆弱性の報告に感謝します。</li><li>Lodash ライブラリが各ブランチでバージョン 4.17.21 に更新され、アップストリームのセキュリティ修正が組み込まれました。</li></ul>\n\n\n\n<p>これらの問題に加えて、WordPress 5.8 ベータテスト期間中に脆弱性を報告していただき、リリース前に修正可能にしてくださった以下の方々に感謝します。</p>\n\n\n\n<ul><li><a href=\"https://evanricafort.com/\">Evan Ricafort</a> による 5.8 ベータ期間中に発見されたブロックエディターの XSS 脆弱性の報告に感謝します。</li><li><a href=\"https://profiles.wordpress.org/stevehenty/\">Steve Henty</a> によるブロックエディターでの権限昇格問題の報告に感謝します。</li></ul>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">非公開で脆弱性情報を開示</a>してくださった報告者の皆様に感謝いたします。これにより、WordPress セキュリティチームは、WordPress サイトが攻撃される前に脆弱性を修正することができました。</p>\n\n\n\n<p>詳細については、Trac の<a href=\"https://core.trac.wordpress.org/query?milestone=5.8.1&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">変更点全リスト</a>を参照するか、<a href=\"https://wordpress.org/support/wordpress-version/version-5-8-1/\">バージョン 5.8.1 の HelpHub ドキュメントページ</a>をご覧ください。</p>\n\n\n\n<p>（訳注: 貢献者セクションは、<a href=\"https://wordpress.org/news/2021/09/wordpress-5-8-1-security-and-maintenance-release/\">原文</a>を参照してください。）</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:57:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 日本語ユーザーマニュアルの移行について\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://ja.wordpress.org/2021/09/06/codex-to-helphub/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 06 Sep 2021 06:29:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Documentation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6353\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:404:\"2008年以来、公式な WordPress 日本語ユーザーマニュアルとしてコミュニティで運用してきた Codex 日本語版ですが、Codex 英語版のユーザーマニュアル部分がサポートページ内に移行されたことに合わせて、日本語版もサポートページ内のユーザードキュメント (新ユーザーマニュアル) に正式移行します。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9085:\"\n<p>2008年以来、公式な WordPress 日本語ユーザーマニュアルとしてコミュニティで運用してきた <a href=\"http://wpdocs.osdn.jp/\">Codex 日本語版</a>ですが、Codex 英語版のユーザーマニュアル部分がサポートページ内に移行されたことに合わせて、日本語版も移行作業を続けてきました。今後は、<a href=\"https://ja.wordpress.org/support\">サポートページ内のユーザードキュメント</a> (新ユーザーマニュアル) を参照いただきますようお願いします。</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://ja.wordpress.org/files/2021/09/support-doc-helphub-1024x792.png\" alt=\"新 WordPress 日本語ユーザーマニュアルサイトのトップページ\" class=\"wp-image-6360\" width=\"483\" height=\"373\" srcset=\"https://ja.wordpress.org/files/2021/09/support-doc-helphub-1024x792.png 1024w, https://ja.wordpress.org/files/2021/09/support-doc-helphub-300x232.png 300w, https://ja.wordpress.org/files/2021/09/support-doc-helphub-768x594.png 768w, https://ja.wordpress.org/files/2021/09/support-doc-helphub-1536x1188.png 1536w, https://ja.wordpress.org/files/2021/09/support-doc-helphub-2048x1583.png 2048w\" sizes=\"(max-width: 483px) 100vw, 483px\" /></figure></div>\n\n\n\n<p>今後、Codex 日本語版 (旧ユーザーマニュアル) が積極的にメンテナンスされることはありませんが、移行が済んでいない情報も一部残っていますので、サイト自体をなくす予定は現在のところはありません。</p>\n\n\n\n<p>これまで Codex の翻訳やメンテナンスにご協力いただいた<a href=\"https://wpdocs.osdn.jp/Codex:%E3%82%B3%E3%83%9F%E3%83%A5%E3%83%8B%E3%83%86%E3%82%A3%E3%83%BB%E3%83%9D%E3%83%BC%E3%82%BF%E3%83%AB#Codex.E3.81.AE.E7.B7.A8.E9.9B.86.E3.81.AB.E3.81.A4.E3.81.84.E3.81.A6\">563名</a>の登録者の皆様、どうもありがとうございます。</p>\n\n\n\n<h3>開発関連のドキュメントについて</h3>\n\n\n\n<p>ただし、関数リファレンスなどの国際化については議論中で、最新の情報は <a href=\"https://developer.wordpress.org/\">developer.wordpress.org</a> など英語版を参照いただき、日本語特有の留意点など必要に応じて、 Codex 日本語版 (旧ユーザーマニュアル) 内の情報を参照いただく形で利用いただけると幸いです。</p>\n\n\n\n<p>デベロッパーリソースや、各 Make WordPress チームのハンドブックに存在するドキュメントについては、一部翻訳を進めています。</p>\n\n\n\n<ul><li><a href=\"https://ja.wordpress.org/team/handbook/plugin-development/\">プラグイン開発ハンドブック</a> (協力者募集中)</li><li><a href=\"https://ja.wordpress.org/team/handbook/theme-development/\">テーマ開発ハンドブック</a> (協力者募集中)</li><li><a href=\"https://ja.wordpress.org/team/handbook/test/\">テストハンドブック</a></li><li><a href=\"https://ja.wordpress.org/team/handbook/design/\">デザインハンドブック</a></li><li><a href=\"https://ja.wordpress.org/team/handbook/block-editor/\">ブロックエディターハンドブック</a></li><li><a href=\"https://ja.wordpress.org/team/handbook/coding-standards/\">コーディング規約ハンドブック</a></li></ul>\n\n\n\n<p>これ以外のものも含めて、翻訳してみたいという方は<a href=\"https://ja.wordpress.org/team/handbook/translation/translating-documentation/\">ドキュメント翻訳プロセス</a>をご覧ください。</p>\n\n\n\n<h3>新公式ユーザーマニュアル (HelpHub) の翻訳ステータスについて</h3>\n\n\n\n<p>現在、271ページのうち63.5%が翻訳済みとなっています。ご協力いただいた32名の皆さんに心より感謝します。</p>\n\n\n\n<p><a href=\'https://profiles.wordpress.org/atachibana/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>atachibana</a>, <a href=\'https://profiles.wordpress.org/azuma/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>azuma</a>, <a href=\'https://profiles.wordpress.org/deinonychus/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>deinonychus</a>, <a href=\'https://profiles.wordpress.org/gblsm/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>gblsm</a>, <a href=\'https://profiles.wordpress.org/j-kei/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>J-KEI</a>, <a href=\'https://profiles.wordpress.org/keikosme/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>keikosme</a>, <a href=\'https://profiles.wordpress.org/kitakado_h/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>kitakado_h</a>, <a href=\'https://profiles.wordpress.org/kmix39/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>kmix39</a>, <a href=\'https://profiles.wordpress.org/lestari/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>lestari</a>, <a href=\'https://profiles.wordpress.org/lunaluna_dev/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>lunaluna_dev</a>, <a href=\'https://profiles.wordpress.org/mai-san/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mai-san</a>, <a href=\'https://profiles.wordpress.org/mayamasu/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mayamasu</a>, <a href=\'https://profiles.wordpress.org/mayukojpn/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mayukojpn</a>, <a href=\'https://profiles.wordpress.org/mimi/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mimi</a>, <a href=\'https://profiles.wordpress.org/munyagu/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>munyagu</a>, <a href=\'https://profiles.wordpress.org/mypacecreator/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mypacecreator</a>, <a href=\'https://profiles.wordpress.org/mzmjp/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mzmjp</a>, <a href=\'https://profiles.wordpress.org/nao/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>nao</a>, <a href=\'https://profiles.wordpress.org/naohanpen/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>naohanpen</a>, <a href=\'https://profiles.wordpress.org/nukaga/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>nukaga</a>, <a href=\'https://profiles.wordpress.org/phullapadma/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>phullapadma</a>, <a href=\'https://profiles.wordpress.org/piyoko/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>piyoko</a>, <a href=\'https://profiles.wordpress.org/pmyosuke/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>pmyosuke</a>, <a href=\'https://profiles.wordpress.org/rocketmartue/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>rocketmartue</a>, <a href=\'https://profiles.wordpress.org/shimizu402/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>shimizu402</a>, <a href=\'https://profiles.wordpress.org/shizumi/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>shizumi</a>, <a href=\'https://profiles.wordpress.org/toru/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>toru</a>, <a href=\'https://profiles.wordpress.org/udfibonacci/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>udfibonacci</a>, <a href=\'https://profiles.wordpress.org/usinosuke/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>usinosuke</a>, <a href=\'https://profiles.wordpress.org/wildworks/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>wildworks</a>, <a href=\'https://profiles.wordpress.org/yukinobu/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yukinobu</a>, <a href=\'https://profiles.wordpress.org/yuta/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yuta</a></p>\n\n\n\n<p>英語版 HelpHub 内にあるページのうちCodex 日本語版に旧ページが存在していたドキュメントの移行はほとんど完了していますが、最近英語版が作成されたブロックエディター関連のページについては、<a href=\"https://docs.google.com/spreadsheets/d/1XMpF3ggJPQfbhEFjKtARTpH4Ukhrq_VSsXghAqeRu0w/edit#gid=625788042\">翻訳が必要なものが70ページほどあります</a>。ご協力いただける方がいらっしゃいましたら、<a href=\"https://ja.wordpress.org/team/2019/08/06/359/\">こちらの手順</a>を参照してください。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>当記事のレビューおよびドキュメンテーション移行関連の相談、作業にご協力いただいた皆様、ありがとうございました。<a href=\'https://profiles.wordpress.org/atachibana/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>atachibana</a> <a href=\'https://profiles.wordpress.org/tenpura/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>tenpura</a> <a href=\'https://profiles.wordpress.org/tai/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>tai</a> <a href=\'https://profiles.wordpress.org/mimi/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mimi</a> <a href=\'https://profiles.wordpress.org/yukinobu/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yukinobu</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"Classic Editor プラグインの公式サポート期限更新\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://ja.wordpress.org/2021/08/26/an-update-on-the-classic-editor-plugin/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Aug 2021 01:38:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:7:\"General\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6343\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"Classic Editor プラグインの公式サポート期限更新を2022年末まで延期しました。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3302:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/matt/\"></a><a href=\"https://profiles.wordpress.org/chanthaboune/\"></a><a href=\"https://profiles.wordpress.org/cbringmann/\"></a><a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2020/04/wordpress-5-4-1/\"></a><a href=\"https://wordpress.org/news/2020/03/adderley/\"></a><a href=\"https://wordpress.org/news/2021/02/welcome-to-your-wp-briefing/\"></a><a href=\"https://wordpress.org/news/2021/02/gutenberg-tutorial-reusable-blocks/\"></a><a href=\"https://wordpress.org/news/2021/08/an-update-on-the-classic-editor-plugin/\">An Update on the Classic Editor Plugin</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>2018年の WordPress 5.0のリリース前に、新しいブロックエディターへの移行を容易にするため <a href=\"https://wordpress.org/plugins/classic-editor/\">Classic Editor</a> プラグインを公開しました。その際、このプラグインを2021年末までサポートし、期限が近づいた頃に必要に応じてそれを調整することを約束しました。マットと話し合った結果、2022年末までこのプラグインのサポートを継続することが、プロジェクトとコミュニティにとって正しい判断であることがはっきりしました。</p>\n\n\n\n<p>とはいえ、ブロックエディターの利用を後回しにしていた人にとっては、もう一度試してみる絶好の機会です。ブロックエディターが2018年に初めて登場して以来、何百人もの WordPress コントリビューターたちが、ユーザーのフィードバックに基づいて多くのアップデートを行ってきました。使っていただければ、「こんなに進化したのか !」と嬉しい驚きを感じていただけるはずです。</p>\n\n\n\n<p>WordPress、Gutenberg、Classic Editor プラグインに取り組んできた皆さんに心より感謝します。また、ソフトウェアをより良くするために必要なフィードバックを提供してくれたすべての WordPress ユーザーとテスターの皆さんも、ありがとうございます。</p>\n\n\n\n<p>~ Josepha (ジョセファ)</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>久しぶりにブロックエディターを試してみるという方は、<a href=\"https://make.wordpress.org/test/handbook/full-site-editing-outreach-experiment/\">アウトリーチプログラム</a> (<a href=\"https://ja.wordpress.org/team/tag/fse-outreach-program/\">日本語訳</a>) に参加すれば、早い段階でフィードバックをいただけます。初めてブロックエディターを使う方は<a href=\"https://learn.wordpress.org/workshops/?series=1216&amp;topic=&amp;language=ja&amp;captions=\">ワークショップ</a>動画や<a href=\"https://ja.wordpress.org/support/article/wordpress-editor/#%e6%a9%9f%e8%83%bd\">こちらのデモ動画</a>をご覧いただき、基本的な使い方を知ってみてください。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n\n					\n										\n					\n		\n		\n\n\n\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WordPress 5.8、そしてこれからのウィジェット\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://ja.wordpress.org/2021/08/10/widgets-in-wordpress-5-8-and-beyond/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Aug 2021 02:33:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=6325\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:274:\"WordPress 5.8 では、ウィジェットエリアで Gutenberg ブロックが使えるようになりました。この投稿では、ウィジェットで実行できるようになった便利なことの一部と、今後の方向性に焦点を当てていきます。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:3:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://wordpress.org/news/files/2021/08/classic-widgets.mov\";s:6:\"length\";s:7:\"6475399\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://wordpress.org/news/files/2021/08/block-widgets-1.mov\";s:6:\"length\";s:8:\"23931847\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:58:\"https://wordpress.org/news/files/2021/08/custom-html-1.mov\";s:6:\"length\";s:8:\"13767042\";s:4:\"type\";s:15:\"video/quicktime\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7712:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/matt/\"></a><a href=\"https://profiles.wordpress.org/chanthaboune/\"></a><a href=\"https://profiles.wordpress.org/cbringmann/\">Chloe Bringmann</a> が書いた WordPress.org 公式ブログの記事「<a href=\"https://wordpress.org/news/2021/08/widgets-in-wordpress-5-8-and-beyond/\">Widgets in WordPress 5.8 and Beyond</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><strong>文章・デザイン: <a href=\'https://profiles.wordpress.org/critterverse/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>critterverse</a></strong></p>\n\n\n\n<p>WordPress 5.8 では、<a href=\"https://ja.wordpress.org/support/article/block-based-widgets-editor/\">ウィジェットエリアで Gutenberg ブロックが使えるようになりました</a>。つまり、高度にカスタマイズ可能なレイアウトとスタイル設定により、WYSIWYG 編集 (見たまま編集できる) の体験に近づくことができます。</p>\n\n\n\n<p>3つの別々のウィジェットエリアを備えた古き良き <a href=\"https://wordpress.org/themes/twentysixteen/\">Twenty Sixteen テーマ</a>をベースに、テストサイトを作成してみました。この投稿では、ウィジェットで実行できるようになった便利なことの一部と、今後の方向性に焦点を当てていきます。</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><a href=\"https://i0.wp.com/wordpress.org/news/files/2021/08/site-long-1x.png?ssl=1\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2021/08/site-long-1x.png?resize=632%2C1130&amp;ssl=1\" alt=\"1つのサイドバーウィジェットエリアと2つのフッターウィジェットエリアを持つ個別投稿のズームアウトビュー。サイトのコンテンツはマリンパーク・ソルトマーシュについてのものです。各ウィジェットエリアの横に並べているブロックのリスト表示は、デザインがどのように構築されているかを示しています。\" class=\"wp-image-11116\" /></a></figure></div>\n\n\n\n<h2>重ねたレイアウトとデュオトーン画像でおもしろい視覚効果を作り出す</h2>\n\n\n\n<p>外観に関しては、ユーザーはウィジェットエリアをこれまで以上にコントロールできます。特に、カバーや画像ブロックなどのカスタマイズオプションを備えたブロックを使用することで高度なコントロールが可能になります。これが、旧ウィジェットエディター (上) で作成できるものと、新しいブロックベースのウィジェットエディター (下) で作成できるものです。</p>\n\n\n\n<figure class=\"wp-block-video aligncenter\"><video controls src=\"https://wordpress.org/news/files/2021/08/classic-widgets.mov\"></video></figure>\n\n\n\n<figure class=\"wp-block-video aligncenter\"><video controls src=\"https://wordpress.org/news/files/2021/08/block-widgets-1.mov\"></video></figure>\n\n\n\n<h2>ビジュアルデザイン全体にウィジェットとカスタムコードを混合させる</h2>\n\n\n\n<p>カバーやカラムなどのコンテナブロックを使用すると、動的要素やインタラクティブな要素をデザインに簡単に織り込むことができます。これは多くのウィジェットに当てはまりますが、ウィジェットのブロックバージョンは、コンテナブロック内で簡単にまとめたりレイヤー化して、レイアウトに完全に統合できます。</p>\n\n\n\n<p>以下の例では、カバーブロックの前に検索ブロックを配置してみました。これにより、良いレイヤー効果を作ることができます。また、カラムブロック内にカスタム HTML ブロックを挿入して、時刻に応じて異なるメッセージを表示しました (<a href=\"https://stackoverflow.com/questions/31242051/show-content-based-on-time-of-day-timing-changes-on-different-days-of-the-week\">jQuery スクリプト</a>)。</p>\n\n\n\n<figure class=\"wp-block-video aligncenter\"><video controls src=\"https://wordpress.org/news/files/2021/08/custom-html-1.mov\"></video></figure>\n\n\n\n<h2>タイトルと構造に柔軟性。旧ウィジェットレイアウトも使用するオプション</h2>\n\n\n\n<p>クラシックウィジェットには、ウィジェットにタイトルが必ず含められているという制限がありました。ウィジェットエリアにブロックを配置することの利点のひとつは、タイトルの表示が完全に柔軟であることです。たとえば、すべてのウィジェットにタイトルを付けたり、各ウィジェットエリアの上部に1つのタイトルだけを配置したりすることもできますし、デザインにタイトルをまったく必要としない場合もあるでしょう。</p>\n\n\n\n<p><strong>注:</strong> <a href=\"https://wordpress.org/themes/twentytwentyone/\">Twenty Twenty-One</a> などの一部のテーマでは、ウィジェットエリア内でコンテンツを横方向にレイアウトするように設計されています。テーマがレイアウトをカラムに分割してしまう問題が発生する場合は、グループブロック内に含めることで、複数のブロックをまとめておくことができます。</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><a href=\"https://i1.wp.com/wordpress.org/news/files/2021/08/grouped.jpg?ssl=1\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2021/08/grouped.jpg?resize=632%2C381&amp;ssl=1\" alt=\"グループ化または入れ子になったまとまりがある場合とない場合のサイドバーウィジェットエリアのリストビューを並べた比較。\" class=\"wp-image-11122\" /></a></figure></div>\n\n\n\n<h2>WordPress パターンディレクトリから既存のレイアウトをコピー &amp; ペースト</h2>\n\n\n\n<p>ブロックパターンはまだウィジェットエディターに完全に統合されていませんが、<a href=\"https://wordpress.org/patterns/\">革新的な WordPress パターンディレクトリ</a>からサイトのウィジェットエリアにパターンをコピー &amp; ペーストする、ということは可能です。パターンディレクトリから、<a href=\"https://wordpress.org/patterns/pattern/horizontal-call-to-action/\">この横並びの CTA (注意喚起)</a> パターンをほぼそのまま使用しましたが、色とテキストを少し調整しました。</p>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><a href=\"https://i1.wp.com/wordpress.org/news/files/2021/08/footer.jpg?ssl=1\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2021/08/footer.jpg?resize=632%2C389&amp;ssl=1\" alt=\"段落テキストと &quot;Join now (今すぐ参加)&quot; ボタンが別のカラムにあり、&quot;Become a monthly patron (月毎の支援者になる)&quot; と書かれた黒いボックスのあるフッターウィジェットエリア。岩に当たる波の絵画の画像。間にスペースがなく、真下にあります。\n\" class=\"wp-image-11123\" /></a></figure></div>\n\n\n\n<p><strong>注:</strong> パターンはまだウィジェットエリア用として選別・連携されていないため、予期しない動作が発生する可能性があります。この機能は、ウィジェット編集の次のプレビューであると考えてください。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://ja.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 29 Dec 2021 06:36:30 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Mon, 15 Jun 2020 00:12:19 GMT\";s:4:\"link\";s:61:\"<https://ja.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20211229032720\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(137, '_transient_timeout_feed_mod_992efac292246ae35bf235a03417a202', '1640802991', 'no'),
(138, '_transient_feed_mod_992efac292246ae35bf235a03417a202', '1640759791', 'no'),
(139, '_transient_timeout_feed_6f409681938158427d2ded6eb1b9ea27', '1640802992', 'no'),
(140, '_transient_feed_6f409681938158427d2ded6eb1b9ea27', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n\n	\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:141:\"\n\n		\n		\n		\n				\n		\n		\n\n		\n		\n					\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n					\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress | サポートフォーラム » 返信一覧\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Dec 2021 06:36:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"https://bbpress.org/?v=2.7.0-alpha-2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/wordpress%e3%81%8b%e3%82%89%e3%83%a1%e3%83%bc%e3%83%ab%e9%80%9a%e7%9f%a5%e5%85%a8%e8%88%ac%e3%81%8c%e6%9d%a5%e3%81%aa%e3%81%8f%e3%81%aa%e3%81%a3%e3%81%a6%e5%9b%b0%e3%81%a3%e3%81%a6%e3%81%84%e3%81%be/#post-11676910\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"返信先: WordPressからメール通知全般が来なくなって困っています。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/wordpress%e3%81%8b%e3%82%89%e3%83%a1%e3%83%bc%e3%83%ab%e9%80%9a%e7%9f%a5%e5%85%a8%e8%88%ac%e3%81%8c%e6%9d%a5%e3%81%aa%e3%81%8f%e3%81%aa%e3%81%a3%e3%81%a6%e5%9b%b0%e3%81%a3%e3%81%a6%e3%81%84%e3%81%be/#post-11676910\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Dec 2021 06:33:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1507:\"\n						\n						<p><a href=\"https://ja.wordpress.org/support/users/shokun0803/\" class=\"mention\" rel=\"nofollow\">@shokun0803</a> さん、皆様</p>\n<p>さっそく、レンタルサーバーのロリポップに連絡したところ、電話窓口で年末年始期間となってしまい、<br />\nメールサポート窓口に連絡して、ご教示いただいた「ロリポップのサーバーにアクセスしてサーバー上からのメールの送信ログを確認する方法」を確認中です。</p>\n<p>一方、ふと思ったのですが、色々ネットで調べていたら、<br />\n「WP Mail SMTP」というプラグインをインストールして、メール通知問題を解消する方法を発見しました。<br />\n<a href=\"https://suzunon.com/word-press/wp-mail-smtp/\" rel=\"nofollow ugc\">https://suzunon.com/word-press/wp-mail-smtp/</a></p>\n<p>私の場合、なぜ、今までgmailでメール通知が出来ていたのかが謎なのですが、<br />\n不具合が出ていることをきっかけにinfo@counseling-nagomi.comというレンタルサーバーアドレスへの変更を検討中です。</p>\n<p>その場合、上記プラグインの導入を試すことは良い選択でしょうか？<br />\n一つ気になるのは、プラグインを追加することで余計ややこしくならないか…です？</p>\n<p>どなたか、年末のお忙しいところ恐縮ですが、ご助言いただくことは可能でしょうか？</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"sunsuntak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://ja.wordpress.org/support/topic/foogallery%e3%81%aedefault-gallery-settings/#post-11676908\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"FooGalleryのDefault Gallery Settings\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://ja.wordpress.org/support/topic/foogallery%e3%81%aedefault-gallery-settings/#post-11676908\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Dec 2021 03:49:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:951:\"\n						\n						<p>自作テーマにてFoo Galleryを使ってみていますが、<br />\nGallery Defaults<br />\nでDefault Gallery Settingsを既存のGalleryを選択し保存しても<br />\n反映されず、もともとのDefaultのままとなっています。<br />\n何か原因として当たる事があるのでしょうか。<br />\nもしお分かりの方おられましたらよろしくお願いします。<br />\nフォーラム不慣れで不手際ありましたら申し訳ございません。</p>\n\n\n<ul id=\"bbp-topic-revision-log-11676908\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-11676908-item-11676909\" class=\"bbp-topic-revision-log-item\">\n		このトピックは<a href=\"https://ja.wordpress.org/support/users/fumo/\" title=\"Fumo のプロフィールを表示\" class=\"bbp-author-link\"><span  class=\"bbp-author-name\">Fumo</span></a>が2時間、 43分前に変更しました。\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Fumo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:188:\"https://ja.wordpress.org/support/topic/bbpress-%e3%82%aa%e3%83%97%e3%82%b7%e3%83%a7%e3%83%b3%e3%83%88%e3%83%94%e3%83%83%e3%82%af%e3%81%ae%e7%99%bb%e9%8c%b2%e6%96%b9%e6%b3%95/#post-11676907\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"bbpress オプショントピックの登録方法\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:188:\"https://ja.wordpress.org/support/topic/bbpress-%e3%82%aa%e3%83%97%e3%82%b7%e3%83%a7%e3%83%b3%e3%83%88%e3%83%94%e3%83%83%e3%82%af%e3%81%ae%e7%99%bb%e9%8c%b2%e6%96%b9%e6%b3%95/#post-11676907\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Dec 2021 15:50:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:340:\"\n						\n						<p>bbpressで利用できるウィジェットの中にトピック表示一覧という登録をしたオプショントピックを表示するというものがありますが、オプショントピックとして登録する方法が分かりません。</p>\n<p>教えて頂けませんでしょうか？</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"iori11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:229:\"https://ja.wordpress.org/support/topic/%e8%a6%8b%e5%87%ba%e3%81%97%e3%81%aehtml%e3%82%b3%e3%83%bc%e3%83%89%e3%81%af%e3%81%86%e3%81%be%e3%81%8f%e5%8f%8d%e6%98%a0%e3%81%95%e3%82%8c%e3%81%be%e3%81%9b%e3%82%93%e3%80%82/#post-11676906\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"返信先: 見出しのHTMLコードはうまく反映されません。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:229:\"https://ja.wordpress.org/support/topic/%e8%a6%8b%e5%87%ba%e3%81%97%e3%81%aehtml%e3%82%b3%e3%83%bc%e3%83%89%e3%81%af%e3%81%86%e3%81%be%e3%81%8f%e5%8f%8d%e6%98%a0%e3%81%95%e3%82%8c%e3%81%be%e3%81%9b%e3%82%93%e3%80%82/#post-11676906\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Dec 2021 11:58:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:335:\"\n						\n						<p><a href=\"https://ja.wordpress.org/support/users/wildworks/\" class=\"mention\" rel=\"nofollow\">@wildworks</a> さん<br />\nご返信ありがとうございます。<br />\n早速問い合わせしてみたいと思います。<br />\n解決策をご提案していただきありがとうございます。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"shoryushio\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:229:\"https://ja.wordpress.org/support/topic/%e8%a6%8b%e5%87%ba%e3%81%97%e3%81%aehtml%e3%82%b3%e3%83%bc%e3%83%89%e3%81%af%e3%81%86%e3%81%be%e3%81%8f%e5%8f%8d%e6%98%a0%e3%81%95%e3%82%8c%e3%81%be%e3%81%9b%e3%82%93%e3%80%82/#post-11676905\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"返信先: 見出しのHTMLコードはうまく反映されません。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:229:\"https://ja.wordpress.org/support/topic/%e8%a6%8b%e5%87%ba%e3%81%97%e3%81%aehtml%e3%82%b3%e3%83%bc%e3%83%89%e3%81%af%e3%81%86%e3%81%be%e3%81%8f%e5%8f%8d%e6%98%a0%e3%81%95%e3%82%8c%e3%81%be%e3%81%9b%e3%82%93%e3%80%82/#post-11676905\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Dec 2021 11:48:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:487:\"\n						\n						<p><a href=\"https://ja.wordpress.org/support/users/shoryushio/\" class=\"mention\" rel=\"nofollow\">@shoryushio</a> さん</p>\n<p>こんにちは。<br />\n元となる親テーマはこちらでしょうか。<br />\n<a href=\"https://avada.theme-fusion.com/\" rel=\"nofollow ugc\">https://avada.theme-fusion.com/</a></p>\n<p>その場合、有料テーマはこのフォーラムではサポート出来ませんので、購入元へお問い合わせください。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Tetsuaki Hamano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:229:\"https://ja.wordpress.org/support/topic/%e8%a6%8b%e5%87%ba%e3%81%97%e3%81%aehtml%e3%82%b3%e3%83%bc%e3%83%89%e3%81%af%e3%81%86%e3%81%be%e3%81%8f%e5%8f%8d%e6%98%a0%e3%81%95%e3%82%8c%e3%81%be%e3%81%9b%e3%82%93%e3%80%82/#post-11676904\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"返信先: 見出しのHTMLコードはうまく反映されません。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:229:\"https://ja.wordpress.org/support/topic/%e8%a6%8b%e5%87%ba%e3%81%97%e3%81%aehtml%e3%82%b3%e3%83%bc%e3%83%89%e3%81%af%e3%81%86%e3%81%be%e3%81%8f%e5%8f%8d%e6%98%a0%e3%81%95%e3%82%8c%e3%81%be%e3%81%9b%e3%82%93%e3%80%82/#post-11676904\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Dec 2021 10:28:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1942:\"\n						\n						<p><a href=\"https://ja.wordpress.org/support/users/wildworks/\" class=\"mention\" rel=\"nofollow\">@wildworks</a> さん、<br />\nご返信いただき有難うございます。<br />\n現在テーマは、Avada Childを使用しております。<br />\nコードは、こちらになります。</p>\n<p>[fusion_builder_column type=&#8221;1_1&#8243; layout=&#8221;1_1&#8243; spacing=&#8221;yes&#8221; center_content=&#8221;no&#8221; link=&#8221;&#8221; target=&#8221;_self&#8221; min_height=&#8221;&#8221; hide_on_mobile=&#8221;no&#8221; class=&#8221;rounded-border&#8221; id=&#8221;&#8221; background_color=&#8221;#ffffff&#8221; background_image=&#8221;&#8221; background_position=&#8221;left top&#8221; undefined=&#8221;&#8221; background_repeat=&#8221;no-repeat&#8221; hover_type=&#8221;none&#8221; border_size=&#8221;0&#8243; border_color=&#8221;#e2e2e2&#8243; border_style=&#8221;solid&#8221; border_position=&#8221;all&#8221; padding_right=&#8221;30px&#8221; margin_top=&#8221;&#8221; margin_bottom=&#8221;&#8221; animation_type=&#8221;&#8221; animation_direction=&#8221;left&#8221; animation_speed=&#8221;0.1&#8243; animation_offset=&#8221;&#8221; last=&#8221;no&#8221;][fusion_title margin_top=&#8221;&#8221; margin_bottom=&#8221;20px&#8221; hide_on_mobile=&#8221;small-visibility,medium-visibility,large-visibility&#8221; class=&#8221;&#8221; id=&#8221;&#8221; size=&#8221;2&#8243; content_align=&#8221;left&#8221; style_type=&#8221;single solid&#8221; sep_color=&#8221;#549f97&#8243;]Our Competitive Advantages[/fusion_title]</p>\n<p>コピーというのは、ほかの見出しに合わせるため、ページの見出しコード（上記）をコピーし見出しの文字だけを変更しましたが、それだと同じように反映されませんでした。しかし他の新しい固定ページなどでは、同じように反映されました。<br />\nよろしくお願い致します。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"shoryushio\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:230:\"https://ja.wordpress.org/support/topic/elementor%e3%81%8c%e5%8e%9f%e5%9b%a0%e3%81%a7iphone12safari%e3%81%a7%e3%81%ae%e3%81%bf%e3%83%9a%e3%83%bc%e3%82%b8%e3%81%8c%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%aa%e3%81%84/#post-11676903\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"Elementorが原因でiphone12(safari)でのみページが表示されない\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:230:\"https://ja.wordpress.org/support/topic/elementor%e3%81%8c%e5%8e%9f%e5%9b%a0%e3%81%a7iphone12safari%e3%81%a7%e3%81%ae%e3%81%bf%e3%83%9a%e3%83%bc%e3%82%b8%e3%81%8c%e8%a1%a8%e7%a4%ba%e3%81%95%e3%82%8c%e3%81%aa%e3%81%84/#post-11676903\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Dec 2021 10:23:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:742:\"\n						\n						<p>・wordpress<br />\n5.8.2<br />\nElementorも最新です。</p>\n<p>・試した端末<br />\niphone8Plus　iphone10S　iphone12mini<br />\nブラウザ=safari</p>\n<p>iphone12miniのサファリでのみ「ヘッダーフッター以外」が表示されない状態になっており、<br />\nElementorを無効化したところCSSのない状態のホームページが見れたので、<br />\n原因がElementorにある事はわかっているのですが、解決方法がわからず困っております。<br />\nその他、試した端末では正常に表示されます。<br />\nPCでも問題なく表示されます。</p>\n<p>何かわかる方いらっしゃいましたらご教示願います！</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"okbsts79\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:180:\"https://ja.wordpress.org/support/topic/%e6%96%b0%e8%a6%8f%e6%8a%95%e7%a8%bf%e6%99%82%e3%81%ae%e3%82%a2%e3%82%af%e3%82%b7%e3%83%a7%e3%83%b3%e3%83%95%e3%83%83%e3%82%af/#post-11676902\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"返信先: 新規投稿時のアクションフック\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:180:\"https://ja.wordpress.org/support/topic/%e6%96%b0%e8%a6%8f%e6%8a%95%e7%a8%bf%e6%99%82%e3%81%ae%e3%82%a2%e3%82%af%e3%82%b7%e3%83%a7%e3%83%b3%e3%83%95%e3%83%83%e3%82%af/#post-11676902\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 28 Dec 2021 01:39:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:352:\"\n						\n						<p>こんにちは</p>\n<p>ステータスが下書きに変更された時であれば、下記のようにするとできると思います。</p>\n<p><code>if($new_status == &quot;draft&quot;) {</code></p>\n<p>↓</p>\n<p><code>if ( &#039;draft&#039; !== $old_status &amp;&amp; &#039;draft&#039; === $new_status ) {</code></p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"ishitaka\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:180:\"https://ja.wordpress.org/support/topic/%e6%96%b0%e8%a6%8f%e6%8a%95%e7%a8%bf%e6%99%82%e3%81%ae%e3%82%a2%e3%82%af%e3%82%b7%e3%83%a7%e3%83%b3%e3%83%95%e3%83%83%e3%82%af/#post-11676901\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"新規投稿時のアクションフック\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:180:\"https://ja.wordpress.org/support/topic/%e6%96%b0%e8%a6%8f%e6%8a%95%e7%a8%bf%e6%99%82%e3%81%ae%e3%82%a2%e3%82%af%e3%82%b7%e3%83%a7%e3%83%b3%e3%83%95%e3%83%83%e3%82%af/#post-11676901\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Dec 2021 18:21:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4094:\"\n						\n						<p>お世話になっております。</p>\n<p>とあるブログサイトで、複数の寄稿者ユーザーと1人の管理者がいてブログを管理しています。寄稿者が新規に下書きを作成すると、管理者にメール通知を送りたいと考えています。このとき、投稿にはカスタムフィールドがいくつか設定されていて、メール本文にカスタムフィールドも追加したいです。</p>\n<p>save_postかtransition_post_statusアクションフックを考えました。</p>\n<p>save_postだと$updateをfalseに設定してもタイトルやカスタムフィールドを更新するごとにフックが実行されてしまいます。</p>\n<p>transition_post_statusで以下のように作成しましたが、投稿が新規に作成されたときに一度だけ実行する条件が分からず悩んでいます。</p>\n<p>これ以外のアクションフックや条件で実現できる方法を含め、ご教示いただければ幸いです。</p>\n<p>function adminmail_draft($new_status, $old_status, $new_post) {<br />\n  $field_name = &#8216;review_available_date&#8217;;  //「公開希望日」カスタムフィールド</p>\n<p>  $post_id = $new_post-&gt;ID;</p>\n<p>  $new_title = get_the_title($post_id);<br />\n  $old_title = get_the_title($post-&gt;ID);</p>\n<p>  $new_date = get_field($field_name, 0);<br />\n  $old_date = get_post_meta( $new_post -&gt;ID , $field_name ,true);</p>\n<p>  if($new_status == &#8220;draft&#8221;) { //$new_title != &#8220;自動下書き&#8221; &amp;&amp; $old_title == &#8220;自動下書き&#8221; &amp;&amp; </p>\n<p>    // 公開希望日<br />\n    $value = &#8220;&#8221;;<br />\n    if (! trim(get_field($field_name, 0))==&#8221;){<br />\n      $value = DateTime::createFromFormat( &#8216;d/m/Y&#8217;, get_field($field_name, 0) )-&gt;format( &#8216;Y年n月j日&#8217; );<br />\n    }<br />\n    else {<br />\n      $value = &#8220;指定なし&#8221;;<br />\n    }</p>\n<p>    // 申し送り<br />\n    $value2 = &#8220;&#8221;;<br />\n    if (! trim(get_field(&#8216;review_note&#8217;, 0))==&#8221;){<br />\n      $value2 = get_field(&#8216;review_note&#8217;, 0);<br />\n    }<br />\n    else {<br />\n      $value2 = &#8220;なし&#8221;;<br />\n    }</p>\n<p>    $subject = &#8220;【&#8221;. get_option(&#8216;blogname&#8217;) .&#8221;】投稿が新規追加されました&#8221;;<br />\n    $message = &#8220;ArcGISブログ推進タスク 管理者 各位\\r\\n&#8221;;<br />\n    $message .= &#8220;\\r\\n&#8221;;<br />\n    $message .= &#8220;投稿が新規追加されました。公開スケジュールを設定してください。\\r\\n&#8221;;<br />\n    $message .= &#8220;\\r\\n&#8221;;<br />\n    $message .= &#8220;■タイトル：&#8221; . get_the_title($post_id) . &#8220;\\r\\n&#8221;;<br />\n    $message .= &#8220;\\r\\n&#8221;;<br />\n    $message .= &#8220;■ステータス：下書き\\r\\n&#8221;;<br />\n    $message .= &#8220;\\r\\n&#8221;;<br />\n    $message .= &#8220;■公開希望日：&#8221; . $value . &#8220;\\r\\n&#8221;;<br />\n    $message .= &#8220;\\r\\n&#8221;;<br />\n    $message .= &#8220;■申し送り：\\r\\n&#8221;;<br />\n    $message .= $value2 . &#8220;\\r\\n&#8221;;<br />\n    $message .= &#8220;\\r\\n&#8221;;<br />\n    $message .= &#8220;■編集用 URL：\\r\\n&#8221;;<br />\n    $message .= wp_specialchars_decode(get_edit_post_link( $post_id ), ENT_QUOTES) . &#8220;\\r\\n&#8221;;<br />\n    $message .= &#8220;\\r\\n&#8221;;<br />\n    $message .= &#8220;\\r\\n&#8221;;<br />\n    $message .= $new_title .&#8221;\\r\\n&#8221;;<br />\n    $message .= $new_status .&#8221;\\r\\n&#8221;;<br />\n    $message .= $new_date .&#8221;\\r\\n&#8221;;<br />\n    $message .= &#8220;\\r\\n&#8221;;<br />\n    $message .= $old_title .&#8221;\\r\\n&#8221;;<br />\n    $message .= $old_status .&#8221;\\r\\n&#8221;;<br />\n    $message .= $old_date .&#8221;\\r\\n&#8221;;</p>\n<p>    //メール送信関数<br />\n    sendmail_for_members();//省略<br />\n   }<br />\n}<br />\nadd_action(&#8216;transition_post_status&#8217;, &#8216;adminmail_draft&#8217;, 10, 4);</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Kohsuke Hada\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/wordpress%e3%81%8b%e3%82%89%e3%83%a1%e3%83%bc%e3%83%ab%e9%80%9a%e7%9f%a5%e5%85%a8%e8%88%ac%e3%81%8c%e6%9d%a5%e3%81%aa%e3%81%8f%e3%81%aa%e3%81%a3%e3%81%a6%e5%9b%b0%e3%81%a3%e3%81%a6%e3%81%84%e3%81%be/#post-11676900\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"返信先: WordPressからメール通知全般が来なくなって困っています。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:252:\"https://ja.wordpress.org/support/topic/wordpress%e3%81%8b%e3%82%89%e3%83%a1%e3%83%bc%e3%83%ab%e9%80%9a%e7%9f%a5%e5%85%a8%e8%88%ac%e3%81%8c%e6%9d%a5%e3%81%aa%e3%81%8f%e3%81%aa%e3%81%a3%e3%81%a6%e5%9b%b0%e3%81%a3%e3%81%a6%e3%81%84%e3%81%be/#post-11676900\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Dec 2021 04:25:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1722:\"\n						\n						<p>shokun0803さん、返信ありがとうございます。<br />\nなるほど、そうやって検証していくわけですね。</p>\n<p>テーマとプラグインを停止しても効果がなかったので、絶望なのか…と焦っていました。<br />\nサポートフォーラムの情報も見てみるのですが、どうも頭に入ってこなくて…。<br />\nこうして具体例とともに助言いただく中で、「あぁ…そういうことか…」と少しずつ理解しています</p>\n<p>Wordpress側の問題ではないと私も理解したので、<br />\nサーバー側の問題を考えてみます。</p>\n<p>ちょっとバタバタしているので、改めて検証していきます。</p>\n<p>なお、今まではプラグインから送信する際のメールをgmailに設定していて、<br />\nそれで問題なく行けていたのですが、なぜか急に通知が行かなくなりました。</p>\n<p>ロリポップサーバーで設定できるメールアドレス(info@counseling-nagomi.com)に変更したところ、「予約したユーザーに通知はされないが、管理者には通知されるように」なりました。<br />\n何かサーバー側で問題が起きているのかもしれません。</p>\n<p>まだ知識不足がたくさんなので、じっくりかけられる時間をみつけながら、検証していきます。<br />\n年末年始のお忙しいところ恐縮ですが、もし、目にとまって返信に余裕がありましたら、<br />\nまた相談に乗っていただけますと大変うれしく思います。</p>\n<p>今後ともよろしくお願いいたします。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"sunsuntak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:7:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 29 Dec 2021 06:36:31 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:12:\"x-robots-tag\";s:15:\"noindex, follow\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20211229032720\";}', 'no'),
(141, '_transient_timeout_feed_mod_6f409681938158427d2ded6eb1b9ea27', '1640802992', 'no'),
(142, '_transient_feed_mod_6f409681938158427d2ded6eb1b9ea27', '1640759792', 'no'),
(143, '_transient_timeout_dash_v2_45827e8e892dd0b85803a110fad8690f', '1640802992', 'no'),
(144, '_transient_dash_v2_45827e8e892dd0b85803a110fad8690f', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/2021/12/22/wordpress-5-9-beta-4/\'>WordPress 5.9 ベータ 4</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/2021/12/21/highlights-from-state-of-the-word-2021/\'>State of the Word 2021 基調講演の日本語字幕動画とハイライト</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/wordpress%E3%81%8B%E3%82%89%E3%83%A1%E3%83%BC%E3%83%AB%E9%80%9A%E7%9F%A5%E5%85%A8%E8%88%AC%E3%81%8C%E6%9D%A5%E3%81%AA%E3%81%8F%E3%81%AA%E3%81%A3%E3%81%A6%E5%9B%B0%E3%81%A3%E3%81%A6%E3%81%84%E3%81%BE/#post-11676910\'>返信先: WordPressからメール通知全般が来なくなって困っています。</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/foogallery%E3%81%AEdefault-gallery-settings/#post-11676908\'>FooGalleryのDefault Gallery Settings</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/bbpress-%E3%82%AA%E3%83%97%E3%82%B7%E3%83%A7%E3%83%B3%E3%83%88%E3%83%94%E3%83%83%E3%82%AF%E3%81%AE%E7%99%BB%E9%8C%B2%E6%96%B9%E6%B3%95/#post-11676907\'>bbpress オプショントピックの登録方法</a></li></ul></div>', 'no'),
(145, 'can_compress_scripts', '1', 'no'),
(146, '_site_transient_timeout_community-events-13c9bf70b1b313549afae20d447da890', '1640807863', 'no'),
(147, '_site_transient_community-events-13c9bf70b1b313549afae20d447da890', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.29.0.0\";}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:131:\"八王子WordPressミートアップ2022/1月度「新春・WPおしゃべり会〜WPネタ1品持参でお越しください♪」\";s:3:\"url\";s:62:\"https://www.meetup.com/Tokyo-WordPress-Meetup/events/282877207\";s:6:\"meetup\";s:22:\"Tokyo WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Tokyo-WordPress-Meetup/\";s:4:\"date\";s:19:\"2022-01-08 14:00:00\";s:8:\"end_date\";s:19:\"2022-01-08 16:00:00\";s:20:\"start_unix_timestamp\";i:1641618000;s:18:\"end_unix_timestamp\";i:1641625200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"JP\";s:8:\"latitude\";d:35.67;s:9:\"longitude\";d:139.77;}}}}', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(150, '_site_transient_timeout_community-events-e945964770a0fd6f0dbbcd9622f2e63f', '1640810832', 'no'),
(151, '_site_transient_community-events-e945964770a0fd6f0dbbcd9622f2e63f', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.30.0.0\";}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:131:\"八王子WordPressミートアップ2022/1月度「新春・WPおしゃべり会〜WPネタ1品持参でお越しください♪」\";s:3:\"url\";s:62:\"https://www.meetup.com/Tokyo-WordPress-Meetup/events/282877207\";s:6:\"meetup\";s:22:\"Tokyo WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Tokyo-WordPress-Meetup/\";s:4:\"date\";s:19:\"2022-01-08 14:00:00\";s:8:\"end_date\";s:19:\"2022-01-08 16:00:00\";s:20:\"start_unix_timestamp\";i:1641618000;s:18:\"end_unix_timestamp\";i:1641625200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"JP\";s:8:\"latitude\";d:35.67;s:9:\"longitude\";d:139.77;}}}}', 'no');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- テーブルのデータのダンプ `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- テーブルのデータのダンプ `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-12-29 15:27:40', '2021-12-29 06:27:40', '<!-- wp:paragraph -->\n<p>WordPress へようこそ。こちらは最初の投稿です。編集または削除し、コンテンツ作成を始めてください。</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-12-29 15:27:40', '2021-12-29 06:27:40', '', 0, 'http://localhost/ac/?p=1', 0, 'post', '', 1),
(2, 1, '2021-12-29 15:27:40', '2021-12-29 06:27:40', '<!-- wp:paragraph -->\n<p>これはサンプルページです。同じ位置に固定され、(多くのテーマでは) サイトナビゲーションメニューに含まれる点がブログ投稿とは異なります。まずは、サイト訪問者に対して自分のことを説明する自己紹介ページを作成するのが一般的です。たとえば以下のようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>はじめまして。昼間はバイク便のメッセンジャーとして働いていますが、俳優志望でもあります。これは僕のサイトです。ロサンゼルスに住み、ジャックという名前のかわいい犬を飼っています。好きなものはピニャコラーダ、そして通り雨に濡れること。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>または、このようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>XYZ 小道具株式会社は1971年の創立以来、高品質の小道具を皆様にご提供させていただいています。ゴッサム・シティに所在する当社では2,000名以上の社員が働いており、様々な形で地域のコミュニティへ貢献しています。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>新しく WordPress ユーザーになった方は、<a href=\"http://localhost/ac/wp-admin/\">ダッシュボード</a>へ行ってこのページを削除し、独自のコンテンツを含む新しいページを作成してください。それでは、お楽しみください !</p>\n<!-- /wp:paragraph -->', 'サンプルページ', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-12-29 15:27:40', '2021-12-29 06:27:40', '', 0, 'http://localhost/ac/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-12-29 15:27:40', '2021-12-29 06:27:40', '<!-- wp:heading --><h2>私たちについて</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>私たちのサイトアドレスは http://localhost/ac です。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>コメント</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>訪問者がこのサイトにコメントを残す際、コメントフォームに表示されているデータ、そしてスパム検出に役立てるための IP アドレスとブラウザーユーザーエージェント文字列を収集します。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>メールアドレスから作成される匿名化された (「ハッシュ」とも呼ばれる) 文字列は、あなたが Gravatar サービスを使用中かどうか確認するため同サービスに提供されることがあります。同サービスのプライバシーポリシーは https://automattic.com/privacy/ にあります。コメントが承認されると、プロフィール画像がコメントとともに一般公開されます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>メディア</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>サイトに画像をアップロードする際、位置情報 (EXIF GPS) を含む画像をアップロードするべきではありません。サイトの訪問者は、サイトから画像をダウンロードして位置データを抽出することができます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookie</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>サイトにコメントを残す際、お名前、メールアドレス、サイトを Cookie に保存することにオプトインできます。これはあなたの便宜のためであり、他のコメントを残す際に詳細情報を再入力する手間を省きます。この Cookie は1年間保持されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインページを訪問すると、お使いのブラウザーが Cookie を受け入れられるかを判断するために一時 Cookie を設定します。この Cookie は個人データを含んでおらず、ブラウザーを閉じると廃棄されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインの際さらに、ログイン情報と画面表示情報を保持するため、私たちはいくつかの Cookie を設定します。ログイン Cookie は2日間、画面表示オプション Cookie は1年間保持されます。「ログイン状態を保存する」を選択した場合、ログイン情報は2週間維持されます。ログアウトするとログイン Cookie は消去されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>もし投稿を編集または公開すると、さらなる Cookie がブラウザーに保存されます。この Cookie は個人データを含まず、単に変更した投稿の ID を示すものです。1日で有効期限が切れます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>他サイトからの埋め込みコンテンツ</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>このサイトの投稿には埋め込みコンテンツ (動画、画像、投稿など) が含まれます。他サイトからの埋め込みコンテンツは、訪問者がそのサイトを訪れた場合とまったく同じように振る舞います。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>これらのサイトは、あなたのデータの収集、Cookie の使用、サードパーティによる追加トラッキングの埋め込み、埋め込みコンテンツとのやりとりの監視を行うことがあります。アカウントを使ってそのサイトにログイン中の場合、埋め込みコンテンツとのやりとりのトラッキングも含まれます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたのデータの共有先</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>パスワードリセットをリクエストすると、IP アドレスがリセット用のメールに含まれます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>データを保存する期間</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>あなたがコメントを残すと、コメントとそのメタデータが無期限に保持されます。これは、モデレーションキューにコメントを保持しておく代わりに、フォローアップのコメントを自動的に認識し承認できるようにするためです。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>このサイトに登録したユーザーがいる場合、その方がユーザープロフィールページで提供した個人情報を保存します。すべてのユーザーは自分の個人情報を表示、編集、削除することができます (ただしユーザー名は変更することができません)。サイト管理者もそれらの情報を表示、編集できます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>データに対するあなたの権利</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>このサイトのアカウントを持っているか、サイトにコメントを残したことがある場合、私たちが保持するあなたについての個人データ (提供したすべてのデータを含む) をエクスポートファイルとして受け取るリクエストを行うことができます。また、個人データの消去リクエストを行うこともできます。これには、管理、法律、セキュリティ目的のために保持する義務があるデータは含まれません。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたのデータの送信先</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">提案テキスト: </strong>訪問者によるコメントは、自動スパム検出サービスを通じて確認を行う場合があります。</p><!-- /wp:paragraph -->', 'プライバシーポリシー', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-12-29 15:27:40', '2021-12-29 06:27:40', '', 0, 'http://localhost/ac/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-12-29 15:36:28', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-29 15:36:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:7350/ac/?p=4', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- テーブルのデータのダンプ `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分類', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- テーブルのデータのダンプ `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- テーブルのデータのダンプ `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- テーブルのデータのダンプ `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'user'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"d8260df0a8ec7d78e3abe855b0c88cccc346cae18e5585f9146b42cf6493f486\";a:4:{s:10:\"expiration\";i:1640932586;s:2:\"ip\";s:10:\"172.27.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1640759786;}s:64:\"3b96d360190982d1191ab25aa20ef0672bd5e8132195f3f3b2272c1ab5177939\";a:4:{s:10:\"expiration\";i:1640938144;s:2:\"ip\";s:10:\"172.29.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1640765344;}s:64:\"4f51de66f4525bea418fb54c9689ed84d803175280977bd7051713ee9a7ceb96\";a:4:{s:10:\"expiration\";i:1640940430;s:2:\"ip\";s:10:\"172.30.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1640767630;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.30.0.0\";}'),
(19, 1, 'wp_user-settings', 'editor=html'),
(20, 1, 'wp_user-settings-time', '1640765340');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- テーブルのデータのダンプ `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'user', '$P$BwDHWaMfRuXZFsz0gvmqAC.RJVKykx/', 'user', 'user@example.com', 'http://localhost:7350/ac', '2021-12-29 06:27:40', '', 0, 'user');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- テーブルのインデックス `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- テーブルのインデックス `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- テーブルのインデックス `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- テーブルのインデックス `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- テーブルのインデックス `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- テーブルのインデックス `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- テーブルのインデックス `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- テーブルのインデックス `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- テーブルのインデックス `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- テーブルのインデックス `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- テーブルの AUTO_INCREMENT `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルの AUTO_INCREMENT `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- テーブルの AUTO_INCREMENT `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
